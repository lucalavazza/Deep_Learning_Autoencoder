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
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
* 
shared_namedense_55/kernel
u
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel* 
_output_shapes
:
Ð
*
dtype0
s
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_55/bias
l
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
_output_shapes	
:*
dtype0
|
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_56/kernel
u
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel* 
_output_shapes
:
*
dtype0
s
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
l
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
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
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C* 
shared_namedense_57/kernel
t
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes
:	C*
dtype0
s
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_57/bias
l
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes	
:*
dtype0
|
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_58/kernel
u
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel* 
_output_shapes
:
*
dtype0
s
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_58/bias
l
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes	
:*
dtype0
|
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô* 
shared_namedense_59/kernel
u
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel* 
_output_shapes
:
Ô*
dtype0
s
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*
shared_namedense_59/bias
l
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
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
Adam/dense_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_55/kernel/m

*Adam/dense_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/m* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_55/bias/m
z
(Adam/dense_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_56/kernel/m

*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/m
z
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
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
Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_57/kernel/m

*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m*
_output_shapes
:	C*
dtype0

Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_57/bias/m
z
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_58/kernel/m

*Adam/dense_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_58/bias/m
z
(Adam/dense_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_59/kernel/m

*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m* 
_output_shapes
:
Ô*
dtype0

Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_59/bias/m
z
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes	
:Ô*
dtype0

Adam/dense_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_55/kernel/v

*Adam/dense_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/v* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_55/bias/v
z
(Adam/dense_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_56/kernel/v

*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/v
z
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
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
Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_57/kernel/v

*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v*
_output_shapes
:	C*
dtype0

Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_57/bias/v
z
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_58/kernel/v

*Adam/dense_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_58/bias/v
z
(Adam/dense_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_59/kernel/v

*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v* 
_output_shapes
:
Ô*
dtype0

Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_59/bias/v
z
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
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
VARIABLE_VALUEdense_55/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_56/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_57/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_58/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_58/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_59/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_59/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_55/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_58/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_58/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_12Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿÔ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_12dense_55/kerneldense_55/biasdense_56/kerneldense_56/biasembedding/kernelembedding/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias*
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
&__inference_signature_wrapper_25712364
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp$embedding/kernel/Read/ReadVariableOp"embedding/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp*Adam/dense_55/kernel/m/Read/ReadVariableOp(Adam/dense_55/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp+Adam/embedding/kernel/m/Read/ReadVariableOp)Adam/embedding/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp*Adam/dense_58/kernel/m/Read/ReadVariableOp(Adam/dense_58/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp*Adam/dense_55/kernel/v/Read/ReadVariableOp(Adam/dense_55/bias/v/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOp+Adam/embedding/kernel/v/Read/ReadVariableOp)Adam/embedding/bias/v/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOp*Adam/dense_58/kernel/v/Read/ReadVariableOp(Adam/dense_58/bias/v/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOpConst*>
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
!__inference__traced_save_25712994
ã	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_55/kerneldense_55/biasdense_56/kerneldense_56/biasembedding/kernelembedding/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivesfalse_positivestrue_positives_1false_negativesAdam/dense_55/kernel/mAdam/dense_55/bias/mAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/embedding/kernel/mAdam/embedding/bias/mAdam/dense_57/kernel/mAdam/dense_57/bias/mAdam/dense_58/kernel/mAdam/dense_58/bias/mAdam/dense_59/kernel/mAdam/dense_59/bias/mAdam/dense_55/kernel/vAdam/dense_55/bias/vAdam/dense_56/kernel/vAdam/dense_56/bias/vAdam/embedding/kernel/vAdam/embedding/bias/vAdam/dense_57/kernel/vAdam/dense_57/bias/vAdam/dense_58/kernel/vAdam/dense_58/bias/vAdam/dense_59/kernel/vAdam/dense_59/bias/v*=
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
$__inference__traced_restore_25713151¸í


®
F__inference_dense_56_layer_call_and_return_conditional_losses_25711799

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_56/kernel/Regularizer/Square/ReadVariableOp
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
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
»
0__inference_sequential_11_layer_call_fn_25712578

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
K__inference_sequential_11_layer_call_and_return_conditional_losses_257121112
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
F__inference_dense_58_layer_call_and_return_conditional_losses_25712740

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_58/kernel/Regularizer/Square/ReadVariableOp
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
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
µ
__inference_loss_fn_0_25712780N
:dense_55_kernel_regularizer_square_readvariableop_resource:
Ð

identity¢1dense_55/kernel/Regularizer/Square/ReadVariableOpã
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_55_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mulm
IdentityIdentity#dense_55/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp
ñc
ô
!__inference__traced_save_25712994
file_prefix.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop/
+savev2_embedding_kernel_read_readvariableop-
)savev2_embedding_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop(
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
1savev2_adam_dense_55_kernel_m_read_readvariableop3
/savev2_adam_dense_55_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop6
2savev2_adam_embedding_kernel_m_read_readvariableop4
0savev2_adam_embedding_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableop5
1savev2_adam_dense_58_kernel_m_read_readvariableop3
/savev2_adam_dense_58_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableop5
1savev2_adam_dense_55_kernel_v_read_readvariableop3
/savev2_adam_dense_55_bias_v_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop6
2savev2_adam_embedding_kernel_v_read_readvariableop4
0savev2_adam_embedding_bias_v_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableop5
1savev2_adam_dense_58_kernel_v_read_readvariableop3
/savev2_adam_dense_58_bias_v_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop+savev2_embedding_kernel_read_readvariableop)savev2_embedding_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop1savev2_adam_dense_55_kernel_m_read_readvariableop/savev2_adam_dense_55_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop2savev2_adam_embedding_kernel_m_read_readvariableop0savev2_adam_embedding_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop1savev2_adam_dense_58_kernel_m_read_readvariableop/savev2_adam_dense_58_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop1savev2_adam_dense_55_kernel_v_read_readvariableop/savev2_adam_dense_55_bias_v_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableop2savev2_adam_embedding_kernel_v_read_readvariableop0savev2_adam_embedding_bias_v_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableop1savev2_adam_dense_58_kernel_v_read_readvariableop/savev2_adam_dense_58_bias_v_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¾
´
__inference_loss_fn_3_25712813M
:dense_57_kernel_regularizer_square_readvariableop_resource:	C
identity¢1dense_57/kernel/Regularizer/Square/ReadVariableOpâ
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_57_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mulm
IdentityIdentity#dense_57/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp
¶p
Æ
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712442

inputs;
'dense_55_matmul_readvariableop_resource:
Ð
7
(dense_55_biasadd_readvariableop_resource:	;
'dense_56_matmul_readvariableop_resource:
7
(dense_56_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_57_matmul_readvariableop_resource:	C7
(dense_57_biasadd_readvariableop_resource:	;
'dense_58_matmul_readvariableop_resource:
7
(dense_58_biasadd_readvariableop_resource:	;
'dense_59_matmul_readvariableop_resource:
Ô7
(dense_59_biasadd_readvariableop_resource:	Ô
identity¢dense_55/BiasAdd/ReadVariableOp¢dense_55/MatMul/ReadVariableOp¢1dense_55/kernel/Regularizer/Square/ReadVariableOp¢dense_56/BiasAdd/ReadVariableOp¢dense_56/MatMul/ReadVariableOp¢1dense_56/kernel/Regularizer/Square/ReadVariableOp¢dense_57/BiasAdd/ReadVariableOp¢dense_57/MatMul/ReadVariableOp¢1dense_57/kernel/Regularizer/Square/ReadVariableOp¢dense_58/BiasAdd/ReadVariableOp¢dense_58/MatMul/ReadVariableOp¢1dense_58/kernel/Regularizer/Square/ReadVariableOp¢dense_59/BiasAdd/ReadVariableOp¢dense_59/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_11/Const
flatten_11/ReshapeReshapeinputsflatten_11/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_11/Reshapeª
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_55/MatMul/ReadVariableOp¤
dense_55/MatMulMatMulflatten_11/Reshape:output:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/MatMul¨
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_55/BiasAdd/ReadVariableOp¦
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/BiasAddt
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/Reluª
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_56/MatMul/ReadVariableOp¤
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_56/MatMul¨
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp¦
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_56/BiasAddt
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_56/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_56/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
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
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_57/MatMul/ReadVariableOp¥
dense_57/MatMulMatMulembedding/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/MatMul¨
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_57/BiasAdd/ReadVariableOp¦
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/BiasAddt
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/Reluª
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_58/MatMul/ReadVariableOp¤
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_58/MatMul¨
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_58/BiasAdd/ReadVariableOp¦
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_58/BiasAddt
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_58/Reluª
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_59/MatMul/ReadVariableOp¤
dense_59/MatMulMatMuldense_58/Relu:activations:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_59/MatMul¨
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_59/BiasAdd/ReadVariableOp¦
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_59/BiasAdd}
dense_59/SigmoidSigmoiddense_59/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_59/SigmoidÐ
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mulÐ
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mulÒ
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
 *X×
82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mulÐ
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mulp
IdentityIdentitydense_59/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
Ó
I
-__inference_flatten_11_layer_call_fn_25712589

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
H__inference_flatten_11_layer_call_and_return_conditional_losses_257117572
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
P
ë
#__inference__wrapped_model_25711744
input_12I
5sequential_11_dense_55_matmul_readvariableop_resource:
Ð
E
6sequential_11_dense_55_biasadd_readvariableop_resource:	I
5sequential_11_dense_56_matmul_readvariableop_resource:
E
6sequential_11_dense_56_biasadd_readvariableop_resource:	I
6sequential_11_embedding_matmul_readvariableop_resource:	CE
7sequential_11_embedding_biasadd_readvariableop_resource:CH
5sequential_11_dense_57_matmul_readvariableop_resource:	CE
6sequential_11_dense_57_biasadd_readvariableop_resource:	I
5sequential_11_dense_58_matmul_readvariableop_resource:
E
6sequential_11_dense_58_biasadd_readvariableop_resource:	I
5sequential_11_dense_59_matmul_readvariableop_resource:
ÔE
6sequential_11_dense_59_biasadd_readvariableop_resource:	Ô
identity¢-sequential_11/dense_55/BiasAdd/ReadVariableOp¢,sequential_11/dense_55/MatMul/ReadVariableOp¢-sequential_11/dense_56/BiasAdd/ReadVariableOp¢,sequential_11/dense_56/MatMul/ReadVariableOp¢-sequential_11/dense_57/BiasAdd/ReadVariableOp¢,sequential_11/dense_57/MatMul/ReadVariableOp¢-sequential_11/dense_58/BiasAdd/ReadVariableOp¢,sequential_11/dense_58/MatMul/ReadVariableOp¢-sequential_11/dense_59/BiasAdd/ReadVariableOp¢,sequential_11/dense_59/MatMul/ReadVariableOp¢.sequential_11/embedding/BiasAdd/ReadVariableOp¢-sequential_11/embedding/MatMul/ReadVariableOp
sequential_11/flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2 
sequential_11/flatten_11/Constµ
 sequential_11/flatten_11/ReshapeReshapeinput_12'sequential_11/flatten_11/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2"
 sequential_11/flatten_11/ReshapeÔ
,sequential_11/dense_55/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_55_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02.
,sequential_11/dense_55/MatMul/ReadVariableOpÜ
sequential_11/dense_55/MatMulMatMul)sequential_11/flatten_11/Reshape:output:04sequential_11/dense_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_55/MatMulÒ
-sequential_11/dense_55/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_55_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_11/dense_55/BiasAdd/ReadVariableOpÞ
sequential_11/dense_55/BiasAddBiasAdd'sequential_11/dense_55/MatMul:product:05sequential_11/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_11/dense_55/BiasAdd
sequential_11/dense_55/ReluRelu'sequential_11/dense_55/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_55/ReluÔ
,sequential_11/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_56_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_11/dense_56/MatMul/ReadVariableOpÜ
sequential_11/dense_56/MatMulMatMul)sequential_11/dense_55/Relu:activations:04sequential_11/dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_56/MatMulÒ
-sequential_11/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_56_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_11/dense_56/BiasAdd/ReadVariableOpÞ
sequential_11/dense_56/BiasAddBiasAdd'sequential_11/dense_56/MatMul:product:05sequential_11/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_11/dense_56/BiasAdd
sequential_11/dense_56/ReluRelu'sequential_11/dense_56/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_56/ReluÖ
-sequential_11/embedding/MatMul/ReadVariableOpReadVariableOp6sequential_11_embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02/
-sequential_11/embedding/MatMul/ReadVariableOpÞ
sequential_11/embedding/MatMulMatMul)sequential_11/dense_56/Relu:activations:05sequential_11/embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2 
sequential_11/embedding/MatMulÔ
.sequential_11/embedding/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype020
.sequential_11/embedding/BiasAdd/ReadVariableOpá
sequential_11/embedding/BiasAddBiasAdd(sequential_11/embedding/MatMul:product:06sequential_11/embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2!
sequential_11/embedding/BiasAdd 
sequential_11/embedding/ReluRelu(sequential_11/embedding/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
sequential_11/embedding/ReluÓ
,sequential_11/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_57_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02.
,sequential_11/dense_57/MatMul/ReadVariableOpÝ
sequential_11/dense_57/MatMulMatMul*sequential_11/embedding/Relu:activations:04sequential_11/dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_57/MatMulÒ
-sequential_11/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_11/dense_57/BiasAdd/ReadVariableOpÞ
sequential_11/dense_57/BiasAddBiasAdd'sequential_11/dense_57/MatMul:product:05sequential_11/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_11/dense_57/BiasAdd
sequential_11/dense_57/ReluRelu'sequential_11/dense_57/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_57/ReluÔ
,sequential_11/dense_58/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_58_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_11/dense_58/MatMul/ReadVariableOpÜ
sequential_11/dense_58/MatMulMatMul)sequential_11/dense_57/Relu:activations:04sequential_11/dense_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_58/MatMulÒ
-sequential_11/dense_58/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_58_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_11/dense_58/BiasAdd/ReadVariableOpÞ
sequential_11/dense_58/BiasAddBiasAdd'sequential_11/dense_58/MatMul:product:05sequential_11/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_11/dense_58/BiasAdd
sequential_11/dense_58/ReluRelu'sequential_11/dense_58/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_11/dense_58/ReluÔ
,sequential_11/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_59_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02.
,sequential_11/dense_59/MatMul/ReadVariableOpÜ
sequential_11/dense_59/MatMulMatMul)sequential_11/dense_58/Relu:activations:04sequential_11/dense_59/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
sequential_11/dense_59/MatMulÒ
-sequential_11/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_59_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02/
-sequential_11/dense_59/BiasAdd/ReadVariableOpÞ
sequential_11/dense_59/BiasAddBiasAdd'sequential_11/dense_59/MatMul:product:05sequential_11/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_11/dense_59/BiasAdd§
sequential_11/dense_59/SigmoidSigmoid'sequential_11/dense_59/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_11/dense_59/Sigmoid~
IdentityIdentity"sequential_11/dense_59/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity
NoOpNoOp.^sequential_11/dense_55/BiasAdd/ReadVariableOp-^sequential_11/dense_55/MatMul/ReadVariableOp.^sequential_11/dense_56/BiasAdd/ReadVariableOp-^sequential_11/dense_56/MatMul/ReadVariableOp.^sequential_11/dense_57/BiasAdd/ReadVariableOp-^sequential_11/dense_57/MatMul/ReadVariableOp.^sequential_11/dense_58/BiasAdd/ReadVariableOp-^sequential_11/dense_58/MatMul/ReadVariableOp.^sequential_11/dense_59/BiasAdd/ReadVariableOp-^sequential_11/dense_59/MatMul/ReadVariableOp/^sequential_11/embedding/BiasAdd/ReadVariableOp.^sequential_11/embedding/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2^
-sequential_11/dense_55/BiasAdd/ReadVariableOp-sequential_11/dense_55/BiasAdd/ReadVariableOp2\
,sequential_11/dense_55/MatMul/ReadVariableOp,sequential_11/dense_55/MatMul/ReadVariableOp2^
-sequential_11/dense_56/BiasAdd/ReadVariableOp-sequential_11/dense_56/BiasAdd/ReadVariableOp2\
,sequential_11/dense_56/MatMul/ReadVariableOp,sequential_11/dense_56/MatMul/ReadVariableOp2^
-sequential_11/dense_57/BiasAdd/ReadVariableOp-sequential_11/dense_57/BiasAdd/ReadVariableOp2\
,sequential_11/dense_57/MatMul/ReadVariableOp,sequential_11/dense_57/MatMul/ReadVariableOp2^
-sequential_11/dense_58/BiasAdd/ReadVariableOp-sequential_11/dense_58/BiasAdd/ReadVariableOp2\
,sequential_11/dense_58/MatMul/ReadVariableOp,sequential_11/dense_58/MatMul/ReadVariableOp2^
-sequential_11/dense_59/BiasAdd/ReadVariableOp-sequential_11/dense_59/BiasAdd/ReadVariableOp2\
,sequential_11/dense_59/MatMul/ReadVariableOp,sequential_11/dense_59/MatMul/ReadVariableOp2`
.sequential_11/embedding/BiasAdd/ReadVariableOp.sequential_11/embedding/BiasAdd/ReadVariableOp2^
-sequential_11/embedding/MatMul/ReadVariableOp-sequential_11/embedding/MatMul/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_12
ûW
÷
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712111

inputs%
dense_55_25712050:
Ð
 
dense_55_25712052:	%
dense_56_25712055:
 
dense_56_25712057:	%
embedding_25712060:	C 
embedding_25712062:C$
dense_57_25712065:	C 
dense_57_25712067:	%
dense_58_25712070:
 
dense_58_25712072:	%
dense_59_25712075:
Ô 
dense_59_25712077:	Ô
identity¢ dense_55/StatefulPartitionedCall¢1dense_55/kernel/Regularizer/Square/ReadVariableOp¢ dense_56/StatefulPartitionedCall¢1dense_56/kernel/Regularizer/Square/ReadVariableOp¢ dense_57/StatefulPartitionedCall¢1dense_57/kernel/Regularizer/Square/ReadVariableOp¢ dense_58/StatefulPartitionedCall¢1dense_58/kernel/Regularizer/Square/ReadVariableOp¢ dense_59/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_11/PartitionedCallPartitionedCallinputs*
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
H__inference_flatten_11_layer_call_and_return_conditional_losses_257117572
flatten_11/PartitionedCall»
 dense_55/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_55_25712050dense_55_25712052*
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
F__inference_dense_55_layer_call_and_return_conditional_losses_257117762"
 dense_55/StatefulPartitionedCallÁ
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_25712055dense_56_25712057*
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
F__inference_dense_56_layer_call_and_return_conditional_losses_257117992"
 dense_56/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0embedding_25712060embedding_25712062*
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
G__inference_embedding_layer_call_and_return_conditional_losses_257118222#
!embedding/StatefulPartitionedCallÂ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_57_25712065dense_57_25712067*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_257118452"
 dense_57/StatefulPartitionedCallÁ
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_25712070dense_58_25712072*
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
F__inference_dense_58_layer_call_and_return_conditional_losses_257118682"
 dense_58/StatefulPartitionedCallÁ
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_25712075dense_59_25712077*
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
F__inference_dense_59_layer_call_and_return_conditional_losses_257118852"
 dense_59/StatefulPartitionedCallº
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_25712050* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mulº
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_25712055* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_25712060*
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
 *X×
82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_25712065*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mulº
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_25712070* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_55/StatefulPartitionedCall2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall2^dense_58/kernel/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
ÿ

+__inference_dense_55_layer_call_fn_25712621

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
F__inference_dense_55_layer_call_and_return_conditional_losses_257117762
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
Á
µ
__inference_loss_fn_1_25712791N
:dense_56_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_56/kernel/Regularizer/Square/ReadVariableOpã
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_56_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mulm
IdentityIdentity#dense_56/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp
ä
d
H__inference_flatten_11_layer_call_and_return_conditional_losses_25712584

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

®
G__inference_embedding_layer_call_and_return_conditional_losses_25711822

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
 *X×
82$
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
Ã
»
0__inference_sequential_11_layer_call_fn_25712549

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
K__inference_sequential_11_layer_call_and_return_conditional_losses_257119222
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
ÿ

+__inference_dense_58_layer_call_fn_25712749

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
F__inference_dense_58_layer_call_and_return_conditional_losses_257118682
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
ÿ

+__inference_dense_59_layer_call_fn_25712769

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
F__inference_dense_59_layer_call_and_return_conditional_losses_257118852
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
¶p
Æ
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712520

inputs;
'dense_55_matmul_readvariableop_resource:
Ð
7
(dense_55_biasadd_readvariableop_resource:	;
'dense_56_matmul_readvariableop_resource:
7
(dense_56_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_57_matmul_readvariableop_resource:	C7
(dense_57_biasadd_readvariableop_resource:	;
'dense_58_matmul_readvariableop_resource:
7
(dense_58_biasadd_readvariableop_resource:	;
'dense_59_matmul_readvariableop_resource:
Ô7
(dense_59_biasadd_readvariableop_resource:	Ô
identity¢dense_55/BiasAdd/ReadVariableOp¢dense_55/MatMul/ReadVariableOp¢1dense_55/kernel/Regularizer/Square/ReadVariableOp¢dense_56/BiasAdd/ReadVariableOp¢dense_56/MatMul/ReadVariableOp¢1dense_56/kernel/Regularizer/Square/ReadVariableOp¢dense_57/BiasAdd/ReadVariableOp¢dense_57/MatMul/ReadVariableOp¢1dense_57/kernel/Regularizer/Square/ReadVariableOp¢dense_58/BiasAdd/ReadVariableOp¢dense_58/MatMul/ReadVariableOp¢1dense_58/kernel/Regularizer/Square/ReadVariableOp¢dense_59/BiasAdd/ReadVariableOp¢dense_59/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_11/Const
flatten_11/ReshapeReshapeinputsflatten_11/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_11/Reshapeª
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_55/MatMul/ReadVariableOp¤
dense_55/MatMulMatMulflatten_11/Reshape:output:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/MatMul¨
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_55/BiasAdd/ReadVariableOp¦
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/BiasAddt
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/Reluª
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_56/MatMul/ReadVariableOp¤
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_56/MatMul¨
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp¦
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_56/BiasAddt
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_56/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_56/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
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
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_57/MatMul/ReadVariableOp¥
dense_57/MatMulMatMulembedding/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/MatMul¨
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_57/BiasAdd/ReadVariableOp¦
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/BiasAddt
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/Reluª
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_58/MatMul/ReadVariableOp¤
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_58/MatMul¨
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_58/BiasAdd/ReadVariableOp¦
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_58/BiasAddt
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_58/Reluª
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_59/MatMul/ReadVariableOp¤
dense_59/MatMulMatMuldense_58/Relu:activations:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_59/MatMul¨
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_59/BiasAdd/ReadVariableOp¦
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_59/BiasAdd}
dense_59/SigmoidSigmoiddense_59/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_59/SigmoidÐ
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mulÐ
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mulÒ
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
 *X×
82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mulÐ
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mulp
IdentityIdentitydense_59/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs

­
F__inference_dense_57_layer_call_and_return_conditional_losses_25711845

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_57/kernel/Regularizer/Square/ReadVariableOp
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
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs

³
&__inference_signature_wrapper_25712364
input_12
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
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
#__inference__wrapped_model_257117442
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
input_12

®
F__inference_dense_56_layer_call_and_return_conditional_losses_25712644

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_56/kernel/Regularizer/Square/ReadVariableOp
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
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý

,__inference_embedding_layer_call_fn_25712685

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
G__inference_embedding_layer_call_and_return_conditional_losses_257118222
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

®
F__inference_dense_58_layer_call_and_return_conditional_losses_25711868

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_58/kernel/Regularizer/Square/ReadVariableOp
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
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
F__inference_dense_55_layer_call_and_return_conditional_losses_25711776

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_55/kernel/Regularizer/Square/ReadVariableOp
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
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs
X
ù
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712297
input_12%
dense_55_25712236:
Ð
 
dense_55_25712238:	%
dense_56_25712241:
 
dense_56_25712243:	%
embedding_25712246:	C 
embedding_25712248:C$
dense_57_25712251:	C 
dense_57_25712253:	%
dense_58_25712256:
 
dense_58_25712258:	%
dense_59_25712261:
Ô 
dense_59_25712263:	Ô
identity¢ dense_55/StatefulPartitionedCall¢1dense_55/kernel/Regularizer/Square/ReadVariableOp¢ dense_56/StatefulPartitionedCall¢1dense_56/kernel/Regularizer/Square/ReadVariableOp¢ dense_57/StatefulPartitionedCall¢1dense_57/kernel/Regularizer/Square/ReadVariableOp¢ dense_58/StatefulPartitionedCall¢1dense_58/kernel/Regularizer/Square/ReadVariableOp¢ dense_59/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_11/PartitionedCallPartitionedCallinput_12*
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
H__inference_flatten_11_layer_call_and_return_conditional_losses_257117572
flatten_11/PartitionedCall»
 dense_55/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_55_25712236dense_55_25712238*
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
F__inference_dense_55_layer_call_and_return_conditional_losses_257117762"
 dense_55/StatefulPartitionedCallÁ
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_25712241dense_56_25712243*
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
F__inference_dense_56_layer_call_and_return_conditional_losses_257117992"
 dense_56/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0embedding_25712246embedding_25712248*
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
G__inference_embedding_layer_call_and_return_conditional_losses_257118222#
!embedding/StatefulPartitionedCallÂ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_57_25712251dense_57_25712253*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_257118452"
 dense_57/StatefulPartitionedCallÁ
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_25712256dense_58_25712258*
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
F__inference_dense_58_layer_call_and_return_conditional_losses_257118682"
 dense_58/StatefulPartitionedCallÁ
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_25712261dense_59_25712263*
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
F__inference_dense_59_layer_call_and_return_conditional_losses_257118852"
 dense_59/StatefulPartitionedCallº
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_25712236* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mulº
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_25712241* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_25712246*
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
 *X×
82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_25712251*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mulº
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_25712256* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_55/StatefulPartitionedCall2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall2^dense_58/kernel/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_12
ûW
÷
K__inference_sequential_11_layer_call_and_return_conditional_losses_25711922

inputs%
dense_55_25711777:
Ð
 
dense_55_25711779:	%
dense_56_25711800:
 
dense_56_25711802:	%
embedding_25711823:	C 
embedding_25711825:C$
dense_57_25711846:	C 
dense_57_25711848:	%
dense_58_25711869:
 
dense_58_25711871:	%
dense_59_25711886:
Ô 
dense_59_25711888:	Ô
identity¢ dense_55/StatefulPartitionedCall¢1dense_55/kernel/Regularizer/Square/ReadVariableOp¢ dense_56/StatefulPartitionedCall¢1dense_56/kernel/Regularizer/Square/ReadVariableOp¢ dense_57/StatefulPartitionedCall¢1dense_57/kernel/Regularizer/Square/ReadVariableOp¢ dense_58/StatefulPartitionedCall¢1dense_58/kernel/Regularizer/Square/ReadVariableOp¢ dense_59/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_11/PartitionedCallPartitionedCallinputs*
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
H__inference_flatten_11_layer_call_and_return_conditional_losses_257117572
flatten_11/PartitionedCall»
 dense_55/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_55_25711777dense_55_25711779*
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
F__inference_dense_55_layer_call_and_return_conditional_losses_257117762"
 dense_55/StatefulPartitionedCallÁ
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_25711800dense_56_25711802*
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
F__inference_dense_56_layer_call_and_return_conditional_losses_257117992"
 dense_56/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0embedding_25711823embedding_25711825*
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
G__inference_embedding_layer_call_and_return_conditional_losses_257118222#
!embedding/StatefulPartitionedCallÂ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_57_25711846dense_57_25711848*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_257118452"
 dense_57/StatefulPartitionedCallÁ
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_25711869dense_58_25711871*
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
F__inference_dense_58_layer_call_and_return_conditional_losses_257118682"
 dense_58/StatefulPartitionedCallÁ
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_25711886dense_59_25711888*
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
F__inference_dense_59_layer_call_and_return_conditional_losses_257118852"
 dense_59/StatefulPartitionedCallº
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_25711777* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mulº
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_25711800* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_25711823*
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
 *X×
82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_25711846*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mulº
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_25711869* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_55/StatefulPartitionedCall2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall2^dense_58/kernel/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs

ú
F__inference_dense_59_layer_call_and_return_conditional_losses_25711885

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
X
ù
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712232
input_12%
dense_55_25712171:
Ð
 
dense_55_25712173:	%
dense_56_25712176:
 
dense_56_25712178:	%
embedding_25712181:	C 
embedding_25712183:C$
dense_57_25712186:	C 
dense_57_25712188:	%
dense_58_25712191:
 
dense_58_25712193:	%
dense_59_25712196:
Ô 
dense_59_25712198:	Ô
identity¢ dense_55/StatefulPartitionedCall¢1dense_55/kernel/Regularizer/Square/ReadVariableOp¢ dense_56/StatefulPartitionedCall¢1dense_56/kernel/Regularizer/Square/ReadVariableOp¢ dense_57/StatefulPartitionedCall¢1dense_57/kernel/Regularizer/Square/ReadVariableOp¢ dense_58/StatefulPartitionedCall¢1dense_58/kernel/Regularizer/Square/ReadVariableOp¢ dense_59/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_11/PartitionedCallPartitionedCallinput_12*
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
H__inference_flatten_11_layer_call_and_return_conditional_losses_257117572
flatten_11/PartitionedCall»
 dense_55/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_55_25712171dense_55_25712173*
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
F__inference_dense_55_layer_call_and_return_conditional_losses_257117762"
 dense_55/StatefulPartitionedCallÁ
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_25712176dense_56_25712178*
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
F__inference_dense_56_layer_call_and_return_conditional_losses_257117992"
 dense_56/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0embedding_25712181embedding_25712183*
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
G__inference_embedding_layer_call_and_return_conditional_losses_257118222#
!embedding/StatefulPartitionedCallÂ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_57_25712186dense_57_25712188*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_257118452"
 dense_57/StatefulPartitionedCallÁ
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_25712191dense_58_25712193*
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
F__inference_dense_58_layer_call_and_return_conditional_losses_257118682"
 dense_58/StatefulPartitionedCallÁ
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_25712196dense_59_25712198*
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
F__inference_dense_59_layer_call_and_return_conditional_losses_257118852"
 dense_59/StatefulPartitionedCallº
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_25712171* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mulº
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_25712176* 
_output_shapes
:
*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp¸
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_56/kernel/Regularizer/Square
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const¾
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_56/kernel/Regularizer/mul/xÀ
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_25712181*
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
 *X×
82$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_25712186*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mulº
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_25712191* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_55/StatefulPartitionedCall2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall2^dense_58/kernel/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_12
Á
µ
__inference_loss_fn_4_25712824N
:dense_58_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_58/kernel/Regularizer/Square/ReadVariableOpã
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_58_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp¸
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_58/kernel/Regularizer/Square
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const¾
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_58/kernel/Regularizer/mul/xÀ
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mulm
IdentityIdentity#dense_58/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp

­
F__inference_dense_57_layer_call_and_return_conditional_losses_25712708

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_57/kernel/Regularizer/Square/ReadVariableOp
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
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp·
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_57/kernel/Regularizer/Square
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const¾
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_57/kernel/Regularizer/mul/xÀ
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs

®
F__inference_dense_55_layer_call_and_return_conditional_losses_25712612

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_55/kernel/Regularizer/Square/ReadVariableOp
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
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp¸
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_55/kernel/Regularizer/Square
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const¾
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *X×
82#
!dense_55/kernel/Regularizer/mul/xÀ
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs

®
G__inference_embedding_layer_call_and_return_conditional_losses_25712676

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
 *X×
82$
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
ÿ

+__inference_dense_56_layer_call_fn_25712653

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
F__inference_dense_56_layer_call_and_return_conditional_losses_257117992
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
É
½
0__inference_sequential_11_layer_call_fn_25711949
input_12
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
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_11_layer_call_and_return_conditional_losses_257119222
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
input_12
ä
d
H__inference_flatten_11_layer_call_and_return_conditional_losses_25711757

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
ü

+__inference_dense_57_layer_call_fn_25712717

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
F__inference_dense_57_layer_call_and_return_conditional_losses_257118452
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
Ö
¶
__inference_loss_fn_2_25712802N
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
 *X×
82$
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
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp

ú
F__inference_dense_59_layer_call_and_return_conditional_losses_25712760

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
éÑ
Ó
$__inference__traced_restore_25713151
file_prefix4
 assignvariableop_dense_55_kernel:
Ð
/
 assignvariableop_1_dense_55_bias:	6
"assignvariableop_2_dense_56_kernel:
/
 assignvariableop_3_dense_56_bias:	6
#assignvariableop_4_embedding_kernel:	C/
!assignvariableop_5_embedding_bias:C5
"assignvariableop_6_dense_57_kernel:	C/
 assignvariableop_7_dense_57_bias:	6
"assignvariableop_8_dense_58_kernel:
/
 assignvariableop_9_dense_58_bias:	7
#assignvariableop_10_dense_59_kernel:
Ô0
!assignvariableop_11_dense_59_bias:	Ô'
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
*assignvariableop_25_adam_dense_55_kernel_m:
Ð
7
(assignvariableop_26_adam_dense_55_bias_m:	>
*assignvariableop_27_adam_dense_56_kernel_m:
7
(assignvariableop_28_adam_dense_56_bias_m:	>
+assignvariableop_29_adam_embedding_kernel_m:	C7
)assignvariableop_30_adam_embedding_bias_m:C=
*assignvariableop_31_adam_dense_57_kernel_m:	C7
(assignvariableop_32_adam_dense_57_bias_m:	>
*assignvariableop_33_adam_dense_58_kernel_m:
7
(assignvariableop_34_adam_dense_58_bias_m:	>
*assignvariableop_35_adam_dense_59_kernel_m:
Ô7
(assignvariableop_36_adam_dense_59_bias_m:	Ô>
*assignvariableop_37_adam_dense_55_kernel_v:
Ð
7
(assignvariableop_38_adam_dense_55_bias_v:	>
*assignvariableop_39_adam_dense_56_kernel_v:
7
(assignvariableop_40_adam_dense_56_bias_v:	>
+assignvariableop_41_adam_embedding_kernel_v:	C7
)assignvariableop_42_adam_embedding_bias_v:C=
*assignvariableop_43_adam_dense_57_kernel_v:	C7
(assignvariableop_44_adam_dense_57_bias_v:	>
*assignvariableop_45_adam_dense_58_kernel_v:
7
(assignvariableop_46_adam_dense_58_bias_v:	>
*assignvariableop_47_adam_dense_59_kernel_v:
Ô7
(assignvariableop_48_adam_dense_59_bias_v:	Ô
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
AssignVariableOpAssignVariableOp assignvariableop_dense_55_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_55_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_56_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_56_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_57_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_57_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_58_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_58_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10«
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_59_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_59_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_55_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_55_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_56_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_56_bias_mIdentity_28:output:0"/device:CPU:0*
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
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_57_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_57_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_58_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_58_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_59_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_59_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_55_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_55_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_56_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_56_bias_vIdentity_40:output:0"/device:CPU:0*
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
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_57_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44°
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_57_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45²
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_58_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46°
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_58_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47²
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_59_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48°
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_59_bias_vIdentity_48:output:0"/device:CPU:0*
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
É
½
0__inference_sequential_11_layer_call_fn_25712167
input_12
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
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_11_layer_call_and_return_conditional_losses_257121112
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
input_12"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
B
input_126
serving_default_input_12:0ÿÿÿÿÿÿÿÿÿÔ=
dense_591
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
2dense_55/kernel
:2dense_55/bias
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
2dense_56/kernel
:2dense_56/bias
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
": 	C2dense_57/kernel
:2dense_57/bias
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
2dense_58/kernel
:2dense_58/bias
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
Ô2dense_59/kernel
:Ô2dense_59/bias
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
2Adam/dense_55/kernel/m
!:2Adam/dense_55/bias/m
(:&
2Adam/dense_56/kernel/m
!:2Adam/dense_56/bias/m
(:&	C2Adam/embedding/kernel/m
!:C2Adam/embedding/bias/m
':%	C2Adam/dense_57/kernel/m
!:2Adam/dense_57/bias/m
(:&
2Adam/dense_58/kernel/m
!:2Adam/dense_58/bias/m
(:&
Ô2Adam/dense_59/kernel/m
!:Ô2Adam/dense_59/bias/m
(:&
Ð
2Adam/dense_55/kernel/v
!:2Adam/dense_55/bias/v
(:&
2Adam/dense_56/kernel/v
!:2Adam/dense_56/bias/v
(:&	C2Adam/embedding/kernel/v
!:C2Adam/embedding/bias/v
':%	C2Adam/dense_57/kernel/v
!:2Adam/dense_57/bias/v
(:&
2Adam/dense_58/kernel/v
!:2Adam/dense_58/bias/v
(:&
Ô2Adam/dense_59/kernel/v
!:Ô2Adam/dense_59/bias/v
ú2÷
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712442
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712520
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712232
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712297À
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
#__inference__wrapped_model_25711744¼
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
input_12ÿÿÿÿÿÿÿÿÿÔ
2
0__inference_sequential_11_layer_call_fn_25711949
0__inference_sequential_11_layer_call_fn_25712549
0__inference_sequential_11_layer_call_fn_25712578
0__inference_sequential_11_layer_call_fn_25712167À
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
H__inference_flatten_11_layer_call_and_return_conditional_losses_25712584¢
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
-__inference_flatten_11_layer_call_fn_25712589¢
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
F__inference_dense_55_layer_call_and_return_conditional_losses_25712612¢
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
+__inference_dense_55_layer_call_fn_25712621¢
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
F__inference_dense_56_layer_call_and_return_conditional_losses_25712644¢
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
+__inference_dense_56_layer_call_fn_25712653¢
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
G__inference_embedding_layer_call_and_return_conditional_losses_25712676¢
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
,__inference_embedding_layer_call_fn_25712685¢
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
F__inference_dense_57_layer_call_and_return_conditional_losses_25712708¢
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
+__inference_dense_57_layer_call_fn_25712717¢
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
F__inference_dense_58_layer_call_and_return_conditional_losses_25712740¢
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
+__inference_dense_58_layer_call_fn_25712749¢
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
F__inference_dense_59_layer_call_and_return_conditional_losses_25712760¢
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
+__inference_dense_59_layer_call_fn_25712769¢
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
__inference_loss_fn_0_25712780
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
__inference_loss_fn_1_25712791
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
__inference_loss_fn_2_25712802
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
__inference_loss_fn_3_25712813
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
__inference_loss_fn_4_25712824
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
&__inference_signature_wrapper_25712364input_12"
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
#__inference__wrapped_model_25711744|$%*+016¢3
,¢)
'$
input_12ÿÿÿÿÿÿÿÿÿÔ
ª "4ª1
/
dense_59# 
dense_59ÿÿÿÿÿÿÿÿÿÔ¨
F__inference_dense_55_layer_call_and_return_conditional_losses_25712612^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_55_layer_call_fn_25712621Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_56_layer_call_and_return_conditional_losses_25712644^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_56_layer_call_fn_25712653Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_57_layer_call_and_return_conditional_losses_25712708]$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_57_layer_call_fn_25712717P$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_58_layer_call_and_return_conditional_losses_25712740^*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_58_layer_call_fn_25712749Q*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_59_layer_call_and_return_conditional_losses_25712760^010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 
+__inference_dense_59_layer_call_fn_25712769Q010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÔ¨
G__inference_embedding_layer_call_and_return_conditional_losses_25712676]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿC
 
,__inference_embedding_layer_call_fn_25712685P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿCª
H__inference_flatten_11_layer_call_and_return_conditional_losses_25712584^4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÐ

 
-__inference_flatten_11_layer_call_fn_25712589Q4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "ÿÿÿÿÿÿÿÿÿÐ
=
__inference_loss_fn_0_25712780¢

¢ 
ª " =
__inference_loss_fn_1_25712791¢

¢ 
ª " =
__inference_loss_fn_2_25712802¢

¢ 
ª " =
__inference_loss_fn_3_25712813$¢

¢ 
ª " =
__inference_loss_fn_4_25712824*¢

¢ 
ª " Å
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712232v$%*+01>¢;
4¢1
'$
input_12ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Å
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712297v$%*+01>¢;
4¢1
'$
input_12ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Ã
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712442t$%*+01<¢9
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
K__inference_sequential_11_layer_call_and_return_conditional_losses_25712520t$%*+01<¢9
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
0__inference_sequential_11_layer_call_fn_25711949i$%*+01>¢;
4¢1
'$
input_12ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_11_layer_call_fn_25712167i$%*+01>¢;
4¢1
'$
input_12ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_11_layer_call_fn_25712549g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_11_layer_call_fn_25712578g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ³
&__inference_signature_wrapper_25712364$%*+01B¢?
¢ 
8ª5
3
input_12'$
input_12ÿÿÿÿÿÿÿÿÿÔ"4ª1
/
dense_59# 
dense_59ÿÿÿÿÿÿÿÿÿÔ