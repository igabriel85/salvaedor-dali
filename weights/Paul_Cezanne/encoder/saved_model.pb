
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
 "serve*2.4.02v2.4.0-0-g582c8d236cb8µó

encoder_21/z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameencoder_21/z_mean/kernel

,encoder_21/z_mean/kernel/Read/ReadVariableOpReadVariableOpencoder_21/z_mean/kernel*
_output_shapes

:*
dtype0

encoder_21/z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameencoder_21/z_mean/bias
}
*encoder_21/z_mean/bias/Read/ReadVariableOpReadVariableOpencoder_21/z_mean/bias*
_output_shapes
:*
dtype0

encoder_21/z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameencoder_21/z_log_var/kernel

/encoder_21/z_log_var/kernel/Read/ReadVariableOpReadVariableOpencoder_21/z_log_var/kernel*
_output_shapes

:*
dtype0

encoder_21/z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameencoder_21/z_log_var/bias

-encoder_21/z_log_var/bias/Read/ReadVariableOpReadVariableOpencoder_21/z_log_var/bias*
_output_shapes
:*
dtype0

conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_63/kernel
~
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*'
_output_shapes
:*
dtype0
u
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_63/bias
n
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes	
:*
dtype0

conv2d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_64/kernel

$conv2d_64/kernel/Read/ReadVariableOpReadVariableOpconv2d_64/kernel*(
_output_shapes
:*
dtype0
u
conv2d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_64/bias
n
"conv2d_64/bias/Read/ReadVariableOpReadVariableOpconv2d_64/bias*
_output_shapes	
:*
dtype0

conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_65/kernel

$conv2d_65/kernel/Read/ReadVariableOpReadVariableOpconv2d_65/kernel*(
_output_shapes
:*
dtype0
u
conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_65/bias
n
"conv2d_65/bias/Read/ReadVariableOpReadVariableOpconv2d_65/bias*
_output_shapes	
:*
dtype0
|
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_42/kernel
u
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel* 
_output_shapes
:
*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
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
VARIABLE_VALUEencoder_21/z_mean/kernel)dense_z/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEencoder_21/z_mean/bias'dense_z/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEencoder_21/z_log_var/kernel+log_var_z/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEencoder_21/z_log_var/bias)log_var_z/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_63/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_63/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_64/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_64/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_65/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_65/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_42/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_42/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasdense_42/kerneldense_42/biasencoder_21/z_mean/kernelencoder_21/z_mean/biasencoder_21/z_log_var/kernelencoder_21/z_log_var/bias*
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
$__inference_signature_wrapper_254470
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,encoder_21/z_mean/kernel/Read/ReadVariableOp*encoder_21/z_mean/bias/Read/ReadVariableOp/encoder_21/z_log_var/kernel/Read/ReadVariableOp-encoder_21/z_log_var/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp$conv2d_64/kernel/Read/ReadVariableOp"conv2d_64/bias/Read/ReadVariableOp$conv2d_65/kernel/Read/ReadVariableOp"conv2d_65/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOpConst*
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
__inference__traced_save_254974

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameencoder_21/z_mean/kernelencoder_21/z_mean/biasencoder_21/z_log_var/kernelencoder_21/z_log_var/biasconv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasdense_42/kerneldense_42/bias*
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
"__inference__traced_restore_255020§§
Ø

Þ
E__inference_conv2d_65_layer_call_and_return_conditional_losses_254873

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
	
Þ
E__inference_z_log_var_layer_call_and_return_conditional_losses_254813

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
	
Þ
E__inference_z_log_var_layer_call_and_return_conditional_losses_254220

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
¯
G
+__inference_flatten_21_layer_call_fn_254893

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
F__inference_flatten_21_layer_call_and_return_conditional_losses_2539672
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
§m


F__inference_encoder_21_layer_call_and_return_conditional_losses_254608
x:
6sequential_42_conv2d_63_conv2d_readvariableop_resource;
7sequential_42_conv2d_63_biasadd_readvariableop_resource:
6sequential_42_conv2d_64_conv2d_readvariableop_resource;
7sequential_42_conv2d_64_biasadd_readvariableop_resource:
6sequential_42_conv2d_65_conv2d_readvariableop_resource;
7sequential_42_conv2d_65_biasadd_readvariableop_resource9
5sequential_42_dense_42_matmul_readvariableop_resource:
6sequential_42_dense_42_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2¢.sequential_42/conv2d_63/BiasAdd/ReadVariableOp¢-sequential_42/conv2d_63/Conv2D/ReadVariableOp¢.sequential_42/conv2d_64/BiasAdd/ReadVariableOp¢-sequential_42/conv2d_64/Conv2D/ReadVariableOp¢.sequential_42/conv2d_65/BiasAdd/ReadVariableOp¢-sequential_42/conv2d_65/Conv2D/ReadVariableOp¢-sequential_42/dense_42/BiasAdd/ReadVariableOp¢,sequential_42/dense_42/MatMul/ReadVariableOp¢ z_log_var/BiasAdd/ReadVariableOp¢z_log_var/MatMul/ReadVariableOp¢z_mean/BiasAdd/ReadVariableOp¢z_mean/MatMul/ReadVariableOpÞ
-sequential_42/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6sequential_42_conv2d_63_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02/
-sequential_42/conv2d_63/Conv2D/ReadVariableOpç
sequential_42/conv2d_63/Conv2DConv2Dx5sequential_42/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2 
sequential_42/conv2d_63/Conv2DÕ
.sequential_42/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_42/conv2d_63/BiasAdd/ReadVariableOpé
sequential_42/conv2d_63/BiasAddBiasAdd'sequential_42/conv2d_63/Conv2D:output:06sequential_42/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
sequential_42/conv2d_63/BiasAdd©
sequential_42/conv2d_63/ReluRelu(sequential_42/conv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_42/conv2d_63/Reluß
-sequential_42/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_42_conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_42/conv2d_64/Conv2D/ReadVariableOp
sequential_42/conv2d_64/Conv2DConv2D*sequential_42/conv2d_63/Relu:activations:05sequential_42/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_42/conv2d_64/Conv2DÕ
.sequential_42/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_42/conv2d_64/BiasAdd/ReadVariableOpé
sequential_42/conv2d_64/BiasAddBiasAdd'sequential_42/conv2d_64/Conv2D:output:06sequential_42/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_42/conv2d_64/BiasAdd©
sequential_42/conv2d_64/ReluRelu(sequential_42/conv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/conv2d_64/Reluß
-sequential_42/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_42_conv2d_65_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_42/conv2d_65/Conv2D/ReadVariableOp
sequential_42/conv2d_65/Conv2DConv2D*sequential_42/conv2d_64/Relu:activations:05sequential_42/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_42/conv2d_65/Conv2DÕ
.sequential_42/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_conv2d_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_42/conv2d_65/BiasAdd/ReadVariableOpé
sequential_42/conv2d_65/BiasAddBiasAdd'sequential_42/conv2d_65/Conv2D:output:06sequential_42/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_42/conv2d_65/BiasAdd©
sequential_42/conv2d_65/ReluRelu(sequential_42/conv2d_65/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/conv2d_65/Relu
sequential_42/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2 
sequential_42/flatten_21/ConstØ
 sequential_42/flatten_21/ReshapeReshape*sequential_42/conv2d_65/Relu:activations:0'sequential_42/flatten_21/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_42/flatten_21/ReshapeÔ
,sequential_42/dense_42/MatMul/ReadVariableOpReadVariableOp5sequential_42_dense_42_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_42/dense_42/MatMul/ReadVariableOpÛ
sequential_42/dense_42/MatMulMatMul)sequential_42/flatten_21/Reshape:output:04sequential_42/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/dense_42/MatMulÑ
-sequential_42/dense_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_42_dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_42/dense_42/BiasAdd/ReadVariableOpÝ
sequential_42/dense_42/BiasAddBiasAdd'sequential_42/dense_42/MatMul:product:05sequential_42/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_42/dense_42/BiasAdd
sequential_42/dense_42/ReluRelu'sequential_42/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/dense_42/Relu¢
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
z_mean/MatMul/ReadVariableOp«
z_mean/MatMulMatMul)sequential_42/dense_42/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
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
z_log_var/MatMulMatMul)sequential_42/dense_42/Relu:activations:0'z_log_var/MatMul/ReadVariableOp:value:0*
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
seed2°â·2-
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
IdentityIdentityz_mean/BiasAdd:output:0/^sequential_42/conv2d_63/BiasAdd/ReadVariableOp.^sequential_42/conv2d_63/Conv2D/ReadVariableOp/^sequential_42/conv2d_64/BiasAdd/ReadVariableOp.^sequential_42/conv2d_64/Conv2D/ReadVariableOp/^sequential_42/conv2d_65/BiasAdd/ReadVariableOp.^sequential_42/conv2d_65/Conv2D/ReadVariableOp.^sequential_42/dense_42/BiasAdd/ReadVariableOp-^sequential_42/dense_42/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityø

Identity_1Identityz_log_var/BiasAdd:output:0/^sequential_42/conv2d_63/BiasAdd/ReadVariableOp.^sequential_42/conv2d_63/Conv2D/ReadVariableOp/^sequential_42/conv2d_64/BiasAdd/ReadVariableOp.^sequential_42/conv2d_64/Conv2D/ReadVariableOp/^sequential_42/conv2d_65/BiasAdd/ReadVariableOp.^sequential_42/conv2d_65/Conv2D/ReadVariableOp.^sequential_42/dense_42/BiasAdd/ReadVariableOp-^sequential_42/dense_42/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1î

Identity_2Identitysampling/add:z:0/^sequential_42/conv2d_63/BiasAdd/ReadVariableOp.^sequential_42/conv2d_63/Conv2D/ReadVariableOp/^sequential_42/conv2d_64/BiasAdd/ReadVariableOp.^sequential_42/conv2d_64/Conv2D/ReadVariableOp/^sequential_42/conv2d_65/BiasAdd/ReadVariableOp.^sequential_42/conv2d_65/Conv2D/ReadVariableOp.^sequential_42/dense_42/BiasAdd/ReadVariableOp-^sequential_42/dense_42/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2`
.sequential_42/conv2d_63/BiasAdd/ReadVariableOp.sequential_42/conv2d_63/BiasAdd/ReadVariableOp2^
-sequential_42/conv2d_63/Conv2D/ReadVariableOp-sequential_42/conv2d_63/Conv2D/ReadVariableOp2`
.sequential_42/conv2d_64/BiasAdd/ReadVariableOp.sequential_42/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_42/conv2d_64/Conv2D/ReadVariableOp-sequential_42/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_42/conv2d_65/BiasAdd/ReadVariableOp.sequential_42/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_42/conv2d_65/Conv2D/ReadVariableOp-sequential_42/conv2d_65/Conv2D/ReadVariableOp2^
-sequential_42/dense_42/BiasAdd/ReadVariableOp-sequential_42/dense_42/BiasAdd/ReadVariableOp2\
,sequential_42/dense_42/MatMul/ReadVariableOp,sequential_42/dense_42/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
Å
±
$__inference_signature_wrapper_254470
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
!__inference__wrapped_model_2538762
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
	
Û
B__inference_z_mean_layer_call_and_return_conditional_losses_254194

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
¯5
É
"__inference__traced_restore_255020
file_prefix-
)assignvariableop_encoder_21_z_mean_kernel-
)assignvariableop_1_encoder_21_z_mean_bias2
.assignvariableop_2_encoder_21_z_log_var_kernel0
,assignvariableop_3_encoder_21_z_log_var_bias'
#assignvariableop_4_conv2d_63_kernel%
!assignvariableop_5_conv2d_63_bias'
#assignvariableop_6_conv2d_64_kernel%
!assignvariableop_7_conv2d_64_bias'
#assignvariableop_8_conv2d_65_kernel%
!assignvariableop_9_conv2d_65_bias'
#assignvariableop_10_dense_42_kernel%
!assignvariableop_11_dense_42_bias
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
AssignVariableOpAssignVariableOp)assignvariableop_encoder_21_z_mean_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1®
AssignVariableOp_1AssignVariableOp)assignvariableop_1_encoder_21_z_mean_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2³
AssignVariableOp_2AssignVariableOp.assignvariableop_2_encoder_21_z_log_var_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3±
AssignVariableOp_3AssignVariableOp,assignvariableop_3_encoder_21_z_log_var_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_63_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_63_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_64_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_64_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¨
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_65_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¦
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_65_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10«
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_42_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_42_biasIdentity_11:output:0"/device:CPU:0*
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
Ø

