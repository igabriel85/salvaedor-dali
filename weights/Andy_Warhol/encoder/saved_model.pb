ÿ
è¾
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
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

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
,
Exp
x"T
y"T"
Ttype:

2
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
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
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
 "serve*2.4.02v2.4.0-0-g582c8d236cb8´ó

encoder_27/z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameencoder_27/z_mean/kernel

,encoder_27/z_mean/kernel/Read/ReadVariableOpReadVariableOpencoder_27/z_mean/kernel*
_output_shapes

:*
dtype0

encoder_27/z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameencoder_27/z_mean/bias
}
*encoder_27/z_mean/bias/Read/ReadVariableOpReadVariableOpencoder_27/z_mean/bias*
_output_shapes
:*
dtype0

encoder_27/z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameencoder_27/z_log_var/kernel

/encoder_27/z_log_var/kernel/Read/ReadVariableOpReadVariableOpencoder_27/z_log_var/kernel*
_output_shapes

:*
dtype0

encoder_27/z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameencoder_27/z_log_var/bias

-encoder_27/z_log_var/bias/Read/ReadVariableOpReadVariableOpencoder_27/z_log_var/bias*
_output_shapes
:*
dtype0

conv2d_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_81/kernel
~
$conv2d_81/kernel/Read/ReadVariableOpReadVariableOpconv2d_81/kernel*'
_output_shapes
:*
dtype0
u
conv2d_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_81/bias
n
"conv2d_81/bias/Read/ReadVariableOpReadVariableOpconv2d_81/bias*
_output_shapes	
:*
dtype0

conv2d_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_82/kernel

$conv2d_82/kernel/Read/ReadVariableOpReadVariableOpconv2d_82/kernel*(
_output_shapes
:*
dtype0
u
conv2d_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_82/bias
n
"conv2d_82/bias/Read/ReadVariableOpReadVariableOpconv2d_82/bias*
_output_shapes	
:*
dtype0

conv2d_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_83/kernel

$conv2d_83/kernel/Read/ReadVariableOpReadVariableOpconv2d_83/kernel*(
_output_shapes
:*
dtype0
u
conv2d_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_83/bias
n
"conv2d_83/bias/Read/ReadVariableOpReadVariableOpconv2d_83/bias*
_output_shapes	
:*
dtype0
|
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_54/kernel
u
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel* 
_output_shapes
:
*
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
:*
dtype0

NoOpNoOp
#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*È"
value¾"B»" B´"

	model
dense_z
	log_var_z
regularization_losses
trainable_variables
	variables
	keras_api

signatures
û
	layer_with_weights-0
	layer-0

layer_with_weights-1

layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
 
V
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11
V
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11
­
regularization_losses
&non_trainable_variables

'layers
(metrics
trainable_variables
)layer_metrics
	variables
*layer_regularization_losses
 
h

kernel
bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
h

 kernel
!bias
/regularization_losses
0trainable_variables
1	variables
2	keras_api
h

"kernel
#bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
R
7regularization_losses
8trainable_variables
9	variables
:	keras_api
h

$kernel
%bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
 
8
0
1
 2
!3
"4
#5
$6
%7
8
0
1
 2
!3
"4
#5
$6
%7
­
regularization_losses
?non_trainable_variables

@layers
Ametrics
trainable_variables
Blayer_metrics
	variables
Clayer_regularization_losses
WU
VARIABLE_VALUEencoder_27/z_mean/kernel)dense_z/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEencoder_27/z_mean/bias'dense_z/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
Dnon_trainable_variables

Elayers
Fmetrics
trainable_variables
Glayer_metrics
	variables
Hlayer_regularization_losses
\Z
VARIABLE_VALUEencoder_27/z_log_var/kernel+log_var_z/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEencoder_27/z_log_var/bias)log_var_z/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
Inon_trainable_variables

Jlayers
Kmetrics
trainable_variables
Llayer_metrics
	variables
Mlayer_regularization_losses
VT
VARIABLE_VALUEconv2d_81/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_81/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_82/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_82/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_83/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_83/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_54/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_54/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 
 
 

0
1

0
1
­
+regularization_losses
Nnon_trainable_variables

Olayers
Pmetrics
,trainable_variables
Qlayer_metrics
-	variables
Rlayer_regularization_losses
 

 0
!1

 0
!1
­
/regularization_losses
Snon_trainable_variables

Tlayers
Umetrics
0trainable_variables
Vlayer_metrics
1	variables
Wlayer_regularization_losses
 

"0
#1

"0
#1
­
3regularization_losses
Xnon_trainable_variables

Ylayers
Zmetrics
4trainable_variables
[layer_metrics
5	variables
\layer_regularization_losses
 
 
 
­
7regularization_losses
]non_trainable_variables

