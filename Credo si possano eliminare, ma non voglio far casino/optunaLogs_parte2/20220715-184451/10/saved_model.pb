Þ
®
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02unknown8½³
|
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
* 
shared_namedense_60/kernel
u
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel* 
_output_shapes
:
Ð
*
dtype0
s
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_60/bias
l
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
_output_shapes	
:*
dtype0
|
dense_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_61/kernel
u
#dense_61/kernel/Read/ReadVariableOpReadVariableOpdense_61/kernel* 
_output_shapes
:
*
dtype0
s
dense_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_61/bias
l
!dense_61/bias/Read/ReadVariableOpReadVariableOpdense_61/bias*
_output_shapes	
:*
dtype0
}
embedding/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*!
shared_nameembedding/kernel
v
$embedding/kernel/Read/ReadVariableOpReadVariableOpembedding/kernel*
_output_shapes
:	C*
dtype0
t
embedding/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*
shared_nameembedding/bias
m
"embedding/bias/Read/ReadVariableOpReadVariableOpembedding/bias*
_output_shapes
:C*
dtype0
{
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C* 
shared_namedense_62/kernel
t
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*
_output_shapes
:	C*
dtype0
s
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_62/bias
l
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes	
:*
dtype0
|
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_63/kernel
u
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel* 
_output_shapes
:
*
dtype0
s
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_63/bias
l
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
_output_shapes	
:*
dtype0
|
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô* 
shared_namedense_64/kernel
u
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel* 
_output_shapes
:
Ô*
dtype0
s
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*
shared_namedense_64/bias
l
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes	
:Ô*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0

Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_60/kernel/m

*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/m
z
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_61/kernel/m

*Adam/dense_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/m
z
(Adam/dense_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*(
shared_nameAdam/embedding/kernel/m

+Adam/embedding/kernel/m/Read/ReadVariableOpReadVariableOpAdam/embedding/kernel/m*
_output_shapes
:	C*
dtype0

Adam/embedding/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*&
shared_nameAdam/embedding/bias/m
{
)Adam/embedding/bias/m/Read/ReadVariableOpReadVariableOpAdam/embedding/bias/m*
_output_shapes
:C*
dtype0

Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_62/kernel/m

*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*
_output_shapes
:	C*
dtype0

Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/m
z
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_63/kernel/m

*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/m
z
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_64/kernel/m

*Adam/dense_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/m* 
_output_shapes
:
Ô*
dtype0

Adam/dense_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_64/bias/m
z
(Adam/dense_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/m*
_output_shapes	
:Ô*
dtype0

Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_60/kernel/v

*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/v
z
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_61/kernel/v

*Adam/dense_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/v
z
(Adam/dense_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/v*
_output_shapes	
:*
dtype0

Adam/embedding/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*(
shared_nameAdam/embedding/kernel/v

+Adam/embedding/kernel/v/Read/ReadVariableOpReadVariableOpAdam/embedding/kernel/v*
_output_shapes
:	C*
dtype0

Adam/embedding/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*&
shared_nameAdam/embedding/bias/v
{
)Adam/embedding/bias/v/Read/ReadVariableOpReadVariableOpAdam/embedding/bias/v*
_output_shapes
:C*
dtype0

Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_62/kernel/v

*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*
_output_shapes
:	C*
dtype0

Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/v
z
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_63/kernel/v

*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/v
z
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_64/kernel/v

*Adam/dense_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/v* 
_output_shapes
:
Ô*
dtype0

Adam/dense_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_64/bias/v
z
(Adam/dense_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/v*
_output_shapes	
:Ô*
dtype0

NoOpNoOp
G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÙF
valueÏFBÌF BÅF
è
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,trainable_variables
-	variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
ª
6iter

7beta_1

8beta_2
	9decay
:learning_ratemzm{m|m}m~m$m%m*m+m0m1mvvvvvv$v%v*v+v0v1v
V
0
1
2
3
4
5
$6
%7
*8
+9
010
111
V
0
1
2
3
4
5
$6
%7
*8
+9
010
111
 
­
	trainable_variables

	variables
;layer_metrics
<non_trainable_variables

=layers
>metrics
regularization_losses
?layer_regularization_losses
 
 
 
 
­
trainable_variables
	variables
@layer_metrics
Anon_trainable_variables

Blayers
Cmetrics
regularization_losses
Dlayer_regularization_losses
[Y
VARIABLE_VALUEdense_60/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_60/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
	variables
Elayer_metrics
Fnon_trainable_variables

Glayers
Hmetrics
regularization_losses
Ilayer_regularization_losses
[Y
VARIABLE_VALUEdense_61/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_61/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
	variables
Jlayer_metrics
Knon_trainable_variables

Llayers
Mmetrics
regularization_losses
Nlayer_regularization_losses
\Z
VARIABLE_VALUEembedding/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEembedding/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
 trainable_variables
!	variables
Olayer_metrics
Pnon_trainable_variables

Qlayers
Rmetrics
"regularization_losses
Slayer_regularization_losses
[Y
VARIABLE_VALUEdense_62/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_62/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­
&trainable_variables
'	variables
Tlayer_metrics
Unon_trainable_variables

Vlayers
Wmetrics
(regularization_losses
Xlayer_regularization_losses
[Y
VARIABLE_VALUEdense_63/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_63/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
­
,trainable_variables
-	variables
Ylayer_metrics
Znon_trainable_variables

[layers
\metrics
.regularization_losses
]layer_regularization_losses
[Y
VARIABLE_VALUEdense_64/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_64/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
­
2trainable_variables
3	variables
^layer_metrics
_non_trainable_variables

`layers
ametrics
4regularization_losses
blayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
1
0
1
2
3
4
5
6

c0
d1
e2
f3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	gtotal
	hcount
i	variables
j	keras_api
D
	ktotal
	lcount
m
_fn_kwargs
n	variables
o	keras_api
W
p
thresholds
qtrue_positives
rfalse_positives
s	variables
t	keras_api
W
u
thresholds
vtrue_positives
wfalse_negatives
x	variables
y	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

g0
h1

i	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

k0
l1

n	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE

q0
r1

s	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

v0
w1

x	variables
~|
VARIABLE_VALUEAdam/dense_60/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_61/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_62/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_63/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_64/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_64/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_60/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_61/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_62/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_63/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_64/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_64/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_13Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿÔ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13dense_60/kerneldense_60/biasdense_61/kerneldense_61/biasembedding/kernelembedding/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_28050080
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOp#dense_61/kernel/Read/ReadVariableOp!dense_61/bias/Read/ReadVariableOp$embedding/kernel/Read/ReadVariableOp"embedding/bias/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOp#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOp#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp*Adam/dense_61/kernel/m/Read/ReadVariableOp(Adam/dense_61/bias/m/Read/ReadVariableOp+Adam/embedding/kernel/m/Read/ReadVariableOp)Adam/embedding/bias/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOp*Adam/dense_64/kernel/m/Read/ReadVariableOp(Adam/dense_64/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOp*Adam/dense_61/kernel/v/Read/ReadVariableOp(Adam/dense_61/bias/v/Read/ReadVariableOp+Adam/embedding/kernel/v/Read/ReadVariableOp)Adam/embedding/bias/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOp*Adam/dense_64/kernel/v/Read/ReadVariableOp(Adam/dense_64/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_save_28050710
ã	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_60/kerneldense_60/biasdense_61/kerneldense_61/biasembedding/kernelembedding/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivesfalse_positivestrue_positives_1false_negativesAdam/dense_60/kernel/mAdam/dense_60/bias/mAdam/dense_61/kernel/mAdam/dense_61/bias/mAdam/embedding/kernel/mAdam/embedding/bias/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/dense_63/kernel/mAdam/dense_63/bias/mAdam/dense_64/kernel/mAdam/dense_64/bias/mAdam/dense_60/kernel/vAdam/dense_60/bias/vAdam/dense_61/kernel/vAdam/dense_61/bias/vAdam/embedding/kernel/vAdam/embedding/bias/vAdam/dense_62/kernel/vAdam/dense_62/bias/vAdam/dense_63/kernel/vAdam/dense_63/bias/vAdam/dense_64/kernel/vAdam/dense_64/bias/v*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference__traced_restore_28050867¸í

Ã
»
0__inference_sequential_12_layer_call_fn_28050294

inputs
unknown:
Ð

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	C
	unknown_4:C
	unknown_5:	C
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
Ô

unknown_10:	Ô
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_280498272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs

®
F__inference_dense_61_layer_call_and_return_conditional_losses_28050360

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_61/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÇ
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
F__inference_dense_63_layer_call_and_return_conditional_losses_28049584

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_63/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÇ
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_63/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ

+__inference_dense_63_layer_call_fn_28050465

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_63_layer_call_and_return_conditional_losses_280495842
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü

+__inference_dense_62_layer_call_fn_28050433

inputs
unknown:	C
	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_62_layer_call_and_return_conditional_losses_280495612
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿC: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs

ú
F__inference_dense_64_layer_call_and_return_conditional_losses_28049601

inputs2
matmul_readvariableop_resource:
Ô.
biasadd_readvariableop_resource:	Ô
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
µ
__inference_loss_fn_4_28050540N
:dense_63_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_63/kernel/Regularizer/Square/ReadVariableOpã
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_63_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/mulm
IdentityIdentity#dense_63/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_63/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp

³
&__inference_signature_wrapper_28050080
input_13
unknown:
Ð

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	C
	unknown_4:C
	unknown_5:	C
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
Ô

unknown_10:	Ô
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_280494602
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_13

­
F__inference_dense_62_layer_call_and_return_conditional_losses_28049561

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_62/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÆ
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_62/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿC: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs
¾
´
__inference_loss_fn_3_28050529M
:dense_62_kernel_regularizer_square_readvariableop_resource:	C
identity¢1dense_62/kernel/Regularizer/Square/ReadVariableOpâ
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_62_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/mulm
IdentityIdentity#dense_62/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_62/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp
P
ë
#__inference__wrapped_model_28049460
input_13I
5sequential_12_dense_60_matmul_readvariableop_resource:
Ð
E
6sequential_12_dense_60_biasadd_readvariableop_resource:	I
5sequential_12_dense_61_matmul_readvariableop_resource:
E
6sequential_12_dense_61_biasadd_readvariableop_resource:	I
6sequential_12_embedding_matmul_readvariableop_resource:	CE
7sequential_12_embedding_biasadd_readvariableop_resource:CH
5sequential_12_dense_62_matmul_readvariableop_resource:	CE
6sequential_12_dense_62_biasadd_readvariableop_resource:	I
5sequential_12_dense_63_matmul_readvariableop_resource:
E
6sequential_12_dense_63_biasadd_readvariableop_resource:	I
5sequential_12_dense_64_matmul_readvariableop_resource:
ÔE
6sequential_12_dense_64_biasadd_readvariableop_resource:	Ô
identity¢-sequential_12/dense_60/BiasAdd/ReadVariableOp¢,sequential_12/dense_60/MatMul/ReadVariableOp¢-sequential_12/dense_61/BiasAdd/ReadVariableOp¢,sequential_12/dense_61/MatMul/ReadVariableOp¢-sequential_12/dense_62/BiasAdd/ReadVariableOp¢,sequential_12/dense_62/MatMul/ReadVariableOp¢-sequential_12/dense_63/BiasAdd/ReadVariableOp¢,sequential_12/dense_63/MatMul/ReadVariableOp¢-sequential_12/dense_64/BiasAdd/ReadVariableOp¢,sequential_12/dense_64/MatMul/ReadVariableOp¢.sequential_12/embedding/BiasAdd/ReadVariableOp¢-sequential_12/embedding/MatMul/ReadVariableOp
sequential_12/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2 
sequential_12/flatten_12/Constµ
 sequential_12/flatten_12/ReshapeReshapeinput_13'sequential_12/flatten_12/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2"
 sequential_12/flatten_12/ReshapeÔ
,sequential_12/dense_60/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_60_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02.
,sequential_12/dense_60/MatMul/ReadVariableOpÜ
sequential_12/dense_60/MatMulMatMul)sequential_12/flatten_12/Reshape:output:04sequential_12/dense_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_60/MatMulÒ
-sequential_12/dense_60/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_12/dense_60/BiasAdd/ReadVariableOpÞ
sequential_12/dense_60/BiasAddBiasAdd'sequential_12/dense_60/MatMul:product:05sequential_12/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_12/dense_60/BiasAdd
sequential_12/dense_60/ReluRelu'sequential_12/dense_60/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_60/ReluÔ
,sequential_12/dense_61/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_61_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_12/dense_61/MatMul/ReadVariableOpÜ
sequential_12/dense_61/MatMulMatMul)sequential_12/dense_60/Relu:activations:04sequential_12/dense_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_61/MatMulÒ
-sequential_12/dense_61/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_61_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_12/dense_61/BiasAdd/ReadVariableOpÞ
sequential_12/dense_61/BiasAddBiasAdd'sequential_12/dense_61/MatMul:product:05sequential_12/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_12/dense_61/BiasAdd
sequential_12/dense_61/ReluRelu'sequential_12/dense_61/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_61/ReluÖ
-sequential_12/embedding/MatMul/ReadVariableOpReadVariableOp6sequential_12_embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02/
-sequential_12/embedding/MatMul/ReadVariableOpÞ
sequential_12/embedding/MatMulMatMul)sequential_12/dense_61/Relu:activations:05sequential_12/embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2 
sequential_12/embedding/MatMulÔ
.sequential_12/embedding/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype020
.sequential_12/embedding/BiasAdd/ReadVariableOpá
sequential_12/embedding/BiasAddBiasAdd(sequential_12/embedding/MatMul:product:06sequential_12/embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2!
sequential_12/embedding/BiasAdd 
sequential_12/embedding/ReluRelu(sequential_12/embedding/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
sequential_12/embedding/ReluÓ
,sequential_12/dense_62/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_62_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02.
,sequential_12/dense_62/MatMul/ReadVariableOpÝ
sequential_12/dense_62/MatMulMatMul*sequential_12/embedding/Relu:activations:04sequential_12/dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_62/MatMulÒ
-sequential_12/dense_62/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_62_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_12/dense_62/BiasAdd/ReadVariableOpÞ
sequential_12/dense_62/BiasAddBiasAdd'sequential_12/dense_62/MatMul:product:05sequential_12/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_12/dense_62/BiasAdd
sequential_12/dense_62/ReluRelu'sequential_12/dense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_62/ReluÔ
,sequential_12/dense_63/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_63_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_12/dense_63/MatMul/ReadVariableOpÜ
sequential_12/dense_63/MatMulMatMul)sequential_12/dense_62/Relu:activations:04sequential_12/dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_63/MatMulÒ
-sequential_12/dense_63/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_12/dense_63/BiasAdd/ReadVariableOpÞ
sequential_12/dense_63/BiasAddBiasAdd'sequential_12/dense_63/MatMul:product:05sequential_12/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_12/dense_63/BiasAdd
sequential_12/dense_63/ReluRelu'sequential_12/dense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_12/dense_63/ReluÔ
,sequential_12/dense_64/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_64_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02.
,sequential_12/dense_64/MatMul/ReadVariableOpÜ
sequential_12/dense_64/MatMulMatMul)sequential_12/dense_63/Relu:activations:04sequential_12/dense_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
sequential_12/dense_64/MatMulÒ
-sequential_12/dense_64/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_64_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02/
-sequential_12/dense_64/BiasAdd/ReadVariableOpÞ
sequential_12/dense_64/BiasAddBiasAdd'sequential_12/dense_64/MatMul:product:05sequential_12/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_12/dense_64/BiasAdd§
sequential_12/dense_64/SigmoidSigmoid'sequential_12/dense_64/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_12/dense_64/Sigmoid~
IdentityIdentity"sequential_12/dense_64/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity
NoOpNoOp.^sequential_12/dense_60/BiasAdd/ReadVariableOp-^sequential_12/dense_60/MatMul/ReadVariableOp.^sequential_12/dense_61/BiasAdd/ReadVariableOp-^sequential_12/dense_61/MatMul/ReadVariableOp.^sequential_12/dense_62/BiasAdd/ReadVariableOp-^sequential_12/dense_62/MatMul/ReadVariableOp.^sequential_12/dense_63/BiasAdd/ReadVariableOp-^sequential_12/dense_63/MatMul/ReadVariableOp.^sequential_12/dense_64/BiasAdd/ReadVariableOp-^sequential_12/dense_64/MatMul/ReadVariableOp/^sequential_12/embedding/BiasAdd/ReadVariableOp.^sequential_12/embedding/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2^
-sequential_12/dense_60/BiasAdd/ReadVariableOp-sequential_12/dense_60/BiasAdd/ReadVariableOp2\
,sequential_12/dense_60/MatMul/ReadVariableOp,sequential_12/dense_60/MatMul/ReadVariableOp2^
-sequential_12/dense_61/BiasAdd/ReadVariableOp-sequential_12/dense_61/BiasAdd/ReadVariableOp2\
,sequential_12/dense_61/MatMul/ReadVariableOp,sequential_12/dense_61/MatMul/ReadVariableOp2^
-sequential_12/dense_62/BiasAdd/ReadVariableOp-sequential_12/dense_62/BiasAdd/ReadVariableOp2\
,sequential_12/dense_62/MatMul/ReadVariableOp,sequential_12/dense_62/MatMul/ReadVariableOp2^
-sequential_12/dense_63/BiasAdd/ReadVariableOp-sequential_12/dense_63/BiasAdd/ReadVariableOp2\
,sequential_12/dense_63/MatMul/ReadVariableOp,sequential_12/dense_63/MatMul/ReadVariableOp2^
-sequential_12/dense_64/BiasAdd/ReadVariableOp-sequential_12/dense_64/BiasAdd/ReadVariableOp2\
,sequential_12/dense_64/MatMul/ReadVariableOp,sequential_12/dense_64/MatMul/ReadVariableOp2`
.sequential_12/embedding/BiasAdd/ReadVariableOp.sequential_12/embedding/BiasAdd/ReadVariableOp2^
-sequential_12/embedding/MatMul/ReadVariableOp-sequential_12/embedding/MatMul/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_13
Á
µ
__inference_loss_fn_0_28050496N
:dense_60_kernel_regularizer_square_readvariableop_resource:
Ð

identity¢1dense_60/kernel/Regularizer/Square/ReadVariableOpã
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_60_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mulm
IdentityIdentity#dense_60/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp

®
F__inference_dense_60_layer_call_and_return_conditional_losses_28049492

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_60/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÇ
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÐ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs

®
G__inference_embedding_layer_call_and_return_conditional_losses_28050392

inputs1
matmul_readvariableop_resource:	C-
biasadd_readvariableop_resource:C
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
ReluÈ
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2

Identity´
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
F__inference_dense_63_layer_call_and_return_conditional_losses_28050456

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_63/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÇ
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_63/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
½
0__inference_sequential_12_layer_call_fn_28049665
input_13
unknown:
Ð

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	C
	unknown_4:C
	unknown_5:	C
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
Ô

unknown_10:	Ô
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_280496382
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_13

®
G__inference_embedding_layer_call_and_return_conditional_losses_28049538

inputs1
matmul_readvariableop_resource:	C-
biasadd_readvariableop_resource:C
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
ReluÈ
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2

Identity´
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ú
F__inference_dense_64_layer_call_and_return_conditional_losses_28050476

inputs2
matmul_readvariableop_resource:
Ô.
biasadd_readvariableop_resource:	Ô
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñc
ô
!__inference__traced_save_28050710
file_prefix.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop.
*savev2_dense_61_kernel_read_readvariableop,
(savev2_dense_61_bias_read_readvariableop/
+savev2_embedding_kernel_read_readvariableop-
)savev2_embedding_bias_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableop5
1savev2_adam_dense_61_kernel_m_read_readvariableop3
/savev2_adam_dense_61_bias_m_read_readvariableop6
2savev2_adam_embedding_kernel_m_read_readvariableop4
0savev2_adam_embedding_bias_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableop5
1savev2_adam_dense_64_kernel_m_read_readvariableop3
/savev2_adam_dense_64_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableop5
1savev2_adam_dense_61_kernel_v_read_readvariableop3
/savev2_adam_dense_61_bias_v_read_readvariableop6
2savev2_adam_embedding_kernel_v_read_readvariableop4
0savev2_adam_embedding_bias_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableop5
1savev2_adam_dense_64_kernel_v_read_readvariableop3
/savev2_adam_dense_64_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¸
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*Ê
valueÀB½2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesì
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop*savev2_dense_61_kernel_read_readvariableop(savev2_dense_61_bias_read_readvariableop+savev2_embedding_kernel_read_readvariableop)savev2_embedding_bias_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop1savev2_adam_dense_61_kernel_m_read_readvariableop/savev2_adam_dense_61_bias_m_read_readvariableop2savev2_adam_embedding_kernel_m_read_readvariableop0savev2_adam_embedding_bias_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableop1savev2_adam_dense_64_kernel_m_read_readvariableop/savev2_adam_dense_64_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableop1savev2_adam_dense_61_kernel_v_read_readvariableop/savev2_adam_dense_61_bias_v_read_readvariableop2savev2_adam_embedding_kernel_v_read_readvariableop0savev2_adam_embedding_bias_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableop1savev2_adam_dense_64_kernel_v_read_readvariableop/savev2_adam_dense_64_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*
_input_shapesþ
û: :
Ð
::
::	C:C:	C::
::
Ô:Ô: : : : : : : : : :::::
Ð
::
::	C:C:	C::
::
Ô:Ô:
Ð
::
::	C:C:	C::
::
Ô:Ô: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Ð
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	C: 

_output_shapes
:C:%!

_output_shapes
:	C:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
::&"
 
_output_shapes
:
Ô:!

_output_shapes	
:Ô:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
Ð
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	C: 

_output_shapes
:C:% !

_output_shapes
:	C:!!

_output_shapes	
::&""
 
_output_shapes
:
:!#

_output_shapes	
::&$"
 
_output_shapes
:
Ô:!%

_output_shapes	
:Ô:&&"
 
_output_shapes
:
Ð
:!'

_output_shapes	
::&("
 
_output_shapes
:
:!)

_output_shapes	
::%*!

_output_shapes
:	C: +

_output_shapes
:C:%,!

_output_shapes
:	C:!-

_output_shapes	
::&."
 
_output_shapes
:
:!/

_output_shapes	
::&0"
 
_output_shapes
:
Ô:!1

_output_shapes	
:Ô:2

_output_shapes
: 
Á
µ
__inference_loss_fn_1_28050507N
:dense_61_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_61/kernel/Regularizer/Square/ReadVariableOpã
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_61_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/mulm
IdentityIdentity#dense_61/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp
ý

,__inference_embedding_layer_call_fn_28050401

inputs
unknown:	C
	unknown_0:C
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_280495382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ûW
÷
K__inference_sequential_12_layer_call_and_return_conditional_losses_28049638

inputs%
dense_60_28049493:
Ð
 
dense_60_28049495:	%
dense_61_28049516:
 
dense_61_28049518:	%
embedding_28049539:	C 
embedding_28049541:C$
dense_62_28049562:	C 
dense_62_28049564:	%
dense_63_28049585:
 
dense_63_28049587:	%
dense_64_28049602:
Ô 
dense_64_28049604:	Ô
identity¢ dense_60/StatefulPartitionedCall¢1dense_60/kernel/Regularizer/Square/ReadVariableOp¢ dense_61/StatefulPartitionedCall¢1dense_61/kernel/Regularizer/Square/ReadVariableOp¢ dense_62/StatefulPartitionedCall¢1dense_62/kernel/Regularizer/Square/ReadVariableOp¢ dense_63/StatefulPartitionedCall¢1dense_63/kernel/Regularizer/Square/ReadVariableOp¢ dense_64/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_280494732
flatten_12/PartitionedCall»
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_60_28049493dense_60_28049495*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_60_layer_call_and_return_conditional_losses_280494922"
 dense_60/StatefulPartitionedCallÁ
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_28049516dense_61_28049518*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_61_layer_call_and_return_conditional_losses_280495152"
 dense_61/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0embedding_28049539embedding_28049541*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_280495382#
!embedding/StatefulPartitionedCallÂ
 dense_62/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_62_28049562dense_62_28049564*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_62_layer_call_and_return_conditional_losses_280495612"
 dense_62/StatefulPartitionedCallÁ
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_28049585dense_63_28049587*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_63_layer_call_and_return_conditional_losses_280495842"
 dense_63/StatefulPartitionedCallÁ
 dense_64/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0dense_64_28049602dense_64_28049604*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_64_layer_call_and_return_conditional_losses_280496012"
 dense_64/StatefulPartitionedCallº
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_28049493* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mulº
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_61_28049516* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_28049539*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_62_28049562*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/mulº
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_63_28049585* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/mul
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall2^dense_61/kernel/Regularizer/Square/ReadVariableOp!^dense_62/StatefulPartitionedCall2^dense_62/kernel/Regularizer/Square/ReadVariableOp!^dense_63/StatefulPartitionedCall2^dense_63/kernel/Regularizer/Square/ReadVariableOp!^dense_64/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
ä
d
H__inference_flatten_12_layer_call_and_return_conditional_losses_28050300

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÔ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
ûW
÷
K__inference_sequential_12_layer_call_and_return_conditional_losses_28049827

inputs%
dense_60_28049766:
Ð
 
dense_60_28049768:	%
dense_61_28049771:
 
dense_61_28049773:	%
embedding_28049776:	C 
embedding_28049778:C$
dense_62_28049781:	C 
dense_62_28049783:	%
dense_63_28049786:
 
dense_63_28049788:	%
dense_64_28049791:
Ô 
dense_64_28049793:	Ô
identity¢ dense_60/StatefulPartitionedCall¢1dense_60/kernel/Regularizer/Square/ReadVariableOp¢ dense_61/StatefulPartitionedCall¢1dense_61/kernel/Regularizer/Square/ReadVariableOp¢ dense_62/StatefulPartitionedCall¢1dense_62/kernel/Regularizer/Square/ReadVariableOp¢ dense_63/StatefulPartitionedCall¢1dense_63/kernel/Regularizer/Square/ReadVariableOp¢ dense_64/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_280494732
flatten_12/PartitionedCall»
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_60_28049766dense_60_28049768*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_60_layer_call_and_return_conditional_losses_280494922"
 dense_60/StatefulPartitionedCallÁ
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_28049771dense_61_28049773*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_61_layer_call_and_return_conditional_losses_280495152"
 dense_61/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0embedding_28049776embedding_28049778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_280495382#
!embedding/StatefulPartitionedCallÂ
 dense_62/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_62_28049781dense_62_28049783*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_62_layer_call_and_return_conditional_losses_280495612"
 dense_62/StatefulPartitionedCallÁ
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_28049786dense_63_28049788*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_63_layer_call_and_return_conditional_losses_280495842"
 dense_63/StatefulPartitionedCallÁ
 dense_64/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0dense_64_28049791dense_64_28049793*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_64_layer_call_and_return_conditional_losses_280496012"
 dense_64/StatefulPartitionedCallº
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_28049766* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mulº
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_61_28049771* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_28049776*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_62_28049781*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/mulº
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_63_28049786* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/mul
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall2^dense_61/kernel/Regularizer/Square/ReadVariableOp!^dense_62/StatefulPartitionedCall2^dense_62/kernel/Regularizer/Square/ReadVariableOp!^dense_63/StatefulPartitionedCall2^dense_63/kernel/Regularizer/Square/ReadVariableOp!^dense_64/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
¶p
Æ
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050158

inputs;
'dense_60_matmul_readvariableop_resource:
Ð
7
(dense_60_biasadd_readvariableop_resource:	;
'dense_61_matmul_readvariableop_resource:
7
(dense_61_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_62_matmul_readvariableop_resource:	C7
(dense_62_biasadd_readvariableop_resource:	;
'dense_63_matmul_readvariableop_resource:
7
(dense_63_biasadd_readvariableop_resource:	;
'dense_64_matmul_readvariableop_resource:
Ô7
(dense_64_biasadd_readvariableop_resource:	Ô
identity¢dense_60/BiasAdd/ReadVariableOp¢dense_60/MatMul/ReadVariableOp¢1dense_60/kernel/Regularizer/Square/ReadVariableOp¢dense_61/BiasAdd/ReadVariableOp¢dense_61/MatMul/ReadVariableOp¢1dense_61/kernel/Regularizer/Square/ReadVariableOp¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp¢1dense_62/kernel/Regularizer/Square/ReadVariableOp¢dense_63/BiasAdd/ReadVariableOp¢dense_63/MatMul/ReadVariableOp¢1dense_63/kernel/Regularizer/Square/ReadVariableOp¢dense_64/BiasAdd/ReadVariableOp¢dense_64/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_12/Const
flatten_12/ReshapeReshapeinputsflatten_12/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_12/Reshapeª
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_60/MatMul/ReadVariableOp¤
dense_60/MatMulMatMulflatten_12/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_60/MatMul¨
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp¦
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_60/BiasAddt
dense_60/ReluReludense_60/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_60/Reluª
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_61/MatMul/ReadVariableOp¤
dense_61/MatMulMatMuldense_60/Relu:activations:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_61/MatMul¨
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp¦
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_61/BiasAddt
dense_61/ReluReludense_61/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_61/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_61/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
embedding/MatMulª
 embedding/BiasAdd/ReadVariableOpReadVariableOp)embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02"
 embedding/BiasAdd/ReadVariableOp©
embedding/BiasAddBiasAddembedding/MatMul:product:0(embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
embedding/BiasAddv
embedding/ReluReluembedding/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
embedding/Relu©
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_62/MatMul/ReadVariableOp¥
dense_62/MatMulMatMulembedding/Relu:activations:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_62/MatMul¨
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_62/BiasAdd/ReadVariableOp¦
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_62/BiasAddt
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_62/Reluª
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_63/MatMul/ReadVariableOp¤
dense_63/MatMulMatMuldense_62/Relu:activations:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_63/MatMul¨
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_63/BiasAdd/ReadVariableOp¦
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_63/BiasAddt
dense_63/ReluReludense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_63/Reluª
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_64/MatMul/ReadVariableOp¤
dense_64/MatMulMatMuldense_63/Relu:activations:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_64/MatMul¨
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_64/BiasAdd/ReadVariableOp¦
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_64/BiasAdd}
dense_64/SigmoidSigmoiddense_64/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_64/SigmoidÐ
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mulÐ
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/mulÒ
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/mulÐ
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/mulp
IdentityIdentitydense_64/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp2^dense_61/kernel/Regularizer/Square/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp2^dense_62/kernel/Regularizer/Square/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp2^dense_63/kernel/Regularizer/Square/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
¶p
Æ
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050236

inputs;
'dense_60_matmul_readvariableop_resource:
Ð
7
(dense_60_biasadd_readvariableop_resource:	;
'dense_61_matmul_readvariableop_resource:
7
(dense_61_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_62_matmul_readvariableop_resource:	C7
(dense_62_biasadd_readvariableop_resource:	;
'dense_63_matmul_readvariableop_resource:
7
(dense_63_biasadd_readvariableop_resource:	;
'dense_64_matmul_readvariableop_resource:
Ô7
(dense_64_biasadd_readvariableop_resource:	Ô
identity¢dense_60/BiasAdd/ReadVariableOp¢dense_60/MatMul/ReadVariableOp¢1dense_60/kernel/Regularizer/Square/ReadVariableOp¢dense_61/BiasAdd/ReadVariableOp¢dense_61/MatMul/ReadVariableOp¢1dense_61/kernel/Regularizer/Square/ReadVariableOp¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp¢1dense_62/kernel/Regularizer/Square/ReadVariableOp¢dense_63/BiasAdd/ReadVariableOp¢dense_63/MatMul/ReadVariableOp¢1dense_63/kernel/Regularizer/Square/ReadVariableOp¢dense_64/BiasAdd/ReadVariableOp¢dense_64/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_12/Const
flatten_12/ReshapeReshapeinputsflatten_12/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_12/Reshapeª
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_60/MatMul/ReadVariableOp¤
dense_60/MatMulMatMulflatten_12/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_60/MatMul¨
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp¦
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_60/BiasAddt
dense_60/ReluReludense_60/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_60/Reluª
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_61/MatMul/ReadVariableOp¤
dense_61/MatMulMatMuldense_60/Relu:activations:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_61/MatMul¨
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_61/BiasAdd/ReadVariableOp¦
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_61/BiasAddt
dense_61/ReluReludense_61/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_61/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_61/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
embedding/MatMulª
 embedding/BiasAdd/ReadVariableOpReadVariableOp)embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02"
 embedding/BiasAdd/ReadVariableOp©
embedding/BiasAddBiasAddembedding/MatMul:product:0(embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
embedding/BiasAddv
embedding/ReluReluembedding/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
embedding/Relu©
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_62/MatMul/ReadVariableOp¥
dense_62/MatMulMatMulembedding/Relu:activations:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_62/MatMul¨
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_62/BiasAdd/ReadVariableOp¦
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_62/BiasAddt
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_62/Reluª
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_63/MatMul/ReadVariableOp¤
dense_63/MatMulMatMuldense_62/Relu:activations:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_63/MatMul¨
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_63/BiasAdd/ReadVariableOp¦
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_63/BiasAddt
dense_63/ReluReludense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_63/Reluª
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_64/MatMul/ReadVariableOp¤
dense_64/MatMulMatMuldense_63/Relu:activations:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_64/MatMul¨
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_64/BiasAdd/ReadVariableOp¦
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_64/BiasAdd}
dense_64/SigmoidSigmoiddense_64/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_64/SigmoidÐ
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mulÐ
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/mulÒ
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/mulÐ
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/mulp
IdentityIdentitydense_64/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp2^dense_61/kernel/Regularizer/Square/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp2^dense_62/kernel/Regularizer/Square/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp2^dense_63/kernel/Regularizer/Square/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
É
½
0__inference_sequential_12_layer_call_fn_28049883
input_13
unknown:
Ð

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	C
	unknown_4:C
	unknown_5:	C
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
Ô

unknown_10:	Ô
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_280498272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_13
éÑ
Ó
$__inference__traced_restore_28050867
file_prefix4
 assignvariableop_dense_60_kernel:
Ð
/
 assignvariableop_1_dense_60_bias:	6
"assignvariableop_2_dense_61_kernel:
/
 assignvariableop_3_dense_61_bias:	6
#assignvariableop_4_embedding_kernel:	C/
!assignvariableop_5_embedding_bias:C5
"assignvariableop_6_dense_62_kernel:	C/
 assignvariableop_7_dense_62_bias:	6
"assignvariableop_8_dense_63_kernel:
/
 assignvariableop_9_dense_63_bias:	7
#assignvariableop_10_dense_64_kernel:
Ô0
!assignvariableop_11_dense_64_bias:	Ô'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: 0
"assignvariableop_21_true_positives:1
#assignvariableop_22_false_positives:2
$assignvariableop_23_true_positives_1:1
#assignvariableop_24_false_negatives:>
*assignvariableop_25_adam_dense_60_kernel_m:
Ð
7
(assignvariableop_26_adam_dense_60_bias_m:	>
*assignvariableop_27_adam_dense_61_kernel_m:
7
(assignvariableop_28_adam_dense_61_bias_m:	>
+assignvariableop_29_adam_embedding_kernel_m:	C7
)assignvariableop_30_adam_embedding_bias_m:C=
*assignvariableop_31_adam_dense_62_kernel_m:	C7
(assignvariableop_32_adam_dense_62_bias_m:	>
*assignvariableop_33_adam_dense_63_kernel_m:
7
(assignvariableop_34_adam_dense_63_bias_m:	>
*assignvariableop_35_adam_dense_64_kernel_m:
Ô7
(assignvariableop_36_adam_dense_64_bias_m:	Ô>
*assignvariableop_37_adam_dense_60_kernel_v:
Ð
7
(assignvariableop_38_adam_dense_60_bias_v:	>
*assignvariableop_39_adam_dense_61_kernel_v:
7
(assignvariableop_40_adam_dense_61_bias_v:	>
+assignvariableop_41_adam_embedding_kernel_v:	C7
)assignvariableop_42_adam_embedding_bias_v:C=
*assignvariableop_43_adam_dense_62_kernel_v:	C7
(assignvariableop_44_adam_dense_62_bias_v:	>
*assignvariableop_45_adam_dense_63_kernel_v:
7
(assignvariableop_46_adam_dense_63_bias_v:	>
*assignvariableop_47_adam_dense_64_kernel_v:
Ô7
(assignvariableop_48_adam_dense_64_bias_v:	Ô
identity_50¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¾
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*Ê
valueÀB½2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesò
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¨
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Þ
_output_shapesË
È::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_61_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_61_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_embedding_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_embedding_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_62_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_62_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_63_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_63_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10«
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_64_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_64_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12¥
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13§
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14§
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¦
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16®
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¡
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¡
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21ª
AssignVariableOp_21AssignVariableOp"assignvariableop_21_true_positivesIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22«
AssignVariableOp_22AssignVariableOp#assignvariableop_22_false_positivesIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¬
AssignVariableOp_23AssignVariableOp$assignvariableop_23_true_positives_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24«
AssignVariableOp_24AssignVariableOp#assignvariableop_24_false_negativesIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_60_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_60_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_61_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_61_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29³
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_embedding_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30±
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_embedding_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_62_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_62_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_63_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_63_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_64_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_64_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_60_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_60_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_61_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_61_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41³
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_embedding_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42±
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_embedding_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43²
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_62_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44°
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_62_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45²
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_63_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46°
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_63_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47²
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_64_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48°
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_64_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_489
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_49f
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_50ü
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ÿ

+__inference_dense_61_layer_call_fn_28050369

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_61_layer_call_and_return_conditional_losses_280495152
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
I
-__inference_flatten_12_layer_call_fn_28050305

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_280494732
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÔ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs

®
F__inference_dense_60_layer_call_and_return_conditional_losses_28050328

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_60/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÇ
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_60/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÐ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs
X
ù
K__inference_sequential_12_layer_call_and_return_conditional_losses_28049948
input_13%
dense_60_28049887:
Ð
 
dense_60_28049889:	%
dense_61_28049892:
 
dense_61_28049894:	%
embedding_28049897:	C 
embedding_28049899:C$
dense_62_28049902:	C 
dense_62_28049904:	%
dense_63_28049907:
 
dense_63_28049909:	%
dense_64_28049912:
Ô 
dense_64_28049914:	Ô
identity¢ dense_60/StatefulPartitionedCall¢1dense_60/kernel/Regularizer/Square/ReadVariableOp¢ dense_61/StatefulPartitionedCall¢1dense_61/kernel/Regularizer/Square/ReadVariableOp¢ dense_62/StatefulPartitionedCall¢1dense_62/kernel/Regularizer/Square/ReadVariableOp¢ dense_63/StatefulPartitionedCall¢1dense_63/kernel/Regularizer/Square/ReadVariableOp¢ dense_64/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_12/PartitionedCallPartitionedCallinput_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_280494732
flatten_12/PartitionedCall»
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_60_28049887dense_60_28049889*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_60_layer_call_and_return_conditional_losses_280494922"
 dense_60/StatefulPartitionedCallÁ
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_28049892dense_61_28049894*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_61_layer_call_and_return_conditional_losses_280495152"
 dense_61/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0embedding_28049897embedding_28049899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_280495382#
!embedding/StatefulPartitionedCallÂ
 dense_62/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_62_28049902dense_62_28049904*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_62_layer_call_and_return_conditional_losses_280495612"
 dense_62/StatefulPartitionedCallÁ
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_28049907dense_63_28049909*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_63_layer_call_and_return_conditional_losses_280495842"
 dense_63/StatefulPartitionedCallÁ
 dense_64/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0dense_64_28049912dense_64_28049914*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_64_layer_call_and_return_conditional_losses_280496012"
 dense_64/StatefulPartitionedCallº
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_28049887* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mulº
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_61_28049892* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_28049897*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_62_28049902*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/mulº
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_63_28049907* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/mul
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall2^dense_61/kernel/Regularizer/Square/ReadVariableOp!^dense_62/StatefulPartitionedCall2^dense_62/kernel/Regularizer/Square/ReadVariableOp!^dense_63/StatefulPartitionedCall2^dense_63/kernel/Regularizer/Square/ReadVariableOp!^dense_64/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_13

­
F__inference_dense_62_layer_call_and_return_conditional_losses_28050424

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_62/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÆ
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_62/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿC: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs
ÿ

+__inference_dense_64_layer_call_fn_28050485

inputs
unknown:
Ô
	unknown_0:	Ô
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_64_layer_call_and_return_conditional_losses_280496012
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
F__inference_dense_61_layer_call_and_return_conditional_losses_28049515

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_61/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ReluÇ
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
»
0__inference_sequential_12_layer_call_fn_28050265

inputs
unknown:
Ð

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	C
	unknown_4:C
	unknown_5:	C
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
Ô

unknown_10:	Ô
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_280496382
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
X
ù
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050013
input_13%
dense_60_28049952:
Ð
 
dense_60_28049954:	%
dense_61_28049957:
 
dense_61_28049959:	%
embedding_28049962:	C 
embedding_28049964:C$
dense_62_28049967:	C 
dense_62_28049969:	%
dense_63_28049972:
 
dense_63_28049974:	%
dense_64_28049977:
Ô 
dense_64_28049979:	Ô
identity¢ dense_60/StatefulPartitionedCall¢1dense_60/kernel/Regularizer/Square/ReadVariableOp¢ dense_61/StatefulPartitionedCall¢1dense_61/kernel/Regularizer/Square/ReadVariableOp¢ dense_62/StatefulPartitionedCall¢1dense_62/kernel/Regularizer/Square/ReadVariableOp¢ dense_63/StatefulPartitionedCall¢1dense_63/kernel/Regularizer/Square/ReadVariableOp¢ dense_64/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_12/PartitionedCallPartitionedCallinput_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_280494732
flatten_12/PartitionedCall»
 dense_60/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_60_28049952dense_60_28049954*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_60_layer_call_and_return_conditional_losses_280494922"
 dense_60/StatefulPartitionedCallÁ
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)dense_60/StatefulPartitionedCall:output:0dense_61_28049957dense_61_28049959*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_61_layer_call_and_return_conditional_losses_280495152"
 dense_61/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_61/StatefulPartitionedCall:output:0embedding_28049962embedding_28049964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_280495382#
!embedding/StatefulPartitionedCallÂ
 dense_62/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_62_28049967dense_62_28049969*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_62_layer_call_and_return_conditional_losses_280495612"
 dense_62/StatefulPartitionedCallÁ
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_28049972dense_63_28049974*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_63_layer_call_and_return_conditional_losses_280495842"
 dense_63/StatefulPartitionedCallÁ
 dense_64/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0dense_64_28049977dense_64_28049979*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_64_layer_call_and_return_conditional_losses_280496012"
 dense_64/StatefulPartitionedCallº
1dense_60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_60_28049952* 
_output_shapes
:
Ð
*
dtype023
1dense_60/kernel/Regularizer/Square/ReadVariableOp¸
"dense_60/kernel/Regularizer/SquareSquare9dense_60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_60/kernel/Regularizer/Square
!dense_60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_60/kernel/Regularizer/Const¾
dense_60/kernel/Regularizer/SumSum&dense_60/kernel/Regularizer/Square:y:0*dense_60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/Sum
!dense_60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_60/kernel/Regularizer/mul/xÀ
dense_60/kernel/Regularizer/mulMul*dense_60/kernel/Regularizer/mul/x:output:0(dense_60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_60/kernel/Regularizer/mulº
1dense_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_61_28049957* 
_output_shapes
:
*
dtype023
1dense_61/kernel/Regularizer/Square/ReadVariableOp¸
"dense_61/kernel/Regularizer/SquareSquare9dense_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_61/kernel/Regularizer/Square
!dense_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_61/kernel/Regularizer/Const¾
dense_61/kernel/Regularizer/SumSum&dense_61/kernel/Regularizer/Square:y:0*dense_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/Sum
!dense_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_61/kernel/Regularizer/mul/xÀ
dense_61/kernel/Regularizer/mulMul*dense_61/kernel/Regularizer/mul/x:output:0(dense_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_61/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_28049962*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_62_28049967*
_output_shapes
:	C*
dtype023
1dense_62/kernel/Regularizer/Square/ReadVariableOp·
"dense_62/kernel/Regularizer/SquareSquare9dense_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_62/kernel/Regularizer/Square
!dense_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_62/kernel/Regularizer/Const¾
dense_62/kernel/Regularizer/SumSum&dense_62/kernel/Regularizer/Square:y:0*dense_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/Sum
!dense_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_62/kernel/Regularizer/mul/xÀ
dense_62/kernel/Regularizer/mulMul*dense_62/kernel/Regularizer/mul/x:output:0(dense_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_62/kernel/Regularizer/mulº
1dense_63/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_63_28049972* 
_output_shapes
:
*
dtype023
1dense_63/kernel/Regularizer/Square/ReadVariableOp¸
"dense_63/kernel/Regularizer/SquareSquare9dense_63/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_63/kernel/Regularizer/Square
!dense_63/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_63/kernel/Regularizer/Const¾
dense_63/kernel/Regularizer/SumSum&dense_63/kernel/Regularizer/Square:y:0*dense_63/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/Sum
!dense_63/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82#
!dense_63/kernel/Regularizer/mul/xÀ
dense_63/kernel/Regularizer/mulMul*dense_63/kernel/Regularizer/mul/x:output:0(dense_63/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_63/kernel/Regularizer/mul
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_60/StatefulPartitionedCall2^dense_60/kernel/Regularizer/Square/ReadVariableOp!^dense_61/StatefulPartitionedCall2^dense_61/kernel/Regularizer/Square/ReadVariableOp!^dense_62/StatefulPartitionedCall2^dense_62/kernel/Regularizer/Square/ReadVariableOp!^dense_63/StatefulPartitionedCall2^dense_63/kernel/Regularizer/Square/ReadVariableOp!^dense_64/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2f
1dense_60/kernel/Regularizer/Square/ReadVariableOp1dense_60/kernel/Regularizer/Square/ReadVariableOp2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2f
1dense_61/kernel/Regularizer/Square/ReadVariableOp1dense_61/kernel/Regularizer/Square/ReadVariableOp2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2f
1dense_62/kernel/Regularizer/Square/ReadVariableOp1dense_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2f
1dense_63/kernel/Regularizer/Square/ReadVariableOp1dense_63/kernel/Regularizer/Square/ReadVariableOp2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_13
ÿ

+__inference_dense_60_layer_call_fn_28050337

inputs
unknown:
Ð

	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_60_layer_call_and_return_conditional_losses_280494922
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÐ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs
ä
d
H__inference_flatten_12_layer_call_and_return_conditional_losses_28049473

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÔ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
Ö
¶
__inference_loss_fn_2_28050518N
;embedding_kernel_regularizer_square_readvariableop_resource:	C
identity¢2embedding/kernel/Regularizer/Square/ReadVariableOpå
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;embedding_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOpº
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2%
#embedding/kernel/Regularizer/Square
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/ConstÂ
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * <Q82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/muln
IdentityIdentity$embedding/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
B
input_136
serving_default_input_13:0ÿÿÿÿÿÿÿÿÿÔ=
dense_641
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿÔtensorflow/serving/predict:§
à
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
+&call_and_return_all_conditional_losses
_default_save_signature
__call__"
_tf_keras_sequential
§
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

*kernel
+bias
,trainable_variables
-	variables
.regularization_losses
/	keras_api
+&call_and_return_all_conditional_losses
 __call__"
_tf_keras_layer
½

0kernel
1bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
+¡&call_and_return_all_conditional_losses
¢__call__"
_tf_keras_layer
Ë
6iter

7beta_1

8beta_2
	9decay
:learning_ratemzm{m|m}m~m$m%m*m+m0m1mvvvvvv$v%v*v+v0v1v"
tf_deprecated_optimizer
v
0
1
2
3
4
5
$6
%7
*8
+9
010
111"
trackable_list_wrapper
v
0
1
2
3
4
5
$6
%7
*8
+9
010
111"
trackable_list_wrapper
H
£0
¤1
¥2
¦3
§4"
trackable_list_wrapper
Î
	trainable_variables

	variables
;layer_metrics
<non_trainable_variables

=layers
>metrics
regularization_losses
?layer_regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
¨serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
	variables
@layer_metrics
Anon_trainable_variables

Blayers
Cmetrics
regularization_losses
Dlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!
Ð
2dense_60/kernel
:2dense_60/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
£0"
trackable_list_wrapper
°
trainable_variables
	variables
Elayer_metrics
Fnon_trainable_variables

Glayers
Hmetrics
regularization_losses
Ilayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!
2dense_61/kernel
:2dense_61/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
¤0"
trackable_list_wrapper
°
trainable_variables
	variables
Jlayer_metrics
Knon_trainable_variables

Llayers
Mmetrics
regularization_losses
Nlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!	C2embedding/kernel
:C2embedding/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
¥0"
trackable_list_wrapper
°
 trainable_variables
!	variables
Olayer_metrics
Pnon_trainable_variables

Qlayers
Rmetrics
"regularization_losses
Slayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 	C2dense_62/kernel
:2dense_62/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
(
¦0"
trackable_list_wrapper
°
&trainable_variables
'	variables
Tlayer_metrics
Unon_trainable_variables

Vlayers
Wmetrics
(regularization_losses
Xlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!
2dense_63/kernel
:2dense_63/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
(
§0"
trackable_list_wrapper
°
,trainable_variables
-	variables
Ylayer_metrics
Znon_trainable_variables

[layers
\metrics
.regularization_losses
]layer_regularization_losses
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!
Ô2dense_64/kernel
:Ô2dense_64/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
°
2trainable_variables
3	variables
^layer_metrics
_non_trainable_variables

`layers
ametrics
4regularization_losses
blayer_regularization_losses
¢__call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
<
c0
d1
e2
f3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
£0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¤0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¥0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¦0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
§0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	gtotal
	hcount
i	variables
j	keras_api"
_tf_keras_metric
^
	ktotal
	lcount
m
_fn_kwargs
n	variables
o	keras_api"
_tf_keras_metric
q
p
thresholds
qtrue_positives
rfalse_positives
s	variables
t	keras_api"
_tf_keras_metric
q
u
thresholds
vtrue_positives
wfalse_negatives
x	variables
y	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
g0
h1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
k0
l1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
.
q0
r1"
trackable_list_wrapper
-
s	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
.
v0
w1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
(:&
Ð
2Adam/dense_60/kernel/m
!:2Adam/dense_60/bias/m
(:&
2Adam/dense_61/kernel/m
!:2Adam/dense_61/bias/m
(:&	C2Adam/embedding/kernel/m
!:C2Adam/embedding/bias/m
':%	C2Adam/dense_62/kernel/m
!:2Adam/dense_62/bias/m
(:&
2Adam/dense_63/kernel/m
!:2Adam/dense_63/bias/m
(:&
Ô2Adam/dense_64/kernel/m
!:Ô2Adam/dense_64/bias/m
(:&
Ð
2Adam/dense_60/kernel/v
!:2Adam/dense_60/bias/v
(:&
2Adam/dense_61/kernel/v
!:2Adam/dense_61/bias/v
(:&	C2Adam/embedding/kernel/v
!:C2Adam/embedding/bias/v
':%	C2Adam/dense_62/kernel/v
!:2Adam/dense_62/bias/v
(:&
2Adam/dense_63/kernel/v
!:2Adam/dense_63/bias/v
(:&
Ô2Adam/dense_64/kernel/v
!:Ô2Adam/dense_64/bias/v
ú2÷
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050158
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050236
K__inference_sequential_12_layer_call_and_return_conditional_losses_28049948
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050013À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ç2ä
#__inference__wrapped_model_28049460¼
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *,¢)
'$
input_13ÿÿÿÿÿÿÿÿÿÔ
2
0__inference_sequential_12_layer_call_fn_28049665
0__inference_sequential_12_layer_call_fn_28050265
0__inference_sequential_12_layer_call_fn_28050294
0__inference_sequential_12_layer_call_fn_28049883À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
H__inference_flatten_12_layer_call_and_return_conditional_losses_28050300¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_flatten_12_layer_call_fn_28050305¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_60_layer_call_and_return_conditional_losses_28050328¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_60_layer_call_fn_28050337¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_61_layer_call_and_return_conditional_losses_28050360¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_61_layer_call_fn_28050369¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_embedding_layer_call_and_return_conditional_losses_28050392¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_embedding_layer_call_fn_28050401¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_62_layer_call_and_return_conditional_losses_28050424¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_62_layer_call_fn_28050433¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_63_layer_call_and_return_conditional_losses_28050456¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_63_layer_call_fn_28050465¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_64_layer_call_and_return_conditional_losses_28050476¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_64_layer_call_fn_28050485¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²
__inference_loss_fn_0_28050496
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
µ2²
__inference_loss_fn_1_28050507
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
µ2²
__inference_loss_fn_2_28050518
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
µ2²
__inference_loss_fn_3_28050529
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
µ2²
__inference_loss_fn_4_28050540
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÎBË
&__inference_signature_wrapper_28050080input_13"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 £
#__inference__wrapped_model_28049460|$%*+016¢3
,¢)
'$
input_13ÿÿÿÿÿÿÿÿÿÔ
ª "4ª1
/
dense_64# 
dense_64ÿÿÿÿÿÿÿÿÿÔ¨
F__inference_dense_60_layer_call_and_return_conditional_losses_28050328^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_60_layer_call_fn_28050337Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_61_layer_call_and_return_conditional_losses_28050360^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_61_layer_call_fn_28050369Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_62_layer_call_and_return_conditional_losses_28050424]$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_62_layer_call_fn_28050433P$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_63_layer_call_and_return_conditional_losses_28050456^*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_63_layer_call_fn_28050465Q*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_64_layer_call_and_return_conditional_losses_28050476^010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 
+__inference_dense_64_layer_call_fn_28050485Q010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÔ¨
G__inference_embedding_layer_call_and_return_conditional_losses_28050392]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿC
 
,__inference_embedding_layer_call_fn_28050401P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿCª
H__inference_flatten_12_layer_call_and_return_conditional_losses_28050300^4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÐ

 
-__inference_flatten_12_layer_call_fn_28050305Q4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "ÿÿÿÿÿÿÿÿÿÐ
=
__inference_loss_fn_0_28050496¢

¢ 
ª " =
__inference_loss_fn_1_28050507¢

¢ 
ª " =
__inference_loss_fn_2_28050518¢

¢ 
ª " =
__inference_loss_fn_3_28050529$¢

¢ 
ª " =
__inference_loss_fn_4_28050540*¢

¢ 
ª " Å
K__inference_sequential_12_layer_call_and_return_conditional_losses_28049948v$%*+01>¢;
4¢1
'$
input_13ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Å
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050013v$%*+01>¢;
4¢1
'$
input_13ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Ã
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050158t$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Ã
K__inference_sequential_12_layer_call_and_return_conditional_losses_28050236t$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 
0__inference_sequential_12_layer_call_fn_28049665i$%*+01>¢;
4¢1
'$
input_13ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_12_layer_call_fn_28049883i$%*+01>¢;
4¢1
'$
input_13ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_12_layer_call_fn_28050265g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_12_layer_call_fn_28050294g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ³
&__inference_signature_wrapper_28050080$%*+01B¢?
¢ 
8ª5
3
input_13'$
input_13ÿÿÿÿÿÿÿÿÿÔ"4ª1
/
dense_64# 
dense_64ÿÿÿÿÿÿÿÿÿÔ