Þ
E__inference_conv2d_64_layer_call_and_return_conditional_losses_254853

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
 
§
I__inference_sequential_42_layer_call_and_return_conditional_losses_254028
input_43
conv2d_63_254006
conv2d_63_254008
conv2d_64_254011
conv2d_64_254013
conv2d_65_254016
conv2d_65_254018
dense_42_254022
dense_42_254024
identity¢!conv2d_63/StatefulPartitionedCall¢!conv2d_64/StatefulPartitionedCall¢!conv2d_65/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall§
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCallinput_43conv2d_63_254006conv2d_63_254008*
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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_2538912#
!conv2d_63/StatefulPartitionedCallÉ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_254011conv2d_64_254013*
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
E__inference_conv2d_64_layer_call_and_return_conditional_losses_2539182#
!conv2d_64/StatefulPartitionedCallÉ
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_254016conv2d_65_254018*
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
E__inference_conv2d_65_layer_call_and_return_conditional_losses_2539452#
!conv2d_65/StatefulPartitionedCall
flatten_21/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
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
F__inference_flatten_21_layer_call_and_return_conditional_losses_2539672
flatten_21/PartitionedCall´
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_42_254022dense_42_254024*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_2539862"
 dense_42/StatefulPartitionedCall
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_43
Ø