^layers
_metrics
8trainable_variables
`layer_metrics
9	variables
alayer_regularization_losses
 

$0
%1

$0
%1
­
;regularization_losses
bnon_trainable_variables

clayers
dmetrics
<trainable_variables
elayer_metrics
=	variables
flayer_regularization_losses
 
#
	0

1
2
3
4
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
 
 

serving_default_input_1Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ@@
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_81/kernelconv2d_81/biasconv2d_82/kernelconv2d_82/biasconv2d_83/kernelconv2d_83/biasdense_54/kerneldense_54/biasencoder_27/z_mean/kernelencoder_27/z_mean/biasencoder_27/z_log_var/kernelencoder_27/z_log_var/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_281449
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,encoder_27/z_mean/kernel/Read/ReadVariableOp*encoder_27/z_mean/bias/Read/ReadVariableOp/encoder_27/z_log_var/kernel/Read/ReadVariableOp-encoder_27/z_log_var/bias/Read/ReadVariableOp$conv2d_81/kernel/Read/ReadVariableOp"conv2d_81/bias/Read/ReadVariableOp$conv2d_82/kernel/Read/ReadVariableOp"conv2d_82/bias/Read/ReadVariableOp$conv2d_83/kernel/Read/ReadVariableOp"conv2d_83/bias/Read/ReadVariableOp#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_281953

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameencoder_27/z_mean/kernelencoder_27/z_mean/biasencoder_27/z_log_var/kernelencoder_27/z_log_var/biasconv2d_81/kernelconv2d_81/biasconv2d_82/kernelconv2d_82/biasconv2d_83/kernelconv2d_83/biasdense_54/kerneldense_54/bias*
Tin
2*
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_281999¦§
º
Ý
.__inference_sequential_54_layer_call_fn_281763

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_2810812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Â
b
F__inference_flatten_27_layer_call_and_return_conditional_losses_280946

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
¸
+__inference_encoder_27_layer_call_fn_281414
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_encoder_27_layer_call_and_return_conditional_losses_2813502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
§m


F__inference_encoder_27_layer_call_and_return_conditional_losses_281518
x:
6sequential_54_conv2d_81_conv2d_readvariableop_resource;
7sequential_54_conv2d_81_biasadd_readvariableop_resource:
6sequential_54_conv2d_82_conv2d_readvariableop_resource;
7sequential_54_conv2d_82_biasadd_readvariableop_resource:
6sequential_54_conv2d_83_conv2d_readvariableop_resource;
7sequential_54_conv2d_83_biasadd_readvariableop_resource9
5sequential_54_dense_54_matmul_readvariableop_resource:
6sequential_54_dense_54_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2¢.sequential_54/conv2d_81/BiasAdd/ReadVariableOp¢-sequential_54/conv2d_81/Conv2D/ReadVariableOp¢.sequential_54/conv2d_82/BiasAdd/ReadVariableOp¢-sequential_54/conv2d_82/Conv2D/ReadVariableOp¢.sequential_54/conv2d_83/BiasAdd/ReadVariableOp¢-sequential_54/conv2d_83/Conv2D/ReadVariableOp¢-sequential_54/dense_54/BiasAdd/ReadVariableOp¢,sequential_54/dense_54/MatMul/ReadVariableOp¢ z_log_var/BiasAdd/ReadVariableOp¢z_log_var/MatMul/ReadVariableOp¢z_mean/BiasAdd/ReadVariableOp¢z_mean/MatMul/ReadVariableOpÞ
-sequential_54/conv2d_81/Conv2D/ReadVariableOpReadVariableOp6sequential_54_conv2d_81_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02/
-sequential_54/conv2d_81/Conv2D/ReadVariableOpç
sequential_54/conv2d_81/Conv2DConv2Dx5sequential_54/conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2 
sequential_54/conv2d_81/Conv2DÕ
.sequential_54/conv2d_81/BiasAdd/ReadVariableOpReadVariableOp7sequential_54_conv2d_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_54/conv2d_81/BiasAdd/ReadVariableOpé
sequential_54/conv2d_81/BiasAddBiasAdd'sequential_54/conv2d_81/Conv2D:output:06sequential_54/conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
sequential_54/conv2d_81/BiasAdd©
sequential_54/conv2d_81/ReluRelu(sequential_54/conv2d_81/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_54/conv2d_81/Reluß
-sequential_54/conv2d_82/Conv2D/ReadVariableOpReadVariableOp6sequential_54_conv2d_82_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_54/conv2d_82/Conv2D/ReadVariableOp
sequential_54/conv2d_82/Conv2DConv2D*sequential_54/conv2d_81/Relu:activations:05sequential_54/conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_54/conv2d_82/Conv2DÕ
.sequential_54/conv2d_82/BiasAdd/ReadVariableOpReadVariableOp7sequential_54_conv2d_82_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_54/conv2d_82/BiasAdd/ReadVariableOpé
sequential_54/conv2d_82/BiasAddBiasAdd'sequential_54/conv2d_82/Conv2D:output:06sequential_54/conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_54/conv2d_82/BiasAdd©
sequential_54/conv2d_82/ReluRelu(sequential_54/conv2d_82/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/conv2d_82/Reluß
-sequential_54/conv2d_83/Conv2D/ReadVariableOpReadVariableOp6sequential_54_conv2d_83_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_54/conv2d_83/Conv2D/ReadVariableOp
sequential_54/conv2d_83/Conv2DConv2D*sequential_54/conv2d_82/Relu:activations:05sequential_54/conv2d_83/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_54/conv2d_83/Conv2DÕ
.sequential_54/conv2d_83/BiasAdd/ReadVariableOpReadVariableOp7sequential_54_conv2d_83_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_54/conv2d_83/BiasAdd/ReadVariableOpé
sequential_54/conv2d_83/BiasAddBiasAdd'sequential_54/conv2d_83/Conv2D:output:06sequential_54/conv2d_83/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_54/conv2d_83/BiasAdd©
sequential_54/conv2d_83/ReluRelu(sequential_54/conv2d_83/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/conv2d_83/Relu
sequential_54/flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2 
sequential_54/flatten_27/ConstØ
 sequential_54/flatten_27/ReshapeReshape*sequential_54/conv2d_83/Relu:activations:0'sequential_54/flatten_27/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_54/flatten_27/ReshapeÔ
,sequential_54/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_54_dense_54_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_54/dense_54/MatMul/ReadVariableOpÛ
sequential_54/dense_54/MatMulMatMul)sequential_54/flatten_27/Reshape:output:04sequential_54/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/dense_54/MatMulÑ
-sequential_54/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_54_dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_54/dense_54/BiasAdd/ReadVariableOpÝ
sequential_54/dense_54/BiasAddBiasAdd'sequential_54/dense_54/MatMul:product:05sequential_54/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_54/dense_54/BiasAdd
sequential_54/dense_54/ReluRelu'sequential_54/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/dense_54/Relu¢
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
z_mean/MatMul/ReadVariableOp«
z_mean/MatMulMatMul)sequential_54/dense_54/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_mean/MatMul¡
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
z_mean/BiasAdd/ReadVariableOp
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_mean/BiasAdd«
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
z_log_var/MatMul/ReadVariableOp´
z_log_var/MatMulMatMul)sequential_54/dense_54/Relu:activations:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_log_var/MatMulª
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 z_log_var/BiasAdd/ReadVariableOp©
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_log_var/BiasAddg
sampling/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/Shape
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stack
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slicek
sampling/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/Shape_1
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stack
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2¤
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1¶
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/mean
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sampling/random_normal/stddev
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¸À2-
+sampling/random_normal/RandomStandardNormalØ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normal/mul¸
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/x
sampling/mulMulsampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/Exp
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mul_1
sampling/addAddV2z_mean/BiasAdd:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/addñ
IdentityIdentityz_mean/BiasAdd:output:0/^sequential_54/conv2d_81/BiasAdd/ReadVariableOp.^sequential_54/conv2d_81/Conv2D/ReadVariableOp/^sequential_54/conv2d_82/BiasAdd/ReadVariableOp.^sequential_54/conv2d_82/Conv2D/ReadVariableOp/^sequential_54/conv2d_83/BiasAdd/ReadVariableOp.^sequential_54/conv2d_83/Conv2D/ReadVariableOp.^sequential_54/dense_54/BiasAdd/ReadVariableOp-^sequential_54/dense_54/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityø

Identity_1Identityz_log_var/BiasAdd:output:0/^sequential_54/conv2d_81/BiasAdd/ReadVariableOp.^sequential_54/conv2d_81/Conv2D/ReadVariableOp/^sequential_54/conv2d_82/BiasAdd/ReadVariableOp.^sequential_54/conv2d_82/Conv2D/ReadVariableOp/^sequential_54/conv2d_83/BiasAdd/ReadVariableOp.^sequential_54/conv2d_83/Conv2D/ReadVariableOp.^sequential_54/dense_54/BiasAdd/ReadVariableOp-^sequential_54/dense_54/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1î

Identity_2Identitysampling/add:z:0/^sequential_54/conv2d_81/BiasAdd/ReadVariableOp.^sequential_54/conv2d_81/Conv2D/ReadVariableOp/^sequential_54/conv2d_82/BiasAdd/ReadVariableOp.^sequential_54/conv2d_82/Conv2D/ReadVariableOp/^sequential_54/conv2d_83/BiasAdd/ReadVariableOp.^sequential_54/conv2d_83/Conv2D/ReadVariableOp.^sequential_54/dense_54/BiasAdd/ReadVariableOp-^sequential_54/dense_54/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2`
.sequential_54/conv2d_81/BiasAdd/ReadVariableOp.sequential_54/conv2d_81/BiasAdd/ReadVariableOp2^
-sequential_54/conv2d_81/Conv2D/ReadVariableOp-sequential_54/conv2d_81/Conv2D/ReadVariableOp2`
.sequential_54/conv2d_82/BiasAdd/ReadVariableOp.sequential_54/conv2d_82/BiasAdd/ReadVariableOp2^
-sequential_54/conv2d_82/Conv2D/ReadVariableOp-sequential_54/conv2d_82/Conv2D/ReadVariableOp2`
.sequential_54/conv2d_83/BiasAdd/ReadVariableOp.sequential_54/conv2d_83/BiasAdd/ReadVariableOp2^
-sequential_54/conv2d_83/Conv2D/ReadVariableOp-sequential_54/conv2d_83/Conv2D/ReadVariableOp2^
-sequential_54/dense_54/BiasAdd/ReadVariableOp-sequential_54/dense_54/BiasAdd/ReadVariableOp2\
,sequential_54/dense_54/MatMul/ReadVariableOp,sequential_54/dense_54/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
¯5
É
"__inference__traced_restore_281999
file_prefix-
)assignvariableop_encoder_27_z_mean_kernel-
)assignvariableop_1_encoder_27_z_mean_bias2
.assignvariableop_2_encoder_27_z_log_var_kernel0
,assignvariableop_3_encoder_27_z_log_var_bias'
#assignvariableop_4_conv2d_81_kernel%
!assignvariableop_5_conv2d_81_bias'
#assignvariableop_6_conv2d_82_kernel%
!assignvariableop_7_conv2d_82_bias'
#assignvariableop_8_conv2d_83_kernel%
!assignvariableop_9_conv2d_83_bias'
#assignvariableop_10_dense_54_kernel%
!assignvariableop_11_dense_54_bias
identity_13¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ã
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ï
valueåBâB)dense_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_z/bias/.ATTRIBUTES/VARIABLE_VALUEB+log_var_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB)log_var_z/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¨
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesì
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¨
AssignVariableOpAssignVariableOp)assignvariableop_encoder_27_z_mean_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1®
AssignVariableOp_1AssignVariableOp)assignvariableop_1_encoder_27_z_mean_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2³
AssignVariableOp_2AssignVariableOp.assignvariableop_2_encoder_27_z_log_var_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3±
AssignVariableOp_3AssignVariableOp,assignvariableop_3_encoder_27_z_log_var_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_81_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_81_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_82_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_82_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¨
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_83_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¦
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_83_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpæ
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12Ù
Identity_13IdentityIdentity_12:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_13"#
identity_13Identity_13:output:0*E
_input_shapes4
2: ::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
Û
|
'__inference_z_mean_layer_call_fn_281782

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2811732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
±
$__inference_signature_wrapper_281449
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_2808552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1


*__inference_conv2d_82_layer_call_fn_281841

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_2808972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ  ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ñ
¸
+__inference_encoder_27_layer_call_fn_281381
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_encoder_27_layer_call_and_return_conditional_losses_2813502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
º
Ý
.__inference_sequential_54_layer_call_fn_281742

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_2810352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
	
