─▀
√╠
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
╛
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
executor_typestring И
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02v2.6.0-rc2-32-g919f693420e8╕╥

~
conv2D/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2D/kernel
w
!conv2D/kernel/Read/ReadVariableOpReadVariableOpconv2D/kernel*&
_output_shapes
: *
dtype0
n
conv2D/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2D/bias
g
conv2D/bias/Read/ReadVariableOpReadVariableOpconv2D/bias*
_output_shapes
: *
dtype0
В
conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2D_2/kernel
{
#conv2D_2/kernel/Read/ReadVariableOpReadVariableOpconv2D_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2D_2/bias
k
!conv2D_2/bias/Read/ReadVariableOpReadVariableOpconv2D_2/bias*
_output_shapes
:@*
dtype0
Г
conv2D_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2D_3/kernel
|
#conv2D_3/kernel/Read/ReadVariableOpReadVariableOpconv2D_3/kernel*'
_output_shapes
:@А*
dtype0
s
conv2D_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2D_3/bias
l
!conv2D_3/bias/Read/ReadVariableOpReadVariableOpconv2D_3/bias*
_output_shapes	
:А*
dtype0
Д
dense_hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*$
shared_namedense_hidden/kernel
}
'dense_hidden/kernel/Read/ReadVariableOpReadVariableOpdense_hidden/kernel* 
_output_shapes
:
А@А*
dtype0
{
dense_hidden/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_namedense_hidden/bias
t
%dense_hidden/bias/Read/ReadVariableOpReadVariableOpdense_hidden/bias*
_output_shapes	
:А*
dtype0
И
dense_hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_namedense_hidden_2/kernel
Б
)dense_hidden_2/kernel/Read/ReadVariableOpReadVariableOpdense_hidden_2/kernel* 
_output_shapes
:
АА*
dtype0

dense_hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_namedense_hidden_2/bias
x
'dense_hidden_2/bias/Read/ReadVariableOpReadVariableOpdense_hidden_2/bias*
_output_shapes	
:А*
dtype0
u
ouput/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_nameouput/kernel
n
 ouput/kernel/Read/ReadVariableOpReadVariableOpouput/kernel*
_output_shapes
:	А*
dtype0
l