Þ
E__inference_conv2d_65_layer_call_and_return_conditional_losses_253945

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
§m


F__inference_encoder_21_layer_call_and_return_conditional_losses_254539
x:
6sequential_42_conv2d_63_conv2d_readvariableop_resource;
7sequential_42_conv2d_63_biasadd_readvariableop_resource:
6sequential_42_conv2d_64_conv2d_readvariableop_resource;
7sequential_42_conv2d_64_biasadd_readvariableop_resource:
6sequential_42_conv2d_65_conv2d_readvariableop_resource;
7sequential_42_conv2d_65_biasadd_readvariableop_resource9
5sequential_42_dense_42_matmul_readvariableop_resource:
6sequential_42_dense_42_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2¢.sequential_42/conv2d_63/BiasAdd/ReadVariableOp¢-sequential_42/conv2d_63/Conv2D/ReadVariableOp¢.sequential_42/conv2d_64/BiasAdd/ReadVariableOp¢-sequential_42/conv2d_64/Conv2D/ReadVariableOp¢.sequential_42/conv2d_65/BiasAdd/ReadVariableOp¢-sequential_42/conv2d_65/Conv2D/ReadVariableOp¢-sequential_42/dense_42/BiasAdd/ReadVariableOp¢,sequential_42/dense_42/MatMul/ReadVariableOp¢ z_log_var/BiasAdd/ReadVariableOp¢z_log_var/MatMul/ReadVariableOp¢z_mean/BiasAdd/ReadVariableOp¢z_mean/MatMul/ReadVariableOpÞ
-sequential_42/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6sequential_42_conv2d_63_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02/
-sequential_42/conv2d_63/Conv2D/ReadVariableOpç
sequential_42/conv2d_63/Conv2DConv2Dx5sequential_42/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2 
sequential_42/conv2d_63/Conv2DÕ
.sequential_42/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_42/conv2d_63/BiasAdd/ReadVariableOpé
sequential_42/conv2d_63/BiasAddBiasAdd'sequential_42/conv2d_63/Conv2D:output:06sequential_42/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
sequential_42/conv2d_63/BiasAdd©
sequential_42/conv2d_63/ReluRelu(sequential_42/conv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_42/conv2d_63/Reluß
-sequential_42/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_42_conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_42/conv2d_64/Conv2D/ReadVariableOp
sequential_42/conv2d_64/Conv2DConv2D*sequential_42/conv2d_63/Relu:activations:05sequential_42/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_42/conv2d_64/Conv2DÕ
.sequential_42/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_42/conv2d_64/BiasAdd/ReadVariableOpé
sequential_42/conv2d_64/BiasAddBiasAdd'sequential_42/conv2d_64/Conv2D:output:06sequential_42/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_42/conv2d_64/BiasAdd©
sequential_42/conv2d_64/ReluRelu(sequential_42/conv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/conv2d_64/Reluß
-sequential_42/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_42_conv2d_65_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_42/conv2d_65/Conv2D/ReadVariableOp
sequential_42/conv2d_65/Conv2DConv2D*sequential_42/conv2d_64/Relu:activations:05sequential_42/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_42/conv2d_65/Conv2DÕ
.sequential_42/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_conv2d_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_42/conv2d_65/BiasAdd/ReadVariableOpé
sequential_42/conv2d_65/BiasAddBiasAdd'sequential_42/conv2d_65/Conv2D:output:06sequential_42/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_42/conv2d_65/BiasAdd©
sequential_42/conv2d_65/ReluRelu(sequential_42/conv2d_65/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/conv2d_65/Relu
sequential_42/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2 
sequential_42/flatten_21/ConstØ
 sequential_42/flatten_21/ReshapeReshape*sequential_42/conv2d_65/Relu:activations:0'sequential_42/flatten_21/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_42/flatten_21/ReshapeÔ
,sequential_42/dense_42/MatMul/ReadVariableOpReadVariableOp5sequential_42_dense_42_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,sequential_42/dense_42/MatMul/ReadVariableOpÛ
sequential_42/dense_42/MatMulMatMul)sequential_42/flatten_21/Reshape:output:04sequential_42/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/dense_42/MatMulÑ
-sequential_42/dense_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_42_dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_42/dense_42/BiasAdd/ReadVariableOpÝ
sequential_42/dense_42/BiasAddBiasAdd'sequential_42/dense_42/MatMul:product:05sequential_42/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_42/dense_42/BiasAdd
sequential_42/dense_42/ReluRelu'sequential_42/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_42/dense_42/Relu¢
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
z_mean/MatMul/ReadVariableOp«
z_mean/MatMulMatMul)sequential_42/dense_42/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
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
z_log_var/MatMulMatMul)sequential_42/dense_42/Relu:activations:0'z_log_var/MatMul/ReadVariableOp:value:0*
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
seed2¡¡2-
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
IdentityIdentityz_mean/BiasAdd:output:0/^sequential_42/conv2d_63/BiasAdd/ReadVariableOp.^sequential_42/conv2d_63/Conv2D/ReadVariableOp/^sequential_42/conv2d_64/BiasAdd/ReadVariableOp.^sequential_42/conv2d_64/Conv2D/ReadVariableOp/^sequential_42/conv2d_65/BiasAdd/ReadVariableOp.^sequential_42/conv2d_65/Conv2D/ReadVariableOp.^sequential_42/dense_42/BiasAdd/ReadVariableOp-^sequential_42/dense_42/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityø

Identity_1Identityz_log_var/BiasAdd:output:0/^sequential_42/conv2d_63/BiasAdd/ReadVariableOp.^sequential_42/conv2d_63/Conv2D/ReadVariableOp/^sequential_42/conv2d_64/BiasAdd/ReadVariableOp.^sequential_42/conv2d_64/Conv2D/ReadVariableOp/^sequential_42/conv2d_65/BiasAdd/ReadVariableOp.^sequential_42/conv2d_65/Conv2D/ReadVariableOp.^sequential_42/dense_42/BiasAdd/ReadVariableOp-^sequential_42/dense_42/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1î

