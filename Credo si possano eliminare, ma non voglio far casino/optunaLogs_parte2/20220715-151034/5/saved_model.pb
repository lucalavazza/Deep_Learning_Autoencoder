??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02unknown8ͱ
|
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?
?* 
shared_namedense_35/kernel
u
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel* 
_output_shapes
:
?
?*
dtype0
s
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_35/bias
l
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes	
:?*
dtype0
|
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_36/kernel
u
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel* 
_output_shapes
:
??*
dtype0
s
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_36/bias
l
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes	
:?*
dtype0
}
embedding/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C*!
shared_nameembedding/kernel
v
$embedding/kernel/Read/ReadVariableOpReadVariableOpembedding/kernel*
_output_shapes
:	?C*
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
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C?* 
shared_namedense_37/kernel
t
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes
:	C?*
dtype0
s
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_37/bias
l
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes	
:?*
dtype0
|
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_38/kernel
u
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel* 
_output_shapes
:
??*
dtype0
s
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_38/bias
l
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes	
:?*
dtype0
|
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_39/kernel
u
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel* 
_output_shapes
:
??*
dtype0
s
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_39/bias
l
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes	
:?*
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
?
Adam/dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?
?*'
shared_nameAdam/dense_35/kernel/m
?
*Adam/dense_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/m* 
_output_shapes
:
?
?*
dtype0
?
Adam/dense_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_35/bias/m
z
(Adam/dense_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_36/kernel/m
?
*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_36/bias/m
z
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/embedding/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C*(
shared_nameAdam/embedding/kernel/m
?
+Adam/embedding/kernel/m/Read/ReadVariableOpReadVariableOpAdam/embedding/kernel/m*
_output_shapes
:	?C*
dtype0
?
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
?
Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C?*'
shared_nameAdam/dense_37/kernel/m
?
*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes
:	C?*
dtype0
?
Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_37/bias/m
z
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_38/kernel/m
?
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_38/bias/m
z
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_39/kernel/m
?
*Adam/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_39/bias/m
z
(Adam/dense_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?
?*'
shared_nameAdam/dense_35/kernel/v
?
*Adam/dense_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/v* 
_output_shapes
:
?
?*
dtype0
?
Adam/dense_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_35/bias/v
z
(Adam/dense_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_36/kernel/v
?
*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_36/bias/v
z
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/embedding/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C*(
shared_nameAdam/embedding/kernel/v
?
+Adam/embedding/kernel/v/Read/ReadVariableOpReadVariableOpAdam/embedding/kernel/v*
_output_shapes
:	?C*
dtype0
?
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
?
Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C?*'
shared_nameAdam/dense_37/kernel/v
?
*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes
:	C?*
dtype0
?
Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_37/bias/v
z
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_38/kernel/v
?
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_38/bias/v
z
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_39/kernel/v
?
*Adam/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_39/bias/v
z
(Adam/dense_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?F
value?FB?F B?F
?
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
?
6iter

7beta_1

8beta_2
	9decay
:learning_ratemzm{m|m}m~m$m?%m?*m?+m?0m?1m?v?v?v?v?v?v?$v?%v?*v?+v?0v?1v?
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
?
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
?
trainable_variables
	variables
@layer_metrics
Anon_trainable_variables

Blayers
Cmetrics
regularization_losses
Dlayer_regularization_losses
[Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_35/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
	variables
Elayer_metrics
Fnon_trainable_variables

Glayers
Hmetrics
regularization_losses
Ilayer_regularization_losses
[Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_36/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
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
?
 trainable_variables
!	variables
Olayer_metrics
Pnon_trainable_variables

Qlayers
Rmetrics
"regularization_losses
Slayer_regularization_losses
[Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_37/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
?
&trainable_variables
'	variables
Tlayer_metrics
Unon_trainable_variables

Vlayers
Wmetrics
(regularization_losses
Xlayer_regularization_losses
[Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_38/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
?
,trainable_variables
-	variables
Ylayer_metrics
Znon_trainable_variables

[layers
\metrics
.regularization_losses
]layer_regularization_losses
[Y
VARIABLE_VALUEdense_39/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_39/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
?
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
VARIABLE_VALUEAdam/dense_35/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_35/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_36/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_39/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_39/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_35/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_35/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_36/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embedding/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/embedding/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_39/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_39/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_8Placeholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8dense_35/kerneldense_35/biasdense_36/kerneldense_36/biasembedding/kernelembedding/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_16361500
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp$embedding/kernel/Read/ReadVariableOp"embedding/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp*Adam/dense_35/kernel/m/Read/ReadVariableOp(Adam/dense_35/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp+Adam/embedding/kernel/m/Read/ReadVariableOp)Adam/embedding/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp*Adam/dense_39/kernel/m/Read/ReadVariableOp(Adam/dense_39/bias/m/Read/ReadVariableOp*Adam/dense_35/kernel/v/Read/ReadVariableOp(Adam/dense_35/bias/v/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp+Adam/embedding/kernel/v/Read/ReadVariableOp)Adam/embedding/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp*Adam/dense_39/kernel/v/Read/ReadVariableOp(Adam/dense_39/bias/v/Read/ReadVariableOpConst*>
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
GPU2*0J 8? **
f%R#
!__inference__traced_save_16362130
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_35/kerneldense_35/biasdense_36/kerneldense_36/biasembedding/kernelembedding/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivesfalse_positivestrue_positives_1false_negativesAdam/dense_35/kernel/mAdam/dense_35/bias/mAdam/dense_36/kernel/mAdam/dense_36/bias/mAdam/embedding/kernel/mAdam/embedding/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/dense_38/kernel/mAdam/dense_38/bias/mAdam/dense_39/kernel/mAdam/dense_39/bias/mAdam/dense_35/kernel/vAdam/dense_35/bias/vAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/embedding/kernel/vAdam/embedding/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/vAdam/dense_38/kernel/vAdam/dense_38/bias/vAdam/dense_39/kernel/vAdam/dense_39/bias/v*=
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
GPU2*0J 8? *-
f(R&
$__inference__traced_restore_16362287??

?W
?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361247

inputs%
dense_35_16361186:
?
? 
dense_35_16361188:	?%
dense_36_16361191:
?? 
dense_36_16361193:	?%
embedding_16361196:	?C 
embedding_16361198:C$
dense_37_16361201:	C? 
dense_37_16361203:	?%
dense_38_16361206:
?? 
dense_38_16361208:	?%
dense_39_16361211:
?? 
dense_39_16361213:	?
identity?? dense_35/StatefulPartitionedCall?1dense_35/kernel/Regularizer/Square/ReadVariableOp? dense_36/StatefulPartitionedCall?1dense_36/kernel/Regularizer/Square/ReadVariableOp? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?2embedding/kernel/Regularizer/Square/ReadVariableOp?
flatten_7/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_7_layer_call_and_return_conditional_losses_163608932
flatten_7/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_35_16361186dense_35_16361188*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_35_layer_call_and_return_conditional_losses_163609122"
 dense_35/StatefulPartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_16361191dense_36_16361193*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_163609352"
 dense_36/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0embedding_16361196embedding_16361198*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_163609582#
!embedding/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_37_16361201dense_37_16361203*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_163609812"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_16361206dense_38_16361208*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_38_layer_call_and_return_conditional_losses_163610042"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_16361211dense_39_16361213*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_39_layer_call_and_return_conditional_losses_163610212"
 dense_39/StatefulPartitionedCall?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_35_16361186* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/mul?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_36_16361191* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/mul?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_16361196*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_16361201*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_16361206* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_35/StatefulPartitionedCall2^dense_35/kernel/Regularizer/Square/ReadVariableOp!^dense_36/StatefulPartitionedCall2^dense_36/kernel/Regularizer/Square/ReadVariableOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_39_layer_call_and_return_conditional_losses_16361021

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?W
?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361433
input_8%
dense_35_16361372:
?
? 
dense_35_16361374:	?%
dense_36_16361377:
?? 
dense_36_16361379:	?%
embedding_16361382:	?C 
embedding_16361384:C$
dense_37_16361387:	C? 
dense_37_16361389:	?%
dense_38_16361392:
?? 
dense_38_16361394:	?%
dense_39_16361397:
?? 
dense_39_16361399:	?
identity?? dense_35/StatefulPartitionedCall?1dense_35/kernel/Regularizer/Square/ReadVariableOp? dense_36/StatefulPartitionedCall?1dense_36/kernel/Regularizer/Square/ReadVariableOp? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?2embedding/kernel/Regularizer/Square/ReadVariableOp?
flatten_7/PartitionedCallPartitionedCallinput_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_7_layer_call_and_return_conditional_losses_163608932
flatten_7/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_35_16361372dense_35_16361374*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_35_layer_call_and_return_conditional_losses_163609122"
 dense_35/StatefulPartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_16361377dense_36_16361379*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_163609352"
 dense_36/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0embedding_16361382embedding_16361384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_163609582#
!embedding/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_37_16361387dense_37_16361389*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_163609812"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_16361392dense_38_16361394*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_38_layer_call_and_return_conditional_losses_163610042"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_16361397dense_39_16361399*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_39_layer_call_and_return_conditional_losses_163610212"
 dense_39/StatefulPartitionedCall?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_35_16361372* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/mul?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_36_16361377* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/mul?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_16361382*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_16361387*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_16361392* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_35/StatefulPartitionedCall2^dense_35/kernel/Regularizer/Square/ReadVariableOp!^dense_36/StatefulPartitionedCall2^dense_36/kernel/Regularizer/Square/ReadVariableOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_8
?
?
+__inference_dense_37_layer_call_fn_16361853

inputs
unknown:	C?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_163609812
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????C: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????C
 
_user_specified_nameinputs
?
?
+__inference_dense_35_layer_call_fn_16361757

inputs
unknown:
?
?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_35_layer_call_and_return_conditional_losses_163609122
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_16361938N
;embedding_kernel_regularizer_square_readvariableop_resource:	?C
identity??2embedding/kernel/Regularizer/Square/ReadVariableOp?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;embedding_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/muln
IdentityIdentity$embedding/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
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
?
?
/__inference_sequential_7_layer_call_fn_16361085
input_8
unknown:
?
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?C
	unknown_4:C
	unknown_5:	C?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_7_layer_call_and_return_conditional_losses_163610582
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_8
?W
?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361368
input_8%
dense_35_16361307:
?
? 
dense_35_16361309:	?%
dense_36_16361312:
?? 
dense_36_16361314:	?%
embedding_16361317:	?C 
embedding_16361319:C$
dense_37_16361322:	C? 
dense_37_16361324:	?%
dense_38_16361327:
?? 
dense_38_16361329:	?%
dense_39_16361332:
?? 
dense_39_16361334:	?
identity?? dense_35/StatefulPartitionedCall?1dense_35/kernel/Regularizer/Square/ReadVariableOp? dense_36/StatefulPartitionedCall?1dense_36/kernel/Regularizer/Square/ReadVariableOp? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?2embedding/kernel/Regularizer/Square/ReadVariableOp?
flatten_7/PartitionedCallPartitionedCallinput_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_7_layer_call_and_return_conditional_losses_163608932
flatten_7/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_35_16361307dense_35_16361309*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_35_layer_call_and_return_conditional_losses_163609122"
 dense_35/StatefulPartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_16361312dense_36_16361314*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_163609352"
 dense_36/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0embedding_16361317embedding_16361319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_163609582#
!embedding/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_37_16361322dense_37_16361324*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_163609812"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_16361327dense_38_16361329*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_38_layer_call_and_return_conditional_losses_163610042"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_16361332dense_39_16361334*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_39_layer_call_and_return_conditional_losses_163610212"
 dense_39/StatefulPartitionedCall?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_35_16361307* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/mul?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_36_16361312* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/mul?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_16361317*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_16361322*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_16361327* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_35/StatefulPartitionedCall2^dense_35/kernel/Regularizer/Square/ReadVariableOp!^dense_36/StatefulPartitionedCall2^dense_36/kernel/Regularizer/Square/ReadVariableOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_8
?
c
G__inference_flatten_7_layer_call_and_return_conditional_losses_16360893

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????P  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????
2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
$__inference__traced_restore_16362287
file_prefix4
 assignvariableop_dense_35_kernel:
?
?/
 assignvariableop_1_dense_35_bias:	?6
"assignvariableop_2_dense_36_kernel:
??/
 assignvariableop_3_dense_36_bias:	?6
#assignvariableop_4_embedding_kernel:	?C/
!assignvariableop_5_embedding_bias:C5
"assignvariableop_6_dense_37_kernel:	C?/
 assignvariableop_7_dense_37_bias:	?6
"assignvariableop_8_dense_38_kernel:
??/
 assignvariableop_9_dense_38_bias:	?7
#assignvariableop_10_dense_39_kernel:
??0
!assignvariableop_11_dense_39_bias:	?'
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
*assignvariableop_25_adam_dense_35_kernel_m:
?
?7
(assignvariableop_26_adam_dense_35_bias_m:	?>
*assignvariableop_27_adam_dense_36_kernel_m:
??7
(assignvariableop_28_adam_dense_36_bias_m:	?>
+assignvariableop_29_adam_embedding_kernel_m:	?C7
)assignvariableop_30_adam_embedding_bias_m:C=
*assignvariableop_31_adam_dense_37_kernel_m:	C?7
(assignvariableop_32_adam_dense_37_bias_m:	?>
*assignvariableop_33_adam_dense_38_kernel_m:
??7
(assignvariableop_34_adam_dense_38_bias_m:	?>
*assignvariableop_35_adam_dense_39_kernel_m:
??7
(assignvariableop_36_adam_dense_39_bias_m:	?>
*assignvariableop_37_adam_dense_35_kernel_v:
?
?7
(assignvariableop_38_adam_dense_35_bias_v:	?>
*assignvariableop_39_adam_dense_36_kernel_v:
??7
(assignvariableop_40_adam_dense_36_bias_v:	?>
+assignvariableop_41_adam_embedding_kernel_v:	?C7
)assignvariableop_42_adam_embedding_bias_v:C=
*assignvariableop_43_adam_dense_37_kernel_v:	C?7
(assignvariableop_44_adam_dense_37_bias_v:	?>
*assignvariableop_45_adam_dense_38_kernel_v:
??7
(assignvariableop_46_adam_dense_38_bias_v:	?>
*assignvariableop_47_adam_dense_39_kernel_v:
??7
(assignvariableop_48_adam_dense_39_bias_v:	?
identity_50??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_35_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_35_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_36_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_36_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_embedding_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_embedding_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_37_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_37_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_38_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_38_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_39_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_39_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_true_positivesIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp#assignvariableop_22_false_positivesIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_true_positives_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_false_negativesIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_35_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_35_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_36_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_36_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_embedding_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_embedding_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_37_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_37_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_38_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_38_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_39_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_39_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_35_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_35_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_36_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_36_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_embedding_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_embedding_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_37_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_37_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_38_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_38_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_39_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_39_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_489
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_49f
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_50?
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
?
?
__inference_loss_fn_1_16361927N
:dense_36_kernel_regularizer_square_readvariableop_resource:
??
identity??1dense_36/kernel/Regularizer/Square/ReadVariableOp?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_36_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/mulm
IdentityIdentity#dense_36/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp
?
?
&__inference_signature_wrapper_16361500
input_8
unknown:
?
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?C
	unknown_4:C
	unknown_5:	C?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__wrapped_model_163608802
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_8
?
?
/__inference_sequential_7_layer_call_fn_16361303
input_8
unknown:
?
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?C
	unknown_4:C
	unknown_5:	C?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_7_layer_call_and_return_conditional_losses_163612472
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_8
?
?
F__inference_dense_35_layer_call_and_return_conditional_losses_16361748

inputs2
matmul_readvariableop_resource:
?
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_35/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_35/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?p
?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361578

inputs;
'dense_35_matmul_readvariableop_resource:
?
?7
(dense_35_biasadd_readvariableop_resource:	?;
'dense_36_matmul_readvariableop_resource:
??7
(dense_36_biasadd_readvariableop_resource:	?;
(embedding_matmul_readvariableop_resource:	?C7
)embedding_biasadd_readvariableop_resource:C:
'dense_37_matmul_readvariableop_resource:	C?7
(dense_37_biasadd_readvariableop_resource:	?;
'dense_38_matmul_readvariableop_resource:
??7
(dense_38_biasadd_readvariableop_resource:	?;
'dense_39_matmul_readvariableop_resource:
??7
(dense_39_biasadd_readvariableop_resource:	?
identity??dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?1dense_35/kernel/Regularizer/Square/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?1dense_36/kernel/Regularizer/Square/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp? embedding/BiasAdd/ReadVariableOp?embedding/MatMul/ReadVariableOp?2embedding/kernel/Regularizer/Square/ReadVariableOps
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????P  2
flatten_7/Const?
flatten_7/ReshapeReshapeinputsflatten_7/Const:output:0*
T0*(
_output_shapes
:??????????
2
flatten_7/Reshape?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype02 
dense_35/MatMul/ReadVariableOp?
dense_35/MatMulMatMulflatten_7/Reshape:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_35/MatMul?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_35/BiasAdd/ReadVariableOp?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_35/BiasAddt
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_35/Relu?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_36/MatMul/ReadVariableOp?
dense_36/MatMulMatMuldense_35/Relu:activations:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/MatMul?
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_36/BiasAdd/ReadVariableOp?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/BiasAddt
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_36/Relu?
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	?C*
dtype02!
embedding/MatMul/ReadVariableOp?
embedding/MatMulMatMuldense_36/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
embedding/MatMul?
 embedding/BiasAdd/ReadVariableOpReadVariableOp)embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02"
 embedding/BiasAdd/ReadVariableOp?
embedding/BiasAddBiasAddembedding/MatMul:product:0(embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
embedding/BiasAddv
embedding/ReluReluembedding/BiasAdd:output:0*
T0*'
_output_shapes
:?????????C2
embedding/Relu?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	C?*
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMulMatMulembedding/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/BiasAddt
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_37/Relu?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/BiasAddt
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_38/Relu?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/BiasAdd}
dense_39/SigmoidSigmoiddense_39/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_39/Sigmoid?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/mul?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/mul?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mulp
IdentityIdentitydense_39/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp2^dense_35/kernel/Regularizer/Square/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp2^dense_36/kernel/Regularizer/Square/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_37_layer_call_and_return_conditional_losses_16360981

inputs1
matmul_readvariableop_resource:	C?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????C: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????C
 
_user_specified_nameinputs
?
H
,__inference_flatten_7_layer_call_fn_16361725

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_7_layer_call_and_return_conditional_losses_163608932
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_38_layer_call_and_return_conditional_losses_16361876

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_16361916N
:dense_35_kernel_regularizer_square_readvariableop_resource:
?
?
identity??1dense_35/kernel/Regularizer/Square/ReadVariableOp?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_35_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/mulm
IdentityIdentity#dense_35/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_35/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_3_16361949M
:dense_37_kernel_regularizer_square_readvariableop_resource:	C?
identity??1dense_37/kernel/Regularizer/Square/ReadVariableOp?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_37_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mulm
IdentityIdentity#dense_37/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp
?
?
F__inference_dense_35_layer_call_and_return_conditional_losses_16360912

inputs2
matmul_readvariableop_resource:
?
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_35/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_35/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
F__inference_dense_36_layer_call_and_return_conditional_losses_16361780

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_36/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_36_layer_call_and_return_conditional_losses_16360935

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_36/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?c
?
!__inference__traced_save_16362130
file_prefix.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop/
+savev2_embedding_kernel_read_readvariableop-
)savev2_embedding_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop(
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
1savev2_adam_dense_35_kernel_m_read_readvariableop3
/savev2_adam_dense_35_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop6
2savev2_adam_embedding_kernel_m_read_readvariableop4
0savev2_adam_embedding_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop5
1savev2_adam_dense_39_kernel_m_read_readvariableop3
/savev2_adam_dense_39_bias_m_read_readvariableop5
1savev2_adam_dense_35_kernel_v_read_readvariableop3
/savev2_adam_dense_35_bias_v_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop6
2savev2_adam_embedding_kernel_v_read_readvariableop4
0savev2_adam_embedding_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop5
1savev2_adam_dense_39_kernel_v_read_readvariableop3
/savev2_adam_dense_39_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop+savev2_embedding_kernel_read_readvariableop)savev2_embedding_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop1savev2_adam_dense_35_kernel_m_read_readvariableop/savev2_adam_dense_35_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop2savev2_adam_embedding_kernel_m_read_readvariableop0savev2_adam_embedding_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop1savev2_adam_dense_39_kernel_m_read_readvariableop/savev2_adam_dense_39_bias_m_read_readvariableop1savev2_adam_dense_35_kernel_v_read_readvariableop/savev2_adam_dense_35_bias_v_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop2savev2_adam_embedding_kernel_v_read_readvariableop0savev2_adam_embedding_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop1savev2_adam_dense_39_kernel_v_read_readvariableop/savev2_adam_dense_39_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?
?:?:
??:?:	?C:C:	C?:?:
??:?:
??:?: : : : : : : : : :::::
?
?:?:
??:?:	?C:C:	C?:?:
??:?:
??:?:
?
?:?:
??:?:	?C:C:	C?:?:
??:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?C: 

_output_shapes
:C:%!

_output_shapes
:	C?:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:
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
?
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?C: 

_output_shapes
:C:% !

_output_shapes
:	C?:!!

_output_shapes	
:?:&""
 
_output_shapes
:
??:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:&&"
 
_output_shapes
:
?
?:!'

_output_shapes	
:?:&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:%*!

_output_shapes
:	?C: +

_output_shapes
:C:%,!

_output_shapes
:	C?:!-

_output_shapes	
:?:&."
 
_output_shapes
:
??:!/

_output_shapes	
:?:&0"
 
_output_shapes
:
??:!1

_output_shapes	
:?:2

_output_shapes
: 
?
?
__inference_loss_fn_4_16361960N
:dense_38_kernel_regularizer_square_readvariableop_resource:
??
identity??1dense_38/kernel/Regularizer/Square/ReadVariableOp?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_38_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mulm
IdentityIdentity#dense_38/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp
?
?
G__inference_embedding_layer_call_and_return_conditional_losses_16360958

inputs1
matmul_readvariableop_resource:	?C-
biasadd_readvariableop_resource:C
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2embedding/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?C*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????C2
Relu?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????C2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_embedding_layer_call_and_return_conditional_losses_16361812

inputs1
matmul_readvariableop_resource:	?C-
biasadd_readvariableop_resource:C
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2embedding/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?C*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????C2
Relu?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????C2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?W
?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361058

inputs%
dense_35_16360913:
?
? 
dense_35_16360915:	?%
dense_36_16360936:
?? 
dense_36_16360938:	?%
embedding_16360959:	?C 
embedding_16360961:C$
dense_37_16360982:	C? 
dense_37_16360984:	?%
dense_38_16361005:
?? 
dense_38_16361007:	?%
dense_39_16361022:
?? 
dense_39_16361024:	?
identity?? dense_35/StatefulPartitionedCall?1dense_35/kernel/Regularizer/Square/ReadVariableOp? dense_36/StatefulPartitionedCall?1dense_36/kernel/Regularizer/Square/ReadVariableOp? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?2embedding/kernel/Regularizer/Square/ReadVariableOp?
flatten_7/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_7_layer_call_and_return_conditional_losses_163608932
flatten_7/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_35_16360913dense_35_16360915*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_35_layer_call_and_return_conditional_losses_163609122"
 dense_35/StatefulPartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_16360936dense_36_16360938*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_163609352"
 dense_36/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0embedding_16360959embedding_16360961*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_163609582#
!embedding/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0dense_37_16360982dense_37_16360984*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_37_layer_call_and_return_conditional_losses_163609812"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_16361005dense_38_16361007*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_38_layer_call_and_return_conditional_losses_163610042"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_16361022dense_39_16361024*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_39_layer_call_and_return_conditional_losses_163610212"
 dense_39/StatefulPartitionedCall?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_35_16360913* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/mul?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_36_16360936* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/mul?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOpembedding_16360959*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_16360982*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_16361005* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_35/StatefulPartitionedCall2^dense_35/kernel/Regularizer/Square/ReadVariableOp!^dense_36/StatefulPartitionedCall2^dense_36/kernel/Regularizer/Square/ReadVariableOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall"^embedding/StatefulPartitionedCall3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_7_layer_call_and_return_conditional_losses_16361720

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????P  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????
2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_37_layer_call_and_return_conditional_losses_16361844

inputs1
matmul_readvariableop_resource:	C?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????C: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????C
 
_user_specified_nameinputs
?
?
+__inference_dense_38_layer_call_fn_16361885

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_38_layer_call_and_return_conditional_losses_163610042
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_39_layer_call_and_return_conditional_losses_16361896

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_dense_39_layer_call_fn_16361905

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_39_layer_call_and_return_conditional_losses_163610212
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_38_layer_call_and_return_conditional_losses_16361004

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/muln
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_7_layer_call_fn_16361714

inputs
unknown:
?
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?C
	unknown_4:C
	unknown_5:	C?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_7_layer_call_and_return_conditional_losses_163612472
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_dense_36_layer_call_fn_16361789

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_36_layer_call_and_return_conditional_losses_163609352
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_7_layer_call_fn_16361685

inputs
unknown:
?
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?C
	unknown_4:C
	unknown_5:	C?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_7_layer_call_and_return_conditional_losses_163610582
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?p
?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361656

inputs;
'dense_35_matmul_readvariableop_resource:
?
?7
(dense_35_biasadd_readvariableop_resource:	?;
'dense_36_matmul_readvariableop_resource:
??7
(dense_36_biasadd_readvariableop_resource:	?;
(embedding_matmul_readvariableop_resource:	?C7
)embedding_biasadd_readvariableop_resource:C:
'dense_37_matmul_readvariableop_resource:	C?7
(dense_37_biasadd_readvariableop_resource:	?;
'dense_38_matmul_readvariableop_resource:
??7
(dense_38_biasadd_readvariableop_resource:	?;
'dense_39_matmul_readvariableop_resource:
??7
(dense_39_biasadd_readvariableop_resource:	?
identity??dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?1dense_35/kernel/Regularizer/Square/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?1dense_36/kernel/Regularizer/Square/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp? embedding/BiasAdd/ReadVariableOp?embedding/MatMul/ReadVariableOp?2embedding/kernel/Regularizer/Square/ReadVariableOps
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????P  2
flatten_7/Const?
flatten_7/ReshapeReshapeinputsflatten_7/Const:output:0*
T0*(
_output_shapes
:??????????
2
flatten_7/Reshape?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype02 
dense_35/MatMul/ReadVariableOp?
dense_35/MatMulMatMulflatten_7/Reshape:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_35/MatMul?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_35/BiasAdd/ReadVariableOp?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_35/BiasAddt
dense_35/ReluReludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_35/Relu?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_36/MatMul/ReadVariableOp?
dense_36/MatMulMatMuldense_35/Relu:activations:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/MatMul?
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_36/BiasAdd/ReadVariableOp?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/BiasAddt
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_36/Relu?
embedding/MatMul/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	?C*
dtype02!
embedding/MatMul/ReadVariableOp?
embedding/MatMulMatMuldense_36/Relu:activations:0'embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
embedding/MatMul?
 embedding/BiasAdd/ReadVariableOpReadVariableOp)embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02"
 embedding/BiasAdd/ReadVariableOp?
embedding/BiasAddBiasAddembedding/MatMul:product:0(embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
embedding/BiasAddv
embedding/ReluReluembedding/BiasAdd:output:0*
T0*'
_output_shapes
:?????????C2
embedding/Relu?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	C?*
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMulMatMulembedding/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/BiasAddt
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_37/Relu?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_38/BiasAddt
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_38/Relu?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_39/BiasAdd}
dense_39/SigmoidSigmoiddense_39/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_39/Sigmoid?
1dense_35/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype023
1dense_35/kernel/Regularizer/Square/ReadVariableOp?
"dense_35/kernel/Regularizer/SquareSquare9dense_35/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
?
?2$
"dense_35/kernel/Regularizer/Square?
!dense_35/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_35/kernel/Regularizer/Const?
dense_35/kernel/Regularizer/SumSum&dense_35/kernel/Regularizer/Square:y:0*dense_35/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/Sum?
!dense_35/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_35/kernel/Regularizer/mul/x?
dense_35/kernel/Regularizer/mulMul*dense_35/kernel/Regularizer/mul/x:output:0(dense_35/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_35/kernel/Regularizer/mul?
1dense_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_36/kernel/Regularizer/Square/ReadVariableOp?
"dense_36/kernel/Regularizer/SquareSquare9dense_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_36/kernel/Regularizer/Square?
!dense_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_36/kernel/Regularizer/Const?
dense_36/kernel/Regularizer/SumSum&dense_36/kernel/Regularizer/Square:y:0*dense_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/Sum?
!dense_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_36/kernel/Regularizer/mul/x?
dense_36/kernel/Regularizer/mulMul*dense_36/kernel/Regularizer/mul/x:output:0(dense_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_36/kernel/Regularizer/mul?
2embedding/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_matmul_readvariableop_resource*
_output_shapes
:	?C*
dtype024
2embedding/kernel/Regularizer/Square/ReadVariableOp?
#embedding/kernel/Regularizer/SquareSquare:embedding/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?C2%
#embedding/kernel/Regularizer/Square?
"embedding/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"embedding/kernel/Regularizer/Const?
 embedding/kernel/Regularizer/SumSum'embedding/kernel/Regularizer/Square:y:0+embedding/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/Sum?
"embedding/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72$
"embedding/kernel/Regularizer/mul/x?
 embedding/kernel/Regularizer/mulMul+embedding/kernel/Regularizer/mul/x:output:0)embedding/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 embedding/kernel/Regularizer/mul?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	C?*
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	C?2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *@??72#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mulp
IdentityIdentitydense_39/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp2^dense_35/kernel/Regularizer/Square/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp2^dense_36/kernel/Regularizer/Square/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp!^embedding/BiasAdd/ReadVariableOp ^embedding/MatMul/ReadVariableOp3^embedding/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2f
1dense_35/kernel/Regularizer/Square/ReadVariableOp1dense_35/kernel/Regularizer/Square/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2f
1dense_36/kernel/Regularizer/Square/ReadVariableOp1dense_36/kernel/Regularizer/Square/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2D
 embedding/BiasAdd/ReadVariableOp embedding/BiasAdd/ReadVariableOp2B
embedding/MatMul/ReadVariableOpembedding/MatMul/ReadVariableOp2h
2embedding/kernel/Regularizer/Square/ReadVariableOp2embedding/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_embedding_layer_call_fn_16361821

inputs
unknown:	?C
	unknown_0:C
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_163609582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????C2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?N
?
#__inference__wrapped_model_16360880
input_8H
4sequential_7_dense_35_matmul_readvariableop_resource:
?
?D
5sequential_7_dense_35_biasadd_readvariableop_resource:	?H
4sequential_7_dense_36_matmul_readvariableop_resource:
??D
5sequential_7_dense_36_biasadd_readvariableop_resource:	?H
5sequential_7_embedding_matmul_readvariableop_resource:	?CD
6sequential_7_embedding_biasadd_readvariableop_resource:CG
4sequential_7_dense_37_matmul_readvariableop_resource:	C?D
5sequential_7_dense_37_biasadd_readvariableop_resource:	?H
4sequential_7_dense_38_matmul_readvariableop_resource:
??D
5sequential_7_dense_38_biasadd_readvariableop_resource:	?H
4sequential_7_dense_39_matmul_readvariableop_resource:
??D
5sequential_7_dense_39_biasadd_readvariableop_resource:	?
identity??,sequential_7/dense_35/BiasAdd/ReadVariableOp?+sequential_7/dense_35/MatMul/ReadVariableOp?,sequential_7/dense_36/BiasAdd/ReadVariableOp?+sequential_7/dense_36/MatMul/ReadVariableOp?,sequential_7/dense_37/BiasAdd/ReadVariableOp?+sequential_7/dense_37/MatMul/ReadVariableOp?,sequential_7/dense_38/BiasAdd/ReadVariableOp?+sequential_7/dense_38/MatMul/ReadVariableOp?,sequential_7/dense_39/BiasAdd/ReadVariableOp?+sequential_7/dense_39/MatMul/ReadVariableOp?-sequential_7/embedding/BiasAdd/ReadVariableOp?,sequential_7/embedding/MatMul/ReadVariableOp?
sequential_7/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????P  2
sequential_7/flatten_7/Const?
sequential_7/flatten_7/ReshapeReshapeinput_8%sequential_7/flatten_7/Const:output:0*
T0*(
_output_shapes
:??????????
2 
sequential_7/flatten_7/Reshape?
+sequential_7/dense_35/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
?
?*
dtype02-
+sequential_7/dense_35/MatMul/ReadVariableOp?
sequential_7/dense_35/MatMulMatMul'sequential_7/flatten_7/Reshape:output:03sequential_7/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_35/MatMul?
,sequential_7/dense_35/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_35/BiasAdd/ReadVariableOp?
sequential_7/dense_35/BiasAddBiasAdd&sequential_7/dense_35/MatMul:product:04sequential_7/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_35/BiasAdd?
sequential_7/dense_35/ReluRelu&sequential_7/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_35/Relu?
+sequential_7/dense_36/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_36/MatMul/ReadVariableOp?
sequential_7/dense_36/MatMulMatMul(sequential_7/dense_35/Relu:activations:03sequential_7/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_36/MatMul?
,sequential_7/dense_36/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_36/BiasAdd/ReadVariableOp?
sequential_7/dense_36/BiasAddBiasAdd&sequential_7/dense_36/MatMul:product:04sequential_7/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_36/BiasAdd?
sequential_7/dense_36/ReluRelu&sequential_7/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_36/Relu?
,sequential_7/embedding/MatMul/ReadVariableOpReadVariableOp5sequential_7_embedding_matmul_readvariableop_resource*
_output_shapes
:	?C*
dtype02.
,sequential_7/embedding/MatMul/ReadVariableOp?
sequential_7/embedding/MatMulMatMul(sequential_7/dense_36/Relu:activations:04sequential_7/embedding/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2
sequential_7/embedding/MatMul?
-sequential_7/embedding/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_embedding_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype02/
-sequential_7/embedding/BiasAdd/ReadVariableOp?
sequential_7/embedding/BiasAddBiasAdd'sequential_7/embedding/MatMul:product:05sequential_7/embedding/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????C2 
sequential_7/embedding/BiasAdd?
sequential_7/embedding/ReluRelu'sequential_7/embedding/BiasAdd:output:0*
T0*'
_output_shapes
:?????????C2
sequential_7/embedding/Relu?
+sequential_7/dense_37/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_37_matmul_readvariableop_resource*
_output_shapes
:	C?*
dtype02-
+sequential_7/dense_37/MatMul/ReadVariableOp?
sequential_7/dense_37/MatMulMatMul)sequential_7/embedding/Relu:activations:03sequential_7/dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_37/MatMul?
,sequential_7/dense_37/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_37/BiasAdd/ReadVariableOp?
sequential_7/dense_37/BiasAddBiasAdd&sequential_7/dense_37/MatMul:product:04sequential_7/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_37/BiasAdd?
sequential_7/dense_37/ReluRelu&sequential_7/dense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_37/Relu?
+sequential_7/dense_38/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_38_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_38/MatMul/ReadVariableOp?
sequential_7/dense_38/MatMulMatMul(sequential_7/dense_37/Relu:activations:03sequential_7/dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_38/MatMul?
,sequential_7/dense_38/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_38_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_38/BiasAdd/ReadVariableOp?
sequential_7/dense_38/BiasAddBiasAdd&sequential_7/dense_38/MatMul:product:04sequential_7/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_38/BiasAdd?
sequential_7/dense_38/ReluRelu&sequential_7/dense_38/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_38/Relu?
+sequential_7/dense_39/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_39_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_7/dense_39/MatMul/ReadVariableOp?
sequential_7/dense_39/MatMulMatMul(sequential_7/dense_38/Relu:activations:03sequential_7/dense_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_39/MatMul?
,sequential_7/dense_39/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_39_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_7/dense_39/BiasAdd/ReadVariableOp?
sequential_7/dense_39/BiasAddBiasAdd&sequential_7/dense_39/MatMul:product:04sequential_7/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_39/BiasAdd?
sequential_7/dense_39/SigmoidSigmoid&sequential_7/dense_39/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_7/dense_39/Sigmoid}
IdentityIdentity!sequential_7/dense_39/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp-^sequential_7/dense_35/BiasAdd/ReadVariableOp,^sequential_7/dense_35/MatMul/ReadVariableOp-^sequential_7/dense_36/BiasAdd/ReadVariableOp,^sequential_7/dense_36/MatMul/ReadVariableOp-^sequential_7/dense_37/BiasAdd/ReadVariableOp,^sequential_7/dense_37/MatMul/ReadVariableOp-^sequential_7/dense_38/BiasAdd/ReadVariableOp,^sequential_7/dense_38/MatMul/ReadVariableOp-^sequential_7/dense_39/BiasAdd/ReadVariableOp,^sequential_7/dense_39/MatMul/ReadVariableOp.^sequential_7/embedding/BiasAdd/ReadVariableOp-^sequential_7/embedding/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : : : 2\
,sequential_7/dense_35/BiasAdd/ReadVariableOp,sequential_7/dense_35/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_35/MatMul/ReadVariableOp+sequential_7/dense_35/MatMul/ReadVariableOp2\
,sequential_7/dense_36/BiasAdd/ReadVariableOp,sequential_7/dense_36/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_36/MatMul/ReadVariableOp+sequential_7/dense_36/MatMul/ReadVariableOp2\
,sequential_7/dense_37/BiasAdd/ReadVariableOp,sequential_7/dense_37/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_37/MatMul/ReadVariableOp+sequential_7/dense_37/MatMul/ReadVariableOp2\
,sequential_7/dense_38/BiasAdd/ReadVariableOp,sequential_7/dense_38/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_38/MatMul/ReadVariableOp+sequential_7/dense_38/MatMul/ReadVariableOp2\
,sequential_7/dense_39/BiasAdd/ReadVariableOp,sequential_7/dense_39/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_39/MatMul/ReadVariableOp+sequential_7/dense_39/MatMul/ReadVariableOp2^
-sequential_7/embedding/BiasAdd/ReadVariableOp-sequential_7/embedding/BiasAdd/ReadVariableOp2\
,sequential_7/embedding/MatMul/ReadVariableOp,sequential_7/embedding/MatMul/ReadVariableOp:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_8"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
@
input_85
serving_default_input_8:0??????????=
dense_391
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?
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
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

*kernel
+bias
,trainable_variables
-	variables
.regularization_losses
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

0kernel
1bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
6iter

7beta_1

8beta_2
	9decay
:learning_ratemzm{m|m}m~m$m?%m?*m?+m?0m?1m?v?v?v?v?v?v?$v?%v?*v?+v?0v?1v?"
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
?0
?1
?2
?3
?4"
trackable_list_wrapper
?
	trainable_variables

	variables
;layer_metrics
<non_trainable_variables

=layers
>metrics
regularization_losses
?layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
@layer_metrics
Anon_trainable_variables

Blayers
Cmetrics
regularization_losses
Dlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
?
?2dense_35/kernel
:?2dense_35/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
trainable_variables
	variables
Elayer_metrics
Fnon_trainable_variables

Glayers
Hmetrics
regularization_losses
Ilayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_36/kernel
:?2dense_36/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
trainable_variables
	variables
Jlayer_metrics
Knon_trainable_variables

Llayers
Mmetrics
regularization_losses
Nlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?C2embedding/kernel
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
?0"
trackable_list_wrapper
?
 trainable_variables
!	variables
Olayer_metrics
Pnon_trainable_variables

Qlayers
Rmetrics
"regularization_losses
Slayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	C?2dense_37/kernel
:?2dense_37/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
&trainable_variables
'	variables
Tlayer_metrics
Unon_trainable_variables

Vlayers
Wmetrics
(regularization_losses
Xlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_38/kernel
:?2dense_38/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
,trainable_variables
-	variables
Ylayer_metrics
Znon_trainable_variables

[layers
\metrics
.regularization_losses
]layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_39/kernel
:?2dense_39/bias
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
?
2trainable_variables
3	variables
^layer_metrics
_non_trainable_variables

`layers
ametrics
4regularization_losses
blayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?0"
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
?0"
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
?0"
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
?0"
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
?0"
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
?
?2Adam/dense_35/kernel/m
!:?2Adam/dense_35/bias/m
(:&
??2Adam/dense_36/kernel/m
!:?2Adam/dense_36/bias/m
(:&	?C2Adam/embedding/kernel/m
!:C2Adam/embedding/bias/m
':%	C?2Adam/dense_37/kernel/m
!:?2Adam/dense_37/bias/m
(:&
??2Adam/dense_38/kernel/m
!:?2Adam/dense_38/bias/m
(:&
??2Adam/dense_39/kernel/m
!:?2Adam/dense_39/bias/m
(:&
?
?2Adam/dense_35/kernel/v
!:?2Adam/dense_35/bias/v
(:&
??2Adam/dense_36/kernel/v
!:?2Adam/dense_36/bias/v
(:&	?C2Adam/embedding/kernel/v
!:C2Adam/embedding/bias/v
':%	C?2Adam/dense_37/kernel/v
!:?2Adam/dense_37/bias/v
(:&
??2Adam/dense_38/kernel/v
!:?2Adam/dense_38/bias/v
(:&
??2Adam/dense_39/kernel/v
!:?2Adam/dense_39/bias/v
?2?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361578
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361656
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361368
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361433?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
#__inference__wrapped_model_16360880?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *+?(
&?#
input_8??????????
?2?
/__inference_sequential_7_layer_call_fn_16361085
/__inference_sequential_7_layer_call_fn_16361685
/__inference_sequential_7_layer_call_fn_16361714
/__inference_sequential_7_layer_call_fn_16361303?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_flatten_7_layer_call_and_return_conditional_losses_16361720?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_flatten_7_layer_call_fn_16361725?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_35_layer_call_and_return_conditional_losses_16361748?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_35_layer_call_fn_16361757?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_36_layer_call_and_return_conditional_losses_16361780?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_36_layer_call_fn_16361789?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_embedding_layer_call_and_return_conditional_losses_16361812?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_embedding_layer_call_fn_16361821?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_37_layer_call_and_return_conditional_losses_16361844?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_37_layer_call_fn_16361853?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_38_layer_call_and_return_conditional_losses_16361876?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_38_layer_call_fn_16361885?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_39_layer_call_and_return_conditional_losses_16361896?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_39_layer_call_fn_16361905?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_16361916?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_16361927?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_16361938?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_16361949?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_16361960?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
&__inference_signature_wrapper_16361500input_8"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
#__inference__wrapped_model_16360880{$%*+015?2
+?(
&?#
input_8??????????
? "4?1
/
dense_39#? 
dense_39???????????
F__inference_dense_35_layer_call_and_return_conditional_losses_16361748^0?-
&?#
!?
inputs??????????

? "&?#
?
0??????????
? ?
+__inference_dense_35_layer_call_fn_16361757Q0?-
&?#
!?
inputs??????????

? "????????????
F__inference_dense_36_layer_call_and_return_conditional_losses_16361780^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_36_layer_call_fn_16361789Q0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_37_layer_call_and_return_conditional_losses_16361844]$%/?,
%?"
 ?
inputs?????????C
? "&?#
?
0??????????
? 
+__inference_dense_37_layer_call_fn_16361853P$%/?,
%?"
 ?
inputs?????????C
? "????????????
F__inference_dense_38_layer_call_and_return_conditional_losses_16361876^*+0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_38_layer_call_fn_16361885Q*+0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_39_layer_call_and_return_conditional_losses_16361896^010?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_39_layer_call_fn_16361905Q010?-
&?#
!?
inputs??????????
? "????????????
G__inference_embedding_layer_call_and_return_conditional_losses_16361812]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????C
? ?
,__inference_embedding_layer_call_fn_16361821P0?-
&?#
!?
inputs??????????
? "??????????C?
G__inference_flatten_7_layer_call_and_return_conditional_losses_16361720^4?1
*?'
%?"
inputs??????????
? "&?#
?
0??????????

? ?
,__inference_flatten_7_layer_call_fn_16361725Q4?1
*?'
%?"
inputs??????????
? "???????????
=
__inference_loss_fn_0_16361916?

? 
? "? =
__inference_loss_fn_1_16361927?

? 
? "? =
__inference_loss_fn_2_16361938?

? 
? "? =
__inference_loss_fn_3_16361949$?

? 
? "? =
__inference_loss_fn_4_16361960*?

? 
? "? ?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361368u$%*+01=?:
3?0
&?#
input_8??????????
p 

 
? "&?#
?
0??????????
? ?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361433u$%*+01=?:
3?0
&?#
input_8??????????
p

 
? "&?#
?
0??????????
? ?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361578t$%*+01<?9
2?/
%?"
inputs??????????
p 

 
? "&?#
?
0??????????
? ?
J__inference_sequential_7_layer_call_and_return_conditional_losses_16361656t$%*+01<?9
2?/
%?"
inputs??????????
p

 
? "&?#
?
0??????????
? ?
/__inference_sequential_7_layer_call_fn_16361085h$%*+01=?:
3?0
&?#
input_8??????????
p 

 
? "????????????
/__inference_sequential_7_layer_call_fn_16361303h$%*+01=?:
3?0
&?#
input_8??????????
p

 
? "????????????
/__inference_sequential_7_layer_call_fn_16361685g$%*+01<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
/__inference_sequential_7_layer_call_fn_16361714g$%*+01<?9
2?/
%?"
inputs??????????
p

 
? "????????????
&__inference_signature_wrapper_16361500?$%*+01@?=
? 
6?3
1
input_8&?#
input_8??????????"4?1
/
dense_39#? 
dense_39??????????