Þ
E__inference_z_log_var_layer_call_and_return_conditional_losses_281792

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ý
D__inference_dense_54_layer_call_and_return_conditional_losses_280965

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
²
+__inference_encoder_27_layer_call_fn_281653
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_encoder_27_layer_call_and_return_conditional_losses_2813502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
Â
b
F__inference_flatten_27_layer_call_and_return_conditional_losses_281867

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_conv2d_83_layer_call_fn_281861

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_83_layer_call_and_return_conditional_losses_2809242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¥
I__inference_sequential_54_layer_call_and_return_conditional_losses_281081

inputs
conv2d_81_281059
conv2d_81_281061
conv2d_82_281064
conv2d_82_281066
conv2d_83_281069
conv2d_83_281071
dense_54_281075
dense_54_281077
identity¢!conv2d_81/StatefulPartitionedCall¢!conv2d_82/StatefulPartitionedCall¢!conv2d_83/StatefulPartitionedCall¢ dense_54/StatefulPartitionedCall¥
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_81_281059conv2d_81_281061*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_2808702#
!conv2d_81/StatefulPartitionedCallÉ
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0conv2d_82_281064conv2d_82_281066*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_2808972#
!conv2d_82/StatefulPartitionedCallÉ
!conv2d_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0conv2d_83_281069conv2d_83_281071*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_83_layer_call_and_return_conditional_losses_2809242#
!conv2d_83/StatefulPartitionedCall
flatten_27/PartitionedCallPartitionedCall*conv2d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_2809462
flatten_27/PartitionedCall´
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_54_281075dense_54_281077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_2809652"
 dense_54/StatefulPartitionedCall
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall"^conv2d_83/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2F
!conv2d_83/StatefulPartitionedCall!conv2d_83/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
À
ß
.__inference_sequential_54_layer_call_fn_281100
input_55
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinput_55unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_2810812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_55
ã
~
)__inference_dense_54_layer_call_fn_281892

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_2809652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Þ
E__inference_z_log_var_layer_call_and_return_conditional_losses_281199

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á

*__inference_z_log_var_layer_call_fn_281801

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2811992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Û
B__inference_z_mean_layer_call_and_return_conditional_losses_281173

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦m


F__inference_encoder_27_layer_call_and_return_conditional_losses_281587
x:
6sequential_54_conv2d_81_conv2d_readvariableop_resource;
7sequential_54_conv2d_81_biasadd_readvariableop_resource:
6sequential_54_conv2d_82_conv2d_readvariableop_resource;
7sequential_54_conv2d_82_biasadd_readvariableop_resource:
6sequential_54_conv2d_83_conv2d_readvariableop_resource;
7sequential_54_conv2d_83_biasadd_readvariableop_resource9
5sequential_54_dense_54_matmul_readvariableop_resource:
6sequential_54_dense_54_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2¢.sequential_54/conv2d_81/BiasAdd/ReadVariableOp¢-sequential_54/conv2d_81/Conv2D/ReadVariableOp¢.sequential_54/conv2d_82/BiasAdd/ReadVariableOp¢-sequential_54/conv2d_82/Conv2D/ReadVariableOp¢.sequential_54/conv2d_83/BiasAdd/ReadVariableOp¢-sequential_54/conv2d_83/Conv2D/ReadVariableOp¢-sequential_54/dense_54/BiasAdd/ReadVariableOp¢,sequential_54/dense_54/MatMul/ReadVariableOp¢ z_log_var/BiasAdd/ReadVariableOp¢z_log_var/MatMul/ReadVariableOp¢z_mean/BiasAdd/ReadVariableOp¢z_mean/MatMul/ReadVariableOpÞ
-sequential_54/conv2d_81/Conv2D/ReadVariableOpReadVariableOp6sequential_54_conv2d_81_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02/
-sequential_54/conv2d_81/Conv2D/ReadVariableOpç
sequential_54/conv2d_81/Conv2DConv2Dx5sequential_54/conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2 
sequential_54/conv2d_81/Conv2DÕ
.sequential_54/conv2d_81/BiasAdd/ReadVariableOpReadVariableOp7sequential_54_conv2d_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_54/conv2d_81/BiasAdd/ReadVariableOpé
sequential_54/conv2d_81/BiasAddBiasAdd'sequential_54/conv2d_81/Conv2D:output:06sequential_54/conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
sequential_54/conv2d_81/BiasAdd©
sequential_54/conv2d_81/ReluRelu(sequential_54/conv2d_81/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_54/conv2d_81/Reluß
-sequential_54/conv2d_82/Conv2D/ReadVariableOpReadVariableOp6sequential_54_conv2d_82_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_54/conv2d_82/Conv2D/ReadVariableOp
sequential_54/conv2d_82/Conv2DConv2D*sequential_54/conv2d_81/Relu:activations:05sequential_54/conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_54/conv2d_82/Conv2DÕ
.sequential_54/conv2d_82/BiasAdd/ReadVariableOpReadVariableOp7sequential_54_conv2d_82_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_54/conv2d_82/BiasAdd/ReadVariableOpé
sequential_54/conv2d_82/BiasAddBiasAdd'sequential_54/conv2d_82/Conv2D:output:06sequential_54/conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_54/conv2d_82/BiasAdd©
sequential_54/conv2d_82/ReluRelu(sequential_54/conv2d_82/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/conv2d_82/Reluß
-sequential_54/conv2d_83/Conv2D/ReadVariableOpReadVariableOp6sequential_54_conv2d_83_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_54/conv2d_83/Conv2D/ReadVariableOp
sequential_54/conv2d_83/Conv2DConv2D*sequential_54/conv2d_82/Relu:activations:05sequential_54/conv2d_83/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_54/conv2d_83/Conv2DÕ
.sequential_54/conv2d_83/BiasAdd/ReadVariableOpReadVariableOp7sequential_54_conv2d_83_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_54/conv2d_83/BiasAdd/ReadVariableOpé
sequential_54/conv2d_83/BiasAddBiasAdd'sequential_54/conv2d_83/Conv2D:output:06sequential_54/conv2d_83/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_54/conv2d_83/BiasAdd©
sequential_54/conv2d_83/ReluRelu(sequential_54/conv2d_83/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/conv2d_83/Relu
sequential_54/flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2 
sequential_54/flatten_27/ConstØ
 sequential_54/flatten_27/ReshapeReshape*sequential_54/conv2d_83/Relu:activations:0'sequential_54/flatten_27/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_54/flatten_27/ReshapeÔ
,sequential_54/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_54_dense_54_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_54/dense_54/MatMul/ReadVariableOpÛ
sequential_54/dense_54/MatMulMatMul)sequential_54/flatten_27/Reshape:output:04sequential_54/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/dense_54/MatMulÑ
-sequential_54/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_54_dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_54/dense_54/BiasAdd/ReadVariableOpÝ
sequential_54/dense_54/BiasAddBiasAdd'sequential_54/dense_54/MatMul:product:05sequential_54/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_54/dense_54/BiasAdd
sequential_54/dense_54/ReluRelu'sequential_54/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_54/dense_54/Relu¢
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
z_mean/MatMul/ReadVariableOp«
z_mean/MatMulMatMul)sequential_54/dense_54/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_mean/MatMul¡
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
z_mean/BiasAdd/ReadVariableOp
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_mean/BiasAdd«
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
z_log_var/MatMul/ReadVariableOp´
z_log_var/MatMulMatMul)sequential_54/dense_54/Relu:activations:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_log_var/MatMulª
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 z_log_var/BiasAdd/ReadVariableOp©
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
z_log_var/BiasAddg
sampling/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/Shape
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stack
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slicek
sampling/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/Shape_1
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stack
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2¤
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1¶
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/mean
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sampling/random_normal/stddevÿ
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2í¸u2-
+sampling/random_normal/RandomStandardNormalØ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normal/mul¸
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/x
sampling/mulMulsampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/Exp
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mul_1
sampling/addAddV2z_mean/BiasAdd:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/addñ
IdentityIdentityz_mean/BiasAdd:output:0/^sequential_54/conv2d_81/BiasAdd/ReadVariableOp.^sequential_54/conv2d_81/Conv2D/ReadVariableOp/^sequential_54/conv2d_82/BiasAdd/ReadVariableOp.^sequential_54/conv2d_82/Conv2D/ReadVariableOp/^sequential_54/conv2d_83/BiasAdd/ReadVariableOp.^sequential_54/conv2d_83/Conv2D/ReadVariableOp.^sequential_54/dense_54/BiasAdd/ReadVariableOp-^sequential_54/dense_54/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityø

Identity_1Identityz_log_var/BiasAdd:output:0/^sequential_54/conv2d_81/BiasAdd/ReadVariableOp.^sequential_54/conv2d_81/Conv2D/ReadVariableOp/^sequential_54/conv2d_82/BiasAdd/ReadVariableOp.^sequential_54/conv2d_82/Conv2D/ReadVariableOp/^sequential_54/conv2d_83/BiasAdd/ReadVariableOp.^sequential_54/conv2d_83/Conv2D/ReadVariableOp.^sequential_54/dense_54/BiasAdd/ReadVariableOp-^sequential_54/dense_54/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1î

Identity_2Identitysampling/add:z:0/^sequential_54/conv2d_81/BiasAdd/ReadVariableOp.^sequential_54/conv2d_81/Conv2D/ReadVariableOp/^sequential_54/conv2d_82/BiasAdd/ReadVariableOp.^sequential_54/conv2d_82/Conv2D/ReadVariableOp/^sequential_54/conv2d_83/BiasAdd/ReadVariableOp.^sequential_54/conv2d_83/Conv2D/ReadVariableOp.^sequential_54/dense_54/BiasAdd/ReadVariableOp-^sequential_54/dense_54/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2`
.sequential_54/conv2d_81/BiasAdd/ReadVariableOp.sequential_54/conv2d_81/BiasAdd/ReadVariableOp2^
-sequential_54/conv2d_81/Conv2D/ReadVariableOp-sequential_54/conv2d_81/Conv2D/ReadVariableOp2`
.sequential_54/conv2d_82/BiasAdd/ReadVariableOp.sequential_54/conv2d_82/BiasAdd/ReadVariableOp2^
-sequential_54/conv2d_82/Conv2D/ReadVariableOp-sequential_54/conv2d_82/Conv2D/ReadVariableOp2`
.sequential_54/conv2d_83/BiasAdd/ReadVariableOp.sequential_54/conv2d_83/BiasAdd/ReadVariableOp2^
-sequential_54/conv2d_83/Conv2D/ReadVariableOp-sequential_54/conv2d_83/Conv2D/ReadVariableOp2^
-sequential_54/dense_54/BiasAdd/ReadVariableOp-sequential_54/dense_54/BiasAdd/ReadVariableOp2\
,sequential_54/dense_54/MatMul/ReadVariableOp,sequential_54/dense_54/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
Ø

Þ
E__inference_conv2d_82_layer_call_and_return_conditional_losses_281832

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Õ

Þ
E__inference_conv2d_81_layer_call_and_return_conditional_losses_281812

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
è3

F__inference_encoder_27_layer_call_and_return_conditional_losses_281350
x
sequential_54_281299
sequential_54_281301
sequential_54_281303
sequential_54_281305
sequential_54_281307
sequential_54_281309
sequential_54_281311
sequential_54_281313
z_mean_281316
z_mean_281318
z_log_var_281321
z_log_var_281323
identity

identity_1

identity_2¢%sequential_54/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCall»
%sequential_54/StatefulPartitionedCallStatefulPartitionedCallxsequential_54_281299sequential_54_281301sequential_54_281303sequential_54_281305sequential_54_281307sequential_54_281309sequential_54_281311sequential_54_281313*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_2810812'
%sequential_54/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_54/StatefulPartitionedCall:output:0z_mean_281316z_mean_281318*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2811732 
z_mean/StatefulPartitionedCallÄ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_54/StatefulPartitionedCall:output:0z_log_var_281321z_log_var_281323*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2811992#
!z_log_var/StatefulPartitionedCallw
sampling/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stack
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice{
sampling/Shape_1Shape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape_1
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stack
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2¤
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1¶
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/mean
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sampling/random_normal/stddev
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2öý±2-
+sampling/random_normal/RandomStandardNormalØ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normal/mul¸
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/x
sampling/mulMulsampling/mul/x:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/Exp
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mul_1
sampling/addAddV2'z_mean/StatefulPartitionedCall:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/addè
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityï

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Õ

Identity_2Identitysampling/add:z:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2N
%sequential_54/StatefulPartitionedCall%sequential_54/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
 
§
I__inference_sequential_54_layer_call_and_return_conditional_losses_280982
input_55
conv2d_81_280881
conv2d_81_280883
conv2d_82_280908
conv2d_82_280910
conv2d_83_280935
conv2d_83_280937
dense_54_280976
dense_54_280978
identity¢!conv2d_81/StatefulPartitionedCall¢!conv2d_82/StatefulPartitionedCall¢!conv2d_83/StatefulPartitionedCall¢ dense_54/StatefulPartitionedCall§
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCallinput_55conv2d_81_280881conv2d_81_280883*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_2808702#
!conv2d_81/StatefulPartitionedCallÉ
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0conv2d_82_280908conv2d_82_280910*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_2808972#
!conv2d_82/StatefulPartitionedCallÉ
!conv2d_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0conv2d_83_280935conv2d_83_280937*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_83_layer_call_and_return_conditional_losses_2809242#
!conv2d_83/StatefulPartitionedCall
flatten_27/PartitionedCallPartitionedCall*conv2d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_2809462
flatten_27/PartitionedCall´
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_54_280976dense_54_280978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_2809652"
 dense_54/StatefulPartitionedCall
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall"^conv2d_83/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2F
!conv2d_83/StatefulPartitionedCall!conv2d_83/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_55
Þ+
ì
I__inference_sequential_54_layer_call_and_return_conditional_losses_281721

inputs,
(conv2d_81_conv2d_readvariableop_resource-
)conv2d_81_biasadd_readvariableop_resource,
(conv2d_82_conv2d_readvariableop_resource-
)conv2d_82_biasadd_readvariableop_resource,
(conv2d_83_conv2d_readvariableop_resource-
)conv2d_83_biasadd_readvariableop_resource+
'dense_54_matmul_readvariableop_resource,
(dense_54_biasadd_readvariableop_resource
identity¢ conv2d_81/BiasAdd/ReadVariableOp¢conv2d_81/Conv2D/ReadVariableOp¢ conv2d_82/BiasAdd/ReadVariableOp¢conv2d_82/Conv2D/ReadVariableOp¢ conv2d_83/BiasAdd/ReadVariableOp¢conv2d_83/Conv2D/ReadVariableOp¢dense_54/BiasAdd/ReadVariableOp¢dense_54/MatMul/ReadVariableOp´
conv2d_81/Conv2D/ReadVariableOpReadVariableOp(conv2d_81_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
conv2d_81/Conv2D/ReadVariableOpÂ
conv2d_81/Conv2DConv2Dinputs'conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_81/Conv2D«
 conv2d_81/BiasAdd/ReadVariableOpReadVariableOp)conv2d_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_81/BiasAdd/ReadVariableOp±
conv2d_81/BiasAddBiasAddconv2d_81/Conv2D:output:0(conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_81/BiasAdd
conv2d_81/ReluReluconv2d_81/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_81/Reluµ
conv2d_82/Conv2D/ReadVariableOpReadVariableOp(conv2d_82_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_82/Conv2D/ReadVariableOpØ
conv2d_82/Conv2DConv2Dconv2d_81/Relu:activations:0'conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_82/Conv2D«
 conv2d_82/BiasAdd/ReadVariableOpReadVariableOp)conv2d_82_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_82/BiasAdd/ReadVariableOp±
conv2d_82/BiasAddBiasAddconv2d_82/Conv2D:output:0(conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_82/BiasAdd
conv2d_82/ReluReluconv2d_82/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_82/Reluµ
conv2d_83/Conv2D/ReadVariableOpReadVariableOp(conv2d_83_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_83/Conv2D/ReadVariableOpØ
conv2d_83/Conv2DConv2Dconv2d_82/Relu:activations:0'conv2d_83/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_83/Conv2D«
 conv2d_83/BiasAdd/ReadVariableOpReadVariableOp)conv2d_83_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_83/BiasAdd/ReadVariableOp±
conv2d_83/BiasAddBiasAddconv2d_83/Conv2D:output:0(conv2d_83/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_83/BiasAdd
conv2d_83/ReluReluconv2d_83/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_83/Reluu
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_27/Const 
flatten_27/ReshapeReshapeconv2d_83/Relu:activations:0flatten_27/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_27/Reshapeª
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_54/MatMul/ReadVariableOp£
dense_54/MatMulMatMulflatten_27/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_54/MatMul§
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_54/BiasAdd/ReadVariableOp¥
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_54/BiasAdds
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_54/Relu
IdentityIdentitydense_54/Relu:activations:0!^conv2d_81/BiasAdd/ReadVariableOp ^conv2d_81/Conv2D/ReadVariableOp!^conv2d_82/BiasAdd/ReadVariableOp ^conv2d_82/Conv2D/ReadVariableOp!^conv2d_83/BiasAdd/ReadVariableOp ^conv2d_83/Conv2D/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2D
 conv2d_81/BiasAdd/ReadVariableOp conv2d_81/BiasAdd/ReadVariableOp2B
conv2d_81/Conv2D/ReadVariableOpconv2d_81/Conv2D/ReadVariableOp2D
 conv2d_82/BiasAdd/ReadVariableOp conv2d_82/BiasAdd/ReadVariableOp2B
conv2d_82/Conv2D/ReadVariableOpconv2d_82/Conv2D/ReadVariableOp2D
 conv2d_83/BiasAdd/ReadVariableOp conv2d_83/BiasAdd/ReadVariableOp2B
conv2d_83/Conv2D/ReadVariableOpconv2d_83/Conv2D/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


*__inference_conv2d_81_layer_call_fn_281821

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_2808702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


!__inference__wrapped_model_280855
input_1E
Aencoder_27_sequential_54_conv2d_81_conv2d_readvariableop_resourceF
Bencoder_27_sequential_54_conv2d_81_biasadd_readvariableop_resourceE
Aencoder_27_sequential_54_conv2d_82_conv2d_readvariableop_resourceF
Bencoder_27_sequential_54_conv2d_82_biasadd_readvariableop_resourceE
Aencoder_27_sequential_54_conv2d_83_conv2d_readvariableop_resourceF
Bencoder_27_sequential_54_conv2d_83_biasadd_readvariableop_resourceD
@encoder_27_sequential_54_dense_54_matmul_readvariableop_resourceE
Aencoder_27_sequential_54_dense_54_biasadd_readvariableop_resource4
0encoder_27_z_mean_matmul_readvariableop_resource5
1encoder_27_z_mean_biasadd_readvariableop_resource7
3encoder_27_z_log_var_matmul_readvariableop_resource8
4encoder_27_z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2¢9encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp¢8encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp¢9encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp¢8encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp¢9encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp¢8encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp¢8encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp¢7encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp¢+encoder_27/z_log_var/BiasAdd/ReadVariableOp¢*encoder_27/z_log_var/MatMul/ReadVariableOp¢(encoder_27/z_mean/BiasAdd/ReadVariableOp¢'encoder_27/z_mean/MatMul/ReadVariableOpÿ
8encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOpReadVariableOpAencoder_27_sequential_54_conv2d_81_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02:
8encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp
)encoder_27/sequential_54/conv2d_81/Conv2DConv2Dinput_1@encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2+
)encoder_27/sequential_54/conv2d_81/Conv2Dö
9encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOpReadVariableOpBencoder_27_sequential_54_conv2d_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02;
9encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp
*encoder_27/sequential_54/conv2d_81/BiasAddBiasAdd2encoder_27/sequential_54/conv2d_81/Conv2D:output:0Aencoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2,
*encoder_27/sequential_54/conv2d_81/BiasAddÊ
'encoder_27/sequential_54/conv2d_81/ReluRelu3encoder_27/sequential_54/conv2d_81/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2)
'encoder_27/sequential_54/conv2d_81/Relu
8encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOpReadVariableOpAencoder_27_sequential_54_conv2d_82_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02:
8encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp¼
)encoder_27/sequential_54/conv2d_82/Conv2DConv2D5encoder_27/sequential_54/conv2d_81/Relu:activations:0@encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2+
)encoder_27/sequential_54/conv2d_82/Conv2Dö
9encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOpReadVariableOpBencoder_27_sequential_54_conv2d_82_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02;
9encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp
*encoder_27/sequential_54/conv2d_82/BiasAddBiasAdd2encoder_27/sequential_54/conv2d_82/Conv2D:output:0Aencoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*encoder_27/sequential_54/conv2d_82/BiasAddÊ
'encoder_27/sequential_54/conv2d_82/ReluRelu3encoder_27/sequential_54/conv2d_82/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'encoder_27/sequential_54/conv2d_82/Relu
8encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOpReadVariableOpAencoder_27_sequential_54_conv2d_83_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02:
8encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp¼
)encoder_27/sequential_54/conv2d_83/Conv2DConv2D5encoder_27/sequential_54/conv2d_82/Relu:activations:0@encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2+
)encoder_27/sequential_54/conv2d_83/Conv2Dö
9encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOpReadVariableOpBencoder_27_sequential_54_conv2d_83_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02;
9encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp
*encoder_27/sequential_54/conv2d_83/BiasAddBiasAdd2encoder_27/sequential_54/conv2d_83/Conv2D:output:0Aencoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*encoder_27/sequential_54/conv2d_83/BiasAddÊ
'encoder_27/sequential_54/conv2d_83/ReluRelu3encoder_27/sequential_54/conv2d_83/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'encoder_27/sequential_54/conv2d_83/Relu§
)encoder_27/sequential_54/flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2+
)encoder_27/sequential_54/flatten_27/Const
+encoder_27/sequential_54/flatten_27/ReshapeReshape5encoder_27/sequential_54/conv2d_83/Relu:activations:02encoder_27/sequential_54/flatten_27/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+encoder_27/sequential_54/flatten_27/Reshapeõ
7encoder_27/sequential_54/dense_54/MatMul/ReadVariableOpReadVariableOp@encoder_27_sequential_54_dense_54_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype029
7encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp
(encoder_27/sequential_54/dense_54/MatMulMatMul4encoder_27/sequential_54/flatten_27/Reshape:output:0?encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(encoder_27/sequential_54/dense_54/MatMulò
8encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOpReadVariableOpAencoder_27_sequential_54_dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp
)encoder_27/sequential_54/dense_54/BiasAddBiasAdd2encoder_27/sequential_54/dense_54/MatMul:product:0@encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)encoder_27/sequential_54/dense_54/BiasAdd¾
&encoder_27/sequential_54/dense_54/ReluRelu2encoder_27/sequential_54/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&encoder_27/sequential_54/dense_54/ReluÃ
'encoder_27/z_mean/MatMul/ReadVariableOpReadVariableOp0encoder_27_z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'encoder_27/z_mean/MatMul/ReadVariableOp×
encoder_27/z_mean/MatMulMatMul4encoder_27/sequential_54/dense_54/Relu:activations:0/encoder_27/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/z_mean/MatMulÂ
(encoder_27/z_mean/BiasAdd/ReadVariableOpReadVariableOp1encoder_27_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(encoder_27/z_mean/BiasAdd/ReadVariableOpÉ
encoder_27/z_mean/BiasAddBiasAdd"encoder_27/z_mean/MatMul:product:00encoder_27/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/z_mean/BiasAddÌ
*encoder_27/z_log_var/MatMul/ReadVariableOpReadVariableOp3encoder_27_z_log_var_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*encoder_27/z_log_var/MatMul/ReadVariableOpà
encoder_27/z_log_var/MatMulMatMul4encoder_27/sequential_54/dense_54/Relu:activations:02encoder_27/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/z_log_var/MatMulË
+encoder_27/z_log_var/BiasAdd/ReadVariableOpReadVariableOp4encoder_27_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+encoder_27/z_log_var/BiasAdd/ReadVariableOpÕ
encoder_27/z_log_var/BiasAddBiasAdd%encoder_27/z_log_var/MatMul:product:03encoder_27/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/z_log_var/BiasAdd
encoder_27/sampling/ShapeShape"encoder_27/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
encoder_27/sampling/Shape
'encoder_27/sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'encoder_27/sampling/strided_slice/stack 
)encoder_27/sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_27/sampling/strided_slice/stack_1 
)encoder_27/sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_27/sampling/strided_slice/stack_2Ú
!encoder_27/sampling/strided_sliceStridedSlice"encoder_27/sampling/Shape:output:00encoder_27/sampling/strided_slice/stack:output:02encoder_27/sampling/strided_slice/stack_1:output:02encoder_27/sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!encoder_27/sampling/strided_slice
encoder_27/sampling/Shape_1Shape"encoder_27/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
encoder_27/sampling/Shape_1 
)encoder_27/sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_27/sampling/strided_slice_1/stack¤
+encoder_27/sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+encoder_27/sampling/strided_slice_1/stack_1¤
+encoder_27/sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+encoder_27/sampling/strided_slice_1/stack_2æ
#encoder_27/sampling/strided_slice_1StridedSlice$encoder_27/sampling/Shape_1:output:02encoder_27/sampling/strided_slice_1/stack:output:04encoder_27/sampling/strided_slice_1/stack_1:output:04encoder_27/sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#encoder_27/sampling/strided_slice_1â
'encoder_27/sampling/random_normal/shapePack*encoder_27/sampling/strided_slice:output:0,encoder_27/sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2)
'encoder_27/sampling/random_normal/shape
&encoder_27/sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&encoder_27/sampling/random_normal/mean
(encoder_27/sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(encoder_27/sampling/random_normal/stddev¡
6encoder_27/sampling/random_normal/RandomStandardNormalRandomStandardNormal0encoder_27/sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed228
6encoder_27/sampling/random_normal/RandomStandardNormal
%encoder_27/sampling/random_normal/mulMul?encoder_27/sampling/random_normal/RandomStandardNormal:output:01encoder_27/sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2'
%encoder_27/sampling/random_normal/mulä
!encoder_27/sampling/random_normalAdd)encoder_27/sampling/random_normal/mul:z:0/encoder_27/sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!encoder_27/sampling/random_normal{
encoder_27/sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
encoder_27/sampling/mul/x¶
encoder_27/sampling/mulMul"encoder_27/sampling/mul/x:output:0%encoder_27/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/sampling/mul
encoder_27/sampling/ExpExpencoder_27/sampling/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/sampling/Exp³
encoder_27/sampling/mul_1Mulencoder_27/sampling/Exp:y:0%encoder_27/sampling/random_normal:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/sampling/mul_1°
encoder_27/sampling/addAddV2"encoder_27/z_mean/BiasAdd:output:0encoder_27/sampling/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_27/sampling/add
IdentityIdentity"encoder_27/z_mean/BiasAdd:output:0:^encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp:^encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp:^encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp9^encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp8^encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp,^encoder_27/z_log_var/BiasAdd/ReadVariableOp+^encoder_27/z_log_var/MatMul/ReadVariableOp)^encoder_27/z_mean/BiasAdd/ReadVariableOp(^encoder_27/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity%encoder_27/z_log_var/BiasAdd:output:0:^encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp:^encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp:^encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp9^encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp8^encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp,^encoder_27/z_log_var/BiasAdd/ReadVariableOp+^encoder_27/z_log_var/MatMul/ReadVariableOp)^encoder_27/z_mean/BiasAdd/ReadVariableOp(^encoder_27/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1ý

Identity_2Identityencoder_27/sampling/add:z:0:^encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp:^encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp:^encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp9^encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp9^encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp8^encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp,^encoder_27/z_log_var/BiasAdd/ReadVariableOp+^encoder_27/z_log_var/MatMul/ReadVariableOp)^encoder_27/z_mean/BiasAdd/ReadVariableOp(^encoder_27/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2v
9encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp9encoder_27/sequential_54/conv2d_81/BiasAdd/ReadVariableOp2t
8encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp8encoder_27/sequential_54/conv2d_81/Conv2D/ReadVariableOp2v
9encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp9encoder_27/sequential_54/conv2d_82/BiasAdd/ReadVariableOp2t
8encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp8encoder_27/sequential_54/conv2d_82/Conv2D/ReadVariableOp2v
9encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp9encoder_27/sequential_54/conv2d_83/BiasAdd/ReadVariableOp2t
8encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp8encoder_27/sequential_54/conv2d_83/Conv2D/ReadVariableOp2t
8encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp8encoder_27/sequential_54/dense_54/BiasAdd/ReadVariableOp2r
7encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp7encoder_27/sequential_54/dense_54/MatMul/ReadVariableOp2Z
+encoder_27/z_log_var/BiasAdd/ReadVariableOp+encoder_27/z_log_var/BiasAdd/ReadVariableOp2X
*encoder_27/z_log_var/MatMul/ReadVariableOp*encoder_27/z_log_var/MatMul/ReadVariableOp2T
(encoder_27/z_mean/BiasAdd/ReadVariableOp(encoder_27/z_mean/BiasAdd/ReadVariableOp2R
'encoder_27/z_mean/MatMul/ReadVariableOp'encoder_27/z_mean/MatMul/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
Ø

Þ
E__inference_conv2d_82_layer_call_and_return_conditional_losses_280897

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
	
Û
B__inference_z_mean_layer_call_and_return_conditional_losses_281773

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¥
I__inference_sequential_54_layer_call_and_return_conditional_losses_281035

inputs
conv2d_81_281013
conv2d_81_281015
conv2d_82_281018
conv2d_82_281020
conv2d_83_281023
conv2d_83_281025
dense_54_281029
dense_54_281031
identity¢!conv2d_81/StatefulPartitionedCall¢!conv2d_82/StatefulPartitionedCall¢!conv2d_83/StatefulPartitionedCall¢ dense_54/StatefulPartitionedCall¥
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_81_281013conv2d_81_281015*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_2808702#
!conv2d_81/StatefulPartitionedCallÉ
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0conv2d_82_281018conv2d_82_281020*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_2808972#
!conv2d_82/StatefulPartitionedCallÉ
!conv2d_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0conv2d_83_281023conv2d_83_281025*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_83_layer_call_and_return_conditional_losses_2809242#
!conv2d_83/StatefulPartitionedCall
flatten_27/PartitionedCallPartitionedCall*conv2d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_2809462
flatten_27/PartitionedCall´
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_54_281029dense_54_281031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_2809652"
 dense_54/StatefulPartitionedCall
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall"^conv2d_83/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2F
!conv2d_83/StatefulPartitionedCall!conv2d_83/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ú3

F__inference_encoder_27_layer_call_and_return_conditional_losses_281239
input_1
sequential_54_281146
sequential_54_281148
sequential_54_281150
sequential_54_281152
sequential_54_281154
sequential_54_281156
sequential_54_281158
sequential_54_281160
z_mean_281184
z_mean_281186
z_log_var_281210
z_log_var_281212
identity

identity_1

identity_2¢%sequential_54/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallÁ
%sequential_54/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_54_281146sequential_54_281148sequential_54_281150sequential_54_281152sequential_54_281154sequential_54_281156sequential_54_281158sequential_54_281160*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_2810352'
%sequential_54/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_54/StatefulPartitionedCall:output:0z_mean_281184z_mean_281186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2811732 
z_mean/StatefulPartitionedCallÄ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_54/StatefulPartitionedCall:output:0z_log_var_281210z_log_var_281212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2811992#
!z_log_var/StatefulPartitionedCallw
sampling/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stack
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice{
sampling/Shape_1Shape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape_1
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stack
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2¤
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1¶
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/mean
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sampling/random_normal/stddev
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ÂÃþ2-
+sampling/random_normal/RandomStandardNormalØ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normal/mul¸
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/x
sampling/mulMulsampling/mul/x:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/Exp
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mul_1
sampling/addAddV2'z_mean/StatefulPartitionedCall:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/addè
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityï

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Õ

Identity_2Identitysampling/add:z:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2N
%sequential_54/StatefulPartitionedCall%sequential_54/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
Õ

Þ
E__inference_conv2d_81_layer_call_and_return_conditional_losses_280870

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ß
²
+__inference_encoder_27_layer_call_fn_281620
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_encoder_27_layer_call_and_return_conditional_losses_2813502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
Ø

Þ
E__inference_conv2d_83_layer_call_and_return_conditional_losses_281852

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ+
ì
I__inference_sequential_54_layer_call_and_return_conditional_losses_281687

inputs,
(conv2d_81_conv2d_readvariableop_resource-
)conv2d_81_biasadd_readvariableop_resource,
(conv2d_82_conv2d_readvariableop_resource-
)conv2d_82_biasadd_readvariableop_resource,
(conv2d_83_conv2d_readvariableop_resource-
)conv2d_83_biasadd_readvariableop_resource+
'dense_54_matmul_readvariableop_resource,
(dense_54_biasadd_readvariableop_resource
identity¢ conv2d_81/BiasAdd/ReadVariableOp¢conv2d_81/Conv2D/ReadVariableOp¢ conv2d_82/BiasAdd/ReadVariableOp¢conv2d_82/Conv2D/ReadVariableOp¢ conv2d_83/BiasAdd/ReadVariableOp¢conv2d_83/Conv2D/ReadVariableOp¢dense_54/BiasAdd/ReadVariableOp¢dense_54/MatMul/ReadVariableOp´
conv2d_81/Conv2D/ReadVariableOpReadVariableOp(conv2d_81_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
conv2d_81/Conv2D/ReadVariableOpÂ
conv2d_81/Conv2DConv2Dinputs'conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_81/Conv2D«
 conv2d_81/BiasAdd/ReadVariableOpReadVariableOp)conv2d_81_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_81/BiasAdd/ReadVariableOp±
conv2d_81/BiasAddBiasAddconv2d_81/Conv2D:output:0(conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_81/BiasAdd
conv2d_81/ReluReluconv2d_81/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_81/Reluµ
conv2d_82/Conv2D/ReadVariableOpReadVariableOp(conv2d_82_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_82/Conv2D/ReadVariableOpØ
conv2d_82/Conv2DConv2Dconv2d_81/Relu:activations:0'conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_82/Conv2D«
 conv2d_82/BiasAdd/ReadVariableOpReadVariableOp)conv2d_82_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_82/BiasAdd/ReadVariableOp±
conv2d_82/BiasAddBiasAddconv2d_82/Conv2D:output:0(conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_82/BiasAdd
conv2d_82/ReluReluconv2d_82/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_82/Reluµ
conv2d_83/Conv2D/ReadVariableOpReadVariableOp(conv2d_83_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_83/Conv2D/ReadVariableOpØ
conv2d_83/Conv2DConv2Dconv2d_82/Relu:activations:0'conv2d_83/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_83/Conv2D«
 conv2d_83/BiasAdd/ReadVariableOpReadVariableOp)conv2d_83_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_83/BiasAdd/ReadVariableOp±
conv2d_83/BiasAddBiasAddconv2d_83/Conv2D:output:0(conv2d_83/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_83/BiasAdd
conv2d_83/ReluReluconv2d_83/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_83/Reluu
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_27/Const 
flatten_27/ReshapeReshapeconv2d_83/Relu:activations:0flatten_27/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_27/Reshapeª
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_54/MatMul/ReadVariableOp£
dense_54/MatMulMatMulflatten_27/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_54/MatMul§
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_54/BiasAdd/ReadVariableOp¥
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_54/BiasAdds
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_54/Relu
IdentityIdentitydense_54/Relu:activations:0!^conv2d_81/BiasAdd/ReadVariableOp ^conv2d_81/Conv2D/ReadVariableOp!^conv2d_82/BiasAdd/ReadVariableOp ^conv2d_82/Conv2D/ReadVariableOp!^conv2d_83/BiasAdd/ReadVariableOp ^conv2d_83/Conv2D/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2D
 conv2d_81/BiasAdd/ReadVariableOp conv2d_81/BiasAdd/ReadVariableOp2B
conv2d_81/Conv2D/ReadVariableOpconv2d_81/Conv2D/ReadVariableOp2D
 conv2d_82/BiasAdd/ReadVariableOp conv2d_82/BiasAdd/ReadVariableOp2B
conv2d_82/Conv2D/ReadVariableOpconv2d_82/Conv2D/ReadVariableOp2D
 conv2d_83/BiasAdd/ReadVariableOp conv2d_83/BiasAdd/ReadVariableOp2B
conv2d_83/Conv2D/ReadVariableOpconv2d_83/Conv2D/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ù3

F__inference_encoder_27_layer_call_and_return_conditional_losses_281293
input_1
sequential_54_281242
sequential_54_281244
sequential_54_281246
sequential_54_281248
sequential_54_281250
sequential_54_281252
sequential_54_281254
sequential_54_281256
z_mean_281259
z_mean_281261
z_log_var_281264
z_log_var_281266
identity

identity_1

identity_2¢%sequential_54/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallÁ
%sequential_54/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_54_281242sequential_54_281244sequential_54_281246sequential_54_281248sequential_54_281250sequential_54_281252sequential_54_281254sequential_54_281256*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_2810812'
%sequential_54/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_54/StatefulPartitionedCall:output:0z_mean_281259z_mean_281261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2811732 
z_mean/StatefulPartitionedCallÄ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_54/StatefulPartitionedCall:output:0z_log_var_281264z_log_var_281266*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2811992#
!z_log_var/StatefulPartitionedCallw
sampling/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stack
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice{
sampling/Shape_1Shape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape_1
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stack
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2¤
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1¶
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/mean
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sampling/random_normal/stddevÿ
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2þ+2-
+sampling/random_normal/RandomStandardNormalØ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normal/mul¸
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/x
sampling/mulMulsampling/mul/x:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/Exp
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/mul_1
sampling/addAddV2'z_mean/StatefulPartitionedCall:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sampling/addè
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityï

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Õ

Identity_2Identitysampling/add:z:0&^sequential_54/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2N
%sequential_54/StatefulPartitionedCall%sequential_54/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
¨%
Ð
__inference__traced_save_281953
file_prefix7
3savev2_encoder_27_z_mean_kernel_read_readvariableop5
1savev2_encoder_27_z_mean_bias_read_readvariableop:
6savev2_encoder_27_z_log_var_kernel_read_readvariableop8
4savev2_encoder_27_z_log_var_bias_read_readvariableop/
+savev2_conv2d_81_kernel_read_readvariableop-
)savev2_conv2d_81_bias_read_readvariableop/
+savev2_conv2d_82_kernel_read_readvariableop-
)savev2_conv2d_82_bias_read_readvariableop/
+savev2_conv2d_83_kernel_read_readvariableop-
)savev2_conv2d_83_bias_read_readvariableop.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop
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
ShardedFilenameÝ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ï
valueåBâB)dense_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_z/bias/.ATTRIBUTES/VARIABLE_VALUEB+log_var_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB)log_var_z/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¢
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesú
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_encoder_27_z_mean_kernel_read_readvariableop1savev2_encoder_27_z_mean_bias_read_readvariableop6savev2_encoder_27_z_log_var_kernel_read_readvariableop4savev2_encoder_27_z_log_var_bias_read_readvariableop+savev2_conv2d_81_kernel_read_readvariableop)savev2_conv2d_81_bias_read_readvariableop+savev2_conv2d_82_kernel_read_readvariableop)savev2_conv2d_82_bias_read_readvariableop+savev2_conv2d_83_kernel_read_readvariableop)savev2_conv2d_83_bias_read_readvariableop*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: :::::::::::
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.	*
(
_output_shapes
::!


_output_shapes	
::&"
 
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: 
¯
G
+__inference_flatten_27_layer_call_fn_281872

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_2809462
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø

Þ
E__inference_conv2d_83_layer_call_and_return_conditional_losses_280924

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
§
I__inference_sequential_54_layer_call_and_return_conditional_losses_281007
input_55
conv2d_81_280985
conv2d_81_280987
conv2d_82_280990
conv2d_82_280992
conv2d_83_280995
conv2d_83_280997
dense_54_281001
dense_54_281003
identity¢!conv2d_81/StatefulPartitionedCall¢!conv2d_82/StatefulPartitionedCall¢!conv2d_83/StatefulPartitionedCall¢ dense_54/StatefulPartitionedCall§
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCallinput_55conv2d_81_280985conv2d_81_280987*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_2808702#
!conv2d_81/StatefulPartitionedCallÉ
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0conv2d_82_280990conv2d_82_280992*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_2808972#
!conv2d_82/StatefulPartitionedCallÉ
!conv2d_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0conv2d_83_280995conv2d_83_280997*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_83_layer_call_and_return_conditional_losses_2809242#
!conv2d_83/StatefulPartitionedCall
flatten_27/PartitionedCallPartitionedCall*conv2d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_2809462
flatten_27/PartitionedCall´
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_54_281001dense_54_281003*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_2809652"
 dense_54/StatefulPartitionedCall
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall"^conv2d_83/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2F
!conv2d_83/StatefulPartitionedCall!conv2d_83/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_55
À
ß
.__inference_sequential_54_layer_call_fn_281054
input_55
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinput_55unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_2810352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_55
ô	
Ý
D__inference_dense_54_layer_call_and_return_conditional_losses_281883

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¯
serving_default
C
input_18
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ@@<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ<
output_20
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿ<
output_30
StatefulPartitionedCall:2ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:÷û
Ý
	model
dense_z
	log_var_z
regularization_losses
trainable_variables
	variables
	keras_api

signatures
g_default_save_signature
h__call__
*i&call_and_return_all_conditional_losses"ú
_tf_keras_modelà{"class_name": "Encoder", "name": "encoder_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Encoder"}}
3
	layer_with_weights-0
	layer-0

layer_with_weights-1

layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
	variables
	keras_api
j__call__
*k&call_and_return_all_conditional_losses"Ë0
_tf_keras_sequential¬0{"class_name": "Sequential", "name": "sequential_54", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_54", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_55"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_81", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_82", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_83", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_27", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_54", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_55"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_81", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_82", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_83", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_27", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
ï

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
l__call__
*m&call_and_return_all_conditional_losses"Ê
_tf_keras_layer°{"class_name": "Dense", "name": "z_mean", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "z_mean", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
õ

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
n__call__
*o&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "z_log_var", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "z_log_var", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
 "
trackable_list_wrapper
v
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11"
trackable_list_wrapper
v
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11"
trackable_list_wrapper
Ê
regularization_losses
&non_trainable_variables

'layers
(metrics
trainable_variables
)layer_metrics
	variables
*layer_regularization_losses
h__call__
g_default_save_signature
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
,
pserving_default"
signature_map
ó	

kernel
bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
q__call__
*r&call_and_return_all_conditional_losses"Î
_tf_keras_layer´{"class_name": "Conv2D", "name": "conv2d_81", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_81", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}}
÷	

 kernel
!bias
/regularization_losses
0trainable_variables
1	variables
2	keras_api
s__call__
*t&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_82", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_82", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
÷	

"kernel
#bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
u__call__
*v&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_83", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_83", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 128]}}
è
7regularization_losses
8trainable_variables
9	variables
:	keras_api
w__call__
*x&call_and_return_all_conditional_losses"Ù
_tf_keras_layer¿{"class_name": "Flatten", "name": "flatten_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_27", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ø

$kernel
%bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
y__call__
*z&call_and_return_all_conditional_losses"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32768}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32768]}}
 "
trackable_list_wrapper
X
0
1
 2
!3
"4
#5
$6
%7"
trackable_list_wrapper
X
0
1
 2
!3
"4
#5
$6
%7"
trackable_list_wrapper
­
regularization_losses
?non_trainable_variables

@layers
Ametrics
trainable_variables
Blayer_metrics
	variables
Clayer_regularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
*:(2encoder_27/z_mean/kernel
$:"2encoder_27/z_mean/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
Dnon_trainable_variables

Elayers
Fmetrics
trainable_variables
Glayer_metrics
	variables
Hlayer_regularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
-:+2encoder_27/z_log_var/kernel
':%2encoder_27/z_log_var/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
Inon_trainable_variables

Jlayers
Kmetrics
trainable_variables
Llayer_metrics
	variables
Mlayer_regularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_81/kernel
:2conv2d_81/bias
,:*2conv2d_82/kernel
:2conv2d_82/bias
,:*2conv2d_83/kernel
:2conv2d_83/bias
#:!
2dense_54/kernel
:2dense_54/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
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
­
+regularization_losses
Nnon_trainable_variables

Olayers
Pmetrics
,trainable_variables
Qlayer_metrics
-	variables
Rlayer_regularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
­
/regularization_losses
Snon_trainable_variables

Tlayers
Umetrics
0trainable_variables
Vlayer_metrics
1	variables
Wlayer_regularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
­
3regularization_losses
Xnon_trainable_variables

Ylayers
Zmetrics
4trainable_variables
[layer_metrics
5	variables
\layer_regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
7regularization_losses
]non_trainable_variables

^layers
_metrics
8trainable_variables
`layer_metrics
9	variables
alayer_regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
­
;regularization_losses
bnon_trainable_variables