Identity_2Identitysampling/add:z:0/^sequential_42/conv2d_63/BiasAdd/ReadVariableOp.^sequential_42/conv2d_63/Conv2D/ReadVariableOp/^sequential_42/conv2d_64/BiasAdd/ReadVariableOp.^sequential_42/conv2d_64/Conv2D/ReadVariableOp/^sequential_42/conv2d_65/BiasAdd/ReadVariableOp.^sequential_42/conv2d_65/Conv2D/ReadVariableOp.^sequential_42/dense_42/BiasAdd/ReadVariableOp-^sequential_42/dense_42/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2`
.sequential_42/conv2d_63/BiasAdd/ReadVariableOp.sequential_42/conv2d_63/BiasAdd/ReadVariableOp2^
-sequential_42/conv2d_63/Conv2D/ReadVariableOp-sequential_42/conv2d_63/Conv2D/ReadVariableOp2`
.sequential_42/conv2d_64/BiasAdd/ReadVariableOp.sequential_42/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_42/conv2d_64/Conv2D/ReadVariableOp-sequential_42/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_42/conv2d_65/BiasAdd/ReadVariableOp.sequential_42/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_42/conv2d_65/Conv2D/ReadVariableOp-sequential_42/conv2d_65/Conv2D/ReadVariableOp2^
-sequential_42/dense_42/BiasAdd/ReadVariableOp-sequential_42/dense_42/BiasAdd/ReadVariableOp2\
,sequential_42/dense_42/MatMul/ReadVariableOp,sequential_42/dense_42/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
À
ß
.__inference_sequential_42_layer_call_fn_254121
input_43
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinput_43unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_2541022
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
input_43
ú3

F__inference_encoder_21_layer_call_and_return_conditional_losses_254314
input_1
sequential_42_254263
sequential_42_254265
sequential_42_254267
sequential_42_254269
sequential_42_254271
sequential_42_254273
sequential_42_254275
sequential_42_254277
z_mean_254280
z_mean_254282
z_log_var_254285
z_log_var_254287
identity

identity_1

identity_2¢%sequential_42/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallÁ
%sequential_42/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_42_254263sequential_42_254265sequential_42_254267sequential_42_254269sequential_42_254271sequential_42_254273sequential_42_254275sequential_42_254277*
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_2541022'
%sequential_42/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_42/StatefulPartitionedCall:output:0z_mean_254280z_mean_254282*
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
B__inference_z_mean_layer_call_and_return_conditional_losses_2541942 
z_mean/StatefulPartitionedCallÄ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_42/StatefulPartitionedCall:output:0z_log_var_254285z_log_var_254287*
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
E__inference_z_log_var_layer_call_and_return_conditional_losses_2542202#
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
seed2ô2-
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
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityï

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Õ

Identity_2Identitysampling/add:z:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2N
%sequential_42/StatefulPartitionedCall%sequential_42/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
ã
~
)__inference_dense_42_layer_call_fn_254913

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
D__inference_dense_42_layer_call_and_return_conditional_losses_2539862
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
À
ß
.__inference_sequential_42_layer_call_fn_254075
input_43
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinput_43unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_2540562
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
input_43
è3

F__inference_encoder_21_layer_call_and_return_conditional_losses_254371
x
sequential_42_254320
sequential_42_254322
sequential_42_254324
sequential_42_254326
sequential_42_254328
sequential_42_254330
sequential_42_254332
sequential_42_254334
z_mean_254337
z_mean_254339
z_log_var_254342
z_log_var_254344
identity

identity_1

identity_2¢%sequential_42/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCall»
%sequential_42/StatefulPartitionedCallStatefulPartitionedCallxsequential_42_254320sequential_42_254322sequential_42_254324sequential_42_254326sequential_42_254328sequential_42_254330sequential_42_254332sequential_42_254334*
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_2541022'
%sequential_42/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_42/StatefulPartitionedCall:output:0z_mean_254337z_mean_254339*
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
B__inference_z_mean_layer_call_and_return_conditional_losses_2541942 
z_mean/StatefulPartitionedCallÄ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_42/StatefulPartitionedCall:output:0z_log_var_254342z_log_var_254344*
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
E__inference_z_log_var_layer_call_and_return_conditional_losses_2542202#
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
seed2æí³2-
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
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityï

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Õ

Identity_2Identitysampling/add:z:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2N
%sequential_42/StatefulPartitionedCall%sequential_42/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@

_user_specified_namex
Þ+
ì
I__inference_sequential_42_layer_call_and_return_conditional_losses_254742

