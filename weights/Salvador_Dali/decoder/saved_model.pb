??
??
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
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-0-g582c8d236cb8??	
|
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_41/kernel
u
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel* 
_output_shapes
:
??*
dtype0
t
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_namedense_41/bias
m
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes

:??*
dtype0
?
conv2d_transpose_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_nameconv2d_transpose_60/kernel
?
.conv2d_transpose_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_60/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_transpose_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_60/bias
?
,conv2d_transpose_60/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_60/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_61/kernel
?
.conv2d_transpose_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_61/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_61/bias
?
,conv2d_transpose_61/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_61/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_62/kernel
?
.conv2d_transpose_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_62/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_62/bias
?
,conv2d_transpose_62/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_62/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
m
	model
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?
layer_with_weights-0
layer-0
layer-1
	layer_with_weights-1
	layer-2

layer_with_weights-2

layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
	variables
	keras_api
 
8
0
1
2
3
4
5
6
7
8
0
1
2
3
4
5
6
7
?
regularization_losses
non_trainable_variables

layers
metrics
trainable_variables
layer_metrics
	variables
layer_regularization_losses
 
h

kernel
bias
regularization_losses
trainable_variables
	variables
 	keras_api
R
!regularization_losses
"trainable_variables
#	variables
$	keras_api
h

kernel
bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
h

kernel
bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
h

kernel
bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
 
8
0
1
2
3
4
5
6
7
8
0
1
2
3
4
5
6
7
?
regularization_losses
1non_trainable_variables

2layers
3metrics
trainable_variables
4layer_metrics
	variables
5layer_regularization_losses
US
VARIABLE_VALUEdense_41/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_41/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_60/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_60/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_61/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_61/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_62/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_62/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
 
 
 

0
1

0
1
?
regularization_losses
6non_trainable_variables

7layers
8metrics
trainable_variables
9layer_metrics
	variables
:layer_regularization_losses
 
 
 
?
!regularization_losses
;non_trainable_variables

<layers
=metrics
"trainable_variables
>layer_metrics
#	variables
?layer_regularization_losses
 

0
1

0
1
?
%regularization_losses
@non_trainable_variables

Alayers
Bmetrics
&trainable_variables
Clayer_metrics
'	variables
Dlayer_regularization_losses
 

0
1

0
1
?
)regularization_losses
Enon_trainable_variables

Flayers
Gmetrics
*trainable_variables
Hlayer_metrics
+	variables
Ilayer_regularization_losses
 

0
1

0
1
?
-regularization_losses
Jnon_trainable_variables

Klayers
Lmetrics
.trainable_variables
Mlayer_metrics
/	variables
Nlayer_regularization_losses
 
#
0
1
	2

3
4
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
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense_41/kerneldense_41/biasconv2d_transpose_60/kernelconv2d_transpose_60/biasconv2d_transpose_61/kernelconv2d_transpose_61/biasconv2d_transpose_62/kernelconv2d_transpose_62/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_244388
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOp.conv2d_transpose_60/kernel/Read/ReadVariableOp,conv2d_transpose_60/bias/Read/ReadVariableOp.conv2d_transpose_61/kernel/Read/ReadVariableOp,conv2d_transpose_61/bias/Read/ReadVariableOp.conv2d_transpose_62/kernel/Read/ReadVariableOp,conv2d_transpose_62/bias/Read/ReadVariableOpConst*
Tin
2
*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_244882
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_41/kerneldense_41/biasconv2d_transpose_60/kernelconv2d_transpose_60/biasconv2d_transpose_61/kernelconv2d_transpose_61/biasconv2d_transpose_62/kernelconv2d_transpose_62/bias*
Tin
2	*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_244916??	
?
?
4__inference_conv2d_transpose_60_layer_call_fn_243939

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_2439292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?

