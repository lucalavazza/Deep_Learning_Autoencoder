import random
import datetime, os
from utils_functions import *
from matplotlib import pyplot as plt
# import pandas as pd
from pathlib import Path  
import traceback
from collections import Counter
from plan import *
"""
Caricamento dei dizionari e dei piani
"""


# dizionario_stati = load_file("./dizionario_stati")
# piani_caricati = load_file("./plans")


"""
Definizione dei metodi di costruzione dei vettori da dare in pasto all'autoencoder
"""


def costruisci_vettore(dizionario, lista_stati):
    lunghezza_dizionario = len(dizionario)
    vettore_stati = []
    for stato in lista_stati:
        #vettore = np.array([0]*lunghezza_dizionario, dtype=np.int8)
        vettore = [0]*lunghezza_dizionario
        for s in stato:
            for key in dizionario.keys():
                if key == s:
                    vettore[dizionario[key] - 1] = 1
                    break
        vettore_stati.append(vettore)
    r = np.array(vettore_stati, dtype=np.int8)
    return r


# shape di ogni singolo elemento (r) è (n x 340) con n che varia su ogni piano, raggruppati sulla base dei piani
def costruisci_vettore_per_piano(dizionario, lista_piani):
    total = []
    for piano in lista_piani:
        r = costruisci_vettore(dizionario, piano.states)
        total.append(r)
    total = np.array(total, dtype=object)
    return total


# Gli stati vengono ordinati (in una lista) singolarmente con shape (1x340), non vengono raggruppati sulla base dei piani
# Da utilizzare per autoencoder standard
def costruisci_tutti_vettori_1x340(dizionario, lista_piani):
    lunghezza_dizionario = len(dizionario)
    total = []
    for plan in lista_piani:
        for stato in plan.states:
            vettore = np.array([0]*lunghezza_dizionario, dtype=np.int8)
            for s in stato:
                for key in dizionario.keys():
                    if key == s:
                        vettore[dizionario[key]-1] = 1
                        break
            total.append(vettore)
    total = np.array(total,dtype=object)
    return total


"""
Preparazione dei dati
"""