ouput/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ouput/bias
e
ouput/bias/Read/ReadVariableOpReadVariableOp
ouput/bias*
_output_shapes
:*
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
М
Adam/conv2D/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/m
Е
(Adam/conv2D/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2D/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2D/bias/m
u
&Adam/conv2D/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D/bias/m*
_output_shapes
: *
dtype0
Р
Adam/conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/m
Й
*Adam/conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/m*&
_output_shapes
: @*
dtype0
А
Adam/conv2D_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/m
y
(Adam/conv2D_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/m*
_output_shapes
:@*
dtype0
С
Adam/conv2D_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2D_3/kernel/m
К
*Adam/conv2D_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/m*'
_output_shapes
:@А*
dtype0
Б
Adam/conv2D_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2D_3/bias/m
z
(Adam/conv2D_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/m*
_output_shapes	
:А*
dtype0
Т
Adam/dense_hidden/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*+
shared_nameAdam/dense_hidden/kernel/m
Л
.Adam/dense_hidden/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/m* 
_output_shapes
:
А@А*
dtype0
Й
Adam/dense_hidden/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/dense_hidden/bias/m
В
,Adam/dense_hidden/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/m*
_output_shapes	
:А*
dtype0
Ц
Adam/dense_hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameAdam/dense_hidden_2/kernel/m
П
0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/m* 
_output_shapes
:
АА*
dtype0
Н
Adam/dense_hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/dense_hidden_2/bias/m
Ж
.Adam/dense_hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/m*
_output_shapes	
:А*
dtype0
Г
Adam/ouput/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/ouput/kernel/m
|
'Adam/ouput/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/m*
_output_shapes
:	А*
dtype0
z
Adam/ouput/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ouput/bias/m
s
%Adam/ouput/bias/m/Read/ReadVariableOpReadVariableOpAdam/ouput/bias/m*
_output_shapes
:*
dtype0
М
Adam/conv2D/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/v
Е
(Adam/conv2D/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2D/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2D/bias/v
u
&Adam/conv2D/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D/bias/v*
_output_shapes
: *
dtype0
Р
Adam/conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/v
Й
*Adam/conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/v*&
_output_shapes
: @*
dtype0
А
Adam/conv2D_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/v
y
(Adam/conv2D_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/v*
_output_shapes
:@*
dtype0
С
Adam/conv2D_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2D_3/kernel/v
К
*Adam/conv2D_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/v*'
_output_shapes
:@А*
dtype0
Б
Adam/conv2D_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2D_3/bias/v
z
(Adam/conv2D_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/v*
_output_shapes	
:А*
dtype0
Т
Adam/dense_hidden/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*+
shared_nameAdam/dense_hidden/kernel/v
Л
.Adam/dense_hidden/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/v* 
_output_shapes
:
А@А*
dtype0
Й
Adam/dense_hidden/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/dense_hidden/bias/v
В
,Adam/dense_hidden/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/v*
_output_shapes	
:А*
dtype0
Ц
Adam/dense_hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameAdam/dense_hidden_2/kernel/v
П
0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/v* 
_output_shapes
:
АА*
dtype0
Н
Adam/dense_hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/dense_hidden_2/bias/v
Ж
.Adam/dense_hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/v*
_output_shapes	
:А*
dtype0
Г
Adam/ouput/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/ouput/kernel/v
|
'Adam/ouput/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/v*
_output_shapes
:	А*
dtype0
z
Adam/ouput/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ouput/bias/v
s
%Adam/ouput/bias/v/Read/ReadVariableOpReadVariableOpAdam/ouput/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
√W
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╢W
valueмWBйW BвW
Э
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
x

activation

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
x

activation

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
R
$regularization_losses
%trainable_variables
&	variables
'	keras_api
x
(
activation

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
R
/regularization_losses
0trainable_variables
1	variables
2	keras_api
R
3regularization_losses
4trainable_variables
5	variables
6	keras_api
R
7regularization_losses
8trainable_variables
9	variables
:	keras_api
x
;
activation

<kernel
=bias
>regularization_losses
?trainable_variables
@	variables
A	keras_api
x
B
activation

Ckernel
Dbias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
h

Ikernel
Jbias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
░
Oiter

Pbeta_1

Qbeta_2
	Rdecay
Slearning_ratem╚m╔m╩m╦)m╠*m═<m╬=m╧Cm╨Dm╤Im╥Jm╙v╘v╒v╓v╫)v╪*v┘<v┌=v█Cv▄Dv▌Iv▐Jv▀
 
V
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11
V
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11
н

Tlayers
regularization_losses
Ulayer_regularization_losses
trainable_variables
	variables
Vnon_trainable_variables
Wlayer_metrics
Xmetrics
 
R
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
YW
VARIABLE_VALUEconv2D/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2D/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н

]layers
regularization_losses
^layer_regularization_losses
trainable_variables
	variables
_non_trainable_variables
`layer_metrics
ametrics
 
 
 
н

blayers
regularization_losses
clayer_regularization_losses
trainable_variables
	variables
dnon_trainable_variables
elayer_metrics
fmetrics
R
gregularization_losses
htrainable_variables
i	variables
j	keras_api
[Y
VARIABLE_VALUEconv2D_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н

klayers
 regularization_losses
llayer_regularization_losses
!trainable_variables
"	variables
mnon_trainable_variables
nlayer_metrics
ometrics
 
 
 
н

players
$regularization_losses
qlayer_regularization_losses
%trainable_variables
&	variables
rnon_trainable_variables
slayer_metrics
tmetrics
R
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
[Y
VARIABLE_VALUEconv2D_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
н

ylayers
+regularization_losses
zlayer_regularization_losses
,trainable_variables
-	variables
{non_trainable_variables
|layer_metrics
}metrics
 
 
 
░

~layers
/regularization_losses
layer_regularization_losses
0trainable_variables
1	variables
Аnon_trainable_variables
Бlayer_metrics
Вmetrics
 
 
 
▓
Гlayers
3regularization_losses
 Дlayer_regularization_losses
4trainable_variables
5	variables
Еnon_trainable_variables
Жlayer_metrics
Зmetrics
 
 
 
▓
Иlayers
7regularization_losses
 Йlayer_regularization_losses
8trainable_variables
9	variables
Кnon_trainable_variables
Лlayer_metrics
Мmetrics
V
Нregularization_losses
Оtrainable_variables
П	variables
Р	keras_api
_]
VARIABLE_VALUEdense_hidden/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_hidden/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
▓
Сlayers
>regularization_losses
 Тlayer_regularization_losses
?trainable_variables
@	variables
Уnon_trainable_variables
Фlayer_metrics
Хmetrics
V
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
a_
VARIABLE_VALUEdense_hidden_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEdense_hidden_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

C0
D1
▓
Ъlayers
Eregularization_losses
 Ыlayer_regularization_losses
Ftrainable_variables
G	variables
Ьnon_trainable_variables
Эlayer_metrics
Юmetrics
XV
VARIABLE_VALUEouput/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
ouput/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

I0
J1

I0
J1
▓
Яlayers
Kregularization_losses
 аlayer_regularization_losses
Ltrainable_variables
M	variables
бnon_trainable_variables
вlayer_metrics
гmetrics
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
N
0
1
2
3
4
5
6
7
	8

9
10
 
 
 

д0
е1
 
 
 
▓
жlayers
Yregularization_losses
 зlayer_regularization_losses
Ztrainable_variables
[	variables
иnon_trainable_variables
йlayer_metrics
кmetrics

0
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
▓
лlayers
gregularization_losses
 мlayer_regularization_losses
htrainable_variables
i	variables
нnon_trainable_variables
оlayer_metrics
пmetrics

0
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
▓
░layers
uregularization_losses
 ▒layer_regularization_losses
vtrainable_variables
w	variables
▓non_trainable_variables
│layer_metrics
┤metrics

(0
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
╡
╡layers
Нregularization_losses
 ╢layer_regularization_losses
Оtrainable_variables
П	variables
╖non_trainable_variables
╕layer_metrics
╣metrics

;0
 
 
 
 
 
 
 
╡
║layers
Цregularization_losses
 ╗layer_regularization_losses
Чtrainable_variables
Ш	variables
╝non_trainable_variables
╜layer_metrics
╛metrics

B0
 
 
 
 
 
 
 
 
 
8

┐total

└count
┴	variables
┬	keras_api
I

├total

─count
┼
_fn_kwargs
╞	variables
╟	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

┐0
└1

┴	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

├0
─1

╞	variables
|z
VARIABLE_VALUEAdam/conv2D/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2D/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEAdam/dense_hidden/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_hidden/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUEAdam/dense_hidden_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/dense_hidden_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/ouput/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ouput/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2D/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2D/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEAdam/dense_hidden/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_hidden/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUEAdam/dense_hidden_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/dense_hidden_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/ouput/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ouput/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
И
serving_default_inputPlaceholder*/
_output_shapes
:         @@*
dtype0*$
shape:         @@
С
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_19771
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╢
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2D/kernel/Read/ReadVariableOpconv2D/bias/Read/ReadVariableOp#conv2D_2/kernel/Read/ReadVariableOp!conv2D_2/bias/Read/ReadVariableOp#conv2D_3/kernel/Read/ReadVariableOp!conv2D_3/bias/Read/ReadVariableOp'dense_hidden/kernel/Read/ReadVariableOp%dense_hidden/bias/Read/ReadVariableOp)dense_hidden_2/kernel/Read/ReadVariableOp'dense_hidden_2/bias/Read/ReadVariableOp ouput/kernel/Read/ReadVariableOpouput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2D/kernel/m/Read/ReadVariableOp&Adam/conv2D/bias/m/Read/ReadVariableOp*Adam/conv2D_2/kernel/m/Read/ReadVariableOp(Adam/conv2D_2/bias/m/Read/ReadVariableOp*Adam/conv2D_3/kernel/m/Read/ReadVariableOp(Adam/conv2D_3/bias/m/Read/ReadVariableOp.Adam/dense_hidden/kernel/m/Read/ReadVariableOp,Adam/dense_hidden/bias/m/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOp.Adam/dense_hidden_2/bias/m/Read/ReadVariableOp'Adam/ouput/kernel/m/Read/ReadVariableOp%Adam/ouput/bias/m/Read/ReadVariableOp(Adam/conv2D/kernel/v/Read/ReadVariableOp&Adam/conv2D/bias/v/Read/ReadVariableOp*Adam/conv2D_2/kernel/v/Read/ReadVariableOp(Adam/conv2D_2/bias/v/Read/ReadVariableOp*Adam/conv2D_3/kernel/v/Read/ReadVariableOp(Adam/conv2D_3/bias/v/Read/ReadVariableOp.Adam/dense_hidden/kernel/v/Read/ReadVariableOp,Adam/dense_hidden/bias/v/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOp.Adam/dense_hidden_2/bias/v/Read/ReadVariableOp'Adam/ouput/kernel/v/Read/ReadVariableOp%Adam/ouput/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_20316
н	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2D/kernel/mAdam/conv2D/bias/mAdam/conv2D_2/kernel/mAdam/conv2D_2/bias/mAdam/conv2D_3/kernel/mAdam/conv2D_3/bias/mAdam/dense_hidden/kernel/mAdam/dense_hidden/bias/mAdam/dense_hidden_2/kernel/mAdam/dense_hidden_2/bias/mAdam/ouput/kernel/mAdam/ouput/bias/mAdam/conv2D/kernel/vAdam/conv2D/bias/vAdam/conv2D_2/kernel/vAdam/conv2D_2/bias/vAdam/conv2D_3/kernel/vAdam/conv2D_3/bias/vAdam/dense_hidden/kernel/vAdam/dense_hidden/bias/vAdam/dense_hidden_2/kernel/vAdam/dense_hidden_2/bias/vAdam/ouput/kernel/vAdam/ouput/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_20461цВ	
╔H
ч	
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19823

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@А7
(conv2d_3_biasadd_readvariableop_resource:	А?
+dense_hidden_matmul_readvariableop_resource:
А@А;
,dense_hidden_biasadd_readvariableop_resource:	АA
-dense_hidden_2_matmul_readvariableop_resource:
АА=
.dense_hidden_2_biasadd_readvariableop_resource:	А7
$ouput_matmul_readvariableop_resource:	А3
%ouput_biasadd_readvariableop_resource:
identityИвconv2D/BiasAdd/ReadVariableOpвconv2D/Conv2D/ReadVariableOpвconv2D_2/BiasAdd/ReadVariableOpвconv2D_2/Conv2D/ReadVariableOpвconv2D_3/BiasAdd/ReadVariableOpвconv2D_3/Conv2D/ReadVariableOpв#dense_hidden/BiasAdd/ReadVariableOpв"dense_hidden/MatMul/ReadVariableOpв%dense_hidden_2/BiasAdd/ReadVariableOpв$dense_hidden_2/MatMul/ReadVariableOpвouput/BiasAdd/ReadVariableOpвouput/MatMul/ReadVariableOpк
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2D/Conv2D/ReadVariableOp╕
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
2
conv2D/Conv2Dб
conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2D/BiasAdd/ReadVariableOpд
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ 2
conv2D/BiasAddг
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>2
conv2D/leaky_re_lu/LeakyRelu╞
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
2
pooling/MaxPool░
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2D_2/Conv2D/ReadVariableOp╨
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
2
conv2D_2/Conv2Dз
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2D_2/BiasAdd/ReadVariableOpм
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2
conv2D_2/BiasAddн
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>2"
 conv2D_2/leaky_re_lu_1/LeakyRelu╬
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
pooling_2/MaxPool▒
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2D_3/Conv2D/ReadVariableOp╙
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2D_3/Conv2Dи
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2D_3/BiasAdd/ReadVariableOpн
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2D_3/BiasAddо
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>2"
 conv2D_3/leaky_re_lu_2/LeakyRelu╧
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
pooling_3/MaxPoolЛ
dropout_3/IdentityIdentitypooling_3/MaxPool:output:0*
T0*0
_output_shapes
:         А2
dropout_3/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
flatten/ConstХ
flatten/ReshapeReshapedropout_3/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А@2
flatten/Reshape╢
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype02$
"dense_hidden/MatMul/ReadVariableOpн
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden/MatMul┤
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#dense_hidden/BiasAdd/ReadVariableOp╢
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden/BiasAdd▓
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2&
$dense_hidden/leaky_re_lu_3/LeakyRelu╝
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$dense_hidden_2/MatMul/ReadVariableOp═
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden_2/MatMul║
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%dense_hidden_2/BiasAdd/ReadVariableOp╛
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden_2/BiasAdd╕
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2(
&dense_hidden_2/leaky_re_lu_4/LeakyReluа
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
ouput/MatMul/ReadVariableOp│
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
ouput/MatMulЮ
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ouput/BiasAdd/ReadVariableOpЩ
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
ouput/BiasAdds
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:         2
ouput/Sigmoidl
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identityъ
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2>
conv2D/BiasAdd/ReadVariableOpconv2D/BiasAdd/ReadVariableOp2<
conv2D/Conv2D/ReadVariableOpconv2D/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2J
#dense_hidden/BiasAdd/ReadVariableOp#dense_hidden/BiasAdd/ReadVariableOp2H
"dense_hidden/MatMul/ReadVariableOp"dense_hidden/MatMul/ReadVariableOp2N
%dense_hidden_2/BiasAdd/ReadVariableOp%dense_hidden_2/BiasAdd/ReadVariableOp2L
$dense_hidden_2/MatMul/ReadVariableOp$dense_hidden_2/MatMul/ReadVariableOp2<
ouput/BiasAdd/ReadVariableOpouput/BiasAdd/ReadVariableOp2:
ouput/MatMul/ReadVariableOpouput/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╡
^
B__inference_pooling_layer_call_and_return_conditional_losses_19284

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
и
·
A__inference_conv2D_layer_call_and_return_conditional_losses_19951

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ 2	
BiasAddО
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>2
leaky_re_lu/LeakyReluЖ
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Х
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_19337

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
д
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_20005

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ц
^
B__inference_flatten_layer_call_and_return_conditional_losses_19345

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А@2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╪
√
G__inference_dense_hidden_layer_call_and_return_conditional_losses_19358

inputs2
matmul_readvariableop_resource:
А@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЛ
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_3/LeakyReluБ
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
Ї
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_20077

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ш
Э
(__inference_conv2D_2_layer_call_fn_20000

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_192972
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
в
^
B__inference_pooling_layer_call_and_return_conditional_losses_19965

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
и
·
A__inference_conv2D_layer_call_and_return_conditional_losses_19274

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ 2	
BiasAddО
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>2
leaky_re_lu/LeakyReluЖ
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╡
^
B__inference_pooling_layer_call_and_return_conditional_losses_19970

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
┌
¤
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_20129

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЛ
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_4/LeakyReluБ
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
д
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_19221

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐e
п
 __inference__wrapped_model_19190	
inputT
:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource: I
;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource: V
<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource: @K
=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource:@W
<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource:@АL
=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource:	АT
@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource:
А@АP
Acnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource:	АV
Bcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource:
ААR
Ccnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource:	АL
9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource:	АH
:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource:
identityИв2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOpв1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOpв4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOpв3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOpв4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOpв3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOpв8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOpв7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOpв:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOpв9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOpв1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOpв0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOpщ
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOpЎ
"cnn_13_drop_out_0.25/conv2D/Conv2DConv2Dinput9cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
2$
"cnn_13_drop_out_0.25/conv2D/Conv2Dр
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOpReadVariableOp;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp°
#cnn_13_drop_out_0.25/conv2D/BiasAddBiasAdd+cnn_13_drop_out_0.25/conv2D/Conv2D:output:0:cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ 2%
#cnn_13_drop_out_0.25/conv2D/BiasAddт
1cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu	LeakyRelu,cnn_13_drop_out_0.25/conv2D/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>23
1cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyReluЕ
$cnn_13_drop_out_0.25/pooling/MaxPoolMaxPool?cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
2&
$cnn_13_drop_out_0.25/pooling/MaxPoolя
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOpд
$cnn_13_drop_out_0.25/conv2D_2/Conv2DConv2D-cnn_13_drop_out_0.25/pooling/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
2&
$cnn_13_drop_out_0.25/conv2D_2/Conv2Dц
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOpА
%cnn_13_drop_out_0.25/conv2D_2/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_2/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2'
%cnn_13_drop_out_0.25/conv2D_2/BiasAddь
5cnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_2/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>27
5cnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyReluН
&cnn_13_drop_out_0.25/pooling_2/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&cnn_13_drop_out_0.25/pooling_2/MaxPoolЁ
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype025
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOpз
$cnn_13_drop_out_0.25/conv2D_3/Conv2DConv2D/cnn_13_drop_out_0.25/pooling_2/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2&
$cnn_13_drop_out_0.25/conv2D_3/Conv2Dч
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype026
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOpБ
%cnn_13_drop_out_0.25/conv2D_3/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_3/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2'
%cnn_13_drop_out_0.25/conv2D_3/BiasAddэ
5cnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_3/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>27
5cnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyReluО
&cnn_13_drop_out_0.25/pooling_3/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2(
&cnn_13_drop_out_0.25/pooling_3/MaxPool╩
'cnn_13_drop_out_0.25/dropout_3/IdentityIdentity/cnn_13_drop_out_0.25/pooling_3/MaxPool:output:0*
T0*0
_output_shapes
:         А2)
'cnn_13_drop_out_0.25/dropout_3/IdentityЩ
"cnn_13_drop_out_0.25/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2$
"cnn_13_drop_out_0.25/flatten/Constщ
$cnn_13_drop_out_0.25/flatten/ReshapeReshape0cnn_13_drop_out_0.25/dropout_3/Identity:output:0+cnn_13_drop_out_0.25/flatten/Const:output:0*
T0*(
_output_shapes
:         А@2&
$cnn_13_drop_out_0.25/flatten/Reshapeї
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOpReadVariableOp@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype029
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOpБ
(cnn_13_drop_out_0.25/dense_hidden/MatMulMatMul-cnn_13_drop_out_0.25/flatten/Reshape:output:0?cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(cnn_13_drop_out_0.25/dense_hidden/MatMulє
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOpReadVariableOpAcnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02:
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOpК
)cnn_13_drop_out_0.25/dense_hidden/BiasAddBiasAdd2cnn_13_drop_out_0.25/dense_hidden/MatMul:product:0@cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)cnn_13_drop_out_0.25/dense_hidden/BiasAddё
9cnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyRelu2cnn_13_drop_out_0.25/dense_hidden/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2;
9cnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu√
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOpReadVariableOpBcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02;
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOpб
*cnn_13_drop_out_0.25/dense_hidden_2/MatMulMatMulGcnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0Acnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2,
*cnn_13_drop_out_0.25/dense_hidden_2/MatMul∙
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOpCcnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOpТ
+cnn_13_drop_out_0.25/dense_hidden_2/BiasAddBiasAdd4cnn_13_drop_out_0.25/dense_hidden_2/MatMul:product:0Bcnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2-
+cnn_13_drop_out_0.25/dense_hidden_2/BiasAddў
;cnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyRelu4cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2=
;cnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu▀
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOpReadVariableOp9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype022
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOpЗ
!cnn_13_drop_out_0.25/ouput/MatMulMatMulIcnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:08cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2#
!cnn_13_drop_out_0.25/ouput/MatMul▌
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOpэ
"cnn_13_drop_out_0.25/ouput/BiasAddBiasAdd+cnn_13_drop_out_0.25/ouput/MatMul:product:09cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2$
"cnn_13_drop_out_0.25/ouput/BiasAdd▓
"cnn_13_drop_out_0.25/ouput/SigmoidSigmoid+cnn_13_drop_out_0.25/ouput/BiasAdd:output:0*
T0*'
_output_shapes
:         2$
"cnn_13_drop_out_0.25/ouput/SigmoidБ
IdentityIdentity&cnn_13_drop_out_0.25/ouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identityц
NoOpNoOp3^cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2^cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp9^cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp8^cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp;^cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:^cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp2^cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp1^cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2h
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2f
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp2l
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp2j
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp2l
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp2j
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp2t
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp2r
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp2x
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp2v
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp2f
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp2d
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp:V R
/
_output_shapes
:         @@

_user_specified_nameinput
░
№
C__inference_conv2D_2_layer_call_and_return_conditional_losses_19991

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2	
BiasAddТ
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>2
leaky_re_lu_1/LeakyReluИ
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:           @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╕
■
C__inference_conv2D_3_layer_call_and_return_conditional_losses_19320

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddУ
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_2/LeakyReluЙ
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
д
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_19243

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐
╤
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19940

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_196002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
▐
╤
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19911

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_193992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Ї
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_19482

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▄
E
)__inference_pooling_2_layer_call_fn_20020

inputs
identity╩
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_193072
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
Д
Є
@__inference_ouput_layer_call_and_return_conditional_losses_20149

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╪
√
G__inference_dense_hidden_layer_call_and_return_conditional_losses_20109

inputs2
matmul_readvariableop_resource:
А@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЛ
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_3/LeakyReluБ
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
├
b
)__inference_dropout_3_layer_call_fn_20087

inputs
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_194822
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
о┬
·
!__inference__traced_restore_20461
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_2_kernel: @.
 assignvariableop_3_conv2d_2_bias:@=
"assignvariableop_4_conv2d_3_kernel:@А/
 assignvariableop_5_conv2d_3_bias:	А:
&assignvariableop_6_dense_hidden_kernel:
А@А3
$assignvariableop_7_dense_hidden_bias:	А<
(assignvariableop_8_dense_hidden_2_kernel:
АА5
&assignvariableop_9_dense_hidden_2_bias:	А3
 assignvariableop_10_ouput_kernel:	А,
assignvariableop_11_ouput_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: B
(assignvariableop_21_adam_conv2d_kernel_m: 4
&assignvariableop_22_adam_conv2d_bias_m: D
*assignvariableop_23_adam_conv2d_2_kernel_m: @6
(assignvariableop_24_adam_conv2d_2_bias_m:@E
*assignvariableop_25_adam_conv2d_3_kernel_m:@А7
(assignvariableop_26_adam_conv2d_3_bias_m:	АB
.assignvariableop_27_adam_dense_hidden_kernel_m:
А@А;
,assignvariableop_28_adam_dense_hidden_bias_m:	АD
0assignvariableop_29_adam_dense_hidden_2_kernel_m:
АА=
.assignvariableop_30_adam_dense_hidden_2_bias_m:	А:
'assignvariableop_31_adam_ouput_kernel_m:	А3
%assignvariableop_32_adam_ouput_bias_m:B
(assignvariableop_33_adam_conv2d_kernel_v: 4
&assignvariableop_34_adam_conv2d_bias_v: D
*assignvariableop_35_adam_conv2d_2_kernel_v: @6
(assignvariableop_36_adam_conv2d_2_bias_v:@E
*assignvariableop_37_adam_conv2d_3_kernel_v:@А7
(assignvariableop_38_adam_conv2d_3_bias_v:	АB
.assignvariableop_39_adam_dense_hidden_kernel_v:
А@А;
,assignvariableop_40_adam_dense_hidden_bias_v:	АD
0assignvariableop_41_adam_dense_hidden_2_kernel_v:
АА=
.assignvariableop_42_adam_dense_hidden_2_bias_v:	А:
'assignvariableop_43_adam_ouput_kernel_v:	А3
%assignvariableop_44_adam_ouput_bias_v:
identity_46ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9└
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesъ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЭ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1г
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2з
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3е
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4з
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5е
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6л
AssignVariableOp_6AssignVariableOp&assignvariableop_6_dense_hidden_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7й
AssignVariableOp_7AssignVariableOp$assignvariableop_7_dense_hidden_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8н
AssignVariableOp_8AssignVariableOp(assignvariableop_8_dense_hidden_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9л
AssignVariableOp_9AssignVariableOp&assignvariableop_9_dense_hidden_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10и
AssignVariableOp_10AssignVariableOp assignvariableop_10_ouput_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ж
AssignVariableOp_11AssignVariableOpassignvariableop_11_ouput_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12е
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13з
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14з
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15ж
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16о
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17б
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18б
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19г
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20г
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21░
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv2d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22о
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_conv2d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▓
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24░
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25▓
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26░
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╢
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_dense_hidden_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28┤
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_dense_hidden_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29╕
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_dense_hidden_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╢
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_dense_hidden_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31п
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_ouput_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32н
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_ouput_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33░
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34о
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv2d_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35▓
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36░
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37▓
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38░
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39╢
AssignVariableOp_39AssignVariableOp.assignvariableop_39_adam_dense_hidden_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40┤
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adam_dense_hidden_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41╕
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_dense_hidden_2_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╢
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_dense_hidden_2_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43п
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_ouput_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44н
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_ouput_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╝
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45f
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_46д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442(
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
╠
C
'__inference_flatten_layer_call_fn_20098

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_193452
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
г3
У
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19734	
input&
conv2d_19698: 
conv2d_19700: (
conv2d_2_19704: @
conv2d_2_19706:@)
conv2d_3_19710:@А
conv2d_3_19712:	А&
dense_hidden_19718:
А@А!
dense_hidden_19720:	А(
dense_hidden_2_19723:
АА#
dense_hidden_2_19725:	А
ouput_19728:	А
ouput_19730:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallвouput/StatefulPartitionedCallО
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_19698conv2d_19700*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_192742 
conv2D/StatefulPartitionedCall∙
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_192842
pooling/PartitionedCall│
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_19704conv2d_2_19706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_192972"
 conv2D_2/StatefulPartitionedCallБ
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_193072
pooling_2/PartitionedCall╢
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_19710conv2d_3_19712*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_193202"
 conv2D_3/StatefulPartitionedCallВ
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_193302
pooling_3/PartitionedCallУ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_194822#
!dropout_3/StatefulPartitionedCallї
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_193452
flatten/PartitionedCall└
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_19718dense_hidden_19720*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_193582&
$dense_hidden/StatefulPartitionedCall╫
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_19723dense_hidden_2_19725*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_193752(
&dense_hidden_2/StatefulPartitionedCallл
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_19728ouput_19730*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_193922
ouput/StatefulPartitionedCallБ
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╔
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
ц
^
B__inference_flatten_layer_call_and_return_conditional_losses_20093

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А@2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
■
Ь
,__inference_dense_hidden_layer_call_fn_20118

inputs
unknown:
А@А
	unknown_0:	А
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_193582
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
░
№
C__inference_conv2D_2_layer_call_and_return_conditional_losses_19297

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2	
BiasAddТ
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>2
leaky_re_lu_1/LeakyReluИ
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:           @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
┼
C
'__inference_pooling_layer_call_fn_19975

inputs
identityу
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_191992
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╔
E
)__inference_pooling_3_layer_call_fn_20055

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_192432
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█
╨
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19426	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_193992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
Ё^
╔
__inference__traced_save_20316
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop2
.savev2_dense_hidden_kernel_read_readvariableop0
,savev2_dense_hidden_bias_read_readvariableop4
0savev2_dense_hidden_2_kernel_read_readvariableop2
.savev2_dense_hidden_2_bias_read_readvariableop+
'savev2_ouput_kernel_read_readvariableop)
%savev2_ouput_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop9
5savev2_adam_dense_hidden_kernel_m_read_readvariableop7
3savev2_adam_dense_hidden_bias_m_read_readvariableop;
7savev2_adam_dense_hidden_2_kernel_m_read_readvariableop9
5savev2_adam_dense_hidden_2_bias_m_read_readvariableop2
.savev2_adam_ouput_kernel_m_read_readvariableop0
,savev2_adam_ouput_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop9
5savev2_adam_dense_hidden_kernel_v_read_readvariableop7
3savev2_adam_dense_hidden_bias_v_read_readvariableop;
7savev2_adam_dense_hidden_2_kernel_v_read_readvariableop9
5savev2_adam_dense_hidden_2_bias_v_read_readvariableop2
.savev2_adam_ouput_kernel_v_read_readvariableop0
,savev2_adam_ouput_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename║
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesф
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesС
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop.savev2_dense_hidden_kernel_read_readvariableop,savev2_dense_hidden_bias_read_readvariableop0savev2_dense_hidden_2_kernel_read_readvariableop.savev2_dense_hidden_2_bias_read_readvariableop'savev2_ouput_kernel_read_readvariableop%savev2_ouput_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop5savev2_adam_dense_hidden_kernel_m_read_readvariableop3savev2_adam_dense_hidden_bias_m_read_readvariableop7savev2_adam_dense_hidden_2_kernel_m_read_readvariableop5savev2_adam_dense_hidden_2_bias_m_read_readvariableop.savev2_adam_ouput_kernel_m_read_readvariableop,savev2_adam_ouput_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop5savev2_adam_dense_hidden_kernel_v_read_readvariableop3savev2_adam_dense_hidden_bias_v_read_readvariableop7savev2_adam_dense_hidden_2_kernel_v_read_readvariableop5savev2_adam_dense_hidden_2_bias_v_read_readvariableop.savev2_adam_ouput_kernel_v_read_readvariableop,savev2_adam_ouput_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*о
_input_shapesЬ
Щ: : : : @:@:@А:А:
А@А:А:
АА:А:	А:: : : : : : : : : : : : @:@:@А:А:
А@А:А:
АА:А:	А:: : : @:@:@А:А:
А@А:А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
А@А:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::
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
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
А@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:% !

_output_shapes
:	А: !

_output_shapes
::,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@:-&)
'
_output_shapes
:@А:!'

_output_shapes	
:А:&("
 
_output_shapes
:
А@А:!)

_output_shapes	
:А:&*"
 
_output_shapes
:
АА:!+

_output_shapes	
:А:%,!

_output_shapes
:	А: -

_output_shapes
::.

_output_shapes
: 
█
╨
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19656	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_196002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
Ф
Ы
&__inference_conv2D_layer_call_fn_19960

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_192742
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╪
C
'__inference_pooling_layer_call_fn_19980

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_192842
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@ :W S
/
_output_shapes
:         @@ 
 
_user_specified_nameinputs
╗
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_19330

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╕
■
C__inference_conv2D_3_layer_call_and_return_conditional_losses_20031

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddУ
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_2/LeakyReluЙ
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╖
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_19307

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
ЦR
ч	
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19882

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@А7
(conv2d_3_biasadd_readvariableop_resource:	А?
+dense_hidden_matmul_readvariableop_resource:
А@А;
,dense_hidden_biasadd_readvariableop_resource:	АA
-dense_hidden_2_matmul_readvariableop_resource:
АА=
.dense_hidden_2_biasadd_readvariableop_resource:	А7
$ouput_matmul_readvariableop_resource:	А3
%ouput_biasadd_readvariableop_resource:
identityИвconv2D/BiasAdd/ReadVariableOpвconv2D/Conv2D/ReadVariableOpвconv2D_2/BiasAdd/ReadVariableOpвconv2D_2/Conv2D/ReadVariableOpвconv2D_3/BiasAdd/ReadVariableOpвconv2D_3/Conv2D/ReadVariableOpв#dense_hidden/BiasAdd/ReadVariableOpв"dense_hidden/MatMul/ReadVariableOpв%dense_hidden_2/BiasAdd/ReadVariableOpв$dense_hidden_2/MatMul/ReadVariableOpвouput/BiasAdd/ReadVariableOpвouput/MatMul/ReadVariableOpк
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2D/Conv2D/ReadVariableOp╕
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
2
conv2D/Conv2Dб
conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2D/BiasAdd/ReadVariableOpд
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ 2
conv2D/BiasAddг
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>2
conv2D/leaky_re_lu/LeakyRelu╞
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
2
pooling/MaxPool░
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2D_2/Conv2D/ReadVariableOp╨
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
2
conv2D_2/Conv2Dз
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2D_2/BiasAdd/ReadVariableOpм
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2
conv2D_2/BiasAddн
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>2"
 conv2D_2/leaky_re_lu_1/LeakyRelu╬
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
pooling_2/MaxPool▒
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2D_3/Conv2D/ReadVariableOp╙
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2D_3/Conv2Dи
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2D_3/BiasAdd/ReadVariableOpн
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2D_3/BiasAddо
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>2"
 conv2D_3/leaky_re_lu_2/LeakyRelu╧
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
pooling_3/MaxPoolw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_3/dropout/Constо
dropout_3/dropout/MulMulpooling_3/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapepooling_3/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape█
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2"
 dropout_3/dropout/GreaterEqual/yя
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_3/dropout/GreaterEqualж
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_3/dropout/Castл
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_3/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
flatten/ConstХ
flatten/ReshapeReshapedropout_3/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         А@2
flatten/Reshape╢
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype02$
"dense_hidden/MatMul/ReadVariableOpн
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden/MatMul┤
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#dense_hidden/BiasAdd/ReadVariableOp╢
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden/BiasAdd▓
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2&
$dense_hidden/leaky_re_lu_3/LeakyRelu╝
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$dense_hidden_2/MatMul/ReadVariableOp═
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden_2/MatMul║
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%dense_hidden_2/BiasAdd/ReadVariableOp╛
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_hidden_2/BiasAdd╕
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2(
&dense_hidden_2/leaky_re_lu_4/LeakyReluа
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
ouput/MatMul/ReadVariableOp│
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
ouput/MatMulЮ
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ouput/BiasAdd/ReadVariableOpЩ
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
ouput/BiasAdds
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:         2
ouput/Sigmoidl
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identityъ
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2>
conv2D/BiasAdd/ReadVariableOpconv2D/BiasAdd/ReadVariableOp2<
conv2D/Conv2D/ReadVariableOpconv2D/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2J
#dense_hidden/BiasAdd/ReadVariableOp#dense_hidden/BiasAdd/ReadVariableOp2H
"dense_hidden/MatMul/ReadVariableOp"dense_hidden/MatMul/ReadVariableOp2N
%dense_hidden_2/BiasAdd/ReadVariableOp%dense_hidden_2/BiasAdd/ReadVariableOp2L
$dense_hidden_2/MatMul/ReadVariableOp$dense_hidden_2/MatMul/ReadVariableOp2<
ouput/BiasAdd/ReadVariableOpouput/BiasAdd/ReadVariableOp2:
ouput/MatMul/ReadVariableOpouput/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
р
E
)__inference_pooling_3_layer_call_fn_20060

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_193302
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
р
E
)__inference_dropout_3_layer_call_fn_20082

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_193372
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Д
Є
@__inference_ouput_layer_call_and_return_conditional_losses_19392

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў1
Ё
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19399

inputs&
conv2d_19275: 
conv2d_19277: (
conv2d_2_19298: @
conv2d_2_19300:@)
conv2d_3_19321:@А
conv2d_3_19323:	А&
dense_hidden_19359:
А@А!
dense_hidden_19361:	А(
dense_hidden_2_19376:
АА#
dense_hidden_2_19378:	А
ouput_19393:	А
ouput_19395:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallвouput/StatefulPartitionedCallП
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_19275conv2d_19277*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_192742 
conv2D/StatefulPartitionedCall∙
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_192842
pooling/PartitionedCall│
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_19298conv2d_2_19300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_192972"
 conv2D_2/StatefulPartitionedCallБ
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_193072
pooling_2/PartitionedCall╢
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_19321conv2d_3_19323*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_193202"
 conv2D_3/StatefulPartitionedCallВ
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_193302
pooling_3/PartitionedCall√
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_193372
dropout_3/PartitionedCallэ
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_193452
flatten/PartitionedCall└
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_19359dense_hidden_19361*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_193582&
$dense_hidden/StatefulPartitionedCall╫
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_19376dense_hidden_2_19378*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_193752(
&dense_hidden_2/StatefulPartitionedCallл
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_19393ouput_19395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_193922
ouput/StatefulPartitionedCallБ
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityе
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ж3
Ф
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19600

inputs&
conv2d_19564: 
conv2d_19566: (
conv2d_2_19570: @
conv2d_2_19572:@)
conv2d_3_19576:@А
conv2d_3_19578:	А&
dense_hidden_19584:
А@А!
dense_hidden_19586:	А(
dense_hidden_2_19589:
АА#
dense_hidden_2_19591:	А
ouput_19594:	А
ouput_19596:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallвouput/StatefulPartitionedCallП
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_19564conv2d_19566*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_192742 
conv2D/StatefulPartitionedCall∙
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_192842
pooling/PartitionedCall│
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_19570conv2d_2_19572*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_192972"
 conv2D_2/StatefulPartitionedCallБ
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_193072
pooling_2/PartitionedCall╢
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_19576conv2d_3_19578*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_193202"
 conv2D_3/StatefulPartitionedCallВ
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_193302
pooling_3/PartitionedCallУ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_194822#
!dropout_3/StatefulPartitionedCallї
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_193452
flatten/PartitionedCall└
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_19584dense_hidden_19586*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_193582&
$dense_hidden/StatefulPartitionedCall╫
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_19589dense_hidden_2_19591*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_193752(
&dense_hidden_2/StatefulPartitionedCallл
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_19594ouput_19596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_193922
ouput/StatefulPartitionedCallБ
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╔
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
┌
¤
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_19375

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЛ
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_4/LeakyReluБ
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ь
У
%__inference_ouput_layer_call_fn_20158

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_193922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
В
Ю
.__inference_dense_hidden_2_layer_call_fn_20138

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_193752
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
д
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_20045

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ы
┐
#__inference_signature_wrapper_19771	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCall╥
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_191902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
╗
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_20050

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_20065

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╔
E
)__inference_pooling_2_layer_call_fn_20015

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_192212
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
є1
я
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19695	
input&
conv2d_19659: 
conv2d_19661: (
conv2d_2_19665: @
conv2d_2_19667:@)
conv2d_3_19671:@А
conv2d_3_19673:	А&
dense_hidden_19679:
А@А!
dense_hidden_19681:	А(
dense_hidden_2_19684:
АА#
dense_hidden_2_19686:	А
ouput_19689:	А
ouput_19691:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallвouput/StatefulPartitionedCallО
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_19659conv2d_19661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_192742 
conv2D/StatefulPartitionedCall∙
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_192842
pooling/PartitionedCall│
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_19665conv2d_2_19667*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_192972"
 conv2D_2/StatefulPartitionedCallБ
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_193072
pooling_2/PartitionedCall╢
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_19671conv2d_3_19673*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_193202"
 conv2D_3/StatefulPartitionedCallВ
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_193302
pooling_3/PartitionedCall√
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_193372
dropout_3/PartitionedCallэ
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_193452
flatten/PartitionedCall└
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_19679dense_hidden_19681*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_193582&
$dense_hidden/StatefulPartitionedCall╫
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_19684dense_hidden_2_19686*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_193752(
&dense_hidden_2/StatefulPartitionedCallл
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_19689ouput_19691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_193922
ouput/StatefulPartitionedCallБ
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityе
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
╖
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_20010

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
в
^
B__inference_pooling_layer_call_and_return_conditional_losses_19199

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ь
Я
(__inference_conv2D_3_layer_call_fn_20040

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_193202
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*м
serving_defaultШ
?
input6
serving_default_input:0         @@9
ouput0
StatefulPartitionedCall:0         tensorflow/serving/predict:иў
Х
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+р&call_and_return_all_conditional_losses
с_default_save_signature
т__call__"
_tf_keras_sequential
═

activation

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+у&call_and_return_all_conditional_losses
ф__call__"
_tf_keras_layer
з
regularization_losses
trainable_variables
	variables
	keras_api
+х&call_and_return_all_conditional_losses
ц__call__"
_tf_keras_layer
═

activation

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
+ч&call_and_return_all_conditional_losses
ш__call__"
_tf_keras_layer
з
$regularization_losses
%trainable_variables
&	variables
'	keras_api
+щ&call_and_return_all_conditional_losses
ъ__call__"
_tf_keras_layer
═
(
activation

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
+ы&call_and_return_all_conditional_losses
ь__call__"
_tf_keras_layer
з
/regularization_losses
0trainable_variables
1	variables
2	keras_api
+э&call_and_return_all_conditional_losses
ю__call__"
_tf_keras_layer
з
3regularization_losses
4trainable_variables
5	variables
6	keras_api
+я&call_and_return_all_conditional_losses
Ё__call__"
_tf_keras_layer
з
7regularization_losses
8trainable_variables
9	variables
:	keras_api
+ё&call_and_return_all_conditional_losses
Є__call__"
_tf_keras_layer
═
;
activation

<kernel
=bias
>regularization_losses
?trainable_variables
@	variables
A	keras_api
+є&call_and_return_all_conditional_losses
Ї__call__"
_tf_keras_layer
═
B
activation

Ckernel
Dbias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
+ї&call_and_return_all_conditional_losses
Ў__call__"
_tf_keras_layer
╜

Ikernel
Jbias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
+ў&call_and_return_all_conditional_losses
°__call__"
_tf_keras_layer
├
Oiter

Pbeta_1

Qbeta_2
	Rdecay
Slearning_ratem╚m╔m╩m╦)m╠*m═<m╬=m╧Cm╨Dm╤Im╥Jm╙v╘v╒v╓v╫)v╪*v┘<v┌=v█Cv▄Dv▌Iv▐Jv▀"
	optimizer
 "
trackable_list_wrapper
v
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11"
trackable_list_wrapper
v
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11"
trackable_list_wrapper
╬

Tlayers
regularization_losses
Ulayer_regularization_losses
trainable_variables
	variables
Vnon_trainable_variables
Wlayer_metrics
Xmetrics
т__call__
с_default_save_signature
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
-
∙serving_default"
signature_map
з
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
+·&call_and_return_all_conditional_losses
√__call__"
_tf_keras_layer
':% 2conv2D/kernel
: 2conv2D/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░

]layers
regularization_losses
^layer_regularization_losses
trainable_variables
	variables
_non_trainable_variables
`layer_metrics
ametrics
ф__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

blayers
regularization_losses
clayer_regularization_losses
trainable_variables
	variables
dnon_trainable_variables
elayer_metrics
fmetrics
ц__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
з
gregularization_losses
htrainable_variables
i	variables
j	keras_api
+№&call_and_return_all_conditional_losses
¤__call__"
_tf_keras_layer
):' @2conv2D_2/kernel
:@2conv2D_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░

klayers
 regularization_losses
llayer_regularization_losses
!trainable_variables
"	variables
mnon_trainable_variables
nlayer_metrics
ometrics
ш__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

players
$regularization_losses
qlayer_regularization_losses
%trainable_variables
&	variables
rnon_trainable_variables
slayer_metrics
tmetrics
ъ__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
з
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
+■&call_and_return_all_conditional_losses
 __call__"
_tf_keras_layer
*:(@А2conv2D_3/kernel
:А2conv2D_3/bias
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
░

ylayers
+regularization_losses
zlayer_regularization_losses
,trainable_variables
-	variables
{non_trainable_variables
|layer_metrics
}metrics
ь__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
│

~layers
/regularization_losses
layer_regularization_losses
0trainable_variables
1	variables
Аnon_trainable_variables
Бlayer_metrics
Вmetrics
ю__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Гlayers
3regularization_losses
 Дlayer_regularization_losses
4trainable_variables
5	variables
Еnon_trainable_variables
Жlayer_metrics
Зmetrics
Ё__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Иlayers
7regularization_losses
 Йlayer_regularization_losses
8trainable_variables
9	variables
Кnon_trainable_variables
Лlayer_metrics
Мmetrics
Є__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
л
Нregularization_losses
Оtrainable_variables
П	variables
Р	keras_api
+А&call_and_return_all_conditional_losses
Б__call__"
_tf_keras_layer
':%
А@А2dense_hidden/kernel
 :А2dense_hidden/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
╡
Сlayers
>regularization_losses
 Тlayer_regularization_losses
?trainable_variables
@	variables
Уnon_trainable_variables
Фlayer_metrics
Хmetrics
Ї__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
л
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
+В&call_and_return_all_conditional_losses
Г__call__"
_tf_keras_layer
):'
АА2dense_hidden_2/kernel
": А2dense_hidden_2/bias
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
╡
Ъlayers
Eregularization_losses
 Ыlayer_regularization_losses
Ftrainable_variables
G	variables
Ьnon_trainable_variables
Эlayer_metrics
Юmetrics
Ў__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
:	А2ouput/kernel
:2
ouput/bias
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
╡
Яlayers
Kregularization_losses
 аlayer_regularization_losses
Ltrainable_variables
M	variables
бnon_trainable_variables
вlayer_metrics
гmetrics
°__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
д0
е1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
жlayers
Yregularization_losses
 зlayer_regularization_losses
Ztrainable_variables
[	variables
иnon_trainable_variables
йlayer_metrics
кmetrics
√__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
╡
лlayers
gregularization_losses
 мlayer_regularization_losses
htrainable_variables
i	variables
нnon_trainable_variables
оlayer_metrics
пmetrics
¤__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
╡
░layers
uregularization_losses
 ▒layer_regularization_losses
vtrainable_variables
w	variables
▓non_trainable_variables
│layer_metrics
┤metrics
 __call__
+■&call_and_return_all_conditional_losses
'■"call_and_return_conditional_losses"
_generic_user_object
'
(0"
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
╕
╡layers
Нregularization_losses
 ╢layer_regularization_losses
Оtrainable_variables
П	variables
╖non_trainable_variables
╕layer_metrics
╣metrics
Б__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
'
;0"
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
 "
trackable_list_wrapper
╕
║layers
Цregularization_losses
 ╗layer_regularization_losses
Чtrainable_variables
Ш	variables
╝non_trainable_variables
╜layer_metrics
╛metrics
Г__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
'
B0"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
R

┐total

└count
┴	variables
┬	keras_api"
_tf_keras_metric
c

├total

─count
┼
_fn_kwargs
╞	variables
╟	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
┐0
└1"
trackable_list_wrapper
.
┴	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
├0
─1"
trackable_list_wrapper
.
╞	variables"
_generic_user_object
,:* 2Adam/conv2D/kernel/m
: 2Adam/conv2D/bias/m
.:, @2Adam/conv2D_2/kernel/m
 :@2Adam/conv2D_2/bias/m
/:-@А2Adam/conv2D_3/kernel/m
!:А2Adam/conv2D_3/bias/m
,:*
А@А2Adam/dense_hidden/kernel/m
%:#А2Adam/dense_hidden/bias/m
.:,
АА2Adam/dense_hidden_2/kernel/m
':%А2Adam/dense_hidden_2/bias/m
$:"	А2Adam/ouput/kernel/m
:2Adam/ouput/bias/m
,:* 2Adam/conv2D/kernel/v
: 2Adam/conv2D/bias/v
.:, @2Adam/conv2D_2/kernel/v
 :@2Adam/conv2D_2/bias/v
/:-@А2Adam/conv2D_3/kernel/v
!:А2Adam/conv2D_3/bias/v
,:*
А@А2Adam/dense_hidden/kernel/v
%:#А2Adam/dense_hidden/bias/v
.:,
АА2Adam/dense_hidden_2/kernel/v
':%А2Adam/dense_hidden_2/bias/v
$:"	А2Adam/ouput/kernel/v
:2Adam/ouput/bias/v
К2З
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19823
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19882
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19695
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19734└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╔B╞
 __inference__wrapped_model_19190input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2Ы
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19426
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19911
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19940
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19656└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
A__inference_conv2D_layer_call_and_return_conditional_losses_19951в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_conv2D_layer_call_fn_19960в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
░2н
B__inference_pooling_layer_call_and_return_conditional_losses_19965
B__inference_pooling_layer_call_and_return_conditional_losses_19970в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·2ў
'__inference_pooling_layer_call_fn_19975
'__inference_pooling_layer_call_fn_19980в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_conv2D_2_layer_call_and_return_conditional_losses_19991в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2D_2_layer_call_fn_20000в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤2▒
D__inference_pooling_2_layer_call_and_return_conditional_losses_20005
D__inference_pooling_2_layer_call_and_return_conditional_losses_20010в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■2√
)__inference_pooling_2_layer_call_fn_20015
)__inference_pooling_2_layer_call_fn_20020в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_conv2D_3_layer_call_and_return_conditional_losses_20031в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2D_3_layer_call_fn_20040в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤2▒
D__inference_pooling_3_layer_call_and_return_conditional_losses_20045
D__inference_pooling_3_layer_call_and_return_conditional_losses_20050в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■2√
)__inference_pooling_3_layer_call_fn_20055
)__inference_pooling_3_layer_call_fn_20060в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_3_layer_call_and_return_conditional_losses_20065
D__inference_dropout_3_layer_call_and_return_conditional_losses_20077┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_3_layer_call_fn_20082
)__inference_dropout_3_layer_call_fn_20087┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ь2щ
B__inference_flatten_layer_call_and_return_conditional_losses_20093в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_flatten_layer_call_fn_20098в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_dense_hidden_layer_call_and_return_conditional_losses_20109в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_dense_hidden_layer_call_fn_20118в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_20129в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_dense_hidden_2_layer_call_fn_20138в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_ouput_layer_call_and_return_conditional_losses_20149в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╧2╠
%__inference_ouput_layer_call_fn_20158в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╚B┼
#__inference_signature_wrapper_19771input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 Щ
 __inference__wrapped_model_19190u)*<=CDIJ6в3