!__inference__wrapped_model_243894
input_1D
@decoder_20_sequential_41_dense_41_matmul_readvariableop_resourceE
Adecoder_20_sequential_41_dense_41_biasadd_readvariableop_resourceY
Udecoder_20_sequential_41_conv2d_transpose_60_conv2d_transpose_readvariableop_resourceP
Ldecoder_20_sequential_41_conv2d_transpose_60_biasadd_readvariableop_resourceY
Udecoder_20_sequential_41_conv2d_transpose_61_conv2d_transpose_readvariableop_resourceP
Ldecoder_20_sequential_41_conv2d_transpose_61_biasadd_readvariableop_resourceY
Udecoder_20_sequential_41_conv2d_transpose_62_conv2d_transpose_readvariableop_resourceP
Ldecoder_20_sequential_41_conv2d_transpose_62_biasadd_readvariableop_resource
identity??Cdecoder_20/sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp?Ldecoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp?Cdecoder_20/sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp?Ldecoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp?Cdecoder_20/sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp?Ldecoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp?8decoder_20/sequential_41/dense_41/BiasAdd/ReadVariableOp?7decoder_20/sequential_41/dense_41/MatMul/ReadVariableOp?
7decoder_20/sequential_41/dense_41/MatMul/ReadVariableOpReadVariableOp@decoder_20_sequential_41_dense_41_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7decoder_20/sequential_41/dense_41/MatMul/ReadVariableOp?
(decoder_20/sequential_41/dense_41/MatMulMatMulinput_1?decoder_20/sequential_41/dense_41/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2*
(decoder_20/sequential_41/dense_41/MatMul?
8decoder_20/sequential_41/dense_41/BiasAdd/ReadVariableOpReadVariableOpAdecoder_20_sequential_41_dense_41_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02:
8decoder_20/sequential_41/dense_41/BiasAdd/ReadVariableOp?
)decoder_20/sequential_41/dense_41/BiasAddBiasAdd2decoder_20/sequential_41/dense_41/MatMul:product:0@decoder_20/sequential_41/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2+
)decoder_20/sequential_41/dense_41/BiasAdd?
&decoder_20/sequential_41/dense_41/ReluRelu2decoder_20/sequential_41/dense_41/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2(
&decoder_20/sequential_41/dense_41/Relu?
)decoder_20/sequential_41/reshape_20/ShapeShape4decoder_20/sequential_41/dense_41/Relu:activations:0*
T0*
_output_shapes
:2+
)decoder_20/sequential_41/reshape_20/Shape?
7decoder_20/sequential_41/reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7decoder_20/sequential_41/reshape_20/strided_slice/stack?
9decoder_20/sequential_41/reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder_20/sequential_41/reshape_20/strided_slice/stack_1?
9decoder_20/sequential_41/reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder_20/sequential_41/reshape_20/strided_slice/stack_2?
1decoder_20/sequential_41/reshape_20/strided_sliceStridedSlice2decoder_20/sequential_41/reshape_20/Shape:output:0@decoder_20/sequential_41/reshape_20/strided_slice/stack:output:0Bdecoder_20/sequential_41/reshape_20/strided_slice/stack_1:output:0Bdecoder_20/sequential_41/reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder_20/sequential_41/reshape_20/strided_slice?
3decoder_20/sequential_41/reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3decoder_20/sequential_41/reshape_20/Reshape/shape/1?
3decoder_20/sequential_41/reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :25
3decoder_20/sequential_41/reshape_20/Reshape/shape/2?
3decoder_20/sequential_41/reshape_20/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@25
3decoder_20/sequential_41/reshape_20/Reshape/shape/3?
1decoder_20/sequential_41/reshape_20/Reshape/shapePack:decoder_20/sequential_41/reshape_20/strided_slice:output:0<decoder_20/sequential_41/reshape_20/Reshape/shape/1:output:0<decoder_20/sequential_41/reshape_20/Reshape/shape/2:output:0<decoder_20/sequential_41/reshape_20/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:23
1decoder_20/sequential_41/reshape_20/Reshape/shape?
+decoder_20/sequential_41/reshape_20/ReshapeReshape4decoder_20/sequential_41/dense_41/Relu:activations:0:decoder_20/sequential_41/reshape_20/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2-
+decoder_20/sequential_41/reshape_20/Reshape?
2decoder_20/sequential_41/conv2d_transpose_60/ShapeShape4decoder_20/sequential_41/reshape_20/Reshape:output:0*
T0*
_output_shapes
:24
2decoder_20/sequential_41/conv2d_transpose_60/Shape?
@decoder_20/sequential_41/conv2d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@decoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack?
Bdecoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack_1?
Bdecoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack_2?
:decoder_20/sequential_41/conv2d_transpose_60/strided_sliceStridedSlice;decoder_20/sequential_41/conv2d_transpose_60/Shape:output:0Idecoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack:output:0Kdecoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack_1:output:0Kdecoder_20/sequential_41/conv2d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:decoder_20/sequential_41/conv2d_transpose_60/strided_slice?
4decoder_20/sequential_41/conv2d_transpose_60/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 26
4decoder_20/sequential_41/conv2d_transpose_60/stack/1?
4decoder_20/sequential_41/conv2d_transpose_60/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 26
4decoder_20/sequential_41/conv2d_transpose_60/stack/2?
4decoder_20/sequential_41/conv2d_transpose_60/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@26
4decoder_20/sequential_41/conv2d_transpose_60/stack/3?
2decoder_20/sequential_41/conv2d_transpose_60/stackPackCdecoder_20/sequential_41/conv2d_transpose_60/strided_slice:output:0=decoder_20/sequential_41/conv2d_transpose_60/stack/1:output:0=decoder_20/sequential_41/conv2d_transpose_60/stack/2:output:0=decoder_20/sequential_41/conv2d_transpose_60/stack/3:output:0*
N*
T0*
_output_shapes
:24
2decoder_20/sequential_41/conv2d_transpose_60/stack?
Bdecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bdecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack?
Ddecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Ddecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack_1?
Ddecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Ddecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack_2?
<decoder_20/sequential_41/conv2d_transpose_60/strided_slice_1StridedSlice;decoder_20/sequential_41/conv2d_transpose_60/stack:output:0Kdecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack:output:0Mdecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack_1:output:0Mdecoder_20/sequential_41/conv2d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<decoder_20/sequential_41/conv2d_transpose_60/strided_slice_1?
Ldecoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOpReadVariableOpUdecoder_20_sequential_41_conv2d_transpose_60_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02N
Ldecoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp?
=decoder_20/sequential_41/conv2d_transpose_60/conv2d_transposeConv2DBackpropInput;decoder_20/sequential_41/conv2d_transpose_60/stack:output:0Tdecoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp:value:04decoder_20/sequential_41/reshape_20/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2?
=decoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose?
Cdecoder_20/sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOpReadVariableOpLdecoder_20_sequential_41_conv2d_transpose_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cdecoder_20/sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp?
4decoder_20/sequential_41/conv2d_transpose_60/BiasAddBiasAddFdecoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose:output:0Kdecoder_20/sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @26
4decoder_20/sequential_41/conv2d_transpose_60/BiasAdd?
1decoder_20/sequential_41/conv2d_transpose_60/ReluRelu=decoder_20/sequential_41/conv2d_transpose_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @23
1decoder_20/sequential_41/conv2d_transpose_60/Relu?
2decoder_20/sequential_41/conv2d_transpose_61/ShapeShape?decoder_20/sequential_41/conv2d_transpose_60/Relu:activations:0*
T0*
_output_shapes
:24
2decoder_20/sequential_41/conv2d_transpose_61/Shape?
@decoder_20/sequential_41/conv2d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@decoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack?
Bdecoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack_1?
Bdecoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack_2?
:decoder_20/sequential_41/conv2d_transpose_61/strided_sliceStridedSlice;decoder_20/sequential_41/conv2d_transpose_61/Shape:output:0Idecoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack:output:0Kdecoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack_1:output:0Kdecoder_20/sequential_41/conv2d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:decoder_20/sequential_41/conv2d_transpose_61/strided_slice?
4decoder_20/sequential_41/conv2d_transpose_61/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@26
4decoder_20/sequential_41/conv2d_transpose_61/stack/1?
4decoder_20/sequential_41/conv2d_transpose_61/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@26
4decoder_20/sequential_41/conv2d_transpose_61/stack/2?
4decoder_20/sequential_41/conv2d_transpose_61/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 26
4decoder_20/sequential_41/conv2d_transpose_61/stack/3?
2decoder_20/sequential_41/conv2d_transpose_61/stackPackCdecoder_20/sequential_41/conv2d_transpose_61/strided_slice:output:0=decoder_20/sequential_41/conv2d_transpose_61/stack/1:output:0=decoder_20/sequential_41/conv2d_transpose_61/stack/2:output:0=decoder_20/sequential_41/conv2d_transpose_61/stack/3:output:0*
N*
T0*
_output_shapes
:24
2decoder_20/sequential_41/conv2d_transpose_61/stack?
Bdecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bdecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack?
Ddecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Ddecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack_1?
Ddecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Ddecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack_2?
<decoder_20/sequential_41/conv2d_transpose_61/strided_slice_1StridedSlice;decoder_20/sequential_41/conv2d_transpose_61/stack:output:0Kdecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack:output:0Mdecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack_1:output:0Mdecoder_20/sequential_41/conv2d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<decoder_20/sequential_41/conv2d_transpose_61/strided_slice_1?
Ldecoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOpReadVariableOpUdecoder_20_sequential_41_conv2d_transpose_61_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02N
Ldecoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp?
=decoder_20/sequential_41/conv2d_transpose_61/conv2d_transposeConv2DBackpropInput;decoder_20/sequential_41/conv2d_transpose_61/stack:output:0Tdecoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp:value:0?decoder_20/sequential_41/conv2d_transpose_60/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2?
=decoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose?
Cdecoder_20/sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOpReadVariableOpLdecoder_20_sequential_41_conv2d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02E
Cdecoder_20/sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp?
4decoder_20/sequential_41/conv2d_transpose_61/BiasAddBiasAddFdecoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose:output:0Kdecoder_20/sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 26
4decoder_20/sequential_41/conv2d_transpose_61/BiasAdd?
1decoder_20/sequential_41/conv2d_transpose_61/ReluRelu=decoder_20/sequential_41/conv2d_transpose_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 23
1decoder_20/sequential_41/conv2d_transpose_61/Relu?
2decoder_20/sequential_41/conv2d_transpose_62/ShapeShape?decoder_20/sequential_41/conv2d_transpose_61/Relu:activations:0*
T0*
_output_shapes
:24
2decoder_20/sequential_41/conv2d_transpose_62/Shape?
@decoder_20/sequential_41/conv2d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@decoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack?
Bdecoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack_1?
Bdecoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack_2?
:decoder_20/sequential_41/conv2d_transpose_62/strided_sliceStridedSlice;decoder_20/sequential_41/conv2d_transpose_62/Shape:output:0Idecoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack:output:0Kdecoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack_1:output:0Kdecoder_20/sequential_41/conv2d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:decoder_20/sequential_41/conv2d_transpose_62/strided_slice?
4decoder_20/sequential_41/conv2d_transpose_62/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@26
4decoder_20/sequential_41/conv2d_transpose_62/stack/1?
4decoder_20/sequential_41/conv2d_transpose_62/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@26
4decoder_20/sequential_41/conv2d_transpose_62/stack/2?
4decoder_20/sequential_41/conv2d_transpose_62/stack/3Const*
_output_shapes
: *
dtype0*
value	B :26
4decoder_20/sequential_41/conv2d_transpose_62/stack/3?
2decoder_20/sequential_41/conv2d_transpose_62/stackPackCdecoder_20/sequential_41/conv2d_transpose_62/strided_slice:output:0=decoder_20/sequential_41/conv2d_transpose_62/stack/1:output:0=decoder_20/sequential_41/conv2d_transpose_62/stack/2:output:0=decoder_20/sequential_41/conv2d_transpose_62/stack/3:output:0*
N*
T0*
_output_shapes
:24
2decoder_20/sequential_41/conv2d_transpose_62/stack?
Bdecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bdecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack?
Ddecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Ddecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack_1?
Ddecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Ddecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack_2?
<decoder_20/sequential_41/conv2d_transpose_62/strided_slice_1StridedSlice;decoder_20/sequential_41/conv2d_transpose_62/stack:output:0Kdecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack:output:0Mdecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack_1:output:0Mdecoder_20/sequential_41/conv2d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<decoder_20/sequential_41/conv2d_transpose_62/strided_slice_1?
Ldecoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOpReadVariableOpUdecoder_20_sequential_41_conv2d_transpose_62_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02N
Ldecoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp?
=decoder_20/sequential_41/conv2d_transpose_62/conv2d_transposeConv2DBackpropInput;decoder_20/sequential_41/conv2d_transpose_62/stack:output:0Tdecoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp:value:0?decoder_20/sequential_41/conv2d_transpose_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2?
=decoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose?
Cdecoder_20/sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOpReadVariableOpLdecoder_20_sequential_41_conv2d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02E
Cdecoder_20/sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp?
4decoder_20/sequential_41/conv2d_transpose_62/BiasAddBiasAddFdecoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose:output:0Kdecoder_20/sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@26
4decoder_20/sequential_41/conv2d_transpose_62/BiasAdd?
4decoder_20/sequential_41/conv2d_transpose_62/SigmoidSigmoid=decoder_20/sequential_41/conv2d_transpose_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@26
4decoder_20/sequential_41/conv2d_transpose_62/Sigmoid?
IdentityIdentity8decoder_20/sequential_41/conv2d_transpose_62/Sigmoid:y:0D^decoder_20/sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOpM^decoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOpD^decoder_20/sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOpM^decoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOpD^decoder_20/sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOpM^decoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp9^decoder_20/sequential_41/dense_41/BiasAdd/ReadVariableOp8^decoder_20/sequential_41/dense_41/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2?
Cdecoder_20/sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOpCdecoder_20/sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp2?
Ldecoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOpLdecoder_20/sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp2?
Cdecoder_20/sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOpCdecoder_20/sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp2?
Ldecoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOpLdecoder_20/sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp2?
Cdecoder_20/sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOpCdecoder_20/sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp2?
Ldecoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOpLdecoder_20/sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp2t
8decoder_20/sequential_41/dense_41/BiasAdd/ReadVariableOp8decoder_20/sequential_41/dense_41/BiasAdd/ReadVariableOp2r
7decoder_20/sequential_41/dense_41/MatMul/ReadVariableOp7decoder_20/sequential_41/dense_41/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
$__inference_signature_wrapper_244388
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_2438942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?	
?
D__inference_dense_41_layer_call_and_return_conditional_losses_244044

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:??*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2	
BiasAddZ
ReluReluBiasAdd:output:0*
T0*)
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244469
x9
5sequential_41_dense_41_matmul_readvariableop_resource:
6sequential_41_dense_41_biasadd_readvariableop_resourceN
Jsequential_41_conv2d_transpose_60_conv2d_transpose_readvariableop_resourceE
Asequential_41_conv2d_transpose_60_biasadd_readvariableop_resourceN
Jsequential_41_conv2d_transpose_61_conv2d_transpose_readvariableop_resourceE
Asequential_41_conv2d_transpose_61_biasadd_readvariableop_resourceN
Jsequential_41_conv2d_transpose_62_conv2d_transpose_readvariableop_resourceE
Asequential_41_conv2d_transpose_62_biasadd_readvariableop_resource
identity??8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp?Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp?8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp?Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp?8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp?Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp?-sequential_41/dense_41/BiasAdd/ReadVariableOp?,sequential_41/dense_41/MatMul/ReadVariableOp?
,sequential_41/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_41_dense_41_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_41/dense_41/MatMul/ReadVariableOp?
sequential_41/dense_41/MatMulMatMulx4sequential_41/dense_41/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_41/dense_41/MatMul?
-sequential_41/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_41_dense_41_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02/
-sequential_41/dense_41/BiasAdd/ReadVariableOp?
sequential_41/dense_41/BiasAddBiasAdd'sequential_41/dense_41/MatMul:product:05sequential_41/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2 
sequential_41/dense_41/BiasAdd?
sequential_41/dense_41/ReluRelu'sequential_41/dense_41/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_41/dense_41/Relu?
sequential_41/reshape_20/ShapeShape)sequential_41/dense_41/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_41/reshape_20/Shape?
,sequential_41/reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_41/reshape_20/strided_slice/stack?
.sequential_41/reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_41/reshape_20/strided_slice/stack_1?
.sequential_41/reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_41/reshape_20/strided_slice/stack_2?
&sequential_41/reshape_20/strided_sliceStridedSlice'sequential_41/reshape_20/Shape:output:05sequential_41/reshape_20/strided_slice/stack:output:07sequential_41/reshape_20/strided_slice/stack_1:output:07sequential_41/reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_41/reshape_20/strided_slice?
(sequential_41/reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_41/reshape_20/Reshape/shape/1?
(sequential_41/reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_41/reshape_20/Reshape/shape/2?
(sequential_41/reshape_20/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_41/reshape_20/Reshape/shape/3?
&sequential_41/reshape_20/Reshape/shapePack/sequential_41/reshape_20/strided_slice:output:01sequential_41/reshape_20/Reshape/shape/1:output:01sequential_41/reshape_20/Reshape/shape/2:output:01sequential_41/reshape_20/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_41/reshape_20/Reshape/shape?
 sequential_41/reshape_20/ReshapeReshape)sequential_41/dense_41/Relu:activations:0/sequential_41/reshape_20/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_41/reshape_20/Reshape?
'sequential_41/conv2d_transpose_60/ShapeShape)sequential_41/reshape_20/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_60/Shape?
5sequential_41/conv2d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_41/conv2d_transpose_60/strided_slice/stack?
7sequential_41/conv2d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_60/strided_slice/stack_1?
7sequential_41/conv2d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_60/strided_slice/stack_2?
/sequential_41/conv2d_transpose_60/strided_sliceStridedSlice0sequential_41/conv2d_transpose_60/Shape:output:0>sequential_41/conv2d_transpose_60/strided_slice/stack:output:0@sequential_41/conv2d_transpose_60/strided_slice/stack_1:output:0@sequential_41/conv2d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_41/conv2d_transpose_60/strided_slice?
)sequential_41/conv2d_transpose_60/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_41/conv2d_transpose_60/stack/1?
)sequential_41/conv2d_transpose_60/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_41/conv2d_transpose_60/stack/2?
)sequential_41/conv2d_transpose_60/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_60/stack/3?
'sequential_41/conv2d_transpose_60/stackPack8sequential_41/conv2d_transpose_60/strided_slice:output:02sequential_41/conv2d_transpose_60/stack/1:output:02sequential_41/conv2d_transpose_60/stack/2:output:02sequential_41/conv2d_transpose_60/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_60/stack?
7sequential_41/conv2d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_41/conv2d_transpose_60/strided_slice_1/stack?
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_1?
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_2?
1sequential_41/conv2d_transpose_60/strided_slice_1StridedSlice0sequential_41/conv2d_transpose_60/stack:output:0@sequential_41/conv2d_transpose_60/strided_slice_1/stack:output:0Bsequential_41/conv2d_transpose_60/strided_slice_1/stack_1:output:0Bsequential_41/conv2d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_41/conv2d_transpose_60/strided_slice_1?
Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_41_conv2d_transpose_60_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp?
2sequential_41/conv2d_transpose_60/conv2d_transposeConv2DBackpropInput0sequential_41/conv2d_transpose_60/stack:output:0Isequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp:value:0)sequential_41/reshape_20/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
24
2sequential_41/conv2d_transpose_60/conv2d_transpose?
8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOpReadVariableOpAsequential_41_conv2d_transpose_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp?
)sequential_41/conv2d_transpose_60/BiasAddBiasAdd;sequential_41/conv2d_transpose_60/conv2d_transpose:output:0@sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2+
)sequential_41/conv2d_transpose_60/BiasAdd?
&sequential_41/conv2d_transpose_60/ReluRelu2sequential_41/conv2d_transpose_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2(
&sequential_41/conv2d_transpose_60/Relu?
'sequential_41/conv2d_transpose_61/ShapeShape4sequential_41/conv2d_transpose_60/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_61/Shape?
5sequential_41/conv2d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_41/conv2d_transpose_61/strided_slice/stack?
7sequential_41/conv2d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_61/strided_slice/stack_1?
7sequential_41/conv2d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_61/strided_slice/stack_2?
/sequential_41/conv2d_transpose_61/strided_sliceStridedSlice0sequential_41/conv2d_transpose_61/Shape:output:0>sequential_41/conv2d_transpose_61/strided_slice/stack:output:0@sequential_41/conv2d_transpose_61/strided_slice/stack_1:output:0@sequential_41/conv2d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_41/conv2d_transpose_61/strided_slice?
)sequential_41/conv2d_transpose_61/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_61/stack/1?
)sequential_41/conv2d_transpose_61/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_61/stack/2?
)sequential_41/conv2d_transpose_61/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_41/conv2d_transpose_61/stack/3?
'sequential_41/conv2d_transpose_61/stackPack8sequential_41/conv2d_transpose_61/strided_slice:output:02sequential_41/conv2d_transpose_61/stack/1:output:02sequential_41/conv2d_transpose_61/stack/2:output:02sequential_41/conv2d_transpose_61/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_61/stack?
7sequential_41/conv2d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_41/conv2d_transpose_61/strided_slice_1/stack?
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_1?
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_2?
1sequential_41/conv2d_transpose_61/strided_slice_1StridedSlice0sequential_41/conv2d_transpose_61/stack:output:0@sequential_41/conv2d_transpose_61/strided_slice_1/stack:output:0Bsequential_41/conv2d_transpose_61/strided_slice_1/stack_1:output:0Bsequential_41/conv2d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_41/conv2d_transpose_61/strided_slice_1?
Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_41_conv2d_transpose_61_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp?
2sequential_41/conv2d_transpose_61/conv2d_transposeConv2DBackpropInput0sequential_41/conv2d_transpose_61/stack:output:0Isequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp:value:04sequential_41/conv2d_transpose_60/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
24
2sequential_41/conv2d_transpose_61/conv2d_transpose?
8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOpReadVariableOpAsequential_41_conv2d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp?
)sequential_41/conv2d_transpose_61/BiasAddBiasAdd;sequential_41/conv2d_transpose_61/conv2d_transpose:output:0@sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2+
)sequential_41/conv2d_transpose_61/BiasAdd?
&sequential_41/conv2d_transpose_61/ReluRelu2sequential_41/conv2d_transpose_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2(
&sequential_41/conv2d_transpose_61/Relu?
'sequential_41/conv2d_transpose_62/ShapeShape4sequential_41/conv2d_transpose_61/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_62/Shape?
5sequential_41/conv2d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_41/conv2d_transpose_62/strided_slice/stack?
7sequential_41/conv2d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_62/strided_slice/stack_1?
7sequential_41/conv2d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_62/strided_slice/stack_2?
/sequential_41/conv2d_transpose_62/strided_sliceStridedSlice0sequential_41/conv2d_transpose_62/Shape:output:0>sequential_41/conv2d_transpose_62/strided_slice/stack:output:0@sequential_41/conv2d_transpose_62/strided_slice/stack_1:output:0@sequential_41/conv2d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_41/conv2d_transpose_62/strided_slice?
)sequential_41/conv2d_transpose_62/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_62/stack/1?
)sequential_41/conv2d_transpose_62/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_62/stack/2?
)sequential_41/conv2d_transpose_62/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_41/conv2d_transpose_62/stack/3?
'sequential_41/conv2d_transpose_62/stackPack8sequential_41/conv2d_transpose_62/strided_slice:output:02sequential_41/conv2d_transpose_62/stack/1:output:02sequential_41/conv2d_transpose_62/stack/2:output:02sequential_41/conv2d_transpose_62/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_62/stack?
7sequential_41/conv2d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_41/conv2d_transpose_62/strided_slice_1/stack?
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_1?
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_2?
1sequential_41/conv2d_transpose_62/strided_slice_1StridedSlice0sequential_41/conv2d_transpose_62/stack:output:0@sequential_41/conv2d_transpose_62/strided_slice_1/stack:output:0Bsequential_41/conv2d_transpose_62/strided_slice_1/stack_1:output:0Bsequential_41/conv2d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_41/conv2d_transpose_62/strided_slice_1?
Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_41_conv2d_transpose_62_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp?
2sequential_41/conv2d_transpose_62/conv2d_transposeConv2DBackpropInput0sequential_41/conv2d_transpose_62/stack:output:0Isequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp:value:04sequential_41/conv2d_transpose_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
24
2sequential_41/conv2d_transpose_62/conv2d_transpose?
8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOpReadVariableOpAsequential_41_conv2d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp?
)sequential_41/conv2d_transpose_62/BiasAddBiasAdd;sequential_41/conv2d_transpose_62/conv2d_transpose:output:0@sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2+
)sequential_41/conv2d_transpose_62/BiasAdd?
)sequential_41/conv2d_transpose_62/SigmoidSigmoid2sequential_41/conv2d_transpose_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2+
)sequential_41/conv2d_transpose_62/Sigmoid?
IdentityIdentity-sequential_41/conv2d_transpose_62/Sigmoid:y:09^sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOpB^sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp9^sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOpB^sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp9^sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOpB^sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp.^sequential_41/dense_41/BiasAdd/ReadVariableOp-^sequential_41/dense_41/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2t
8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp2?
Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOpAsequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp2t
8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp2?
Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOpAsequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp2t
8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp2?
Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOpAsequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp2^
-sequential_41/dense_41/BiasAdd/ReadVariableOp-sequential_41/dense_41/BiasAdd/ReadVariableOp2\
,sequential_41/dense_41/MatMul/ReadVariableOp,sequential_41/dense_41/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
+__inference_decoder_20_layer_call_fn_244592
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_20_layer_call_and_return_conditional_losses_2443252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
b
F__inference_reshape_20_layer_call_and_return_conditional_losses_244074

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????@2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244151