inputs,
(conv2d_63_conv2d_readvariableop_resource-
)conv2d_63_biasadd_readvariableop_resource,
(conv2d_64_conv2d_readvariableop_resource-
)conv2d_64_biasadd_readvariableop_resource,
(conv2d_65_conv2d_readvariableop_resource-
)conv2d_65_biasadd_readvariableop_resource+
'dense_42_matmul_readvariableop_resource,
(dense_42_biasadd_readvariableop_resource
identity¢ conv2d_63/BiasAdd/ReadVariableOp¢conv2d_63/Conv2D/ReadVariableOp¢ conv2d_64/BiasAdd/ReadVariableOp¢conv2d_64/Conv2D/ReadVariableOp¢ conv2d_65/BiasAdd/ReadVariableOp¢conv2d_65/Conv2D/ReadVariableOp¢dense_42/BiasAdd/ReadVariableOp¢dense_42/MatMul/ReadVariableOp´
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
conv2d_63/Conv2D/ReadVariableOpÂ
conv2d_63/Conv2DConv2Dinputs'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_63/Conv2D«
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp±
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_63/BiasAdd
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_63/Reluµ
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_64/Conv2D/ReadVariableOpØ
conv2d_64/Conv2DConv2Dconv2d_63/Relu:activations:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_64/Conv2D«
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp±
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_64/BiasAdd
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_64/Reluµ
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_65/Conv2D/ReadVariableOpØ
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_65/Conv2D«
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp±
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_65/BiasAdd
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_65/Reluu
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_21/Const 
flatten_21/ReshapeReshapeconv2d_65/Relu:activations:0flatten_21/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_21/Reshapeª
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_42/MatMul/ReadVariableOp£
dense_42/MatMulMatMulflatten_21/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/MatMul§
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_42/BiasAdd/ReadVariableOp¥
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/BiasAdds
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/Relu
IdentityIdentitydense_42/Relu:activations:0!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


*__inference_conv2d_64_layer_call_fn_254862

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
E__inference_conv2d_64_layer_call_and_return_conditional_losses_2539182
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
Û
|
'__inference_z_mean_layer_call_fn_254803

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
B__inference_z_mean_layer_call_and_return_conditional_losses_2541942
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
ù3

F__inference_encoder_21_layer_call_and_return_conditional_losses_254260
input_1
sequential_42_254167
sequential_42_254169
sequential_42_254171
sequential_42_254173
sequential_42_254175
sequential_42_254177
sequential_42_254179
sequential_42_254181
z_mean_254205
z_mean_254207
z_log_var_254231
z_log_var_254233
identity

identity_1

identity_2¢%sequential_42/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallÁ
%sequential_42/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_42_254167sequential_42_254169sequential_42_254171sequential_42_254173sequential_42_254175sequential_42_254177sequential_42_254179sequential_42_254181*
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_2540562'
%sequential_42/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_42/StatefulPartitionedCall:output:0z_mean_254205z_mean_254207*
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
B__inference_z_mean_layer_call_and_return_conditional_losses_2541942 
z_mean/StatefulPartitionedCallÄ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_42/StatefulPartitionedCall:output:0z_log_var_254231z_log_var_254233*
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
E__inference_z_log_var_layer_call_and_return_conditional_losses_2542202#
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
seed2ß!2-
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
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityï

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Õ

Identity_2Identitysampling/add:z:0&^sequential_42/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2N
%sequential_42/StatefulPartitionedCall%sequential_42/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
º
Ý
.__inference_sequential_42_layer_call_fn_254784

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
I__inference_sequential_42_layer_call_and_return_conditional_losses_2541022
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
F__inference_flatten_21_layer_call_and_return_conditional_losses_254888

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
ß
²
+__inference_encoder_21_layer_call_fn_254641
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_2543712
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
ô	
Ý
D__inference_dense_42_layer_call_and_return_conditional_losses_253986

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
ô	
Ý
D__inference_dense_42_layer_call_and_return_conditional_losses_254904

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
Õ

Þ
E__inference_conv2d_63_layer_call_and_return_conditional_losses_253891

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
¨%
Ð
__inference__traced_save_254974
file_prefix7
3savev2_encoder_21_z_mean_kernel_read_readvariableop5
1savev2_encoder_21_z_mean_bias_read_readvariableop:
6savev2_encoder_21_z_log_var_kernel_read_readvariableop8
4savev2_encoder_21_z_log_var_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop/
+savev2_conv2d_64_kernel_read_readvariableop-
)savev2_conv2d_64_bias_read_readvariableop/
+savev2_conv2d_65_kernel_read_readvariableop-
)savev2_conv2d_65_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_encoder_21_z_mean_kernel_read_readvariableop1savev2_encoder_21_z_mean_bias_read_readvariableop6savev2_encoder_21_z_log_var_kernel_read_readvariableop4savev2_encoder_21_z_log_var_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop+savev2_conv2d_64_kernel_read_readvariableop)savev2_conv2d_64_bias_read_readvariableop+savev2_conv2d_65_kernel_read_readvariableop)savev2_conv2d_65_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
 
§
I__inference_sequential_42_layer_call_and_return_conditional_losses_254003
input_43
conv2d_63_253902
conv2d_63_253904
conv2d_64_253929
conv2d_64_253931
conv2d_65_253956
conv2d_65_253958
dense_42_253997
dense_42_253999
identity¢!conv2d_63/StatefulPartitionedCall¢!conv2d_64/StatefulPartitionedCall¢!conv2d_65/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall§
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCallinput_43conv2d_63_253902conv2d_63_253904*
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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_2538912#
!conv2d_63/StatefulPartitionedCallÉ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_253929conv2d_64_253931*
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
E__inference_conv2d_64_layer_call_and_return_conditional_losses_2539182#
!conv2d_64/StatefulPartitionedCallÉ
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_253956conv2d_65_253958*
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
E__inference_conv2d_65_layer_call_and_return_conditional_losses_2539452#
!conv2d_65/StatefulPartitionedCall
flatten_21/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
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
F__inference_flatten_21_layer_call_and_return_conditional_losses_2539672
flatten_21/PartitionedCall´
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_42_253997dense_42_253999*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_2539862"
 dense_42/StatefulPartitionedCall
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_43


*__inference_conv2d_65_layer_call_fn_254882

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
E__inference_conv2d_65_layer_call_and_return_conditional_losses_2539452
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
Þ+
ì
I__inference_sequential_42_layer_call_and_return_conditional_losses_254708

