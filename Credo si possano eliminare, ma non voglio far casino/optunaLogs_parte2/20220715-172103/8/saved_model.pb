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
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
* 
shared_namedense_50/kernel
u
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel* 
_output_shapes
:
Ð
*
dtype0
s
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_50/bias
l
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes	
:*
dtype0
|
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_51/kernel
u
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel* 
_output_shapes
:
*
dtype0
s
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_51/bias
l
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
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
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C* 
shared_namedense_52/kernel
t
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes
:	C*
dtype0
s
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_52/bias
l
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes	
:*
dtype0
|
dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_53/kernel
u
#dense_53/kernel/Read/ReadVariableOpReadVariableOpdense_53/kernel* 
_output_shapes
:
*
dtype0
s
dense_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_53/bias
l
!dense_53/bias/Read/ReadVariableOpReadVariableOpdense_53/bias*
_output_shapes	
:*
dtype0
|
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô* 
shared_namedense_54/kernel
u
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel* 
_output_shapes
:
Ô*
dtype0
s
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*
shared_namedense_54/bias
l
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
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
Adam/dense_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_50/kernel/m

*Adam/dense_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/m* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_50/bias/m
z
(Adam/dense_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_51/kernel/m

*Adam/dense_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/m
z
(Adam/dense_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/m*
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
Adam/dense_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_52/kernel/m

*Adam/dense_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/m*
_output_shapes
:	C*
dtype0

Adam/dense_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_52/bias/m
z
(Adam/dense_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_53/kernel/m

*Adam/dense_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/m
z
(Adam/dense_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_54/kernel/m

*Adam/dense_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/m* 
_output_shapes
:
Ô*
dtype0

Adam/dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_54/bias/m
z
(Adam/dense_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/m*
_output_shapes	
:Ô*
dtype0

Adam/dense_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_50/kernel/v

*Adam/dense_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/v* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_50/bias/v
z
(Adam/dense_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_51/kernel/v

*Adam/dense_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/v
z
(Adam/dense_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/v*
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
Adam/dense_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_52/kernel/v

*Adam/dense_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/v*
_output_shapes
:	C*
dtype0

Adam/dense_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_52/bias/v
z
(Adam/dense_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_53/kernel/v

*Adam/dense_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/v
z
(Adam/dense_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_54/kernel/v

*Adam/dense_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/v* 
_output_shapes
:
Ô*
dtype0

Adam/dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_54/bias/v
z
(Adam/dense_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/v*
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
VARIABLE_VALUEdense_50/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_50/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_51/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_51/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_52/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_52/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_53/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_53/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_54/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_50/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_50/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_51/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_52/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_53/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_53/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_54/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_50/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_50/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_51/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_52/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_53/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_53/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_54/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_11Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿÔ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11dense_50/kerneldense_50/biasdense_51/kerneldense_51/biasembedding/kernelembedding/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/biasdense_54/kerneldense_54/bias*
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
&__inference_signature_wrapper_23374648
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOp$embedding/kernel/Read/ReadVariableOp"embedding/bias/Read/ReadVariableOp#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOp#dense_53/kernel/Read/ReadVariableOp!dense_53/bias/Read/ReadVariableOp#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp*Adam/dense_50/kernel/m/Read/ReadVariableOp(Adam/dense_50/bias/m/Read/ReadVariableOp*Adam/dense_51/kernel/m/Read/ReadVariableOp(Adam/dense_51/bias/m/Read/ReadVariableOp+Adam/embedding/kernel/m/Read/ReadVariableOp)Adam/embedding/bias/m/Read/ReadVariableOp*Adam/dense_52/kernel/m/Read/ReadVariableOp(Adam/dense_52/bias/m/Read/ReadVariableOp*Adam/dense_53/kernel/m/Read/ReadVariableOp(Adam/dense_53/bias/m/Read/ReadVariableOp*Adam/dense_54/kernel/m/Read/ReadVariableOp(Adam/dense_54/bias/m/Read/ReadVariableOp*Adam/dense_50/kernel/v/Read/ReadVariableOp(Adam/dense_50/bias/v/Read/ReadVariableOp*Adam/dense_51/kernel/v/Read/ReadVariableOp(Adam/dense_51/bias/v/Read/ReadVariableOp+Adam/embedding/kernel/v/Read/ReadVariableOp)Adam/embedding/bias/v/Read/ReadVariableOp*Adam/dense_52/kernel/v/Read/ReadVariableOp(Adam/dense_52/bias/v/Read/ReadVariableOp*Adam/dense_53/kernel/v/Read/ReadVariableOp(Adam/dense_53/bias/v/Read/ReadVariableOp*Adam/dense_54/kernel/v/Read/ReadVariableOp(Adam/dense_54/bias/v/Read/ReadVariableOpConst*>
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
!__inference__traced_save_23375278
ã	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_50/kerneldense_50/biasdense_51/kerneldense_51/biasembedding/kernelembedding/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/biasdense_54/kerneldense_54/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivesfalse_positivestrue_positives_1false_negativesAdam/dense_50/kernel/mAdam/dense_50/bias/mAdam/dense_51/kernel/mAdam/dense_51/bias/mAdam/embedding/kernel/mAdam/embedding/bias/mAdam/dense_52/kernel/mAdam/dense_52/bias/mAdam/dense_53/kernel/mAdam/dense_53/bias/mAdam/dense_54/kernel/mAdam/dense_54/bias/mAdam/dense_50/kernel/vAdam/dense_50/bias/vAdam/dense_51/kernel/vAdam/dense_51/bias/vAdam/embedding/kernel/vAdam/embedding/bias/vAdam/dense_52/kernel/vAdam/dense_52/bias/vAdam/dense_53/kernel/vAdam/dense_53/bias/vAdam/dense_54/kernel/vAdam/dense_54/bias/v*=
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
$__inference__traced_restore_23375435¸í

ÿ

+__inference_dense_53_layer_call_fn_23375033

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
F__inference_dense_53_layer_call_and_return_conditional_losses_233741522
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
É
½
0__inference_sequential_10_layer_call_fn_23374451
input_11
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
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_10_layer_call_and_return_conditional_losses_233743952
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
input_11
ÿ

+__inference_dense_50_layer_call_fn_23374905

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
F__inference_dense_50_layer_call_and_return_conditional_losses_233740602
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

®
F__inference_dense_51_layer_call_and_return_conditional_losses_23374083

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_51/kernel/Regularizer/Square/ReadVariableOp
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
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ú
F__inference_dense_54_layer_call_and_return_conditional_losses_23375044

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
Ö
¶
__inference_loss_fn_2_23375086N
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
 *_]z72$
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
ü

+__inference_dense_52_layer_call_fn_23375001

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
F__inference_dense_52_layer_call_and_return_conditional_losses_233741292
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
ý

,__inference_embedding_layer_call_fn_23374969

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
G__inference_embedding_layer_call_and_return_conditional_losses_233741062
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
ä
d
H__inference_flatten_10_layer_call_and_return_conditional_losses_23374041

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
ñc
ô
!__inference__traced_save_23375278
file_prefix.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop/
+savev2_embedding_kernel_read_readvariableop-
)savev2_embedding_bias_read_readvariableop.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop.
*savev2_dense_53_kernel_read_readvariableop,
(savev2_dense_53_bias_read_readvariableop.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop(
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
1savev2_adam_dense_50_kernel_m_read_readvariableop3
/savev2_adam_dense_50_bias_m_read_readvariableop5
1savev2_adam_dense_51_kernel_m_read_readvariableop3
/savev2_adam_dense_51_bias_m_read_readvariableop6
2savev2_adam_embedding_kernel_m_read_readvariableop4
0savev2_adam_embedding_bias_m_read_readvariableop5
1savev2_adam_dense_52_kernel_m_read_readvariableop3
/savev2_adam_dense_52_bias_m_read_readvariableop5
1savev2_adam_dense_53_kernel_m_read_readvariableop3
/savev2_adam_dense_53_bias_m_read_readvariableop5
1savev2_adam_dense_54_kernel_m_read_readvariableop3
/savev2_adam_dense_54_bias_m_read_readvariableop5
1savev2_adam_dense_50_kernel_v_read_readvariableop3
/savev2_adam_dense_50_bias_v_read_readvariableop5
1savev2_adam_dense_51_kernel_v_read_readvariableop3
/savev2_adam_dense_51_bias_v_read_readvariableop6
2savev2_adam_embedding_kernel_v_read_readvariableop4
0savev2_adam_embedding_bias_v_read_readvariableop5
1savev2_adam_dense_52_kernel_v_read_readvariableop3
/savev2_adam_dense_52_bias_v_read_readvariableop5
1savev2_adam_dense_53_kernel_v_read_readvariableop3
/savev2_adam_dense_53_bias_v_read_readvariableop5
1savev2_adam_dense_54_kernel_v_read_readvariableop3
/savev2_adam_dense_54_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop+savev2_embedding_kernel_read_readvariableop)savev2_embedding_bias_read_readvariableop*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop*savev2_dense_53_kernel_read_readvariableop(savev2_dense_53_bias_read_readvariableop*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop1savev2_adam_dense_50_kernel_m_read_readvariableop/savev2_adam_dense_50_bias_m_read_readvariableop1savev2_adam_dense_51_kernel_m_read_readvariableop/savev2_adam_dense_51_bias_m_read_readvariableop2savev2_adam_embedding_kernel_m_read_readvariableop0savev2_adam_embedding_bias_m_read_readvariableop1savev2_adam_dense_52_kernel_m_read_readvariableop/savev2_adam_dense_52_bias_m_read_readvariableop1savev2_adam_dense_53_kernel_m_read_readvariableop/savev2_adam_dense_53_bias_m_read_readvariableop1savev2_adam_dense_54_kernel_m_read_readvariableop/savev2_adam_dense_54_bias_m_read_readvariableop1savev2_adam_dense_50_kernel_v_read_readvariableop/savev2_adam_dense_50_bias_v_read_readvariableop1savev2_adam_dense_51_kernel_v_read_readvariableop/savev2_adam_dense_51_bias_v_read_readvariableop2savev2_adam_embedding_kernel_v_read_readvariableop0savev2_adam_embedding_bias_v_read_readvariableop1savev2_adam_dense_52_kernel_v_read_readvariableop/savev2_adam_dense_52_bias_v_read_readvariableop1savev2_adam_dense_53_kernel_v_read_readvariableop/savev2_adam_dense_53_bias_v_read_readvariableop1savev2_adam_dense_54_kernel_v_read_readvariableop/savev2_adam_dense_54_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

ú
F__inference_dense_54_layer_call_and_return_conditional_losses_23374169

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
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374516
input_11%
dense_50_23374455:
Ð
 
dense_50_23374457:	%
dense_51_23374460:
 
dense_51_23374462:	%
embedding_23374465:	C 
embedding_23374467:C$
dense_52_23374470:	C 
dense_52_23374472:	%
dense_53_23374475:
 
dense_53_23374477:	%
dense_54_23374480:
Ô 
dense_54_23374482:	Ô
identity¢ dense_50/StatefulPartitionedCall¢1dense_50/kernel/Regularizer/Square/ReadVariableOp¢ dense_51/StatefulPartitionedCall¢1dense_51/kernel/Regularizer/Square/ReadVariableOp¢ dense_52/StatefulPartitionedCall¢1dense_52/kernel/Regularizer/Square/ReadVariableOp¢ dense_53/StatefulPartitionedCall¢1dense_53/kernel/Regularizer/Square/ReadVariableOp¢ dense_54/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_10/PartitionedCallPartitionedCallinput_11*
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
H__inference_flatten_10_layer_call_and_return_conditional_losses_233740412
flatten_10/PartitionedCall»
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_50_23374455dense_50_23374457*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_233740602"
 dense_50/StatefulPartitionedCallÁ
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_23374460dense_51_23374462*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_233740832"
 dense_51/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0embedding_23374465embedding_23374467*
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
G__inference_embedding_layer_call_and_return_conditional_losses_233741062#
!embedding/StatefulPartitionedCallÂ
 dense_52/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_52_23374470dense_52_23374472*
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
F__inference_dense_52_layer_call_and_return_conditional_losses_233741292"
 dense_52/StatefulPartitionedCallÁ
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_23374475dense_53_23374477*
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
F__inference_dense_53_layer_call_and_return_conditional_losses_233741522"
 dense_53/StatefulPartitionedCallÁ
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_23374480dense_54_23374482*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_233741692"
 dense_54/StatefulPartitionedCallº
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_23374455* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulº
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_23374460* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_23374465*
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
 *_]z72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_23374470*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulº
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_23374475* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp!^dense_54/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_11
¾
´
__inference_loss_fn_3_23375097M
:dense_52_kernel_regularizer_square_readvariableop_resource:	C
identity¢1dense_52/kernel/Regularizer/Square/ReadVariableOpâ
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_52_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulm
IdentityIdentity#dense_52/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp
É
½
0__inference_sequential_10_layer_call_fn_23374233
input_11
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
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_10_layer_call_and_return_conditional_losses_233742062
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
input_11
ä
d
H__inference_flatten_10_layer_call_and_return_conditional_losses_23374868

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
Á
µ
__inference_loss_fn_1_23375075N
:dense_51_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_51/kernel/Regularizer/Square/ReadVariableOpã
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_51_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mulm
IdentityIdentity#dense_51/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp

³
&__inference_signature_wrapper_23374648
input_11
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
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
#__inference__wrapped_model_233740282
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
input_11

®
F__inference_dense_53_layer_call_and_return_conditional_losses_23374152

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_53/kernel/Regularizer/Square/ReadVariableOp
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
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
»
0__inference_sequential_10_layer_call_fn_23374833

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
K__inference_sequential_10_layer_call_and_return_conditional_losses_233742062
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

®
G__inference_embedding_layer_call_and_return_conditional_losses_23374106

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
 *_]z72$
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
F__inference_dense_53_layer_call_and_return_conditional_losses_23375024

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_53/kernel/Regularizer/Square/ReadVariableOp
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
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
»
0__inference_sequential_10_layer_call_fn_23374862

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
K__inference_sequential_10_layer_call_and_return_conditional_losses_233743952
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
F__inference_dense_50_layer_call_and_return_conditional_losses_23374896

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_50/kernel/Regularizer/Square/ReadVariableOp
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
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs
Ó
I
-__inference_flatten_10_layer_call_fn_23374873

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
H__inference_flatten_10_layer_call_and_return_conditional_losses_233740412
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
X
ù
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374581
input_11%
dense_50_23374520:
Ð
 
dense_50_23374522:	%
dense_51_23374525:
 
dense_51_23374527:	%
embedding_23374530:	C 
embedding_23374532:C$
dense_52_23374535:	C 
dense_52_23374537:	%
dense_53_23374540:
 
dense_53_23374542:	%
dense_54_23374545:
Ô 
dense_54_23374547:	Ô
identity¢ dense_50/StatefulPartitionedCall¢1dense_50/kernel/Regularizer/Square/ReadVariableOp¢ dense_51/StatefulPartitionedCall¢1dense_51/kernel/Regularizer/Square/ReadVariableOp¢ dense_52/StatefulPartitionedCall¢1dense_52/kernel/Regularizer/Square/ReadVariableOp¢ dense_53/StatefulPartitionedCall¢1dense_53/kernel/Regularizer/Square/ReadVariableOp¢ dense_54/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_10/PartitionedCallPartitionedCallinput_11*
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
H__inference_flatten_10_layer_call_and_return_conditional_losses_233740412
flatten_10/PartitionedCall»
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_50_23374520dense_50_23374522*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_233740602"
 dense_50/StatefulPartitionedCallÁ
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_23374525dense_51_23374527*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_233740832"
 dense_51/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0embedding_23374530embedding_23374532*
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
G__inference_embedding_layer_call_and_return_conditional_losses_233741062#
!embedding/StatefulPartitionedCallÂ
 dense_52/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_52_23374535dense_52_23374537*
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
F__inference_dense_52_layer_call_and_return_conditional_losses_233741292"
 dense_52/StatefulPartitionedCallÁ
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_23374540dense_53_23374542*
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
F__inference_dense_53_layer_call_and_return_conditional_losses_233741522"
 dense_53/StatefulPartitionedCallÁ
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_23374545dense_54_23374547*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_233741692"
 dense_54/StatefulPartitionedCallº
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_23374520* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulº
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_23374525* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_23374530*
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
 *_]z72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_23374535*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulº
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_23374540* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp!^dense_54/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_11

®
G__inference_embedding_layer_call_and_return_conditional_losses_23374960

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
 *_]z72$
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
F__inference_dense_51_layer_call_and_return_conditional_losses_23374928

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_51/kernel/Regularizer/Square/ReadVariableOp
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
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
µ
__inference_loss_fn_0_23375064N
:dense_50_kernel_regularizer_square_readvariableop_resource:
Ð

identity¢1dense_50/kernel/Regularizer/Square/ReadVariableOpã
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_50_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulm
IdentityIdentity#dense_50/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp
¶p
Æ
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374726

inputs;
'dense_50_matmul_readvariableop_resource:
Ð
7
(dense_50_biasadd_readvariableop_resource:	;
'dense_51_matmul_readvariableop_resource:
7
(dense_51_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_52_matmul_readvariableop_resource:	C7
(dense_52_biasadd_readvariableop_resource:	;
'dense_53_matmul_readvariableop_resource:
7
(dense_53_biasadd_readvariableop_resource:	;
'dense_54_matmul_readvariableop_resource:
Ô7
(dense_54_biasadd_readvariableop_resource:	Ô
identity¢dense_50/BiasAdd/ReadVariableOp¢dense_50/MatMul/ReadVariableOp¢1dense_50/kernel/Regularizer/Square/ReadVariableOp¢dense_51/BiasAdd/ReadVariableOp¢dense_51/MatMul/ReadVariableOp¢1dense_51/kernel/Regularizer/Square/ReadVariableOp¢dense_52/BiasAdd/ReadVariableOp¢dense_52/MatMul/ReadVariableOp¢1dense_52/kernel/Regularizer/Square/ReadVariableOp¢dense_53/BiasAdd/ReadVariableOp¢dense_53/MatMul/ReadVariableOp¢1dense_53/kernel/Regularizer/Square/ReadVariableOp¢dense_54/BiasAdd/ReadVariableOp¢dense_54/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_10/Const
flatten_10/ReshapeReshapeinputsflatten_10/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_10/Reshapeª
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_50/MatMul/ReadVariableOp¤
dense_50/MatMulMatMulflatten_10/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_50/MatMul¨
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_50/BiasAdd/ReadVariableOp¦
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_50/BiasAddt
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_50/Reluª
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_51/MatMul/ReadVariableOp¤
dense_51/MatMulMatMuldense_50/Relu:activations:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_51/MatMul¨
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_51/BiasAdd/ReadVariableOp¦
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_51/BiasAddt
dense_51/ReluReludense_51/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_51/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_51/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
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
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_52/MatMul/ReadVariableOp¥
dense_52/MatMulMatMulembedding/Relu:activations:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/MatMul¨
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_52/BiasAdd/ReadVariableOp¦
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/BiasAddt
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/Reluª
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_53/MatMul/ReadVariableOp¤
dense_53/MatMulMatMuldense_52/Relu:activations:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_53/MatMul¨
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_53/BiasAdd/ReadVariableOp¦
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_53/BiasAddt
dense_53/ReluReludense_53/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_53/Reluª
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_54/MatMul/ReadVariableOp¤
dense_54/MatMulMatMuldense_53/Relu:activations:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_54/MatMul¨
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_54/BiasAdd/ReadVariableOp¦
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_54/BiasAdd}
dense_54/SigmoidSigmoiddense_54/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_54/SigmoidÐ
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulÐ
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mulÒ
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
 *_]z72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulÐ
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mulp
IdentityIdentitydense_54/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
ûW
÷
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374395

inputs%
dense_50_23374334:
Ð
 
dense_50_23374336:	%
dense_51_23374339:
 
dense_51_23374341:	%
embedding_23374344:	C 
embedding_23374346:C$
dense_52_23374349:	C 
dense_52_23374351:	%
dense_53_23374354:
 
dense_53_23374356:	%
dense_54_23374359:
Ô 
dense_54_23374361:	Ô
identity¢ dense_50/StatefulPartitionedCall¢1dense_50/kernel/Regularizer/Square/ReadVariableOp¢ dense_51/StatefulPartitionedCall¢1dense_51/kernel/Regularizer/Square/ReadVariableOp¢ dense_52/StatefulPartitionedCall¢1dense_52/kernel/Regularizer/Square/ReadVariableOp¢ dense_53/StatefulPartitionedCall¢1dense_53/kernel/Regularizer/Square/ReadVariableOp¢ dense_54/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_10/PartitionedCallPartitionedCallinputs*
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
H__inference_flatten_10_layer_call_and_return_conditional_losses_233740412
flatten_10/PartitionedCall»
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_50_23374334dense_50_23374336*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_233740602"
 dense_50/StatefulPartitionedCallÁ
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_23374339dense_51_23374341*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_233740832"
 dense_51/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0embedding_23374344embedding_23374346*
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
G__inference_embedding_layer_call_and_return_conditional_losses_233741062#
!embedding/StatefulPartitionedCallÂ
 dense_52/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_52_23374349dense_52_23374351*
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
F__inference_dense_52_layer_call_and_return_conditional_losses_233741292"
 dense_52/StatefulPartitionedCallÁ
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_23374354dense_53_23374356*
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
F__inference_dense_53_layer_call_and_return_conditional_losses_233741522"
 dense_53/StatefulPartitionedCallÁ
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_23374359dense_54_23374361*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_233741692"
 dense_54/StatefulPartitionedCallº
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_23374334* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulº
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_23374339* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_23374344*
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
 *_]z72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_23374349*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulº
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_23374354* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp!^dense_54/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
Á
µ
__inference_loss_fn_4_23375108N
:dense_53_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_53/kernel/Regularizer/Square/ReadVariableOpã
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_53_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mulm
IdentityIdentity#dense_53/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp
¶p
Æ
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374804

inputs;
'dense_50_matmul_readvariableop_resource:
Ð
7
(dense_50_biasadd_readvariableop_resource:	;
'dense_51_matmul_readvariableop_resource:
7
(dense_51_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_52_matmul_readvariableop_resource:	C7
(dense_52_biasadd_readvariableop_resource:	;
'dense_53_matmul_readvariableop_resource:
7
(dense_53_biasadd_readvariableop_resource:	;
'dense_54_matmul_readvariableop_resource:
Ô7
(dense_54_biasadd_readvariableop_resource:	Ô
identity¢dense_50/BiasAdd/ReadVariableOp¢dense_50/MatMul/ReadVariableOp¢1dense_50/kernel/Regularizer/Square/ReadVariableOp¢dense_51/BiasAdd/ReadVariableOp¢dense_51/MatMul/ReadVariableOp¢1dense_51/kernel/Regularizer/Square/ReadVariableOp¢dense_52/BiasAdd/ReadVariableOp¢dense_52/MatMul/ReadVariableOp¢1dense_52/kernel/Regularizer/Square/ReadVariableOp¢dense_53/BiasAdd/ReadVariableOp¢dense_53/MatMul/ReadVariableOp¢1dense_53/kernel/Regularizer/Square/ReadVariableOp¢dense_54/BiasAdd/ReadVariableOp¢dense_54/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_10/Const
flatten_10/ReshapeReshapeinputsflatten_10/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_10/Reshapeª
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_50/MatMul/ReadVariableOp¤
dense_50/MatMulMatMulflatten_10/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_50/MatMul¨
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_50/BiasAdd/ReadVariableOp¦
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_50/BiasAddt
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_50/Reluª
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_51/MatMul/ReadVariableOp¤
dense_51/MatMulMatMuldense_50/Relu:activations:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_51/MatMul¨
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_51/BiasAdd/ReadVariableOp¦
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_51/BiasAddt
dense_51/ReluReludense_51/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_51/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_51/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
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
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_52/MatMul/ReadVariableOp¥
dense_52/MatMulMatMulembedding/Relu:activations:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/MatMul¨
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_52/BiasAdd/ReadVariableOp¦
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/BiasAddt
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/Reluª
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_53/MatMul/ReadVariableOp¤
dense_53/MatMulMatMuldense_52/Relu:activations:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_53/MatMul¨
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_53/BiasAdd/ReadVariableOp¦
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_53/BiasAddt
dense_53/ReluReludense_53/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_53/Reluª
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_54/MatMul/ReadVariableOp¤
dense_54/MatMulMatMuldense_53/Relu:activations:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_54/MatMul¨
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_54/BiasAdd/ReadVariableOp¦
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_54/BiasAdd}
dense_54/SigmoidSigmoiddense_54/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_54/SigmoidÐ
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulÐ
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mulÒ
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
 *_]z72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulÐ
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mulp
IdentityIdentitydense_54/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs

­
F__inference_dense_52_layer_call_and_return_conditional_losses_23374129

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_52/kernel/Regularizer/Square/ReadVariableOp
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
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs

®
F__inference_dense_50_layer_call_and_return_conditional_losses_23374060

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_50/kernel/Regularizer/Square/ReadVariableOp
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
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs

­
F__inference_dense_52_layer_call_and_return_conditional_losses_23374992

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_52/kernel/Regularizer/Square/ReadVariableOp
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
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs
éÑ
Ó
$__inference__traced_restore_23375435
file_prefix4
 assignvariableop_dense_50_kernel:
Ð
/
 assignvariableop_1_dense_50_bias:	6
"assignvariableop_2_dense_51_kernel:
/
 assignvariableop_3_dense_51_bias:	6
#assignvariableop_4_embedding_kernel:	C/
!assignvariableop_5_embedding_bias:C5
"assignvariableop_6_dense_52_kernel:	C/
 assignvariableop_7_dense_52_bias:	6
"assignvariableop_8_dense_53_kernel:
/
 assignvariableop_9_dense_53_bias:	7
#assignvariableop_10_dense_54_kernel:
Ô0
!assignvariableop_11_dense_54_bias:	Ô'
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
*assignvariableop_25_adam_dense_50_kernel_m:
Ð
7
(assignvariableop_26_adam_dense_50_bias_m:	>
*assignvariableop_27_adam_dense_51_kernel_m:
7
(assignvariableop_28_adam_dense_51_bias_m:	>
+assignvariableop_29_adam_embedding_kernel_m:	C7
)assignvariableop_30_adam_embedding_bias_m:C=
*assignvariableop_31_adam_dense_52_kernel_m:	C7
(assignvariableop_32_adam_dense_52_bias_m:	>
*assignvariableop_33_adam_dense_53_kernel_m:
7
(assignvariableop_34_adam_dense_53_bias_m:	>
*assignvariableop_35_adam_dense_54_kernel_m:
Ô7
(assignvariableop_36_adam_dense_54_bias_m:	Ô>
*assignvariableop_37_adam_dense_50_kernel_v:
Ð
7
(assignvariableop_38_adam_dense_50_bias_v:	>
*assignvariableop_39_adam_dense_51_kernel_v:
7
(assignvariableop_40_adam_dense_51_bias_v:	>
+assignvariableop_41_adam_embedding_kernel_v:	C7
)assignvariableop_42_adam_embedding_bias_v:C=
*assignvariableop_43_adam_dense_52_kernel_v:	C7
(assignvariableop_44_adam_dense_52_bias_v:	>
*assignvariableop_45_adam_dense_53_kernel_v:
7
(assignvariableop_46_adam_dense_53_bias_v:	>
*assignvariableop_47_adam_dense_54_kernel_v:
Ô7
(assignvariableop_48_adam_dense_54_bias_v:	Ô
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
AssignVariableOpAssignVariableOp assignvariableop_dense_50_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_50_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_51_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_51_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_52_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_52_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_53_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_53_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10«
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_54_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_54_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_50_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_50_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_51_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_51_bias_mIdentity_28:output:0"/device:CPU:0*
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
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_52_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_52_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_53_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_53_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_54_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_54_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_50_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_50_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_51_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_51_bias_vIdentity_40:output:0"/device:CPU:0*
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
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_52_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44°
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_52_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45²
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_53_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46°
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_53_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47²
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_54_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48°
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_54_bias_vIdentity_48:output:0"/device:CPU:0*
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
+__inference_dense_54_layer_call_fn_23375053

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
F__inference_dense_54_layer_call_and_return_conditional_losses_233741692
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
P
ë
#__inference__wrapped_model_23374028
input_11I
5sequential_10_dense_50_matmul_readvariableop_resource:
Ð
E
6sequential_10_dense_50_biasadd_readvariableop_resource:	I
5sequential_10_dense_51_matmul_readvariableop_resource:
E
6sequential_10_dense_51_biasadd_readvariableop_resource:	I
6sequential_10_embedding_matmul_readvariableop_resource:	CE
7sequential_10_embedding_biasadd_readvariableop_resource:CH
5sequential_10_dense_52_matmul_readvariableop_resource:	CE
6sequential_10_dense_52_biasadd_readvariableop_resource:	I
5sequential_10_dense_53_matmul_readvariableop_resource:
E
6sequential_10_dense_53_biasadd_readvariableop_resource:	I
5sequential_10_dense_54_matmul_readvariableop_resource:
ÔE
6sequential_10_dense_54_biasadd_readvariableop_resource:	Ô
identity¢-sequential_10/dense_50/BiasAdd/ReadVariableOp¢,sequential_10/dense_50/MatMul/ReadVariableOp¢-sequential_10/dense_51/BiasAdd/ReadVariableOp¢,sequential_10/dense_51/MatMul/ReadVariableOp¢-sequential_10/dense_52/BiasAdd/ReadVariableOp¢,sequential_10/dense_52/MatMul/ReadVariableOp¢-sequential_10/dense_53/BiasAdd/ReadVariableOp¢,sequential_10/dense_53/MatMul/ReadVariableOp¢-sequential_10/dense_54/BiasAdd/ReadVariableOp¢,sequential_10/dense_54/MatMul/ReadVariableOp¢.sequential_10/embedding/BiasAdd/ReadVariableOp¢-sequential_10/embedding/MatMul/ReadVariableOp
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2 
sequential_10/flatten_10/Constµ
 sequential_10/flatten_10/ReshapeReshapeinput_11'sequential_10/flatten_10/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2"
 sequential_10/flatten_10/ReshapeÔ
,sequential_10/dense_50/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_50_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02.
,sequential_10/dense_50/MatMul/ReadVariableOpÜ
sequential_10/dense_50/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_50/MatMulÒ
-sequential_10/dense_50/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_10/dense_50/BiasAdd/ReadVariableOpÞ
sequential_10/dense_50/BiasAddBiasAdd'sequential_10/dense_50/MatMul:product:05sequential_10/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_10/dense_50/BiasAdd
sequential_10/dense_50/ReluRelu'sequential_10/dense_50/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_50/ReluÔ
,sequential_10/dense_51/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_51_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_10/dense_51/MatMul/ReadVariableOpÜ
sequential_10/dense_51/MatMulMatMul)sequential_10/dense_50/Relu:activations:04sequential_10/dense_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_51/MatMulÒ
-sequential_10/dense_51/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_10/dense_51/BiasAdd/ReadVariableOpÞ
sequential_10/dense_51/BiasAddBiasAdd'sequential_10/dense_51/MatMul:product:05sequential_10/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_10/dense_51/BiasAdd
sequential_10/dense_51/ReluRelu'sequential_10/dense_51/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_51/ReluÖ
-sequential_10/embedding/MatMul/ReadVariableOpReadVariableOp6sequential_10_embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02/
-sequential_10/embedding/MatMul/ReadVariableOpÞ
sequential_10/embedding/MatMulMatMul)sequential_10/dense_51/Relu:activations:05sequential_10/embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2 
sequential_10/embedding/MatMulÔ
.sequential_10/embedding/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype020
.sequential_10/embedding/BiasAdd/ReadVariableOpá
sequential_10/embedding/BiasAddBiasAdd(sequential_10/embedding/MatMul:product:06sequential_10/embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2!
sequential_10/embedding/BiasAdd 
sequential_10/embedding/ReluRelu(sequential_10/embedding/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
sequential_10/embedding/ReluÓ
,sequential_10/dense_52/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_52_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02.
,sequential_10/dense_52/MatMul/ReadVariableOpÝ
sequential_10/dense_52/MatMulMatMul*sequential_10/embedding/Relu:activations:04sequential_10/dense_52/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_52/MatMulÒ
-sequential_10/dense_52/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_52_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_10/dense_52/BiasAdd/ReadVariableOpÞ
sequential_10/dense_52/BiasAddBiasAdd'sequential_10/dense_52/MatMul:product:05sequential_10/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_10/dense_52/BiasAdd
sequential_10/dense_52/ReluRelu'sequential_10/dense_52/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_52/ReluÔ
,sequential_10/dense_53/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_53_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_10/dense_53/MatMul/ReadVariableOpÜ
sequential_10/dense_53/MatMulMatMul)sequential_10/dense_52/Relu:activations:04sequential_10/dense_53/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_53/MatMulÒ
-sequential_10/dense_53/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_53_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_10/dense_53/BiasAdd/ReadVariableOpÞ
sequential_10/dense_53/BiasAddBiasAdd'sequential_10/dense_53/MatMul:product:05sequential_10/dense_53/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_10/dense_53/BiasAdd
sequential_10/dense_53/ReluRelu'sequential_10/dense_53/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_53/ReluÔ
,sequential_10/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_54_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02.
,sequential_10/dense_54/MatMul/ReadVariableOpÜ
sequential_10/dense_54/MatMulMatMul)sequential_10/dense_53/Relu:activations:04sequential_10/dense_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
sequential_10/dense_54/MatMulÒ
-sequential_10/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_54_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02/
-sequential_10/dense_54/BiasAdd/ReadVariableOpÞ
sequential_10/dense_54/BiasAddBiasAdd'sequential_10/dense_54/MatMul:product:05sequential_10/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_10/dense_54/BiasAdd§
sequential_10/dense_54/SigmoidSigmoid'sequential_10/dense_54/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_10/dense_54/Sigmoid~
IdentityIdentity"sequential_10/dense_54/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity
NoOpNoOp.^sequential_10/dense_50/BiasAdd/ReadVariableOp-^sequential_10/dense_50/MatMul/ReadVariableOp.^sequential_10/dense_51/BiasAdd/ReadVariableOp-^sequential_10/dense_51/MatMul/ReadVariableOp.^sequential_10/dense_52/BiasAdd/ReadVariableOp-^sequential_10/dense_52/MatMul/ReadVariableOp.^sequential_10/dense_53/BiasAdd/ReadVariableOp-^sequential_10/dense_53/MatMul/ReadVariableOp.^sequential_10/dense_54/BiasAdd/ReadVariableOp-^sequential_10/dense_54/MatMul/ReadVariableOp/^sequential_10/embedding/BiasAdd/ReadVariableOp.^sequential_10/embedding/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2^
-sequential_10/dense_50/BiasAdd/ReadVariableOp-sequential_10/dense_50/BiasAdd/ReadVariableOp2\
,sequential_10/dense_50/MatMul/ReadVariableOp,sequential_10/dense_50/MatMul/ReadVariableOp2^
-sequential_10/dense_51/BiasAdd/ReadVariableOp-sequential_10/dense_51/BiasAdd/ReadVariableOp2\
,sequential_10/dense_51/MatMul/ReadVariableOp,sequential_10/dense_51/MatMul/ReadVariableOp2^
-sequential_10/dense_52/BiasAdd/ReadVariableOp-sequential_10/dense_52/BiasAdd/ReadVariableOp2\
,sequential_10/dense_52/MatMul/ReadVariableOp,sequential_10/dense_52/MatMul/ReadVariableOp2^
-sequential_10/dense_53/BiasAdd/ReadVariableOp-sequential_10/dense_53/BiasAdd/ReadVariableOp2\
,sequential_10/dense_53/MatMul/ReadVariableOp,sequential_10/dense_53/MatMul/ReadVariableOp2^
-sequential_10/dense_54/BiasAdd/ReadVariableOp-sequential_10/dense_54/BiasAdd/ReadVariableOp2\
,sequential_10/dense_54/MatMul/ReadVariableOp,sequential_10/dense_54/MatMul/ReadVariableOp2`
.sequential_10/embedding/BiasAdd/ReadVariableOp.sequential_10/embedding/BiasAdd/ReadVariableOp2^
-sequential_10/embedding/MatMul/ReadVariableOp-sequential_10/embedding/MatMul/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_11
ÿ

+__inference_dense_51_layer_call_fn_23374937

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
F__inference_dense_51_layer_call_and_return_conditional_losses_233740832
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
ûW
÷
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374206

inputs%
dense_50_23374061:
Ð
 
dense_50_23374063:	%
dense_51_23374084:
 
dense_51_23374086:	%
embedding_23374107:	C 
embedding_23374109:C$
dense_52_23374130:	C 
dense_52_23374132:	%
dense_53_23374153:
 
dense_53_23374155:	%
dense_54_23374170:
Ô 
dense_54_23374172:	Ô
identity¢ dense_50/StatefulPartitionedCall¢1dense_50/kernel/Regularizer/Square/ReadVariableOp¢ dense_51/StatefulPartitionedCall¢1dense_51/kernel/Regularizer/Square/ReadVariableOp¢ dense_52/StatefulPartitionedCall¢1dense_52/kernel/Regularizer/Square/ReadVariableOp¢ dense_53/StatefulPartitionedCall¢1dense_53/kernel/Regularizer/Square/ReadVariableOp¢ dense_54/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_10/PartitionedCallPartitionedCallinputs*
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
H__inference_flatten_10_layer_call_and_return_conditional_losses_233740412
flatten_10/PartitionedCall»
 dense_50/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_50_23374061dense_50_23374063*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_233740602"
 dense_50/StatefulPartitionedCallÁ
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_23374084dense_51_23374086*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_233740832"
 dense_51/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0embedding_23374107embedding_23374109*
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
G__inference_embedding_layer_call_and_return_conditional_losses_233741062#
!embedding/StatefulPartitionedCallÂ
 dense_52/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_52_23374130dense_52_23374132*
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
F__inference_dense_52_layer_call_and_return_conditional_losses_233741292"
 dense_52/StatefulPartitionedCallÁ
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_23374153dense_53_23374155*
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
F__inference_dense_53_layer_call_and_return_conditional_losses_233741522"
 dense_53/StatefulPartitionedCallÁ
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_23374170dense_54_23374172*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_233741692"
 dense_54/StatefulPartitionedCallº
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_23374061* 
_output_shapes
:
Ð
*
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp¸
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_50/kernel/Regularizer/Square
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const¾
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_50/kernel/Regularizer/mul/xÀ
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulº
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_23374084* 
_output_shapes
:
*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp¸
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_51/kernel/Regularizer/Square
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const¾
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_51/kernel/Regularizer/mul/xÀ
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_23374107*
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
 *_]z72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_23374130*
_output_shapes
:	C*
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp·
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_52/kernel/Regularizer/Square
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const¾
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_52/kernel/Regularizer/mul/xÀ
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulº
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_23374153* 
_output_shapes
:
*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp¸
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_53/kernel/Regularizer/Square
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const¾
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *_]z72#
!dense_53/kernel/Regularizer/mul/xÀ
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp!^dense_54/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
B
input_116
serving_default_input_11:0ÿÿÿÿÿÿÿÿÿÔ=
dense_541
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
2dense_50/kernel
:2dense_50/bias
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
2dense_51/kernel
:2dense_51/bias
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
": 	C2dense_52/kernel
:2dense_52/bias
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
2dense_53/kernel
:2dense_53/bias
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
Ô2dense_54/kernel
:Ô2dense_54/bias
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
2Adam/dense_50/kernel/m
!:2Adam/dense_50/bias/m
(:&
2Adam/dense_51/kernel/m
!:2Adam/dense_51/bias/m
(:&	C2Adam/embedding/kernel/m
!:C2Adam/embedding/bias/m
':%	C2Adam/dense_52/kernel/m
!:2Adam/dense_52/bias/m
(:&
2Adam/dense_53/kernel/m
!:2Adam/dense_53/bias/m
(:&
Ô2Adam/dense_54/kernel/m
!:Ô2Adam/dense_54/bias/m
(:&
Ð
2Adam/dense_50/kernel/v
!:2Adam/dense_50/bias/v
(:&
2Adam/dense_51/kernel/v
!:2Adam/dense_51/bias/v
(:&	C2Adam/embedding/kernel/v
!:C2Adam/embedding/bias/v
':%	C2Adam/dense_52/kernel/v
!:2Adam/dense_52/bias/v
(:&
2Adam/dense_53/kernel/v
!:2Adam/dense_53/bias/v
(:&
Ô2Adam/dense_54/kernel/v
!:Ô2Adam/dense_54/bias/v
ú2÷
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374726
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374804
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374516
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374581À
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
#__inference__wrapped_model_23374028¼
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
input_11ÿÿÿÿÿÿÿÿÿÔ
2
0__inference_sequential_10_layer_call_fn_23374233
0__inference_sequential_10_layer_call_fn_23374833
0__inference_sequential_10_layer_call_fn_23374862
0__inference_sequential_10_layer_call_fn_23374451À
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
H__inference_flatten_10_layer_call_and_return_conditional_losses_23374868¢
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
-__inference_flatten_10_layer_call_fn_23374873¢
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
F__inference_dense_50_layer_call_and_return_conditional_losses_23374896¢
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
+__inference_dense_50_layer_call_fn_23374905¢
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
F__inference_dense_51_layer_call_and_return_conditional_losses_23374928¢
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
+__inference_dense_51_layer_call_fn_23374937¢
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
G__inference_embedding_layer_call_and_return_conditional_losses_23374960¢
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
,__inference_embedding_layer_call_fn_23374969¢
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
F__inference_dense_52_layer_call_and_return_conditional_losses_23374992¢
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
+__inference_dense_52_layer_call_fn_23375001¢
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
F__inference_dense_53_layer_call_and_return_conditional_losses_23375024¢
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
+__inference_dense_53_layer_call_fn_23375033¢
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
F__inference_dense_54_layer_call_and_return_conditional_losses_23375044¢
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
+__inference_dense_54_layer_call_fn_23375053¢
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
__inference_loss_fn_0_23375064
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
__inference_loss_fn_1_23375075
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
__inference_loss_fn_2_23375086
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
__inference_loss_fn_3_23375097
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
__inference_loss_fn_4_23375108
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
&__inference_signature_wrapper_23374648input_11"
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
#__inference__wrapped_model_23374028|$%*+016¢3
,¢)
'$
input_11ÿÿÿÿÿÿÿÿÿÔ
ª "4ª1
/
dense_54# 
dense_54ÿÿÿÿÿÿÿÿÿÔ¨
F__inference_dense_50_layer_call_and_return_conditional_losses_23374896^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_50_layer_call_fn_23374905Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_51_layer_call_and_return_conditional_losses_23374928^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_51_layer_call_fn_23374937Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_52_layer_call_and_return_conditional_losses_23374992]$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_52_layer_call_fn_23375001P$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_53_layer_call_and_return_conditional_losses_23375024^*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_53_layer_call_fn_23375033Q*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_54_layer_call_and_return_conditional_losses_23375044^010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 
+__inference_dense_54_layer_call_fn_23375053Q010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÔ¨
G__inference_embedding_layer_call_and_return_conditional_losses_23374960]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿC
 
,__inference_embedding_layer_call_fn_23374969P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿCª
H__inference_flatten_10_layer_call_and_return_conditional_losses_23374868^4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÐ

 
-__inference_flatten_10_layer_call_fn_23374873Q4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "ÿÿÿÿÿÿÿÿÿÐ
=
__inference_loss_fn_0_23375064¢

¢ 
ª " =
__inference_loss_fn_1_23375075¢

¢ 
ª " =
__inference_loss_fn_2_23375086¢

¢ 
ª " =
__inference_loss_fn_3_23375097$¢

¢ 
ª " =
__inference_loss_fn_4_23375108*¢

¢ 
ª " Å
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374516v$%*+01>¢;
4¢1
'$
input_11ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Å
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374581v$%*+01>¢;
4¢1
'$
input_11ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Ã
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374726t$%*+01<¢9
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
K__inference_sequential_10_layer_call_and_return_conditional_losses_23374804t$%*+01<¢9
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
0__inference_sequential_10_layer_call_fn_23374233i$%*+01>¢;
4¢1
'$
input_11ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_10_layer_call_fn_23374451i$%*+01>¢;
4¢1
'$
input_11ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_10_layer_call_fn_23374833g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_10_layer_call_fn_23374862g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ³
&__inference_signature_wrapper_23374648$%*+01B¢?
¢ 
8ª5
3
input_11'$
input_11ÿÿÿÿÿÿÿÿÿÔ"4ª1
/
dense_54# 
dense_54ÿÿÿÿÿÿÿÿÿÔ