clayers
dmetrics
<trainable_variables
elayer_metrics
=	variables
flayer_regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C
	0

1
2
3
4"
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
ç2ä
!__inference__wrapped_model_280855¾
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
annotationsª *.¢+
)&
input_1ÿÿÿÿÿÿÿÿÿ@@
è2å
+__inference_encoder_27_layer_call_fn_281653
+__inference_encoder_27_layer_call_fn_281620
+__inference_encoder_27_layer_call_fn_281414
+__inference_encoder_27_layer_call_fn_281381®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
F__inference_encoder_27_layer_call_and_return_conditional_losses_281239
F__inference_encoder_27_layer_call_and_return_conditional_losses_281587
F__inference_encoder_27_layer_call_and_return_conditional_losses_281518
F__inference_encoder_27_layer_call_and_return_conditional_losses_281293®
¥²¡
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
.__inference_sequential_54_layer_call_fn_281763
.__inference_sequential_54_layer_call_fn_281742
.__inference_sequential_54_layer_call_fn_281054
.__inference_sequential_54_layer_call_fn_281100À
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
ò2ï
I__inference_sequential_54_layer_call_and_return_conditional_losses_281687
I__inference_sequential_54_layer_call_and_return_conditional_losses_281721
I__inference_sequential_54_layer_call_and_return_conditional_losses_281007
I__inference_sequential_54_layer_call_and_return_conditional_losses_280982À
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
Ñ2Î
'__inference_z_mean_layer_call_fn_281782¢
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
ì2é
B__inference_z_mean_layer_call_and_return_conditional_losses_281773¢
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
Ô2Ñ
*__inference_z_log_var_layer_call_fn_281801¢
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
ï2ì
E__inference_z_log_var_layer_call_and_return_conditional_losses_281792¢
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
ËBÈ
$__inference_signature_wrapper_281449input_1"
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
 