,в)
'К$
input         @@
к "-к*
(
ouputК
ouput         ╚
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19695u)*<=CDIJ>в;
4в1
'К$
input         @@
p 

 
к "%в"
К
0         
Ъ ╚
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19734u)*<=CDIJ>в;
4в1
'К$
input         @@
p

 
к "%в"
К
0         
Ъ ╔
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19823v)*<=CDIJ?в<
5в2
(К%
inputs         @@
p 

 
к "%в"
К
0         
Ъ ╔
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_19882v)*<=CDIJ?в<
5в2
(К%
inputs         @@
p

 
к "%в"
К
0         
Ъ а
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19426h)*<=CDIJ>в;
4в1
'К$
input         @@
p 

 
к "К         а
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19656h)*<=CDIJ>в;
4в1
'К$
input         @@
p

 
к "К         б
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19911i)*<=CDIJ?в<
5в2
(К%
inputs         @@
p 

 
к "К         б
4__inference_cnn_13_drop_out_0.25_layer_call_fn_19940i)*<=CDIJ?в<
5в2
(К%
inputs         @@
p

 
к "К         │
C__inference_conv2D_2_layer_call_and_return_conditional_losses_19991l7в4
-в*
(К%
inputs            
к "-в*
#К 
0           @
Ъ Л
(__inference_conv2D_2_layer_call_fn_20000_7в4
-в*
(К%
inputs            
к " К           @┤
C__inference_conv2D_3_layer_call_and_return_conditional_losses_20031m)*7в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ М
(__inference_conv2D_3_layer_call_fn_20040`)*7в4
-в*
(К%
inputs         @
к "!К         А▒
A__inference_conv2D_layer_call_and_return_conditional_losses_19951l7в4
-в*
(К%
inputs         @@
к "-в*
#К 
0         @@ 
Ъ Й
&__inference_conv2D_layer_call_fn_19960_7в4
-в*
(К%
inputs         @@
к " К         @@ л
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_20129^CD0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ Г
.__inference_dense_hidden_2_layer_call_fn_20138QCD0в-
&в#
!К
inputs         А
к "К         Ай
G__inference_dense_hidden_layer_call_and_return_conditional_losses_20109^<=0в-
&в#
!К
inputs         А@
к "&в#
К
0         А
Ъ Б
,__inference_dense_hidden_layer_call_fn_20118Q<=0в-
&в#
!К
inputs         А@
к "К         А╢
D__inference_dropout_3_layer_call_and_return_conditional_losses_20065n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╢
D__inference_dropout_3_layer_call_and_return_conditional_losses_20077n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ О
)__inference_dropout_3_layer_call_fn_20082a<в9
2в/
)К&
inputs         А
p 
к "!К         АО
)__inference_dropout_3_layer_call_fn_20087a<в9
2в/
)К&
inputs         А
p
к "!К         Аи
B__inference_flatten_layer_call_and_return_conditional_losses_20093b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А@
Ъ А
'__inference_flatten_layer_call_fn_20098U8в5
.в+
)К&
inputs         А
к "К         А@б
@__inference_ouput_layer_call_and_return_conditional_losses_20149]IJ0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ y
%__inference_ouput_layer_call_fn_20158PIJ0в-
&в#
!К
inputs         А
к "К         ч
D__inference_pooling_2_layer_call_and_return_conditional_losses_20005ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ░
D__inference_pooling_2_layer_call_and_return_conditional_losses_20010h7в4
-в*
(К%
inputs           @
к "-в*
#К 
0         @
Ъ ┐
)__inference_pooling_2_layer_call_fn_20015СRвO
HвE
CК@
inputs4                                    
к ";К84                                    И
)__inference_pooling_2_layer_call_fn_20020[7в4
-в*
(К%
inputs           @
к " К         @ч
D__inference_pooling_3_layer_call_and_return_conditional_losses_20045ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ▓
D__inference_pooling_3_layer_call_and_return_conditional_losses_20050j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ ┐
)__inference_pooling_3_layer_call_fn_20055СRвO
HвE
CК@
inputs4                                    
к ";К84                                    К
)__inference_pooling_3_layer_call_fn_20060]8в5
.в+
)К&
inputs         А
к "!К         Ах
B__inference_pooling_layer_call_and_return_conditional_losses_19965ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ о
B__inference_pooling_layer_call_and_return_conditional_losses_19970h7в4
-в*
(К%
inputs         @@ 
к "-в*
#К 
0            
Ъ ╜
'__inference_pooling_layer_call_fn_19975СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Ж
'__inference_pooling_layer_call_fn_19980[7в4
-в*
(К%
inputs         @@ 
к " К            е
#__inference_signature_wrapper_19771~)*<=CDIJ?в<
в 
5к2
0
input'К$
input         @@"-к*
(
ouputК
ouput         