inputs,
(conv2d_63_conv2d_readvariableop_resource-
)conv2d_63_biasadd_readvariableop_resource,
(conv2d_64_conv2d_readvariableop_resource-
)conv2d_64_biasadd_readvariableop_resource,
(conv2d_65_conv2d_readvariableop_resource-
)conv2d_65_biasadd_readvariableop_resource+
'dense_42_matmul_readvariableop_resource,
(dense_42_biasadd_readvariableop_resource
identity¢ conv2d_63/BiasAdd/ReadVariableOp¢conv2d_63/Conv2D/ReadVariableOp¢ conv2d_64/BiasAdd/ReadVariableOp¢conv2d_64/Conv2D/ReadVariableOp¢ conv2d_65/BiasAdd/ReadVariableOp¢conv2d_65/Conv2D/ReadVariableOp¢dense_42/BiasAdd/ReadVariableOp¢dense_42/MatMul/ReadVariableOp´
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
conv2d_63/Conv2D/ReadVariableOpÂ
conv2d_63/Conv2DConv2Dinputs'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_63/Conv2D«
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp±
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_63/BiasAdd
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_63/Reluµ
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_64/Conv2D/ReadVariableOpØ
conv2d_64/Conv2DConv2Dconv2d_63/Relu:activations:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_64/Conv2D«
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp±
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_64/BiasAdd
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_64/Reluµ
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_65/Conv2D/ReadVariableOpØ
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_65/Conv2D«
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp±
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_65/BiasAdd
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_65/Reluu
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_21/Const 
flatten_21/ReshapeReshapeconv2d_65/Relu:activations:0flatten_21/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_21/Reshapeª
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_42/MatMul/ReadVariableOp£
dense_42/MatMulMatMulflatten_21/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/MatMul§
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_42/BiasAdd/ReadVariableOp¥
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/BiasAdds
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/Relu
IdentityIdentitydense_42/Relu:activations:0!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Õ

Þ
E__inference_conv2d_63_layer_call_and_return_conditional_losses_254833

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

¥
I__inference_sequential_42_layer_call_and_return_conditional_losses_254102

inputs
conv2d_63_254080
conv2d_63_254082
conv2d_64_254085
conv2d_64_254087
conv2d_65_254090
conv2d_65_254092
dense_42_254096
dense_42_254098
identity¢!conv2d_63/StatefulPartitionedCall¢!conv2d_64/StatefulPartitionedCall¢!conv2d_65/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall¥
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_63_254080conv2d_63_254082*
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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_2538912#
!conv2d_63/StatefulPartitionedCallÉ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_254085conv2d_64_254087*
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
E__inference_conv2d_64_layer_call_and_return_conditional_losses_2539182#
!conv2d_64/StatefulPartitionedCallÉ
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_254090conv2d_65_254092*
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
E__inference_conv2d_65_layer_call_and_return_conditional_losses_2539452#
!conv2d_65/StatefulPartitionedCall
flatten_21/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
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
F__inference_flatten_21_layer_call_and_return_conditional_losses_2539672
flatten_21/PartitionedCall´
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_42_254096dense_42_254098*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_2539862"
 dense_42/StatefulPartitionedCall
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


!__inference__wrapped_model_253876
input_1E
Aencoder_21_sequential_42_conv2d_63_conv2d_readvariableop_resourceF
Bencoder_21_sequential_42_conv2d_63_biasadd_readvariableop_resourceE
Aencoder_21_sequential_42_conv2d_64_conv2d_readvariableop_resourceF
Bencoder_21_sequential_42_conv2d_64_biasadd_readvariableop_resourceE
Aencoder_21_sequential_42_conv2d_65_conv2d_readvariableop_resourceF
Bencoder_21_sequential_42_conv2d_65_biasadd_readvariableop_resourceD
@encoder_21_sequential_42_dense_42_matmul_readvariableop_resourceE
Aencoder_21_sequential_42_dense_42_biasadd_readvariableop_resource4
0encoder_21_z_mean_matmul_readvariableop_resource5
1encoder_21_z_mean_biasadd_readvariableop_resource7
3encoder_21_z_log_var_matmul_readvariableop_resource8
4encoder_21_z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2¢9encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp¢8encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp¢9encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp¢8encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp¢9encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp¢8encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp¢8encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp¢7encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp¢+encoder_21/z_log_var/BiasAdd/ReadVariableOp¢*encoder_21/z_log_var/MatMul/ReadVariableOp¢(encoder_21/z_mean/BiasAdd/ReadVariableOp¢'encoder_21/z_mean/MatMul/ReadVariableOpÿ
8encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOpReadVariableOpAencoder_21_sequential_42_conv2d_63_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02:
8encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp
)encoder_21/sequential_42/conv2d_63/Conv2DConv2Dinput_1@encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2+
)encoder_21/sequential_42/conv2d_63/Conv2Dö
9encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOpReadVariableOpBencoder_21_sequential_42_conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02;
9encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp
*encoder_21/sequential_42/conv2d_63/BiasAddBiasAdd2encoder_21/sequential_42/conv2d_63/Conv2D:output:0Aencoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2,
*encoder_21/sequential_42/conv2d_63/BiasAddÊ
'encoder_21/sequential_42/conv2d_63/ReluRelu3encoder_21/sequential_42/conv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2)
'encoder_21/sequential_42/conv2d_63/Relu
8encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOpReadVariableOpAencoder_21_sequential_42_conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02:
8encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp¼
)encoder_21/sequential_42/conv2d_64/Conv2DConv2D5encoder_21/sequential_42/conv2d_63/Relu:activations:0@encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2+
)encoder_21/sequential_42/conv2d_64/Conv2Dö
9encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOpReadVariableOpBencoder_21_sequential_42_conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02;
9encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp
*encoder_21/sequential_42/conv2d_64/BiasAddBiasAdd2encoder_21/sequential_42/conv2d_64/Conv2D:output:0Aencoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*encoder_21/sequential_42/conv2d_64/BiasAddÊ
'encoder_21/sequential_42/conv2d_64/ReluRelu3encoder_21/sequential_42/conv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'encoder_21/sequential_42/conv2d_64/Relu
8encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOpReadVariableOpAencoder_21_sequential_42_conv2d_65_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02:
8encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp¼
)encoder_21/sequential_42/conv2d_65/Conv2DConv2D5encoder_21/sequential_42/conv2d_64/Relu:activations:0@encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2+
)encoder_21/sequential_42/conv2d_65/Conv2Dö
9encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOpReadVariableOpBencoder_21_sequential_42_conv2d_65_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02;
9encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp
*encoder_21/sequential_42/conv2d_65/BiasAddBiasAdd2encoder_21/sequential_42/conv2d_65/Conv2D:output:0Aencoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*encoder_21/sequential_42/conv2d_65/BiasAddÊ
'encoder_21/sequential_42/conv2d_65/ReluRelu3encoder_21/sequential_42/conv2d_65/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'encoder_21/sequential_42/conv2d_65/Relu§
)encoder_21/sequential_42/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2+
)encoder_21/sequential_42/flatten_21/Const
+encoder_21/sequential_42/flatten_21/ReshapeReshape5encoder_21/sequential_42/conv2d_65/Relu:activations:02encoder_21/sequential_42/flatten_21/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+encoder_21/sequential_42/flatten_21/Reshapeõ
7encoder_21/sequential_42/dense_42/MatMul/ReadVariableOpReadVariableOp@encoder_21_sequential_42_dense_42_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype029
7encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp
(encoder_21/sequential_42/dense_42/MatMulMatMul4encoder_21/sequential_42/flatten_21/Reshape:output:0?encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(encoder_21/sequential_42/dense_42/MatMulò
8encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOpReadVariableOpAencoder_21_sequential_42_dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp
)encoder_21/sequential_42/dense_42/BiasAddBiasAdd2encoder_21/sequential_42/dense_42/MatMul:product:0@encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)encoder_21/sequential_42/dense_42/BiasAdd¾
&encoder_21/sequential_42/dense_42/ReluRelu2encoder_21/sequential_42/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&encoder_21/sequential_42/dense_42/ReluÃ
'encoder_21/z_mean/MatMul/ReadVariableOpReadVariableOp0encoder_21_z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'encoder_21/z_mean/MatMul/ReadVariableOp×
encoder_21/z_mean/MatMulMatMul4encoder_21/sequential_42/dense_42/Relu:activations:0/encoder_21/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/z_mean/MatMulÂ
(encoder_21/z_mean/BiasAdd/ReadVariableOpReadVariableOp1encoder_21_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(encoder_21/z_mean/BiasAdd/ReadVariableOpÉ
encoder_21/z_mean/BiasAddBiasAdd"encoder_21/z_mean/MatMul:product:00encoder_21/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/z_mean/BiasAddÌ
*encoder_21/z_log_var/MatMul/ReadVariableOpReadVariableOp3encoder_21_z_log_var_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*encoder_21/z_log_var/MatMul/ReadVariableOpà
encoder_21/z_log_var/MatMulMatMul4encoder_21/sequential_42/dense_42/Relu:activations:02encoder_21/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/z_log_var/MatMulË
+encoder_21/z_log_var/BiasAdd/ReadVariableOpReadVariableOp4encoder_21_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+encoder_21/z_log_var/BiasAdd/ReadVariableOpÕ
encoder_21/z_log_var/BiasAddBiasAdd%encoder_21/z_log_var/MatMul:product:03encoder_21/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/z_log_var/BiasAdd
encoder_21/sampling/ShapeShape"encoder_21/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
encoder_21/sampling/Shape
'encoder_21/sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'encoder_21/sampling/strided_slice/stack 
)encoder_21/sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_21/sampling/strided_slice/stack_1 
)encoder_21/sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_21/sampling/strided_slice/stack_2Ú
!encoder_21/sampling/strided_sliceStridedSlice"encoder_21/sampling/Shape:output:00encoder_21/sampling/strided_slice/stack:output:02encoder_21/sampling/strided_slice/stack_1:output:02encoder_21/sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!encoder_21/sampling/strided_slice
encoder_21/sampling/Shape_1Shape"encoder_21/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
encoder_21/sampling/Shape_1 
)encoder_21/sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_21/sampling/strided_slice_1/stack¤
+encoder_21/sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+encoder_21/sampling/strided_slice_1/stack_1¤
+encoder_21/sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+encoder_21/sampling/strided_slice_1/stack_2æ
#encoder_21/sampling/strided_slice_1StridedSlice$encoder_21/sampling/Shape_1:output:02encoder_21/sampling/strided_slice_1/stack:output:04encoder_21/sampling/strided_slice_1/stack_1:output:04encoder_21/sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#encoder_21/sampling/strided_slice_1â
'encoder_21/sampling/random_normal/shapePack*encoder_21/sampling/strided_slice:output:0,encoder_21/sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2)
'encoder_21/sampling/random_normal/shape
&encoder_21/sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&encoder_21/sampling/random_normal/mean
(encoder_21/sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(encoder_21/sampling/random_normal/stddev¡
6encoder_21/sampling/random_normal/RandomStandardNormalRandomStandardNormal0encoder_21/sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¥®ò28
6encoder_21/sampling/random_normal/RandomStandardNormal
%encoder_21/sampling/random_normal/mulMul?encoder_21/sampling/random_normal/RandomStandardNormal:output:01encoder_21/sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2'
%encoder_21/sampling/random_normal/mulä
!encoder_21/sampling/random_normalAdd)encoder_21/sampling/random_normal/mul:z:0/encoder_21/sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!encoder_21/sampling/random_normal{
encoder_21/sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
encoder_21/sampling/mul/x¶
encoder_21/sampling/mulMul"encoder_21/sampling/mul/x:output:0%encoder_21/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/sampling/mul
encoder_21/sampling/ExpExpencoder_21/sampling/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/sampling/Exp³
encoder_21/sampling/mul_1Mulencoder_21/sampling/Exp:y:0%encoder_21/sampling/random_normal:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/sampling/mul_1°
encoder_21/sampling/addAddV2"encoder_21/z_mean/BiasAdd:output:0encoder_21/sampling/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
encoder_21/sampling/add
IdentityIdentity"encoder_21/z_mean/BiasAdd:output:0:^encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp:^encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp:^encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp9^encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp8^encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp,^encoder_21/z_log_var/BiasAdd/ReadVariableOp+^encoder_21/z_log_var/MatMul/ReadVariableOp)^encoder_21/z_mean/BiasAdd/ReadVariableOp(^encoder_21/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity%encoder_21/z_log_var/BiasAdd:output:0:^encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp:^encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp:^encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp9^encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp8^encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp,^encoder_21/z_log_var/BiasAdd/ReadVariableOp+^encoder_21/z_log_var/MatMul/ReadVariableOp)^encoder_21/z_mean/BiasAdd/ReadVariableOp(^encoder_21/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1ý

Identity_2Identityencoder_21/sampling/add:z:0:^encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp:^encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp:^encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp9^encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp9^encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp8^encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp,^encoder_21/z_log_var/BiasAdd/ReadVariableOp+^encoder_21/z_log_var/MatMul/ReadVariableOp)^encoder_21/z_mean/BiasAdd/ReadVariableOp(^encoder_21/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ@@::::::::::::2v
9encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp9encoder_21/sequential_42/conv2d_63/BiasAdd/ReadVariableOp2t
8encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp8encoder_21/sequential_42/conv2d_63/Conv2D/ReadVariableOp2v
9encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp9encoder_21/sequential_42/conv2d_64/BiasAdd/ReadVariableOp2t
8encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp8encoder_21/sequential_42/conv2d_64/Conv2D/ReadVariableOp2v
9encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp9encoder_21/sequential_42/conv2d_65/BiasAdd/ReadVariableOp2t
8encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp8encoder_21/sequential_42/conv2d_65/Conv2D/ReadVariableOp2t
8encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp8encoder_21/sequential_42/dense_42/BiasAdd/ReadVariableOp2r
7encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp7encoder_21/sequential_42/dense_42/MatMul/ReadVariableOp2Z
+encoder_21/z_log_var/BiasAdd/ReadVariableOp+encoder_21/z_log_var/BiasAdd/ReadVariableOp2X
*encoder_21/z_log_var/MatMul/ReadVariableOp*encoder_21/z_log_var/MatMul/ReadVariableOp2T
(encoder_21/z_mean/BiasAdd/ReadVariableOp(encoder_21/z_mean/BiasAdd/ReadVariableOp2R
'encoder_21/z_mean/MatMul/ReadVariableOp'encoder_21/z_mean/MatMul/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
!
_user_specified_name	input_1
Â
b
F__inference_flatten_21_layer_call_and_return_conditional_losses_253967

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
º
Ý
.__inference_sequential_42_layer_call_fn_254763

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
I__inference_sequential_42_layer_call_and_return_conditional_losses_2540562
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
Ø

Þ
E__inference_conv2d_64_layer_call_and_return_conditional_losses_253918

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
ñ
¸
+__inference_encoder_21_layer_call_fn_254435
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_2543712
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
ß
²
+__inference_encoder_21_layer_call_fn_254674
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_2543712
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


*__inference_conv2d_63_layer_call_fn_254842

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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_2538912
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
	
Û
B__inference_z_mean_layer_call_and_return_conditional_losses_254794

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
ñ
¸
+__inference_encoder_21_layer_call_fn_254402
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_2543712
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

¥
I__inference_sequential_42_layer_call_and_return_conditional_losses_254056

inputs
conv2d_63_254034
conv2d_63_254036
conv2d_64_254039
conv2d_64_254041
conv2d_65_254044
conv2d_65_254046
dense_42_254050
dense_42_254052
identity¢!conv2d_63/StatefulPartitionedCall¢!conv2d_64/StatefulPartitionedCall¢!conv2d_65/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall¥
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_63_254034conv2d_63_254036*
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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_2538912#
!conv2d_63/StatefulPartitionedCallÉ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_254039conv2d_64_254041*
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
E__inference_conv2d_64_layer_call_and_return_conditional_losses_2539182#
!conv2d_64/StatefulPartitionedCallÉ
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_254044conv2d_65_254046*
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
E__inference_conv2d_65_layer_call_and_return_conditional_losses_2539452#
!conv2d_65/StatefulPartitionedCall
flatten_21/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
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
F__inference_flatten_21_layer_call_and_return_conditional_losses_2539672
flatten_21/PartitionedCall´
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_42_254050dense_42_254052*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_2539862"
 dense_42/StatefulPartitionedCall
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ@@::::::::2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
á

*__inference_z_log_var_layer_call_fn_254822

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
E__inference_z_log_var_layer_call_and_return_conditional_losses_2542202
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
_tf_keras_modelà{"class_name": "Encoder", "name": "encoder_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Encoder"}}
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
_tf_keras_sequential¬0{"class_name": "Sequential", "name": "sequential_42", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_42", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_43"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_42", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_43"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
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
_tf_keras_layer´{"class_name": "Conv2D", "name": "conv2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}}
÷	

 kernel
!bias
/regularization_losses
0trainable_variables
1	variables
2	keras_api
s__call__
*t&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
÷	

"kernel
#bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
u__call__
*v&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_65", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 128]}}
è
7regularization_losses
8trainable_variables
9	variables
:	keras_api
w__call__
*x&call_and_return_all_conditional_losses"Ù
_tf_keras_layer¿{"class_name": "Flatten", "name": "flatten_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ø

$kernel
%bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
y__call__
*z&call_and_return_all_conditional_losses"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32768}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32768]}}
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
*:(2encoder_21/z_mean/kernel
$:"2encoder_21/z_mean/bias
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
-:+2encoder_21/z_log_var/kernel
':%2encoder_21/z_log_var/bias
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
+:)2conv2d_63/kernel
:2conv2d_63/bias
,:*2conv2d_64/kernel
:2conv2d_64/bias
,:*2conv2d_65/kernel
:2conv2d_65/bias
#:!
2dense_42/kernel
:2dense_42/bias
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
!__inference__wrapped_model_253876¾
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
+__inference_encoder_21_layer_call_fn_254641
+__inference_encoder_21_layer_call_fn_254402
+__inference_encoder_21_layer_call_fn_254435
+__inference_encoder_21_layer_call_fn_254674®
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_254539
F__inference_encoder_21_layer_call_and_return_conditional_losses_254608
F__inference_encoder_21_layer_call_and_return_conditional_losses_254314
F__inference_encoder_21_layer_call_and_return_conditional_losses_254260®
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
.__inference_sequential_42_layer_call_fn_254784
.__inference_sequential_42_layer_call_fn_254763
.__inference_sequential_42_layer_call_fn_254075
.__inference_sequential_42_layer_call_fn_254121À
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_254708
I__inference_sequential_42_layer_call_and_return_conditional_losses_254742
I__inference_sequential_42_layer_call_and_return_conditional_losses_254003
I__inference_sequential_42_layer_call_and_return_conditional_losses_254028À
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
'__inference_z_mean_layer_call_fn_254803¢
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
B__inference_z_mean_layer_call_and_return_conditional_losses_254794¢
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
*__inference_z_log_var_layer_call_fn_254822¢
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
E__inference_z_log_var_layer_call_and_return_conditional_losses_254813¢
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
$__inference_signature_wrapper_254470input_1"
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
*__inference_conv2d_63_layer_call_fn_254842¢
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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_254833¢
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
*__inference_conv2d_64_layer_call_fn_254862¢
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
E__inference_conv2d_64_layer_call_and_return_conditional_losses_254853¢
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
*__inference_conv2d_65_layer_call_fn_254882¢
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
E__inference_conv2d_65_layer_call_and_return_conditional_losses_254873¢
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
+__inference_flatten_21_layer_call_fn_254893¢
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
F__inference_flatten_21_layer_call_and_return_conditional_losses_254888¢
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
)__inference_dense_42_layer_call_fn_254913¢
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
D__inference_dense_42_layer_call_and_return_conditional_losses_254904¢
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
!__inference__wrapped_model_253876ß !"#$%8¢5
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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_254833m7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
*__inference_conv2d_63_layer_call_fn_254842`7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª "!ÿÿÿÿÿÿÿÿÿ  ·
E__inference_conv2d_64_layer_call_and_return_conditional_losses_254853n !8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_64_layer_call_fn_254862a !8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ·
E__inference_conv2d_65_layer_call_and_return_conditional_losses_254873n"#8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_65_layer_call_fn_254882a"#8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¦
D__inference_dense_42_layer_call_and_return_conditional_losses_254904^$%1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
)__inference_dense_42_layer_call_fn_254913Q$%1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
F__inference_encoder_21_layer_call_and_return_conditional_losses_254260¸ !"#$%<¢9
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_254314¸ !"#$%<¢9
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_254539² !"#$%6¢3
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
F__inference_encoder_21_layer_call_and_return_conditional_losses_254608² !"#$%6¢3
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
+__inference_encoder_21_layer_call_fn_254402¨ !"#$%<¢9
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
+__inference_encoder_21_layer_call_fn_254435¨ !"#$%<¢9
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
+__inference_encoder_21_layer_call_fn_254641¢ !"#$%6¢3
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
+__inference_encoder_21_layer_call_fn_254674¢ !"#$%6¢3
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
F__inference_flatten_21_layer_call_and_return_conditional_losses_254888c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_flatten_21_layer_call_fn_254893V8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
I__inference_sequential_42_layer_call_and_return_conditional_losses_254003t !"#$%A¢>
7¢4
*'
input_43ÿÿÿÿÿÿÿÿÿ@@
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
I__inference_sequential_42_layer_call_and_return_conditional_losses_254028t !"#$%A¢>
7¢4
*'
input_43ÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
I__inference_sequential_42_layer_call_and_return_conditional_losses_254708r !"#$%?¢<
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_254742r !"#$%?¢<
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
.__inference_sequential_42_layer_call_fn_254075g !"#$%A¢>
7¢4
*'
input_43ÿÿÿÿÿÿÿÿÿ@@
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_42_layer_call_fn_254121g !"#$%A¢>
7¢4
*'
input_43ÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_42_layer_call_fn_254763e !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_42_layer_call_fn_254784e !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_signature_wrapper_254470ê !"#$%C¢@
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
E__inference_z_log_var_layer_call_and_return_conditional_losses_254813\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_z_log_var_layer_call_fn_254822O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
B__inference_z_mean_layer_call_and_return_conditional_losses_254794\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_z_mean_layer_call_fn_254803O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