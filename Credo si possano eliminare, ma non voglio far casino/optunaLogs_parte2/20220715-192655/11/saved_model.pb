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
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
* 
shared_namedense_65/kernel
u
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel* 
_output_shapes
:
Ð
*
dtype0
s
dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_65/bias
l
!dense_65/bias/Read/ReadVariableOpReadVariableOpdense_65/bias*
_output_shapes	
:*
dtype0
|
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_66/kernel
u
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel* 
_output_shapes
:
*
dtype0
s
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_66/bias
l
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
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
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C* 
shared_namedense_67/kernel
t
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes
:	C*
dtype0
s
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_67/bias
l
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
_output_shapes	
:*
dtype0
|
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_68/kernel
u
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel* 
_output_shapes
:
*
dtype0
s
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_68/bias
l
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes	
:*
dtype0
|
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô* 
shared_namedense_69/kernel
u
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel* 
_output_shapes
:
Ô*
dtype0
s
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*
shared_namedense_69/bias
l
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
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
Adam/dense_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_65/kernel/m

*Adam/dense_65/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/m* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_65/bias/m
z
(Adam/dense_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_66/kernel/m

*Adam/dense_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_66/bias/m
z
(Adam/dense_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/m*
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
Adam/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_67/kernel/m

*Adam/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/m*
_output_shapes
:	C*
dtype0

Adam/dense_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_67/bias/m
z
(Adam/dense_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_68/kernel/m

*Adam/dense_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/m
z
(Adam/dense_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_69/kernel/m

*Adam/dense_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/m* 
_output_shapes
:
Ô*
dtype0

Adam/dense_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_69/bias/m
z
(Adam/dense_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/m*
_output_shapes	
:Ô*
dtype0

Adam/dense_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ð
*'
shared_nameAdam/dense_65/kernel/v

*Adam/dense_65/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/v* 
_output_shapes
:
Ð
*
dtype0

Adam/dense_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_65/bias/v
z
(Adam/dense_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_66/kernel/v

*Adam/dense_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_66/bias/v
z
(Adam/dense_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/v*
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
Adam/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*'
shared_nameAdam/dense_67/kernel/v

*Adam/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/v*
_output_shapes
:	C*
dtype0

Adam/dense_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_67/bias/v
z
(Adam/dense_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_68/kernel/v

*Adam/dense_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/v
z
(Adam/dense_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ô*'
shared_nameAdam/dense_69/kernel/v

*Adam/dense_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/v* 
_output_shapes
:
Ô*
dtype0

Adam/dense_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ô*%
shared_nameAdam/dense_69/bias/v
z
(Adam/dense_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/v*
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
VARIABLE_VALUEdense_65/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_65/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_66/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_67/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_68/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_68/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_69/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_69/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_65/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_69/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_65/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_69/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_14Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿÔ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_14dense_65/kerneldense_65/biasdense_66/kerneldense_66/biasembedding/kernelembedding/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/bias*
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
&__inference_signature_wrapper_30387796
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_65/kernel/Read/ReadVariableOp!dense_65/bias/Read/ReadVariableOp#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOp$embedding/kernel/Read/ReadVariableOp"embedding/bias/Read/ReadVariableOp#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOp#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp*Adam/dense_65/kernel/m/Read/ReadVariableOp(Adam/dense_65/bias/m/Read/ReadVariableOp*Adam/dense_66/kernel/m/Read/ReadVariableOp(Adam/dense_66/bias/m/Read/ReadVariableOp+Adam/embedding/kernel/m/Read/ReadVariableOp)Adam/embedding/bias/m/Read/ReadVariableOp*Adam/dense_67/kernel/m/Read/ReadVariableOp(Adam/dense_67/bias/m/Read/ReadVariableOp*Adam/dense_68/kernel/m/Read/ReadVariableOp(Adam/dense_68/bias/m/Read/ReadVariableOp*Adam/dense_69/kernel/m/Read/ReadVariableOp(Adam/dense_69/bias/m/Read/ReadVariableOp*Adam/dense_65/kernel/v/Read/ReadVariableOp(Adam/dense_65/bias/v/Read/ReadVariableOp*Adam/dense_66/kernel/v/Read/ReadVariableOp(Adam/dense_66/bias/v/Read/ReadVariableOp+Adam/embedding/kernel/v/Read/ReadVariableOp)Adam/embedding/bias/v/Read/ReadVariableOp*Adam/dense_67/kernel/v/Read/ReadVariableOp(Adam/dense_67/bias/v/Read/ReadVariableOp*Adam/dense_68/kernel/v/Read/ReadVariableOp(Adam/dense_68/bias/v/Read/ReadVariableOp*Adam/dense_69/kernel/v/Read/ReadVariableOp(Adam/dense_69/bias/v/Read/ReadVariableOpConst*>
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
!__inference__traced_save_30388426
ã	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_65/kerneldense_65/biasdense_66/kerneldense_66/biasembedding/kernelembedding/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivesfalse_positivestrue_positives_1false_negativesAdam/dense_65/kernel/mAdam/dense_65/bias/mAdam/dense_66/kernel/mAdam/dense_66/bias/mAdam/embedding/kernel/mAdam/embedding/bias/mAdam/dense_67/kernel/mAdam/dense_67/bias/mAdam/dense_68/kernel/mAdam/dense_68/bias/mAdam/dense_69/kernel/mAdam/dense_69/bias/mAdam/dense_65/kernel/vAdam/dense_65/bias/vAdam/dense_66/kernel/vAdam/dense_66/bias/vAdam/embedding/kernel/vAdam/embedding/bias/vAdam/dense_67/kernel/vAdam/dense_67/bias/vAdam/dense_68/kernel/vAdam/dense_68/bias/vAdam/dense_69/kernel/vAdam/dense_69/bias/v*=
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
$__inference__traced_restore_30388583¸í

X
ù
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387664
input_14%
dense_65_30387603:
Ð
 
dense_65_30387605:	%
dense_66_30387608:
 
dense_66_30387610:	%
embedding_30387613:	C 
embedding_30387615:C$
dense_67_30387618:	C 
dense_67_30387620:	%
dense_68_30387623:
 
dense_68_30387625:	%
dense_69_30387628:
Ô 
dense_69_30387630:	Ô
identity¢ dense_65/StatefulPartitionedCall¢1dense_65/kernel/Regularizer/Square/ReadVariableOp¢ dense_66/StatefulPartitionedCall¢1dense_66/kernel/Regularizer/Square/ReadVariableOp¢ dense_67/StatefulPartitionedCall¢1dense_67/kernel/Regularizer/Square/ReadVariableOp¢ dense_68/StatefulPartitionedCall¢1dense_68/kernel/Regularizer/Square/ReadVariableOp¢ dense_69/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_13/PartitionedCallPartitionedCallinput_14*
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
H__inference_flatten_13_layer_call_and_return_conditional_losses_303871892
flatten_13/PartitionedCall»
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_65_30387603dense_65_30387605*
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
F__inference_dense_65_layer_call_and_return_conditional_losses_303872082"
 dense_65/StatefulPartitionedCallÁ
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_30387608dense_66_30387610*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_303872312"
 dense_66/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0embedding_30387613embedding_30387615*
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
G__inference_embedding_layer_call_and_return_conditional_losses_303872542#
!embedding/StatefulPartitionedCallÂ
 dense_67/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_67_30387618dense_67_30387620*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_303872772"
 dense_67/StatefulPartitionedCallÁ
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_30387623dense_68_30387625*
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
F__inference_dense_68_layer_call_and_return_conditional_losses_303873002"
 dense_68/StatefulPartitionedCallÁ
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_30387628dense_69_30387630*
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
F__inference_dense_69_layer_call_and_return_conditional_losses_303873172"
 dense_69/StatefulPartitionedCallº
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_30387603* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulº
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_30387608* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_30387613*
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
 *fJk72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_30387618*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulº
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_30387623* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_14
ÿ

+__inference_dense_68_layer_call_fn_30388181

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
F__inference_dense_68_layer_call_and_return_conditional_losses_303873002
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

³
&__inference_signature_wrapper_30387796
input_14
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
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
#__inference__wrapped_model_303871762
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
input_14
P
ë
#__inference__wrapped_model_30387176
input_14I
5sequential_13_dense_65_matmul_readvariableop_resource:
Ð
E
6sequential_13_dense_65_biasadd_readvariableop_resource:	I
5sequential_13_dense_66_matmul_readvariableop_resource:
E
6sequential_13_dense_66_biasadd_readvariableop_resource:	I
6sequential_13_embedding_matmul_readvariableop_resource:	CE
7sequential_13_embedding_biasadd_readvariableop_resource:CH
5sequential_13_dense_67_matmul_readvariableop_resource:	CE
6sequential_13_dense_67_biasadd_readvariableop_resource:	I
5sequential_13_dense_68_matmul_readvariableop_resource:
E
6sequential_13_dense_68_biasadd_readvariableop_resource:	I
5sequential_13_dense_69_matmul_readvariableop_resource:
ÔE
6sequential_13_dense_69_biasadd_readvariableop_resource:	Ô
identity¢-sequential_13/dense_65/BiasAdd/ReadVariableOp¢,sequential_13/dense_65/MatMul/ReadVariableOp¢-sequential_13/dense_66/BiasAdd/ReadVariableOp¢,sequential_13/dense_66/MatMul/ReadVariableOp¢-sequential_13/dense_67/BiasAdd/ReadVariableOp¢,sequential_13/dense_67/MatMul/ReadVariableOp¢-sequential_13/dense_68/BiasAdd/ReadVariableOp¢,sequential_13/dense_68/MatMul/ReadVariableOp¢-sequential_13/dense_69/BiasAdd/ReadVariableOp¢,sequential_13/dense_69/MatMul/ReadVariableOp¢.sequential_13/embedding/BiasAdd/ReadVariableOp¢-sequential_13/embedding/MatMul/ReadVariableOp
sequential_13/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2 
sequential_13/flatten_13/Constµ
 sequential_13/flatten_13/ReshapeReshapeinput_14'sequential_13/flatten_13/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2"
 sequential_13/flatten_13/ReshapeÔ
,sequential_13/dense_65/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_65_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02.
,sequential_13/dense_65/MatMul/ReadVariableOpÜ
sequential_13/dense_65/MatMulMatMul)sequential_13/flatten_13/Reshape:output:04sequential_13/dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_65/MatMulÒ
-sequential_13/dense_65/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_13/dense_65/BiasAdd/ReadVariableOpÞ
sequential_13/dense_65/BiasAddBiasAdd'sequential_13/dense_65/MatMul:product:05sequential_13/dense_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_13/dense_65/BiasAdd
sequential_13/dense_65/ReluRelu'sequential_13/dense_65/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_65/ReluÔ
,sequential_13/dense_66/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_66_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_13/dense_66/MatMul/ReadVariableOpÜ
sequential_13/dense_66/MatMulMatMul)sequential_13/dense_65/Relu:activations:04sequential_13/dense_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_66/MatMulÒ
-sequential_13/dense_66/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_13/dense_66/BiasAdd/ReadVariableOpÞ
sequential_13/dense_66/BiasAddBiasAdd'sequential_13/dense_66/MatMul:product:05sequential_13/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_13/dense_66/BiasAdd
sequential_13/dense_66/ReluRelu'sequential_13/dense_66/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_66/ReluÖ
-sequential_13/embedding/MatMul/ReadVariableOpReadVariableOp6sequential_13_embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02/
-sequential_13/embedding/MatMul/ReadVariableOpÞ
sequential_13/embedding/MatMulMatMul)sequential_13/dense_66/Relu:activations:05sequential_13/embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2 
sequential_13/embedding/MatMulÔ
.sequential_13/embedding/BiasAdd/ReadVariableOpReadVariableOp7sequential_13_embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype020
.sequential_13/embedding/BiasAdd/ReadVariableOpá
sequential_13/embedding/BiasAddBiasAdd(sequential_13/embedding/MatMul:product:06sequential_13/embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2!
sequential_13/embedding/BiasAdd 
sequential_13/embedding/ReluRelu(sequential_13/embedding/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC2
sequential_13/embedding/ReluÓ
,sequential_13/dense_67/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_67_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02.
,sequential_13/dense_67/MatMul/ReadVariableOpÝ
sequential_13/dense_67/MatMulMatMul*sequential_13/embedding/Relu:activations:04sequential_13/dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_67/MatMulÒ
-sequential_13/dense_67/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_67_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_13/dense_67/BiasAdd/ReadVariableOpÞ
sequential_13/dense_67/BiasAddBiasAdd'sequential_13/dense_67/MatMul:product:05sequential_13/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_13/dense_67/BiasAdd
sequential_13/dense_67/ReluRelu'sequential_13/dense_67/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_67/ReluÔ
,sequential_13/dense_68/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_68_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_13/dense_68/MatMul/ReadVariableOpÜ
sequential_13/dense_68/MatMulMatMul)sequential_13/dense_67/Relu:activations:04sequential_13/dense_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_68/MatMulÒ
-sequential_13/dense_68/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_68_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_13/dense_68/BiasAdd/ReadVariableOpÞ
sequential_13/dense_68/BiasAddBiasAdd'sequential_13/dense_68/MatMul:product:05sequential_13/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_13/dense_68/BiasAdd
sequential_13/dense_68/ReluRelu'sequential_13/dense_68/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_68/ReluÔ
,sequential_13/dense_69/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_69_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02.
,sequential_13/dense_69/MatMul/ReadVariableOpÜ
sequential_13/dense_69/MatMulMatMul)sequential_13/dense_68/Relu:activations:04sequential_13/dense_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
sequential_13/dense_69/MatMulÒ
-sequential_13/dense_69/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_69_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02/
-sequential_13/dense_69/BiasAdd/ReadVariableOpÞ
sequential_13/dense_69/BiasAddBiasAdd'sequential_13/dense_69/MatMul:product:05sequential_13/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_13/dense_69/BiasAdd§
sequential_13/dense_69/SigmoidSigmoid'sequential_13/dense_69/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2 
sequential_13/dense_69/Sigmoid~
IdentityIdentity"sequential_13/dense_69/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity
NoOpNoOp.^sequential_13/dense_65/BiasAdd/ReadVariableOp-^sequential_13/dense_65/MatMul/ReadVariableOp.^sequential_13/dense_66/BiasAdd/ReadVariableOp-^sequential_13/dense_66/MatMul/ReadVariableOp.^sequential_13/dense_67/BiasAdd/ReadVariableOp-^sequential_13/dense_67/MatMul/ReadVariableOp.^sequential_13/dense_68/BiasAdd/ReadVariableOp-^sequential_13/dense_68/MatMul/ReadVariableOp.^sequential_13/dense_69/BiasAdd/ReadVariableOp-^sequential_13/dense_69/MatMul/ReadVariableOp/^sequential_13/embedding/BiasAdd/ReadVariableOp.^sequential_13/embedding/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2^
-sequential_13/dense_65/BiasAdd/ReadVariableOp-sequential_13/dense_65/BiasAdd/ReadVariableOp2\
,sequential_13/dense_65/MatMul/ReadVariableOp,sequential_13/dense_65/MatMul/ReadVariableOp2^
-sequential_13/dense_66/BiasAdd/ReadVariableOp-sequential_13/dense_66/BiasAdd/ReadVariableOp2\
,sequential_13/dense_66/MatMul/ReadVariableOp,sequential_13/dense_66/MatMul/ReadVariableOp2^
-sequential_13/dense_67/BiasAdd/ReadVariableOp-sequential_13/dense_67/BiasAdd/ReadVariableOp2\
,sequential_13/dense_67/MatMul/ReadVariableOp,sequential_13/dense_67/MatMul/ReadVariableOp2^
-sequential_13/dense_68/BiasAdd/ReadVariableOp-sequential_13/dense_68/BiasAdd/ReadVariableOp2\
,sequential_13/dense_68/MatMul/ReadVariableOp,sequential_13/dense_68/MatMul/ReadVariableOp2^
-sequential_13/dense_69/BiasAdd/ReadVariableOp-sequential_13/dense_69/BiasAdd/ReadVariableOp2\
,sequential_13/dense_69/MatMul/ReadVariableOp,sequential_13/dense_69/MatMul/ReadVariableOp2`
.sequential_13/embedding/BiasAdd/ReadVariableOp.sequential_13/embedding/BiasAdd/ReadVariableOp2^
-sequential_13/embedding/MatMul/ReadVariableOp-sequential_13/embedding/MatMul/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_14
¶p
Æ
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387874

inputs;
'dense_65_matmul_readvariableop_resource:
Ð
7
(dense_65_biasadd_readvariableop_resource:	;
'dense_66_matmul_readvariableop_resource:
7
(dense_66_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_67_matmul_readvariableop_resource:	C7
(dense_67_biasadd_readvariableop_resource:	;
'dense_68_matmul_readvariableop_resource:
7
(dense_68_biasadd_readvariableop_resource:	;
'dense_69_matmul_readvariableop_resource:
Ô7
(dense_69_biasadd_readvariableop_resource:	Ô
identity¢dense_65/BiasAdd/ReadVariableOp¢dense_65/MatMul/ReadVariableOp¢1dense_65/kernel/Regularizer/Square/ReadVariableOp¢dense_66/BiasAdd/ReadVariableOp¢dense_66/MatMul/ReadVariableOp¢1dense_66/kernel/Regularizer/Square/ReadVariableOp¢dense_67/BiasAdd/ReadVariableOp¢dense_67/MatMul/ReadVariableOp¢1dense_67/kernel/Regularizer/Square/ReadVariableOp¢dense_68/BiasAdd/ReadVariableOp¢dense_68/MatMul/ReadVariableOp¢1dense_68/kernel/Regularizer/Square/ReadVariableOp¢dense_69/BiasAdd/ReadVariableOp¢dense_69/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_13/Const
flatten_13/ReshapeReshapeinputsflatten_13/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_13/Reshapeª
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_65/MatMul/ReadVariableOp¤
dense_65/MatMulMatMulflatten_13/Reshape:output:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_65/MatMul¨
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_65/BiasAdd/ReadVariableOp¦
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_65/BiasAddt
dense_65/ReluReludense_65/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_65/Reluª
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_66/MatMul/ReadVariableOp¤
dense_66/MatMulMatMuldense_65/Relu:activations:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_66/MatMul¨
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_66/BiasAdd/ReadVariableOp¦
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_66/BiasAddt
dense_66/ReluReludense_66/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_66/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_66/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
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
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_67/MatMul/ReadVariableOp¥
dense_67/MatMulMatMulembedding/Relu:activations:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_67/MatMul¨
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_67/BiasAdd/ReadVariableOp¦
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_67/BiasAddt
dense_67/ReluReludense_67/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_67/Reluª
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_68/MatMul/ReadVariableOp¤
dense_68/MatMulMatMuldense_67/Relu:activations:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_68/MatMul¨
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp¦
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_68/BiasAddt
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_68/Reluª
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_69/MatMul/ReadVariableOp¤
dense_69/MatMulMatMuldense_68/Relu:activations:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_69/MatMul¨
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_69/BiasAdd/ReadVariableOp¦
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_69/BiasAdd}
dense_69/SigmoidSigmoiddense_69/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_69/SigmoidÐ
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulÐ
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mulÒ
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
 *fJk72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulÐ
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mulp
IdentityIdentitydense_69/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs

®
F__inference_dense_65_layer_call_and_return_conditional_losses_30387208

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_65/kernel/Regularizer/Square/ReadVariableOp
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
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs
Ó
I
-__inference_flatten_13_layer_call_fn_30388021

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
H__inference_flatten_13_layer_call_and_return_conditional_losses_303871892
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
F__inference_dense_68_layer_call_and_return_conditional_losses_30388172

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_68/kernel/Regularizer/Square/ReadVariableOp
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
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
µ
__inference_loss_fn_1_30388223N
:dense_66_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_66/kernel/Regularizer/Square/ReadVariableOpã
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_66_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mulm
IdentityIdentity#dense_66/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp
X
ù
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387729
input_14%
dense_65_30387668:
Ð
 
dense_65_30387670:	%
dense_66_30387673:
 
dense_66_30387675:	%
embedding_30387678:	C 
embedding_30387680:C$
dense_67_30387683:	C 
dense_67_30387685:	%
dense_68_30387688:
 
dense_68_30387690:	%
dense_69_30387693:
Ô 
dense_69_30387695:	Ô
identity¢ dense_65/StatefulPartitionedCall¢1dense_65/kernel/Regularizer/Square/ReadVariableOp¢ dense_66/StatefulPartitionedCall¢1dense_66/kernel/Regularizer/Square/ReadVariableOp¢ dense_67/StatefulPartitionedCall¢1dense_67/kernel/Regularizer/Square/ReadVariableOp¢ dense_68/StatefulPartitionedCall¢1dense_68/kernel/Regularizer/Square/ReadVariableOp¢ dense_69/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpâ
flatten_13/PartitionedCallPartitionedCallinput_14*
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
H__inference_flatten_13_layer_call_and_return_conditional_losses_303871892
flatten_13/PartitionedCall»
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_65_30387668dense_65_30387670*
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
F__inference_dense_65_layer_call_and_return_conditional_losses_303872082"
 dense_65/StatefulPartitionedCallÁ
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_30387673dense_66_30387675*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_303872312"
 dense_66/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0embedding_30387678embedding_30387680*
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
G__inference_embedding_layer_call_and_return_conditional_losses_303872542#
!embedding/StatefulPartitionedCallÂ
 dense_67/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_67_30387683dense_67_30387685*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_303872772"
 dense_67/StatefulPartitionedCallÁ
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_30387688dense_68_30387690*
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
F__inference_dense_68_layer_call_and_return_conditional_losses_303873002"
 dense_68/StatefulPartitionedCallÁ
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_30387693dense_69_30387695*
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
F__inference_dense_69_layer_call_and_return_conditional_losses_303873172"
 dense_69/StatefulPartitionedCallº
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_30387668* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulº
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_30387673* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_30387678*
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
 *fJk72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_30387683*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulº
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_30387688* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
"
_user_specified_name
input_14
¾
´
__inference_loss_fn_3_30388245M
:dense_67_kernel_regularizer_square_readvariableop_resource:	C
identity¢1dense_67/kernel/Regularizer/Square/ReadVariableOpâ
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_67_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulm
IdentityIdentity#dense_67/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp
¶p
Æ
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387952

inputs;
'dense_65_matmul_readvariableop_resource:
Ð
7
(dense_65_biasadd_readvariableop_resource:	;
'dense_66_matmul_readvariableop_resource:
7
(dense_66_biasadd_readvariableop_resource:	;
(embedding_matmul_readvariableop_resource:	C7
)embedding_biasadd_readvariableop_resource:C:
'dense_67_matmul_readvariableop_resource:	C7
(dense_67_biasadd_readvariableop_resource:	;
'dense_68_matmul_readvariableop_resource:
7
(dense_68_biasadd_readvariableop_resource:	;
'dense_69_matmul_readvariableop_resource:
Ô7
(dense_69_biasadd_readvariableop_resource:	Ô
identity¢dense_65/BiasAdd/ReadVariableOp¢dense_65/MatMul/ReadVariableOp¢1dense_65/kernel/Regularizer/Square/ReadVariableOp¢dense_66/BiasAdd/ReadVariableOp¢dense_66/MatMul/ReadVariableOp¢1dense_66/kernel/Regularizer/Square/ReadVariableOp¢dense_67/BiasAdd/ReadVariableOp¢dense_67/MatMul/ReadVariableOp¢1dense_67/kernel/Regularizer/Square/ReadVariableOp¢dense_68/BiasAdd/ReadVariableOp¢dense_68/MatMul/ReadVariableOp¢1dense_68/kernel/Regularizer/Square/ReadVariableOp¢dense_69/BiasAdd/ReadVariableOp¢dense_69/MatMul/ReadVariableOp¢ embedding/BiasAdd/ReadVariableOp¢embedding/MatMul/ReadVariableOp¢2embedding/kernel/Regularizer/Square/ReadVariableOpu
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP  2
flatten_13/Const
flatten_13/ReshapeReshapeinputsflatten_13/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
2
flatten_13/Reshapeª
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype02 
dense_65/MatMul/ReadVariableOp¤
dense_65/MatMulMatMulflatten_13/Reshape:output:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_65/MatMul¨
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_65/BiasAdd/ReadVariableOp¦
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_65/BiasAddt
dense_65/ReluReludense_65/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_65/Reluª
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_66/MatMul/ReadVariableOp¤
dense_66/MatMulMatMuldense_65/Relu:activations:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_66/MatMul¨
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_66/BiasAdd/ReadVariableOp¦
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_66/BiasAddt
dense_66/ReluReludense_66/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_66/Relu¬
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02!
embedding/MatMul/ReadVariableOp¦
embedding/MatMulMatMuldense_66/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
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
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype02 
dense_67/MatMul/ReadVariableOp¥
dense_67/MatMulMatMulembedding/Relu:activations:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_67/MatMul¨
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_67/BiasAdd/ReadVariableOp¦
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_67/BiasAddt
dense_67/ReluReludense_67/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_67/Reluª
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_68/MatMul/ReadVariableOp¤
dense_68/MatMulMatMuldense_67/Relu:activations:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_68/MatMul¨
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp¦
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_68/BiasAddt
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_68/Reluª
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource* 
_output_shapes
:
Ô*
dtype02 
dense_69/MatMul/ReadVariableOp¤
dense_69/MatMulMatMuldense_68/Relu:activations:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_69/MatMul¨
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes	
:Ô*
dtype02!
dense_69/BiasAdd/ReadVariableOp¦
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_69/BiasAdd}
dense_69/SigmoidSigmoiddense_69/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2
dense_69/SigmoidÐ
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulÐ
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mulÒ
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
 *fJk72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulÏ
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulÐ
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mulp
IdentityIdentitydense_69/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identityç
NoOpNoOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs

®
F__inference_dense_66_layer_call_and_return_conditional_losses_30387231

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_66/kernel/Regularizer/Square/ReadVariableOp
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
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
G__inference_embedding_layer_call_and_return_conditional_losses_30387254

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
 *fJk72$
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
ûW
÷
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387543

inputs%
dense_65_30387482:
Ð
 
dense_65_30387484:	%
dense_66_30387487:
 
dense_66_30387489:	%
embedding_30387492:	C 
embedding_30387494:C$
dense_67_30387497:	C 
dense_67_30387499:	%
dense_68_30387502:
 
dense_68_30387504:	%
dense_69_30387507:
Ô 
dense_69_30387509:	Ô
identity¢ dense_65/StatefulPartitionedCall¢1dense_65/kernel/Regularizer/Square/ReadVariableOp¢ dense_66/StatefulPartitionedCall¢1dense_66/kernel/Regularizer/Square/ReadVariableOp¢ dense_67/StatefulPartitionedCall¢1dense_67/kernel/Regularizer/Square/ReadVariableOp¢ dense_68/StatefulPartitionedCall¢1dense_68/kernel/Regularizer/Square/ReadVariableOp¢ dense_69/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_13/PartitionedCallPartitionedCallinputs*
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
H__inference_flatten_13_layer_call_and_return_conditional_losses_303871892
flatten_13/PartitionedCall»
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_65_30387482dense_65_30387484*
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
F__inference_dense_65_layer_call_and_return_conditional_losses_303872082"
 dense_65/StatefulPartitionedCallÁ
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_30387487dense_66_30387489*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_303872312"
 dense_66/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0embedding_30387492embedding_30387494*
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
G__inference_embedding_layer_call_and_return_conditional_losses_303872542#
!embedding/StatefulPartitionedCallÂ
 dense_67/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_67_30387497dense_67_30387499*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_303872772"
 dense_67/StatefulPartitionedCallÁ
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_30387502dense_68_30387504*
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
F__inference_dense_68_layer_call_and_return_conditional_losses_303873002"
 dense_68/StatefulPartitionedCallÁ
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_30387507dense_69_30387509*
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
F__inference_dense_69_layer_call_and_return_conditional_losses_303873172"
 dense_69/StatefulPartitionedCallº
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_30387482* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulº
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_30387487* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_30387492*
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
 *fJk72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_30387497*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulº
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_30387502* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
Á
µ
__inference_loss_fn_0_30388212N
:dense_65_kernel_regularizer_square_readvariableop_resource:
Ð

identity¢1dense_65/kernel/Regularizer/Square/ReadVariableOpã
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_65_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulm
IdentityIdentity#dense_65/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp
É
½
0__inference_sequential_13_layer_call_fn_30387599
input_14
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
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_13_layer_call_and_return_conditional_losses_303875432
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
input_14
Ö
¶
__inference_loss_fn_2_30388234N
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
 *fJk72$
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
ñc
ô
!__inference__traced_save_30388426
file_prefix.
*savev2_dense_65_kernel_read_readvariableop,
(savev2_dense_65_bias_read_readvariableop.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop/
+savev2_embedding_kernel_read_readvariableop-
)savev2_embedding_bias_read_readvariableop.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop(
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
1savev2_adam_dense_65_kernel_m_read_readvariableop3
/savev2_adam_dense_65_bias_m_read_readvariableop5
1savev2_adam_dense_66_kernel_m_read_readvariableop3
/savev2_adam_dense_66_bias_m_read_readvariableop6
2savev2_adam_embedding_kernel_m_read_readvariableop4
0savev2_adam_embedding_bias_m_read_readvariableop5
1savev2_adam_dense_67_kernel_m_read_readvariableop3
/savev2_adam_dense_67_bias_m_read_readvariableop5
1savev2_adam_dense_68_kernel_m_read_readvariableop3
/savev2_adam_dense_68_bias_m_read_readvariableop5
1savev2_adam_dense_69_kernel_m_read_readvariableop3
/savev2_adam_dense_69_bias_m_read_readvariableop5
1savev2_adam_dense_65_kernel_v_read_readvariableop3
/savev2_adam_dense_65_bias_v_read_readvariableop5
1savev2_adam_dense_66_kernel_v_read_readvariableop3
/savev2_adam_dense_66_bias_v_read_readvariableop6
2savev2_adam_embedding_kernel_v_read_readvariableop4
0savev2_adam_embedding_bias_v_read_readvariableop5
1savev2_adam_dense_67_kernel_v_read_readvariableop3
/savev2_adam_dense_67_bias_v_read_readvariableop5
1savev2_adam_dense_68_kernel_v_read_readvariableop3
/savev2_adam_dense_68_bias_v_read_readvariableop5
1savev2_adam_dense_69_kernel_v_read_readvariableop3
/savev2_adam_dense_69_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_65_kernel_read_readvariableop(savev2_dense_65_bias_read_readvariableop*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop+savev2_embedding_kernel_read_readvariableop)savev2_embedding_bias_read_readvariableop*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop1savev2_adam_dense_65_kernel_m_read_readvariableop/savev2_adam_dense_65_bias_m_read_readvariableop1savev2_adam_dense_66_kernel_m_read_readvariableop/savev2_adam_dense_66_bias_m_read_readvariableop2savev2_adam_embedding_kernel_m_read_readvariableop0savev2_adam_embedding_bias_m_read_readvariableop1savev2_adam_dense_67_kernel_m_read_readvariableop/savev2_adam_dense_67_bias_m_read_readvariableop1savev2_adam_dense_68_kernel_m_read_readvariableop/savev2_adam_dense_68_bias_m_read_readvariableop1savev2_adam_dense_69_kernel_m_read_readvariableop/savev2_adam_dense_69_bias_m_read_readvariableop1savev2_adam_dense_65_kernel_v_read_readvariableop/savev2_adam_dense_65_bias_v_read_readvariableop1savev2_adam_dense_66_kernel_v_read_readvariableop/savev2_adam_dense_66_bias_v_read_readvariableop2savev2_adam_embedding_kernel_v_read_readvariableop0savev2_adam_embedding_bias_v_read_readvariableop1savev2_adam_dense_67_kernel_v_read_readvariableop/savev2_adam_dense_67_bias_v_read_readvariableop1savev2_adam_dense_68_kernel_v_read_readvariableop/savev2_adam_dense_68_bias_v_read_readvariableop1savev2_adam_dense_69_kernel_v_read_readvariableop/savev2_adam_dense_69_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

®
F__inference_dense_66_layer_call_and_return_conditional_losses_30388076

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_66/kernel/Regularizer/Square/ReadVariableOp
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
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü

+__inference_dense_67_layer_call_fn_30388149

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
F__inference_dense_67_layer_call_and_return_conditional_losses_303872772
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
F__inference_dense_69_layer_call_and_return_conditional_losses_30387317

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
Ã
»
0__inference_sequential_13_layer_call_fn_30388010

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
K__inference_sequential_13_layer_call_and_return_conditional_losses_303875432
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

ú
F__inference_dense_69_layer_call_and_return_conditional_losses_30388192

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

®
G__inference_embedding_layer_call_and_return_conditional_losses_30388108

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
 *fJk72$
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
F__inference_dense_68_layer_call_and_return_conditional_losses_30387300

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_68/kernel/Regularizer/Square/ReadVariableOp
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
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ

+__inference_dense_65_layer_call_fn_30388053

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
F__inference_dense_65_layer_call_and_return_conditional_losses_303872082
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
__inference_loss_fn_4_30388256N
:dense_68_kernel_regularizer_square_readvariableop_resource:

identity¢1dense_68/kernel/Regularizer/Square/ReadVariableOpã
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_68_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mulm
IdentityIdentity#dense_68/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp
ä
d
H__inference_flatten_13_layer_call_and_return_conditional_losses_30387189

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
Ã
»
0__inference_sequential_13_layer_call_fn_30387981

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
K__inference_sequential_13_layer_call_and_return_conditional_losses_303873542
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

­
F__inference_dense_67_layer_call_and_return_conditional_losses_30388140

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_67/kernel/Regularizer/Square/ReadVariableOp
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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs

®
F__inference_dense_65_layer_call_and_return_conditional_losses_30388044

inputs2
matmul_readvariableop_resource:
Ð
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_65/kernel/Regularizer/Square/ReadVariableOp
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
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

 
_user_specified_nameinputs
É
½
0__inference_sequential_13_layer_call_fn_30387381
input_14
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
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_13_layer_call_and_return_conditional_losses_303873542
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
input_14
ûW
÷
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387354

inputs%
dense_65_30387209:
Ð
 
dense_65_30387211:	%
dense_66_30387232:
 
dense_66_30387234:	%
embedding_30387255:	C 
embedding_30387257:C$
dense_67_30387278:	C 
dense_67_30387280:	%
dense_68_30387301:
 
dense_68_30387303:	%
dense_69_30387318:
Ô 
dense_69_30387320:	Ô
identity¢ dense_65/StatefulPartitionedCall¢1dense_65/kernel/Regularizer/Square/ReadVariableOp¢ dense_66/StatefulPartitionedCall¢1dense_66/kernel/Regularizer/Square/ReadVariableOp¢ dense_67/StatefulPartitionedCall¢1dense_67/kernel/Regularizer/Square/ReadVariableOp¢ dense_68/StatefulPartitionedCall¢1dense_68/kernel/Regularizer/Square/ReadVariableOp¢ dense_69/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢2embedding/kernel/Regularizer/Square/ReadVariableOpà
flatten_13/PartitionedCallPartitionedCallinputs*
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
H__inference_flatten_13_layer_call_and_return_conditional_losses_303871892
flatten_13/PartitionedCall»
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_65_30387209dense_65_30387211*
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
F__inference_dense_65_layer_call_and_return_conditional_losses_303872082"
 dense_65/StatefulPartitionedCallÁ
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_30387232dense_66_30387234*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_303872312"
 dense_66/StatefulPartitionedCallÅ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0embedding_30387255embedding_30387257*
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
G__inference_embedding_layer_call_and_return_conditional_losses_303872542#
!embedding/StatefulPartitionedCallÂ
 dense_67/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_67_30387278dense_67_30387280*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_303872772"
 dense_67/StatefulPartitionedCallÁ
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_30387301dense_68_30387303*
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
F__inference_dense_68_layer_call_and_return_conditional_losses_303873002"
 dense_68/StatefulPartitionedCallÁ
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_30387318dense_69_30387320*
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
F__inference_dense_69_layer_call_and_return_conditional_losses_303873172"
 dense_69/StatefulPartitionedCallº
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_30387209* 
_output_shapes
:
Ð
*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp¸
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ð
2$
"dense_65/kernel/Regularizer/Square
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const¾
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_65/kernel/Regularizer/mul/xÀ
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulº
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_30387232* 
_output_shapes
:
*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp¸
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_66/kernel/Regularizer/Square
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const¾
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_66/kernel/Regularizer/mul/xÀ
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul¼
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_30387255*
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
 *fJk72$
"embedding/kernel/Regularizer/mul/xÄ
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul¹
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_30387278*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulº
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_30387301* 
_output_shapes
:
*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp¸
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2$
"dense_68/kernel/Regularizer/Square
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const¾
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_68/kernel/Regularizer/mul/xÀ
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ2

Identity¦
NoOpNoOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÔ: : : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
 
_user_specified_nameinputs
ä
d
H__inference_flatten_13_layer_call_and_return_conditional_losses_30388016

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
ÿ

+__inference_dense_66_layer_call_fn_30388085

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
F__inference_dense_66_layer_call_and_return_conditional_losses_303872312
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
ÿ

+__inference_dense_69_layer_call_fn_30388201

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
F__inference_dense_69_layer_call_and_return_conditional_losses_303873172
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
éÑ
Ó
$__inference__traced_restore_30388583
file_prefix4
 assignvariableop_dense_65_kernel:
Ð
/
 assignvariableop_1_dense_65_bias:	6
"assignvariableop_2_dense_66_kernel:
/
 assignvariableop_3_dense_66_bias:	6
#assignvariableop_4_embedding_kernel:	C/
!assignvariableop_5_embedding_bias:C5
"assignvariableop_6_dense_67_kernel:	C/
 assignvariableop_7_dense_67_bias:	6
"assignvariableop_8_dense_68_kernel:
/
 assignvariableop_9_dense_68_bias:	7
#assignvariableop_10_dense_69_kernel:
Ô0
!assignvariableop_11_dense_69_bias:	Ô'
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
*assignvariableop_25_adam_dense_65_kernel_m:
Ð
7
(assignvariableop_26_adam_dense_65_bias_m:	>
*assignvariableop_27_adam_dense_66_kernel_m:
7
(assignvariableop_28_adam_dense_66_bias_m:	>
+assignvariableop_29_adam_embedding_kernel_m:	C7
)assignvariableop_30_adam_embedding_bias_m:C=
*assignvariableop_31_adam_dense_67_kernel_m:	C7
(assignvariableop_32_adam_dense_67_bias_m:	>
*assignvariableop_33_adam_dense_68_kernel_m:
7
(assignvariableop_34_adam_dense_68_bias_m:	>
*assignvariableop_35_adam_dense_69_kernel_m:
Ô7
(assignvariableop_36_adam_dense_69_bias_m:	Ô>
*assignvariableop_37_adam_dense_65_kernel_v:
Ð
7
(assignvariableop_38_adam_dense_65_bias_v:	>
*assignvariableop_39_adam_dense_66_kernel_v:
7
(assignvariableop_40_adam_dense_66_bias_v:	>
+assignvariableop_41_adam_embedding_kernel_v:	C7
)assignvariableop_42_adam_embedding_bias_v:C=
*assignvariableop_43_adam_dense_67_kernel_v:	C7
(assignvariableop_44_adam_dense_67_bias_v:	>
*assignvariableop_45_adam_dense_68_kernel_v:
7
(assignvariableop_46_adam_dense_68_bias_v:	>
*assignvariableop_47_adam_dense_69_kernel_v:
Ô7
(assignvariableop_48_adam_dense_69_bias_v:	Ô
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
AssignVariableOpAssignVariableOp assignvariableop_dense_65_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_65_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_66_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_66_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_67_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_67_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_68_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_68_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10«
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_69_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_69_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_65_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_65_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_66_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_66_bias_mIdentity_28:output:0"/device:CPU:0*
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
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_67_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_67_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_68_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_68_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_69_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_69_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_65_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_65_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_66_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_66_bias_vIdentity_40:output:0"/device:CPU:0*
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
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_67_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44°
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_67_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45²
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_68_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46°
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_68_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47²
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_69_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48°
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_69_bias_vIdentity_48:output:0"/device:CPU:0*
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

­
F__inference_dense_67_layer_call_and_return_conditional_losses_30387277

inputs1
matmul_readvariableop_resource:	C.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_67/kernel/Regularizer/Square/ReadVariableOp
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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp·
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C2$
"dense_67/kernel/Regularizer/Square
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const¾
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *fJk72#
!dense_67/kernel/Regularizer/mul/xÀ
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity³
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
 
_user_specified_nameinputs
ý

,__inference_embedding_layer_call_fn_30388117

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
G__inference_embedding_layer_call_and_return_conditional_losses_303872542
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
input_146
serving_default_input_14:0ÿÿÿÿÿÿÿÿÿÔ=
dense_691
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
2dense_65/kernel
:2dense_65/bias
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
2dense_66/kernel
:2dense_66/bias
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
": 	C2dense_67/kernel
:2dense_67/bias
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
2dense_68/kernel
:2dense_68/bias
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
Ô2dense_69/kernel
:Ô2dense_69/bias
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
2Adam/dense_65/kernel/m
!:2Adam/dense_65/bias/m
(:&
2Adam/dense_66/kernel/m
!:2Adam/dense_66/bias/m
(:&	C2Adam/embedding/kernel/m
!:C2Adam/embedding/bias/m
':%	C2Adam/dense_67/kernel/m
!:2Adam/dense_67/bias/m
(:&
2Adam/dense_68/kernel/m
!:2Adam/dense_68/bias/m
(:&
Ô2Adam/dense_69/kernel/m
!:Ô2Adam/dense_69/bias/m
(:&
Ð
2Adam/dense_65/kernel/v
!:2Adam/dense_65/bias/v
(:&
2Adam/dense_66/kernel/v
!:2Adam/dense_66/bias/v
(:&	C2Adam/embedding/kernel/v
!:C2Adam/embedding/bias/v
':%	C2Adam/dense_67/kernel/v
!:2Adam/dense_67/bias/v
(:&
2Adam/dense_68/kernel/v
!:2Adam/dense_68/bias/v
(:&
Ô2Adam/dense_69/kernel/v
!:Ô2Adam/dense_69/bias/v
ú2÷
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387874
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387952
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387664
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387729À
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
#__inference__wrapped_model_30387176¼
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
input_14ÿÿÿÿÿÿÿÿÿÔ
2
0__inference_sequential_13_layer_call_fn_30387381
0__inference_sequential_13_layer_call_fn_30387981
0__inference_sequential_13_layer_call_fn_30388010
0__inference_sequential_13_layer_call_fn_30387599À
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
H__inference_flatten_13_layer_call_and_return_conditional_losses_30388016¢
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
-__inference_flatten_13_layer_call_fn_30388021¢
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
F__inference_dense_65_layer_call_and_return_conditional_losses_30388044¢
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
+__inference_dense_65_layer_call_fn_30388053¢
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
F__inference_dense_66_layer_call_and_return_conditional_losses_30388076¢
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
+__inference_dense_66_layer_call_fn_30388085¢
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
G__inference_embedding_layer_call_and_return_conditional_losses_30388108¢
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
,__inference_embedding_layer_call_fn_30388117¢
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
F__inference_dense_67_layer_call_and_return_conditional_losses_30388140¢
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
+__inference_dense_67_layer_call_fn_30388149¢
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
F__inference_dense_68_layer_call_and_return_conditional_losses_30388172¢
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
+__inference_dense_68_layer_call_fn_30388181¢
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
F__inference_dense_69_layer_call_and_return_conditional_losses_30388192¢
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
+__inference_dense_69_layer_call_fn_30388201¢
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
__inference_loss_fn_0_30388212
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
__inference_loss_fn_1_30388223
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
__inference_loss_fn_2_30388234
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
__inference_loss_fn_3_30388245
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
__inference_loss_fn_4_30388256
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
&__inference_signature_wrapper_30387796input_14"
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
#__inference__wrapped_model_30387176|$%*+016¢3
,¢)
'$
input_14ÿÿÿÿÿÿÿÿÿÔ
ª "4ª1
/
dense_69# 
dense_69ÿÿÿÿÿÿÿÿÿÔ¨
F__inference_dense_65_layer_call_and_return_conditional_losses_30388044^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_65_layer_call_fn_30388053Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ

ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_66_layer_call_and_return_conditional_losses_30388076^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_66_layer_call_fn_30388085Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_67_layer_call_and_return_conditional_losses_30388140]$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_67_layer_call_fn_30388149P$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿC
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_68_layer_call_and_return_conditional_losses_30388172^*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_68_layer_call_fn_30388181Q*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_69_layer_call_and_return_conditional_losses_30388192^010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 
+__inference_dense_69_layer_call_fn_30388201Q010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÔ¨
G__inference_embedding_layer_call_and_return_conditional_losses_30388108]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿC
 
,__inference_embedding_layer_call_fn_30388117P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿCª
H__inference_flatten_13_layer_call_and_return_conditional_losses_30388016^4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÐ

 
-__inference_flatten_13_layer_call_fn_30388021Q4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿÔ
ª "ÿÿÿÿÿÿÿÿÿÐ
=
__inference_loss_fn_0_30388212¢

¢ 
ª " =
__inference_loss_fn_1_30388223¢

¢ 
ª " =
__inference_loss_fn_2_30388234¢

¢ 
ª " =
__inference_loss_fn_3_30388245$¢

¢ 
ª " =
__inference_loss_fn_4_30388256*¢

¢ 
ª " Å
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387664v$%*+01>¢;
4¢1
'$
input_14ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Å
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387729v$%*+01>¢;
4¢1
'$
input_14ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÔ
 Ã
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387874t$%*+01<¢9
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
K__inference_sequential_13_layer_call_and_return_conditional_losses_30387952t$%*+01<¢9
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
0__inference_sequential_13_layer_call_fn_30387381i$%*+01>¢;
4¢1
'$
input_14ÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_13_layer_call_fn_30387599i$%*+01>¢;
4¢1
'$
input_14ÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_13_layer_call_fn_30387981g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÔ
0__inference_sequential_13_layer_call_fn_30388010g$%*+01<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿÔ
p

 
ª "ÿÿÿÿÿÿÿÿÿÔ³
&__inference_signature_wrapper_30387796$%*+01B¢?
¢ 
8ª5
3
input_14'$
input_14ÿÿÿÿÿÿÿÿÿÔ"4ª1
/
dense_69# 
dense_69ÿÿÿÿÿÿÿÿÿÔ