inputs
dense_41_244129
dense_41_244131
conv2d_transpose_60_244135
conv2d_transpose_60_244137
conv2d_transpose_61_244140
conv2d_transpose_61_244142
conv2d_transpose_62_244145
conv2d_transpose_62_244147
identity??+conv2d_transpose_60/StatefulPartitionedCall?+conv2d_transpose_61/StatefulPartitionedCall?+conv2d_transpose_62/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCallinputsdense_41_244129dense_41_244131*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_2440442"
 dense_41/StatefulPartitionedCall?
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_2440742
reshape_20/PartitionedCall?
+conv2d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0conv2d_transpose_60_244135conv2d_transpose_60_244137*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_2439292-
+conv2d_transpose_60/StatefulPartitionedCall?
+conv2d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_60/StatefulPartitionedCall:output:0conv2d_transpose_61_244140conv2d_transpose_61_244142*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_2439742-
+conv2d_transpose_61/StatefulPartitionedCall?
+conv2d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_61/StatefulPartitionedCall:output:0conv2d_transpose_62_244145conv2d_transpose_62_244147*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_2440192-
+conv2d_transpose_62/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_62/StatefulPartitionedCall:output:0,^conv2d_transpose_60/StatefulPartitionedCall,^conv2d_transpose_61/StatefulPartitionedCall,^conv2d_transpose_62/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_60/StatefulPartitionedCall+conv2d_transpose_60/StatefulPartitionedCall2Z
+conv2d_transpose_61/StatefulPartitionedCall+conv2d_transpose_61/StatefulPartitionedCall2Z
+conv2d_transpose_62/StatefulPartitionedCall+conv2d_transpose_62/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__traced_save_244882
file_prefix.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop9
5savev2_conv2d_transpose_60_kernel_read_readvariableop7
3savev2_conv2d_transpose_60_bias_read_readvariableop9
5savev2_conv2d_transpose_61_kernel_read_readvariableop7
3savev2_conv2d_transpose_61_bias_read_readvariableop9
5savev2_conv2d_transpose_62_kernel_read_readvariableop7
3savev2_conv2d_transpose_62_bias_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop5savev2_conv2d_transpose_60_kernel_read_readvariableop3savev2_conv2d_transpose_60_bias_read_readvariableop5savev2_conv2d_transpose_61_kernel_read_readvariableop3savev2_conv2d_transpose_61_bias_read_readvariableop5savev2_conv2d_transpose_62_kernel_read_readvariableop3savev2_conv2d_transpose_62_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*s
_input_shapesb
`: :
??:??:@@:@: @: : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:"

_output_shapes

:??:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::	

_output_shapes
: 
?z
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244754

inputs+
'dense_41_matmul_readvariableop_resource,
(dense_41_biasadd_readvariableop_resource@
<conv2d_transpose_60_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_60_biasadd_readvariableop_resource@
<conv2d_transpose_61_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_61_biasadd_readvariableop_resource@
<conv2d_transpose_62_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_62_biasadd_readvariableop_resource
identity??*conv2d_transpose_60/BiasAdd/ReadVariableOp?3conv2d_transpose_60/conv2d_transpose/ReadVariableOp?*conv2d_transpose_61/BiasAdd/ReadVariableOp?3conv2d_transpose_61/conv2d_transpose/ReadVariableOp?*conv2d_transpose_62/BiasAdd/ReadVariableOp?3conv2d_transpose_62/conv2d_transpose/ReadVariableOp?dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_41/MatMul/ReadVariableOp?
dense_41/MatMulMatMulinputs&dense_41/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_41/MatMul?
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_41/BiasAdd/ReadVariableOp?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_41/BiasAddu
dense_41/ReluReludense_41/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_41/Reluo
reshape_20/ShapeShapedense_41/Relu:activations:0*
T0*
_output_shapes
:2
reshape_20/Shape?
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack?
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1?
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2?
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/1z
reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/2z
reshape_20/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_20/Reshape/shape/3?
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0#reshape_20/Reshape/shape/2:output:0#reshape_20/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape?
reshape_20/ReshapeReshapedense_41/Relu:activations:0!reshape_20/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2
reshape_20/Reshape?
conv2d_transpose_60/ShapeShapereshape_20/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_60/Shape?
'conv2d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_60/strided_slice/stack?
)conv2d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_60/strided_slice/stack_1?
)conv2d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_60/strided_slice/stack_2?
!conv2d_transpose_60/strided_sliceStridedSlice"conv2d_transpose_60/Shape:output:00conv2d_transpose_60/strided_slice/stack:output:02conv2d_transpose_60/strided_slice/stack_1:output:02conv2d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_60/strided_slice|
conv2d_transpose_60/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_60/stack/1|
conv2d_transpose_60/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_60/stack/2|
conv2d_transpose_60/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_60/stack/3?
conv2d_transpose_60/stackPack*conv2d_transpose_60/strided_slice:output:0$conv2d_transpose_60/stack/1:output:0$conv2d_transpose_60/stack/2:output:0$conv2d_transpose_60/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_60/stack?
)conv2d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_60/strided_slice_1/stack?
+conv2d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_60/strided_slice_1/stack_1?
+conv2d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_60/strided_slice_1/stack_2?
#conv2d_transpose_60/strided_slice_1StridedSlice"conv2d_transpose_60/stack:output:02conv2d_transpose_60/strided_slice_1/stack:output:04conv2d_transpose_60/strided_slice_1/stack_1:output:04conv2d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_60/strided_slice_1?
3conv2d_transpose_60/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_60_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_60/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_60/conv2d_transposeConv2DBackpropInput"conv2d_transpose_60/stack:output:0;conv2d_transpose_60/conv2d_transpose/ReadVariableOp:value:0reshape_20/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2&
$conv2d_transpose_60/conv2d_transpose?
*conv2d_transpose_60/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_60/BiasAdd/ReadVariableOp?
conv2d_transpose_60/BiasAddBiasAdd-conv2d_transpose_60/conv2d_transpose:output:02conv2d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_60/BiasAdd?
conv2d_transpose_60/ReluRelu$conv2d_transpose_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_60/Relu?
conv2d_transpose_61/ShapeShape&conv2d_transpose_60/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_61/Shape?
'conv2d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_61/strided_slice/stack?
)conv2d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_61/strided_slice/stack_1?
)conv2d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_61/strided_slice/stack_2?
!conv2d_transpose_61/strided_sliceStridedSlice"conv2d_transpose_61/Shape:output:00conv2d_transpose_61/strided_slice/stack:output:02conv2d_transpose_61/strided_slice/stack_1:output:02conv2d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_61/strided_slice|
conv2d_transpose_61/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_61/stack/1|
conv2d_transpose_61/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_61/stack/2|
conv2d_transpose_61/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_61/stack/3?
conv2d_transpose_61/stackPack*conv2d_transpose_61/strided_slice:output:0$conv2d_transpose_61/stack/1:output:0$conv2d_transpose_61/stack/2:output:0$conv2d_transpose_61/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_61/stack?
)conv2d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_61/strided_slice_1/stack?
+conv2d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_61/strided_slice_1/stack_1?
+conv2d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_61/strided_slice_1/stack_2?
#conv2d_transpose_61/strided_slice_1StridedSlice"conv2d_transpose_61/stack:output:02conv2d_transpose_61/strided_slice_1/stack:output:04conv2d_transpose_61/strided_slice_1/stack_1:output:04conv2d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_61/strided_slice_1?
3conv2d_transpose_61/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_61_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_61/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_61/conv2d_transposeConv2DBackpropInput"conv2d_transpose_61/stack:output:0;conv2d_transpose_61/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_60/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2&
$conv2d_transpose_61/conv2d_transpose?
*conv2d_transpose_61/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_61/BiasAdd/ReadVariableOp?
conv2d_transpose_61/BiasAddBiasAdd-conv2d_transpose_61/conv2d_transpose:output:02conv2d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_61/BiasAdd?
conv2d_transpose_61/ReluRelu$conv2d_transpose_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_61/Relu?
conv2d_transpose_62/ShapeShape&conv2d_transpose_61/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_62/Shape?
'conv2d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_62/strided_slice/stack?
)conv2d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_62/strided_slice/stack_1?
)conv2d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_62/strided_slice/stack_2?
!conv2d_transpose_62/strided_sliceStridedSlice"conv2d_transpose_62/Shape:output:00conv2d_transpose_62/strided_slice/stack:output:02conv2d_transpose_62/strided_slice/stack_1:output:02conv2d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_62/strided_slice|
conv2d_transpose_62/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_62/stack/1|
conv2d_transpose_62/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_62/stack/2|
conv2d_transpose_62/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_62/stack/3?
conv2d_transpose_62/stackPack*conv2d_transpose_62/strided_slice:output:0$conv2d_transpose_62/stack/1:output:0$conv2d_transpose_62/stack/2:output:0$conv2d_transpose_62/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_62/stack?
)conv2d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_62/strided_slice_1/stack?
+conv2d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_62/strided_slice_1/stack_1?
+conv2d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_62/strided_slice_1/stack_2?
#conv2d_transpose_62/strided_slice_1StridedSlice"conv2d_transpose_62/stack:output:02conv2d_transpose_62/strided_slice_1/stack:output:04conv2d_transpose_62/strided_slice_1/stack_1:output:04conv2d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_62/strided_slice_1?
3conv2d_transpose_62/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_62_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_62/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_62/conv2d_transposeConv2DBackpropInput"conv2d_transpose_62/stack:output:0;conv2d_transpose_62/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2&
$conv2d_transpose_62/conv2d_transpose?
*conv2d_transpose_62/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_62/BiasAdd/ReadVariableOp?
conv2d_transpose_62/BiasAddBiasAdd-conv2d_transpose_62/conv2d_transpose:output:02conv2d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_62/BiasAdd?
conv2d_transpose_62/SigmoidSigmoid$conv2d_transpose_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_62/Sigmoid?
IdentityIdentityconv2d_transpose_62/Sigmoid:y:0+^conv2d_transpose_60/BiasAdd/ReadVariableOp4^conv2d_transpose_60/conv2d_transpose/ReadVariableOp+^conv2d_transpose_61/BiasAdd/ReadVariableOp4^conv2d_transpose_61/conv2d_transpose/ReadVariableOp+^conv2d_transpose_62/BiasAdd/ReadVariableOp4^conv2d_transpose_62/conv2d_transpose/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2X
*conv2d_transpose_60/BiasAdd/ReadVariableOp*conv2d_transpose_60/BiasAdd/ReadVariableOp2j
3conv2d_transpose_60/conv2d_transpose/ReadVariableOp3conv2d_transpose_60/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_61/BiasAdd/ReadVariableOp*conv2d_transpose_61/BiasAdd/ReadVariableOp2j
3conv2d_transpose_61/conv2d_transpose/ReadVariableOp3conv2d_transpose_61/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_62/BiasAdd/ReadVariableOp*conv2d_transpose_62/BiasAdd/ReadVariableOp2j
3conv2d_transpose_62/conv2d_transpose/ReadVariableOp3conv2d_transpose_62/conv2d_transpose/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244280
input_1
sequential_41_244262
sequential_41_244264
sequential_41_244266
sequential_41_244268
sequential_41_244270
sequential_41_244272
sequential_41_244274
sequential_41_244276
identity??%sequential_41/StatefulPartitionedCall?
%sequential_41/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_41_244262sequential_41_244264sequential_41_244266sequential_41_244268sequential_41_244270sequential_41_244272sequential_41_244274sequential_41_244276*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_2441512'
%sequential_41/StatefulPartitionedCall?
IdentityIdentity.sequential_41/StatefulPartitionedCall:output:0&^sequential_41/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2N
%sequential_41/StatefulPartitionedCall%sequential_41/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
b
F__inference_reshape_20_layer_call_and_return_conditional_losses_244830

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????@2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244325
x
sequential_41_244307
sequential_41_244309
sequential_41_244311
sequential_41_244313
sequential_41_244315
sequential_41_244317
sequential_41_244319
sequential_41_244321
identity??%sequential_41/StatefulPartitionedCall?
%sequential_41/StatefulPartitionedCallStatefulPartitionedCallxsequential_41_244307sequential_41_244309sequential_41_244311sequential_41_244313sequential_41_244315sequential_41_244317sequential_41_244319sequential_41_244321*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_2441972'
%sequential_41/StatefulPartitionedCall?
IdentityIdentity.sequential_41/StatefulPartitionedCall:output:0&^sequential_41/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2N
%sequential_41/StatefulPartitionedCall%sequential_41/StatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?$
?
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_243974

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
~
)__inference_dense_41_layer_call_fn_244816

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_2440442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244123
input_42
dense_41_244101
dense_41_244103
conv2d_transpose_60_244107
conv2d_transpose_60_244109
conv2d_transpose_61_244112
conv2d_transpose_61_244114
conv2d_transpose_62_244117
conv2d_transpose_62_244119
identity??+conv2d_transpose_60/StatefulPartitionedCall?+conv2d_transpose_61/StatefulPartitionedCall?+conv2d_transpose_62/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCallinput_42dense_41_244101dense_41_244103*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_2440442"
 dense_41/StatefulPartitionedCall?
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_2440742
reshape_20/PartitionedCall?
+conv2d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0conv2d_transpose_60_244107conv2d_transpose_60_244109*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_2439292-
+conv2d_transpose_60/StatefulPartitionedCall?
+conv2d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_60/StatefulPartitionedCall:output:0conv2d_transpose_61_244112conv2d_transpose_61_244114*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_2439742-
+conv2d_transpose_61/StatefulPartitionedCall?
+conv2d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_61/StatefulPartitionedCall:output:0conv2d_transpose_62_244117conv2d_transpose_62_244119*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_2440192-
+conv2d_transpose_62/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_62/StatefulPartitionedCall:output:0,^conv2d_transpose_60/StatefulPartitionedCall,^conv2d_transpose_61/StatefulPartitionedCall,^conv2d_transpose_62/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_60/StatefulPartitionedCall+conv2d_transpose_60/StatefulPartitionedCall2Z
+conv2d_transpose_61/StatefulPartitionedCall+conv2d_transpose_61/StatefulPartitionedCall2Z
+conv2d_transpose_62/StatefulPartitionedCall+conv2d_transpose_62/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_42
?
?
+__inference_decoder_20_layer_call_fn_244344
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_20_layer_call_and_return_conditional_losses_2443252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
.__inference_sequential_41_layer_call_fn_244170
input_42
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_42unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_2441512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_42
?
?
4__inference_conv2d_transpose_61_layer_call_fn_243984

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_2439742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
.__inference_sequential_41_layer_call_fn_244216
input_42
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_42unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_2441972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_42
?
?
4__inference_conv2d_transpose_62_layer_call_fn_244029

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_2440192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_decoder_20_layer_call_fn_244365
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_20_layer_call_and_return_conditional_losses_2443252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?$
?
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_243929

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244550
x9
5sequential_41_dense_41_matmul_readvariableop_resource:
6sequential_41_dense_41_biasadd_readvariableop_resourceN
Jsequential_41_conv2d_transpose_60_conv2d_transpose_readvariableop_resourceE
Asequential_41_conv2d_transpose_60_biasadd_readvariableop_resourceN
Jsequential_41_conv2d_transpose_61_conv2d_transpose_readvariableop_resourceE
Asequential_41_conv2d_transpose_61_biasadd_readvariableop_resourceN
Jsequential_41_conv2d_transpose_62_conv2d_transpose_readvariableop_resourceE
Asequential_41_conv2d_transpose_62_biasadd_readvariableop_resource
identity??8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp?Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp?8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp?Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp?8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp?Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp?-sequential_41/dense_41/BiasAdd/ReadVariableOp?,sequential_41/dense_41/MatMul/ReadVariableOp?
,sequential_41/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_41_dense_41_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_41/dense_41/MatMul/ReadVariableOp?
sequential_41/dense_41/MatMulMatMulx4sequential_41/dense_41/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_41/dense_41/MatMul?
-sequential_41/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_41_dense_41_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02/
-sequential_41/dense_41/BiasAdd/ReadVariableOp?
sequential_41/dense_41/BiasAddBiasAdd'sequential_41/dense_41/MatMul:product:05sequential_41/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2 
sequential_41/dense_41/BiasAdd?
sequential_41/dense_41/ReluRelu'sequential_41/dense_41/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_41/dense_41/Relu?
sequential_41/reshape_20/ShapeShape)sequential_41/dense_41/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_41/reshape_20/Shape?
,sequential_41/reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_41/reshape_20/strided_slice/stack?
.sequential_41/reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_41/reshape_20/strided_slice/stack_1?
.sequential_41/reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_41/reshape_20/strided_slice/stack_2?
&sequential_41/reshape_20/strided_sliceStridedSlice'sequential_41/reshape_20/Shape:output:05sequential_41/reshape_20/strided_slice/stack:output:07sequential_41/reshape_20/strided_slice/stack_1:output:07sequential_41/reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_41/reshape_20/strided_slice?
(sequential_41/reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_41/reshape_20/Reshape/shape/1?
(sequential_41/reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_41/reshape_20/Reshape/shape/2?
(sequential_41/reshape_20/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_41/reshape_20/Reshape/shape/3?
&sequential_41/reshape_20/Reshape/shapePack/sequential_41/reshape_20/strided_slice:output:01sequential_41/reshape_20/Reshape/shape/1:output:01sequential_41/reshape_20/Reshape/shape/2:output:01sequential_41/reshape_20/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_41/reshape_20/Reshape/shape?
 sequential_41/reshape_20/ReshapeReshape)sequential_41/dense_41/Relu:activations:0/sequential_41/reshape_20/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_41/reshape_20/Reshape?
'sequential_41/conv2d_transpose_60/ShapeShape)sequential_41/reshape_20/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_60/Shape?
5sequential_41/conv2d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_41/conv2d_transpose_60/strided_slice/stack?
7sequential_41/conv2d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_60/strided_slice/stack_1?
7sequential_41/conv2d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_60/strided_slice/stack_2?
/sequential_41/conv2d_transpose_60/strided_sliceStridedSlice0sequential_41/conv2d_transpose_60/Shape:output:0>sequential_41/conv2d_transpose_60/strided_slice/stack:output:0@sequential_41/conv2d_transpose_60/strided_slice/stack_1:output:0@sequential_41/conv2d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_41/conv2d_transpose_60/strided_slice?
)sequential_41/conv2d_transpose_60/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_41/conv2d_transpose_60/stack/1?
)sequential_41/conv2d_transpose_60/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_41/conv2d_transpose_60/stack/2?
)sequential_41/conv2d_transpose_60/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_60/stack/3?
'sequential_41/conv2d_transpose_60/stackPack8sequential_41/conv2d_transpose_60/strided_slice:output:02sequential_41/conv2d_transpose_60/stack/1:output:02sequential_41/conv2d_transpose_60/stack/2:output:02sequential_41/conv2d_transpose_60/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_60/stack?
7sequential_41/conv2d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_41/conv2d_transpose_60/strided_slice_1/stack?
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_1?
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_60/strided_slice_1/stack_2?
1sequential_41/conv2d_transpose_60/strided_slice_1StridedSlice0sequential_41/conv2d_transpose_60/stack:output:0@sequential_41/conv2d_transpose_60/strided_slice_1/stack:output:0Bsequential_41/conv2d_transpose_60/strided_slice_1/stack_1:output:0Bsequential_41/conv2d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_41/conv2d_transpose_60/strided_slice_1?
Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_41_conv2d_transpose_60_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp?
2sequential_41/conv2d_transpose_60/conv2d_transposeConv2DBackpropInput0sequential_41/conv2d_transpose_60/stack:output:0Isequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp:value:0)sequential_41/reshape_20/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
24
2sequential_41/conv2d_transpose_60/conv2d_transpose?
8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOpReadVariableOpAsequential_41_conv2d_transpose_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp?
)sequential_41/conv2d_transpose_60/BiasAddBiasAdd;sequential_41/conv2d_transpose_60/conv2d_transpose:output:0@sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2+
)sequential_41/conv2d_transpose_60/BiasAdd?
&sequential_41/conv2d_transpose_60/ReluRelu2sequential_41/conv2d_transpose_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2(
&sequential_41/conv2d_transpose_60/Relu?
'sequential_41/conv2d_transpose_61/ShapeShape4sequential_41/conv2d_transpose_60/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_61/Shape?
5sequential_41/conv2d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_41/conv2d_transpose_61/strided_slice/stack?
7sequential_41/conv2d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_61/strided_slice/stack_1?
7sequential_41/conv2d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_61/strided_slice/stack_2?
/sequential_41/conv2d_transpose_61/strided_sliceStridedSlice0sequential_41/conv2d_transpose_61/Shape:output:0>sequential_41/conv2d_transpose_61/strided_slice/stack:output:0@sequential_41/conv2d_transpose_61/strided_slice/stack_1:output:0@sequential_41/conv2d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_41/conv2d_transpose_61/strided_slice?
)sequential_41/conv2d_transpose_61/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_61/stack/1?
)sequential_41/conv2d_transpose_61/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_61/stack/2?
)sequential_41/conv2d_transpose_61/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_41/conv2d_transpose_61/stack/3?
'sequential_41/conv2d_transpose_61/stackPack8sequential_41/conv2d_transpose_61/strided_slice:output:02sequential_41/conv2d_transpose_61/stack/1:output:02sequential_41/conv2d_transpose_61/stack/2:output:02sequential_41/conv2d_transpose_61/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_61/stack?
7sequential_41/conv2d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_41/conv2d_transpose_61/strided_slice_1/stack?
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_1?
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_61/strided_slice_1/stack_2?
1sequential_41/conv2d_transpose_61/strided_slice_1StridedSlice0sequential_41/conv2d_transpose_61/stack:output:0@sequential_41/conv2d_transpose_61/strided_slice_1/stack:output:0Bsequential_41/conv2d_transpose_61/strided_slice_1/stack_1:output:0Bsequential_41/conv2d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_41/conv2d_transpose_61/strided_slice_1?
Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_41_conv2d_transpose_61_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp?
2sequential_41/conv2d_transpose_61/conv2d_transposeConv2DBackpropInput0sequential_41/conv2d_transpose_61/stack:output:0Isequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp:value:04sequential_41/conv2d_transpose_60/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
24
2sequential_41/conv2d_transpose_61/conv2d_transpose?
8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOpReadVariableOpAsequential_41_conv2d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp?
)sequential_41/conv2d_transpose_61/BiasAddBiasAdd;sequential_41/conv2d_transpose_61/conv2d_transpose:output:0@sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2+
)sequential_41/conv2d_transpose_61/BiasAdd?
&sequential_41/conv2d_transpose_61/ReluRelu2sequential_41/conv2d_transpose_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2(
&sequential_41/conv2d_transpose_61/Relu?
'sequential_41/conv2d_transpose_62/ShapeShape4sequential_41/conv2d_transpose_61/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_62/Shape?
5sequential_41/conv2d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_41/conv2d_transpose_62/strided_slice/stack?
7sequential_41/conv2d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_62/strided_slice/stack_1?
7sequential_41/conv2d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_41/conv2d_transpose_62/strided_slice/stack_2?
/sequential_41/conv2d_transpose_62/strided_sliceStridedSlice0sequential_41/conv2d_transpose_62/Shape:output:0>sequential_41/conv2d_transpose_62/strided_slice/stack:output:0@sequential_41/conv2d_transpose_62/strided_slice/stack_1:output:0@sequential_41/conv2d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_41/conv2d_transpose_62/strided_slice?
)sequential_41/conv2d_transpose_62/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_62/stack/1?
)sequential_41/conv2d_transpose_62/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_41/conv2d_transpose_62/stack/2?
)sequential_41/conv2d_transpose_62/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_41/conv2d_transpose_62/stack/3?
'sequential_41/conv2d_transpose_62/stackPack8sequential_41/conv2d_transpose_62/strided_slice:output:02sequential_41/conv2d_transpose_62/stack/1:output:02sequential_41/conv2d_transpose_62/stack/2:output:02sequential_41/conv2d_transpose_62/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_41/conv2d_transpose_62/stack?
7sequential_41/conv2d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_41/conv2d_transpose_62/strided_slice_1/stack?
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_1?
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_41/conv2d_transpose_62/strided_slice_1/stack_2?
1sequential_41/conv2d_transpose_62/strided_slice_1StridedSlice0sequential_41/conv2d_transpose_62/stack:output:0@sequential_41/conv2d_transpose_62/strided_slice_1/stack:output:0Bsequential_41/conv2d_transpose_62/strided_slice_1/stack_1:output:0Bsequential_41/conv2d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_41/conv2d_transpose_62/strided_slice_1?
Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_41_conv2d_transpose_62_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp?
2sequential_41/conv2d_transpose_62/conv2d_transposeConv2DBackpropInput0sequential_41/conv2d_transpose_62/stack:output:0Isequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp:value:04sequential_41/conv2d_transpose_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
24
2sequential_41/conv2d_transpose_62/conv2d_transpose?
8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOpReadVariableOpAsequential_41_conv2d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp?
)sequential_41/conv2d_transpose_62/BiasAddBiasAdd;sequential_41/conv2d_transpose_62/conv2d_transpose:output:0@sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2+
)sequential_41/conv2d_transpose_62/BiasAdd?
)sequential_41/conv2d_transpose_62/SigmoidSigmoid2sequential_41/conv2d_transpose_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2+
)sequential_41/conv2d_transpose_62/Sigmoid?
IdentityIdentity-sequential_41/conv2d_transpose_62/Sigmoid:y:09^sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOpB^sequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp9^sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOpB^sequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp9^sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOpB^sequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp.^sequential_41/dense_41/BiasAdd/ReadVariableOp-^sequential_41/dense_41/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2t
8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp8sequential_41/conv2d_transpose_60/BiasAdd/ReadVariableOp2?
Asequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOpAsequential_41/conv2d_transpose_60/conv2d_transpose/ReadVariableOp2t
8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp8sequential_41/conv2d_transpose_61/BiasAdd/ReadVariableOp2?
Asequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOpAsequential_41/conv2d_transpose_61/conv2d_transpose/ReadVariableOp2t
8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp8sequential_41/conv2d_transpose_62/BiasAdd/ReadVariableOp2?
Asequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOpAsequential_41/conv2d_transpose_62/conv2d_transpose/ReadVariableOp2^
-sequential_41/dense_41/BiasAdd/ReadVariableOp-sequential_41/dense_41/BiasAdd/ReadVariableOp2\
,sequential_41/dense_41/MatMul/ReadVariableOp,sequential_41/dense_41/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244098
input_42
dense_41_244055
dense_41_244057
conv2d_transpose_60_244082
conv2d_transpose_60_244084
conv2d_transpose_61_244087
conv2d_transpose_61_244089
conv2d_transpose_62_244092
conv2d_transpose_62_244094
identity??+conv2d_transpose_60/StatefulPartitionedCall?+conv2d_transpose_61/StatefulPartitionedCall?+conv2d_transpose_62/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCallinput_42dense_41_244055dense_41_244057*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_2440442"
 dense_41/StatefulPartitionedCall?
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_2440742
reshape_20/PartitionedCall?
+conv2d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0conv2d_transpose_60_244082conv2d_transpose_60_244084*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_2439292-
+conv2d_transpose_60/StatefulPartitionedCall?
+conv2d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_60/StatefulPartitionedCall:output:0conv2d_transpose_61_244087conv2d_transpose_61_244089*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_2439742-
+conv2d_transpose_61/StatefulPartitionedCall?
+conv2d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_61/StatefulPartitionedCall:output:0conv2d_transpose_62_244092conv2d_transpose_62_244094*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_2440192-
+conv2d_transpose_62/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_62/StatefulPartitionedCall:output:0,^conv2d_transpose_60/StatefulPartitionedCall,^conv2d_transpose_61/StatefulPartitionedCall,^conv2d_transpose_62/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_60/StatefulPartitionedCall+conv2d_transpose_60/StatefulPartitionedCall2Z
+conv2d_transpose_61/StatefulPartitionedCall+conv2d_transpose_61/StatefulPartitionedCall2Z
+conv2d_transpose_62/StatefulPartitionedCall+conv2d_transpose_62/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_42
?
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244197

inputs
dense_41_244175
dense_41_244177
conv2d_transpose_60_244181
conv2d_transpose_60_244183
conv2d_transpose_61_244186
conv2d_transpose_61_244188
conv2d_transpose_62_244191
conv2d_transpose_62_244193
identity??+conv2d_transpose_60/StatefulPartitionedCall?+conv2d_transpose_61/StatefulPartitionedCall?+conv2d_transpose_62/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
 dense_41/StatefulPartitionedCallStatefulPartitionedCallinputsdense_41_244175dense_41_244177*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_2440442"
 dense_41/StatefulPartitionedCall?
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_2440742
reshape_20/PartitionedCall?
+conv2d_transpose_60/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0conv2d_transpose_60_244181conv2d_transpose_60_244183*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_2439292-
+conv2d_transpose_60/StatefulPartitionedCall?
+conv2d_transpose_61/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_60/StatefulPartitionedCall:output:0conv2d_transpose_61_244186conv2d_transpose_61_244188*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_2439742-
+conv2d_transpose_61/StatefulPartitionedCall?
+conv2d_transpose_62/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_61/StatefulPartitionedCall:output:0conv2d_transpose_62_244191conv2d_transpose_62_244193*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_2440192-
+conv2d_transpose_62/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_62/StatefulPartitionedCall:output:0,^conv2d_transpose_60/StatefulPartitionedCall,^conv2d_transpose_61/StatefulPartitionedCall,^conv2d_transpose_62/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_60/StatefulPartitionedCall+conv2d_transpose_60/StatefulPartitionedCall2Z
+conv2d_transpose_61/StatefulPartitionedCall+conv2d_transpose_61/StatefulPartitionedCall2Z
+conv2d_transpose_62/StatefulPartitionedCall+conv2d_transpose_62/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_244019

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
G
+__inference_reshape_20_layer_call_fn_244835

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_2440742
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_41_layer_call_and_return_conditional_losses_244807

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:??*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2	
BiasAddZ
ReluReluBiasAdd:output:0*
T0*)
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
"__inference__traced_restore_244916
file_prefix$
 assignvariableop_dense_41_kernel$
 assignvariableop_1_dense_41_bias1
-assignvariableop_2_conv2d_transpose_60_kernel/
+assignvariableop_3_conv2d_transpose_60_bias1
-assignvariableop_4_conv2d_transpose_61_kernel/
+assignvariableop_5_conv2d_transpose_61_bias1
-assignvariableop_6_conv2d_transpose_62_kernel/
+assignvariableop_7_conv2d_transpose_62_bias

identity_9??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_41_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_41_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp-assignvariableop_2_conv2d_transpose_60_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp+assignvariableop_3_conv2d_transpose_60_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_conv2d_transpose_61_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp+assignvariableop_5_conv2d_transpose_61_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_conv2d_transpose_62_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp+assignvariableop_7_conv2d_transpose_62_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8?

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*5
_input_shapes$
": ::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
.__inference_sequential_41_layer_call_fn_244796

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_2441972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?z
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244673

inputs+
'dense_41_matmul_readvariableop_resource,
(dense_41_biasadd_readvariableop_resource@
<conv2d_transpose_60_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_60_biasadd_readvariableop_resource@
<conv2d_transpose_61_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_61_biasadd_readvariableop_resource@
<conv2d_transpose_62_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_62_biasadd_readvariableop_resource
identity??*conv2d_transpose_60/BiasAdd/ReadVariableOp?3conv2d_transpose_60/conv2d_transpose/ReadVariableOp?*conv2d_transpose_61/BiasAdd/ReadVariableOp?3conv2d_transpose_61/conv2d_transpose/ReadVariableOp?*conv2d_transpose_62/BiasAdd/ReadVariableOp?3conv2d_transpose_62/conv2d_transpose/ReadVariableOp?dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_41/MatMul/ReadVariableOp?
dense_41/MatMulMatMulinputs&dense_41/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_41/MatMul?
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02!
dense_41/BiasAdd/ReadVariableOp?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_41/BiasAddu
dense_41/ReluReludense_41/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_41/Reluo
reshape_20/ShapeShapedense_41/Relu:activations:0*
T0*
_output_shapes
:2
reshape_20/Shape?
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack?
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1?
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2?
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/1z
reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/2z
reshape_20/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_20/Reshape/shape/3?
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0#reshape_20/Reshape/shape/2:output:0#reshape_20/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape?
reshape_20/ReshapeReshapedense_41/Relu:activations:0!reshape_20/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2
reshape_20/Reshape?
conv2d_transpose_60/ShapeShapereshape_20/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_60/Shape?
'conv2d_transpose_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_60/strided_slice/stack?
)conv2d_transpose_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_60/strided_slice/stack_1?
)conv2d_transpose_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_60/strided_slice/stack_2?
!conv2d_transpose_60/strided_sliceStridedSlice"conv2d_transpose_60/Shape:output:00conv2d_transpose_60/strided_slice/stack:output:02conv2d_transpose_60/strided_slice/stack_1:output:02conv2d_transpose_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_60/strided_slice|
conv2d_transpose_60/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_60/stack/1|
conv2d_transpose_60/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_60/stack/2|
conv2d_transpose_60/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_60/stack/3?
conv2d_transpose_60/stackPack*conv2d_transpose_60/strided_slice:output:0$conv2d_transpose_60/stack/1:output:0$conv2d_transpose_60/stack/2:output:0$conv2d_transpose_60/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_60/stack?
)conv2d_transpose_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_60/strided_slice_1/stack?
+conv2d_transpose_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_60/strided_slice_1/stack_1?
+conv2d_transpose_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_60/strided_slice_1/stack_2?
#conv2d_transpose_60/strided_slice_1StridedSlice"conv2d_transpose_60/stack:output:02conv2d_transpose_60/strided_slice_1/stack:output:04conv2d_transpose_60/strided_slice_1/stack_1:output:04conv2d_transpose_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_60/strided_slice_1?
3conv2d_transpose_60/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_60_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_60/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_60/conv2d_transposeConv2DBackpropInput"conv2d_transpose_60/stack:output:0;conv2d_transpose_60/conv2d_transpose/ReadVariableOp:value:0reshape_20/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2&
$conv2d_transpose_60/conv2d_transpose?
*conv2d_transpose_60/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_60/BiasAdd/ReadVariableOp?
conv2d_transpose_60/BiasAddBiasAdd-conv2d_transpose_60/conv2d_transpose:output:02conv2d_transpose_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_60/BiasAdd?
conv2d_transpose_60/ReluRelu$conv2d_transpose_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_60/Relu?
conv2d_transpose_61/ShapeShape&conv2d_transpose_60/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_61/Shape?
'conv2d_transpose_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_61/strided_slice/stack?
)conv2d_transpose_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_61/strided_slice/stack_1?
)conv2d_transpose_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_61/strided_slice/stack_2?
!conv2d_transpose_61/strided_sliceStridedSlice"conv2d_transpose_61/Shape:output:00conv2d_transpose_61/strided_slice/stack:output:02conv2d_transpose_61/strided_slice/stack_1:output:02conv2d_transpose_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_61/strided_slice|
conv2d_transpose_61/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_61/stack/1|
conv2d_transpose_61/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_61/stack/2|
conv2d_transpose_61/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_61/stack/3?
conv2d_transpose_61/stackPack*conv2d_transpose_61/strided_slice:output:0$conv2d_transpose_61/stack/1:output:0$conv2d_transpose_61/stack/2:output:0$conv2d_transpose_61/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_61/stack?
)conv2d_transpose_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_61/strided_slice_1/stack?
+conv2d_transpose_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_61/strided_slice_1/stack_1?
+conv2d_transpose_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_61/strided_slice_1/stack_2?
#conv2d_transpose_61/strided_slice_1StridedSlice"conv2d_transpose_61/stack:output:02conv2d_transpose_61/strided_slice_1/stack:output:04conv2d_transpose_61/strided_slice_1/stack_1:output:04conv2d_transpose_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_61/strided_slice_1?
3conv2d_transpose_61/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_61_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_61/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_61/conv2d_transposeConv2DBackpropInput"conv2d_transpose_61/stack:output:0;conv2d_transpose_61/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_60/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2&
$conv2d_transpose_61/conv2d_transpose?
*conv2d_transpose_61/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_61/BiasAdd/ReadVariableOp?
conv2d_transpose_61/BiasAddBiasAdd-conv2d_transpose_61/conv2d_transpose:output:02conv2d_transpose_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_61/BiasAdd?
conv2d_transpose_61/ReluRelu$conv2d_transpose_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_61/Relu?
conv2d_transpose_62/ShapeShape&conv2d_transpose_61/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_62/Shape?
'conv2d_transpose_62/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_62/strided_slice/stack?
)conv2d_transpose_62/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_62/strided_slice/stack_1?
)conv2d_transpose_62/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_62/strided_slice/stack_2?
!conv2d_transpose_62/strided_sliceStridedSlice"conv2d_transpose_62/Shape:output:00conv2d_transpose_62/strided_slice/stack:output:02conv2d_transpose_62/strided_slice/stack_1:output:02conv2d_transpose_62/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_62/strided_slice|
conv2d_transpose_62/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_62/stack/1|
conv2d_transpose_62/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_62/stack/2|
conv2d_transpose_62/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_62/stack/3?
conv2d_transpose_62/stackPack*conv2d_transpose_62/strided_slice:output:0$conv2d_transpose_62/stack/1:output:0$conv2d_transpose_62/stack/2:output:0$conv2d_transpose_62/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_62/stack?
)conv2d_transpose_62/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_62/strided_slice_1/stack?
+conv2d_transpose_62/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_62/strided_slice_1/stack_1?
+conv2d_transpose_62/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_62/strided_slice_1/stack_2?
#conv2d_transpose_62/strided_slice_1StridedSlice"conv2d_transpose_62/stack:output:02conv2d_transpose_62/strided_slice_1/stack:output:04conv2d_transpose_62/strided_slice_1/stack_1:output:04conv2d_transpose_62/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_62/strided_slice_1?
3conv2d_transpose_62/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_62_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_62/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_62/conv2d_transposeConv2DBackpropInput"conv2d_transpose_62/stack:output:0;conv2d_transpose_62/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2&
$conv2d_transpose_62/conv2d_transpose?
*conv2d_transpose_62/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_62/BiasAdd/ReadVariableOp?
conv2d_transpose_62/BiasAddBiasAdd-conv2d_transpose_62/conv2d_transpose:output:02conv2d_transpose_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_62/BiasAdd?
conv2d_transpose_62/SigmoidSigmoid$conv2d_transpose_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_62/Sigmoid?
IdentityIdentityconv2d_transpose_62/Sigmoid:y:0+^conv2d_transpose_60/BiasAdd/ReadVariableOp4^conv2d_transpose_60/conv2d_transpose/ReadVariableOp+^conv2d_transpose_61/BiasAdd/ReadVariableOp4^conv2d_transpose_61/conv2d_transpose/ReadVariableOp+^conv2d_transpose_62/BiasAdd/ReadVariableOp4^conv2d_transpose_62/conv2d_transpose/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2X
*conv2d_transpose_60/BiasAdd/ReadVariableOp*conv2d_transpose_60/BiasAdd/ReadVariableOp2j
3conv2d_transpose_60/conv2d_transpose/ReadVariableOp3conv2d_transpose_60/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_61/BiasAdd/ReadVariableOp*conv2d_transpose_61/BiasAdd/ReadVariableOp2j
3conv2d_transpose_61/conv2d_transpose/ReadVariableOp3conv2d_transpose_61/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_62/BiasAdd/ReadVariableOp*conv2d_transpose_62/BiasAdd/ReadVariableOp2j
3conv2d_transpose_62/conv2d_transpose/ReadVariableOp3conv2d_transpose_62/conv2d_transpose/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_decoder_20_layer_call_fn_244571
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_decoder_20_layer_call_and_return_conditional_losses_2443252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
.__inference_sequential_41_layer_call_fn_244775

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_2441512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244301
input_1
sequential_41_244283
sequential_41_244285
sequential_41_244287
sequential_41_244289
sequential_41_244291
sequential_41_244293
sequential_41_244295
sequential_41_244297
identity??%sequential_41/StatefulPartitionedCall?
%sequential_41/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_41_244283sequential_41_244285sequential_41_244287sequential_41_244289sequential_41_244291sequential_41_244293sequential_41_244295sequential_41_244297*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_2441972'
%sequential_41/StatefulPartitionedCall?
IdentityIdentity.sequential_41/StatefulPartitionedCall:output:0&^sequential_41/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2N
%sequential_41/StatefulPartitionedCall%sequential_41/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????D
output_18
StatefulPartitionedCall:0?????????@@tensorflow/serving/predict:??
?
	model
regularization_losses
trainable_variables
	variables
	keras_api

signatures
O_default_save_signature
P__call__
*Q&call_and_return_all_conditional_losses"?
_tf_keras_model?{"class_name": "Decoder", "name": "decoder_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Decoder"}}
?5
layer_with_weights-0
layer-0
layer-1
	layer_with_weights-1
	layer-2

layer_with_weights-2

layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
	variables
	keras_api
R__call__
*S&call_and_return_all_conditional_losses"?3
_tf_keras_sequential?2{"class_name": "Sequential", "name": "sequential_41", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_42"}}, {"class_name": "Dense", "config": {"name": "dense_41", "trainable": true, "dtype": "float32", "units": 16384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_20", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [16, 16, 64]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_60", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_61", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_62", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_42"}}, {"class_name": "Dense", "config": {"name": "dense_41", "trainable": true, "dtype": "float32", "units": 16384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_20", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [16, 16, 64]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_60", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_61", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_62", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}}
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
?
regularization_losses
non_trainable_variables

layers
metrics
trainable_variables
layer_metrics
	variables
layer_regularization_losses
P__call__
O_default_save_signature
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
,
Tserving_default"
signature_map
?

kernel
bias
regularization_losses
trainable_variables
	variables
 	keras_api
U__call__
*V&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_41", "trainable": true, "dtype": "float32", "units": 16384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}}
?
!regularization_losses
"trainable_variables
#	variables
$	keras_api
W__call__
*X&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_20", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [16, 16, 64]}}}
?


kernel
bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_60", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?


kernel
bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
[__call__
*\&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_61", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 64]}}
?


kernel
bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
]__call__
*^&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_62", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 32]}}
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
?
regularization_losses
1non_trainable_variables

2layers
3metrics
trainable_variables
4layer_metrics
	variables
5layer_regularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_41/kernel
:??2dense_41/bias
4:2@@2conv2d_transpose_60/kernel
&:$@2conv2d_transpose_60/bias
4:2 @2conv2d_transpose_61/kernel
&:$ 2conv2d_transpose_61/bias
4:2 2conv2d_transpose_62/kernel
&:$2conv2d_transpose_62/bias
 "
trackable_list_wrapper
'
0"
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
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
6non_trainable_variables

7layers
8metrics
trainable_variables
9layer_metrics
	variables
:layer_regularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
!regularization_losses
;non_trainable_variables

<layers
=metrics
"trainable_variables
>layer_metrics
#	variables
?layer_regularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
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
?
%regularization_losses
@non_trainable_variables

Alayers
Bmetrics
&trainable_variables
Clayer_metrics
'	variables
Dlayer_regularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
)regularization_losses
Enon_trainable_variables

Flayers
Gmetrics
*trainable_variables
Hlayer_metrics
+	variables
Ilayer_regularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
-regularization_losses
Jnon_trainable_variables

Klayers
Lmetrics
.trainable_variables
Mlayer_metrics
/	variables
Nlayer_regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C
0
1
	2

3
4"
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
?2?
!__inference__wrapped_model_243894?
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
annotations? *&?#
!?
input_1?????????
?2?
+__inference_decoder_20_layer_call_fn_244344
+__inference_decoder_20_layer_call_fn_244571
+__inference_decoder_20_layer_call_fn_244592
+__inference_decoder_20_layer_call_fn_244365?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244550
F__inference_decoder_20_layer_call_and_return_conditional_losses_244469
F__inference_decoder_20_layer_call_and_return_conditional_losses_244280
F__inference_decoder_20_layer_call_and_return_conditional_losses_244301?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_sequential_41_layer_call_fn_244170
.__inference_sequential_41_layer_call_fn_244216
.__inference_sequential_41_layer_call_fn_244775
.__inference_sequential_41_layer_call_fn_244796?
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
?2?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244098
I__inference_sequential_41_layer_call_and_return_conditional_losses_244673
I__inference_sequential_41_layer_call_and_return_conditional_losses_244754
I__inference_sequential_41_layer_call_and_return_conditional_losses_244123?
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
?B?
$__inference_signature_wrapper_244388input_1"?
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
 
?2?
)__inference_dense_41_layer_call_fn_244816?
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
D__inference_dense_41_layer_call_and_return_conditional_losses_244807?
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
+__inference_reshape_20_layer_call_fn_244835?
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
F__inference_reshape_20_layer_call_and_return_conditional_losses_244830?
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
?2?
4__inference_conv2d_transpose_60_layer_call_fn_243939?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_243929?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
4__inference_conv2d_transpose_61_layer_call_fn_243984?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_243974?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
4__inference_conv2d_transpose_62_layer_call_fn_244029?
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
annotations? *7?4
2?/+??????????????????????????? 
?2?
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_244019?
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
annotations? *7?4
2?/+??????????????????????????? ?
!__inference__wrapped_model_243894y0?-
&?#
!?
input_1?????????
? ";?8
6
output_1*?'
output_1?????????@@?
O__inference_conv2d_transpose_60_layer_call_and_return_conditional_losses_243929?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
4__inference_conv2d_transpose_60_layer_call_fn_243939?I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
O__inference_conv2d_transpose_61_layer_call_and_return_conditional_losses_243974?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
4__inference_conv2d_transpose_61_layer_call_fn_243984?I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
O__inference_conv2d_transpose_62_layer_call_and_return_conditional_losses_244019?I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
4__inference_conv2d_transpose_62_layer_call_fn_244029?I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
F__inference_decoder_20_layer_call_and_return_conditional_losses_244280?4?1
*?'
!?
input_1?????????
p
? "??<
5?2
0+???????????????????????????
? ?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244301?4?1
*?'
!?
input_1?????????
p 
? "??<
5?2
0+???????????????????????????
? ?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244469i.?+
$?!
?
x?????????
p
? "-?*
#? 
0?????????@@
? ?
F__inference_decoder_20_layer_call_and_return_conditional_losses_244550i.?+
$?!
?
x?????????
p 
? "-?*
#? 
0?????????@@
? ?
+__inference_decoder_20_layer_call_fn_244344t4?1
*?'
!?
input_1?????????
p
? "2?/+????????????????????????????
+__inference_decoder_20_layer_call_fn_244365t4?1
*?'
!?
input_1?????????
p 
? "2?/+????????????????????????????
+__inference_decoder_20_layer_call_fn_244571n.?+
$?!
?
x?????????
p
? "2?/+????????????????????????????
+__inference_decoder_20_layer_call_fn_244592n.?+
$?!
?
x?????????
p 
? "2?/+????????????????????????????
D__inference_dense_41_layer_call_and_return_conditional_losses_244807^/?,
%?"
 ?
inputs?????????
? "'?$
?
0???????????
? ~
)__inference_dense_41_layer_call_fn_244816Q/?,
%?"
 ?
inputs?????????
? "?????????????
F__inference_reshape_20_layer_call_and_return_conditional_losses_244830b1?.
'?$
"?
inputs???????????
? "-?*
#? 
0?????????@
? ?
+__inference_reshape_20_layer_call_fn_244835U1?.
'?$
"?
inputs???????????
? " ??????????@?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244098?9?6
/?,
"?
input_42?????????
p

 
? "??<
5?2
0+???????????????????????????
? ?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244123?9?6
/?,
"?
input_42?????????
p 

 
? "??<
5?2
0+???????????????????????????
? ?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244673r7?4
-?*
 ?
inputs?????????
p

 
? "-?*
#? 
0?????????@@
? ?
I__inference_sequential_41_layer_call_and_return_conditional_losses_244754r7?4
-?*
 ?
inputs?????????
p 

 
? "-?*
#? 
0?????????@@
? ?
.__inference_sequential_41_layer_call_fn_244170y9?6
/?,
"?
input_42?????????
p

 
? "2?/+????????????????????????????
.__inference_sequential_41_layer_call_fn_244216y9?6
/?,
"?
input_42?????????
p 

 
? "2?/+????????????????????????????
.__inference_sequential_41_layer_call_fn_244775w7?4
-?*
 ?
inputs?????????
p

 
? "2?/+????????????????????????????
.__inference_sequential_41_layer_call_fn_244796w7?4
-?*
 ?
inputs?????????
p 

 
? "2?/+????????????????????????????
$__inference_signature_wrapper_244388?;?8
? 
1?.
,
input_1!?
input_1?????????";?8
6
output_1*?'
output_1?????????@@