def crea_sets_v2(lista_stati):
    random.shuffle(lista_stati)
    split = int(len(lista_stati)//3)
    train_set_v2 = lista_stati[split:]
    vt = lista_stati[:split]
    sub_split = int(len(vt)//2)
    validation_set_v2 = vt[sub_split:]
    test_set_v2 = vt[:sub_split]
    save_file(train_set_v2, "./Dataset/", "set_training_v2")
    save_file(validation_set_v2, "./Dataset/", "set_validation_v2")
    save_file(test_set_v2, "./Dataset/", "set_test_v2")
    return True


def crea_set(dizionario, piani, s_tr, s_te, s_va):
    # s_training = load_file("./set_training")
    # s_test = load_file("./set_test")
    # s_validation = load_file("./set_validation")

    # se per qualche motivo almeno uno manca, li rifaccio tutti
    if s_tr is None or s_te is None or s_va is None:
        # Costruzione del dataset completo -> lo faccio solo se serve, non se ho già i file da caricare
        tutti_1x340 = costruisci_tutti_vettori_1x340(dizionario, piani)
        random.shuffle(tutti_1x340)
        # Suddivisione in Train, Test e Validation sets. Input shape per la rete = 340
        split = int(len(tutti_1x340)//3)
        train_set = tutti_1x340[split:]
        vt = tutti_1x340[:split]
        sub_split = int(len(vt)//2)
        validation_set = vt[sub_split:]
        test_set = vt[:sub_split]
        save_file(train_set, ".", "set_training")
        save_file(validation_set, ".", "set_validation")
        save_file(test_set, ".", "set_test")
        return True
    else:
        return False


# confronta posizione per posizione se i vettori sono uguali, se sono diversi errore++
def check_singolo(input_check, decoded):
    errore = 0
    decoded = np.round(decoded)
    for i in range(len(input_check)):
        if input_check[i] != decoded[i]:
            errore += 1
    return errore


# applica check_singolo per ogni vettore degli insiemi
def compute_all_errors(input_set, decoded_set):
    length = len(input_set)
    errori_set = []
    for j in range(length):
        n_errori = check_singolo(input_set[j], decoded_set[j])
        errori_set.append(n_errori)
    errori_set = np.array(errori_set, dtype=np.int32)
    media = np.mean(errori_set)
    return errori_set, media


def occorrenze(arr):
    
    # errore : occorrenza 
    return Counter(arr)

    
# Aggiungi altre info utili in caso
# input: input_set- set originale per encoded, decoded- set encoded e decoded, dir- directory di tensorboard attuale
# Restituisce info utili sui risultati della procedura di ae sul dataset provato, quali:
# * num di vettori encoded e decoded correttamente
# * num di valori non decofificati correttamente (errori) in un vettore, raggruppati in una lista per ogni vettore
# * png, distribuzione del numero di errori per vettore su tutto il set in esame

def results_info(input_set, decoded_set, directory):
    occ = "Occorrenze-  errori (elem della lista) : occorrenza\n"
    # array_errori= lista che contiene il num di errori per ogni vettore del set in esame, errore= non corrispondenza tra 0 e 1
    # ogni elemento della lista (errore) è calcolaro tramite 'check_singolo()'
    array_errori, media = compute_all_errors(input_set, decoded_set)
    length = len(input_set)
    no = 0
    for i in array_errori:
        if i == 0:
            no += 1

    risultato = "Numero di vettori decodificati correttamente: {0} su {1} totali \nRapporto: {2:.3f}% \nMedia num di errori per array: {3:.3f}\n".format(no, length, (no / length) * 100, media)
    print(risultato)

    occorr = occorrenze(array_errori)

    
    plt.hist(array_errori)
    plt.xlabel("No of errors")
    plt.ylabel("No of samples")
    plt.gcf().savefig(directory+'/distribuzione_errori.jpg')
    plt.show()

    with open(directory + '/infoTest.txt', 'w') as f:
        f.writelines([risultato, occ, str(occorr)])
        f.close()
             
    return array_errori  


# Crea un dataset frammentando i piani, con un sample di dim 5x340
def dataset_augmentation(data):
    new_dataset = []
    simple_5 = []
    for piano in data:
        simple_5.clear()
        count = 0
        for stato in piano:
            count += 1
            if count <= 5:
                simple_5.append(stato)
                
            if count == 5:
                simple_np = np.array(simple_5)
                new_dataset.append(simple_np)
                del simple_np
                simple_5.clear()
                count = 0
    
    return np.array(new_dataset, dtype=object)

def crea_sets_parte2(dataset_gruppi_da_5):
    random.shuffle(dataset_gruppi_da_5)
    split = int(len(dataset_gruppi_da_5)//3)
    train = dataset_gruppi_da_5[split:]
    val_test = dataset_gruppi_da_5[:split]
    sub_split = int(len(val_test)//2)
    validation = val_test[sub_split:]
    test = val_test[:sub_split]
    
    l_train_x = []
    l_validation_x = []
    l_test_x = []
    
    l_train_y = []
    l_validation_y = []
    l_test_y = []
    
    for t in train: # scorro ogni quintupla
        l_train_y.append(t[2]) # metto l'elemento centrale della quintupla nel set y
        list_t = t.tolist()
        list_t.remove(list_t[2]) # elimino l'elemento centrale dalla quintupla
        l_train_x.append(list_t) # aggiungo la quadrupla al set x
        
    for v in validation: # scorro ogni quintupla
        l_validation_y.append(v[2]) # metto l'elemento centrale della quintupla nel set y
        list_v = v.tolist()
        list_v.remove(list_v[2]) # elimino l'elemento centrale dalla quintupla
        l_validation_x.append(list_v) # aggiungo la quadrupla al set x
        
    for te in test: # scorro ogni quintupla
        l_test_y.append(te[2]) # metto l'elemento centrale della quintupla nel set y
        list_te = te.tolist()
        list_te.remove(list_te[2]) # elimino l'elemento centrale dalla quintupla
        l_test_x.append(list_te) # aggiungo la quadrupla al set x
    
    train_x = np.array(l_train_x,dtype=np.int8)
    validation_x = np.array(l_validation_x,dtype=np.int8)
    test_x = np.array(l_test_x,dtype=np.int8)
    
    train_y = np.array(l_train_y,dtype=np.int8)
    validation_y = np.array(l_validation_y,dtype=np.int8)
    test_y = np.array(l_test_y,dtype=np.int8)
    
    save_file(train_x, "./Dataset_Parte2/", "set_training_x")
    save_file(validation_x, "./Dataset_Parte2/", "set_validation_x")
    save_file(test_x, "./Dataset_Parte2/", "set_test_x")
    
    save_file(train_y, "./Dataset_Parte2/", "set_training_y")
    save_file(validation_y, "./Dataset_Parte2/", "set_validation_y")
    save_file(test_y, "./Dataset_Parte2/", "set_test_y")
    
    return True