Ô2Ñ
*__inference_conv2d_81_layer_call_fn_281821¢
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
ï2ì
E__inference_conv2d_81_layer_call_and_return_conditional_losses_281812¢
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
Ô2Ñ
*__inference_conv2d_82_layer_call_fn_281841¢
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
ï2ì
E__inference_conv2d_82_layer_call_and_return_conditional_losses_281832¢
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
Ô2Ñ
*__inference_conv2d_83_layer_call_fn_281861¢
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
ï2ì
E__inference_conv2d_83_layer_call_and_return_conditional_losses_281852¢
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
+__inference_flatten_27_layer_call_fn_281872¢
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
F__inference_flatten_27_layer_call_and_return_conditional_losses_281867¢
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
Ó2Ð
)__inference_dense_54_layer_call_fn_281892¢
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
î2ë
D__inference_dense_54_layer_call_and_return_conditional_losses_281883¢
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
 
!__inference__wrapped_model_280855ß !"#$%8¢5
.¢+
)&
input_1ÿÿÿÿÿÿÿÿÿ@@
ª "ª
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
.
output_2"
output_2ÿÿÿÿÿÿÿÿÿ
.
output_3"
output_3ÿÿÿÿÿÿÿÿÿ¶
E__inference_conv2d_81_layer_call_and_return_conditional_losses_281812m7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
*__inference_conv2d_81_layer_call_fn_281821`7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª "!ÿÿÿÿÿÿÿÿÿ  ·
E__inference_conv2d_82_layer_call_and_return_conditional_losses_281832n !8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_82_layer_call_fn_281841a !8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ·
E__inference_conv2d_83_layer_call_and_return_conditional_losses_281852n"#8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_83_layer_call_fn_281861a"#8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¦
D__inference_dense_54_layer_call_and_return_conditional_losses_281883^$%1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
)__inference_dense_54_layer_call_fn_281892Q$%1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
F__inference_encoder_27_layer_call_and_return_conditional_losses_281239¸ !"#$%<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ@@
p
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 
F__inference_encoder_27_layer_call_and_return_conditional_losses_281293¸ !"#$%<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ@@
p 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 ý
F__inference_encoder_27_layer_call_and_return_conditional_losses_281518² !"#$%6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ@@
p
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 ý
F__inference_encoder_27_layer_call_and_return_conditional_losses_281587² !"#$%6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ@@
p 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 Ø
+__inference_encoder_27_layer_call_fn_281381¨ !"#$%<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ@@
p
ª "ZW

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿØ
+__inference_encoder_27_layer_call_fn_281414¨ !"#$%<¢9
2¢/
)&
input_1ÿÿÿÿÿÿÿÿÿ@@
p 
ª "ZW

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿÒ
+__inference_encoder_27_layer_call_fn_281620¢ !"#$%6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ@@
p
ª "ZW

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿÒ
+__inference_encoder_27_layer_call_fn_281653¢ !"#$%6¢3
,¢)
# 
xÿÿÿÿÿÿÿÿÿ@@
p 
ª "ZW

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿ­
F__inference_flatten_27_layer_call_and_return_conditional_losses_281867c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_flatten_27_layer_call_fn_281872V8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
I__inference_sequential_54_layer_call_and_return_conditional_losses_280982t !"#$%A¢>
7¢4
*'
input_55ÿÿÿÿÿÿÿÿÿ@@
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
I__inference_sequential_54_layer_call_and_return_conditional_losses_281007t !"#$%A¢>
7¢4
*'
input_55ÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
I__inference_sequential_54_layer_call_and_return_conditional_losses_281687r !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
I__inference_sequential_54_layer_call_and_return_conditional_losses_281721r !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_54_layer_call_fn_281054g !"#$%A¢>
7¢4
*'
input_55ÿÿÿÿÿÿÿÿÿ@@
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_54_layer_call_fn_281100g !"#$%A¢>
7¢4
*'
input_55ÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_54_layer_call_fn_281742e !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_54_layer_call_fn_281763e !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_signature_wrapper_281449ê !"#$%C¢@
¢ 
9ª6
4
input_1)&
input_1ÿÿÿÿÿÿÿÿÿ@@"ª
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
.
output_2"
output_2ÿÿÿÿÿÿÿÿÿ
.
output_3"
output_3ÿÿÿÿÿÿÿÿÿ¥
E__inference_z_log_var_layer_call_and_return_conditional_losses_281792\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_z_log_var_layer_call_fn_281801O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
B__inference_z_mean_layer_call_and_return_conditional_losses_281773\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_z_mean_layer_call_fn_281782O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