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
z
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_9/kernel
s
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel* 
_output_shapes
:
??*
dtype0
r
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_namedense_9/bias
k
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes

:??*
dtype0
?
conv2d_transpose_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_nameconv2d_transpose_12/kernel
?
.conv2d_transpose_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_transpose_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_12/bias
?
,conv2d_transpose_12/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_13/kernel
?
.conv2d_transpose_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_13/bias
?
,conv2d_transpose_13/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_14/kernel
?
.conv2d_transpose_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_14/bias
?
,conv2d_transpose_14/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/bias*
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
TR
VARIABLE_VALUEdense_9/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_9/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_12/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_12/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_13/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_13/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_14/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_14/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense_9/kerneldense_9/biasconv2d_transpose_12/kernelconv2d_transpose_12/biasconv2d_transpose_13/kernelconv2d_transpose_13/biasconv2d_transpose_14/kernelconv2d_transpose_14/bias*
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
GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_79309
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp.conv2d_transpose_12/kernel/Read/ReadVariableOp,conv2d_transpose_12/bias/Read/ReadVariableOp.conv2d_transpose_13/kernel/Read/ReadVariableOp,conv2d_transpose_13/bias/Read/ReadVariableOp.conv2d_transpose_14/kernel/Read/ReadVariableOp,conv2d_transpose_14/bias/Read/ReadVariableOpConst*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_79803
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_9/kerneldense_9/biasconv2d_transpose_12/kernelconv2d_transpose_12/biasconv2d_transpose_13/kernelconv2d_transpose_13/biasconv2d_transpose_14/kernelconv2d_transpose_14/bias*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_79837®	
?
?
3__inference_conv2d_transpose_13_layer_call_fn_78905

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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_788952
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
?
?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79118

inputs
dense_9_79096
dense_9_79098
conv2d_transpose_12_79102
conv2d_transpose_12_79104
conv2d_transpose_13_79107
conv2d_transpose_13_79109
conv2d_transpose_14_79112
conv2d_transpose_14_79114
identity??+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_79096dense_9_79098*
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
GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_789652!
dense_9/StatefulPartitionedCall?
reshape_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_789952
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_79102conv2d_transpose_12_79104*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_788502-
+conv2d_transpose_12/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0conv2d_transpose_13_79107conv2d_transpose_13_79109*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_788952-
+conv2d_transpose_13/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0conv2d_transpose_14_79112conv2d_transpose_14_79114*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_789402-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_9_layer_call_fn_79137
input_10
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8? *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_791182
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
input_10
?
`
D__inference_reshape_4_layer_call_and_return_conditional_losses_79751

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
?
E
)__inference_reshape_4_layer_call_fn_79756

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
GPU2*0J 8? *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_789952
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
?$
?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_78850

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
?
`
D__inference_reshape_4_layer_call_and_return_conditional_losses_78995

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
?
?
,__inference_sequential_9_layer_call_fn_79091
input_10
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8? *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_790722
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
input_10
?
?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79072

inputs
dense_9_79050
dense_9_79052
conv2d_transpose_12_79056
conv2d_transpose_12_79058
conv2d_transpose_13_79061
conv2d_transpose_13_79063
conv2d_transpose_14_79066
conv2d_transpose_14_79068
identity??+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_79050dense_9_79052*
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
GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_789652!
dense_9/StatefulPartitionedCall?
reshape_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_789952
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_79056conv2d_transpose_12_79058*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_788502-
+conv2d_transpose_12/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0conv2d_transpose_13_79061conv2d_transpose_13_79063*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_788952-
+conv2d_transpose_13/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0conv2d_transpose_14_79066conv2d_transpose_14_79068*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_789402-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_14_layer_call_fn_78950

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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_789402
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
)__inference_decoder_4_layer_call_fn_79513
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
GPU2*0J 8? *M
fHRF
D__inference_decoder_4_layer_call_and_return_conditional_losses_792462
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
?$
?
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_78940

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
?
?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79019
input_10
dense_9_78976
dense_9_78978
conv2d_transpose_12_79003
conv2d_transpose_12_79005
conv2d_transpose_13_79008
conv2d_transpose_13_79010
conv2d_transpose_14_79013
conv2d_transpose_14_79015
identity??+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCallinput_10dense_9_78976dense_9_78978*
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
GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_789652!
dense_9/StatefulPartitionedCall?
reshape_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_789952
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_79003conv2d_transpose_12_79005*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_788502-
+conv2d_transpose_12/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0conv2d_transpose_13_79008conv2d_transpose_13_79010*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_788952-
+conv2d_transpose_13/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0conv2d_transpose_14_79013conv2d_transpose_14_79015*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_789402-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?

?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79246
x
sequential_9_79228
sequential_9_79230
sequential_9_79232
sequential_9_79234
sequential_9_79236
sequential_9_79238
sequential_9_79240
sequential_9_79242
identity??$sequential_9/StatefulPartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCallxsequential_9_79228sequential_9_79230sequential_9_79232sequential_9_79234sequential_9_79236sequential_9_79238sequential_9_79240sequential_9_79242*
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
GPU2*0J 8? *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_791182&
$sequential_9/StatefulPartitionedCall?
IdentityIdentity-sequential_9/StatefulPartitionedCall:output:0%^sequential_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
__inference__traced_save_79803
file_prefix-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop9
5savev2_conv2d_transpose_12_kernel_read_readvariableop7
3savev2_conv2d_transpose_12_bias_read_readvariableop9
5savev2_conv2d_transpose_13_kernel_read_readvariableop7
3savev2_conv2d_transpose_13_bias_read_readvariableop9
5savev2_conv2d_transpose_14_kernel_read_readvariableop7
3savev2_conv2d_transpose_14_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop5savev2_conv2d_transpose_12_kernel_read_readvariableop3savev2_conv2d_transpose_12_bias_read_readvariableop5savev2_conv2d_transpose_13_kernel_read_readvariableop3savev2_conv2d_transpose_13_bias_read_readvariableop5savev2_conv2d_transpose_14_kernel_read_readvariableop3savev2_conv2d_transpose_14_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
G__inference_sequential_9_layer_call_and_return_conditional_losses_79594

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource@
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_12_biasadd_readvariableop_resource@
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_13_biasadd_readvariableop_resource@
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_14_biasadd_readvariableop_resource
identity??*conv2d_transpose_12/BiasAdd/ReadVariableOp?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?*conv2d_transpose_13/BiasAdd/ReadVariableOp?3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?*conv2d_transpose_14/BiasAdd/ReadVariableOp?3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulinputs%dense_9/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_9/BiasAddr
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_9/Relul
reshape_4/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:2
reshape_4/Shape?
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stack?
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1?
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2?
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2x
reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_4/Reshape/shape/3?
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0"reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shape?
reshape_4/ReshapeReshapedense_9/Relu:activations:0 reshape_4/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2
reshape_4/Reshape?
conv2d_transpose_12/ShapeShapereshape_4/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape?
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack?
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1?
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_12/stack/2|
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_12/stack/3?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack?
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack?
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1?
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0reshape_4/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose?
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_12/BiasAdd/ReadVariableOp?
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_12/BiasAdd?
conv2d_transpose_12/ReluRelu$conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_12/Relu?
conv2d_transpose_13/ShapeShape&conv2d_transpose_12/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape?
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack?
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1?
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2?
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_13/stack/3?
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack?
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack?
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1?
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2?
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1?
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_12/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose?
*conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_13/BiasAdd/ReadVariableOp?
conv2d_transpose_13/BiasAddBiasAdd-conv2d_transpose_13/conv2d_transpose:output:02conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_13/BiasAdd?
conv2d_transpose_13/ReluRelu$conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_13/Relu?
conv2d_transpose_14/ShapeShape&conv2d_transpose_13/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape?
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack?
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1?
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2?
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/3?
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack?
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack?
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1?
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2?
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1?
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_13/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose?
*conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_14/BiasAdd/ReadVariableOp?
conv2d_transpose_14/BiasAddBiasAdd-conv2d_transpose_14/conv2d_transpose:output:02conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_14/BiasAdd?
conv2d_transpose_14/SigmoidSigmoid$conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_14/Sigmoid?
IdentityIdentityconv2d_transpose_14/Sigmoid:y:0+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp+^conv2d_transpose_13/BiasAdd/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp+^conv2d_transpose_14/BiasAdd/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_13/BiasAdd/ReadVariableOp*conv2d_transpose_13/BiasAdd/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_14/BiasAdd/ReadVariableOp*conv2d_transpose_14/BiasAdd/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_decoder_4_layer_call_fn_79265
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
GPU2*0J 8? *M
fHRF
D__inference_decoder_4_layer_call_and_return_conditional_losses_792462
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
,__inference_sequential_9_layer_call_fn_79717

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
GPU2*0J 8? *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_791182
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
Ũ
?	
 __inference__wrapped_model_78815
input_1A
=decoder_4_sequential_9_dense_9_matmul_readvariableop_resourceB
>decoder_4_sequential_9_dense_9_biasadd_readvariableop_resourceW
Sdecoder_4_sequential_9_conv2d_transpose_12_conv2d_transpose_readvariableop_resourceN
Jdecoder_4_sequential_9_conv2d_transpose_12_biasadd_readvariableop_resourceW
Sdecoder_4_sequential_9_conv2d_transpose_13_conv2d_transpose_readvariableop_resourceN
Jdecoder_4_sequential_9_conv2d_transpose_13_biasadd_readvariableop_resourceW
Sdecoder_4_sequential_9_conv2d_transpose_14_conv2d_transpose_readvariableop_resourceN
Jdecoder_4_sequential_9_conv2d_transpose_14_biasadd_readvariableop_resource
identity??Adecoder_4/sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp?Jdecoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?Adecoder_4/sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp?Jdecoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?Adecoder_4/sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp?Jdecoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?5decoder_4/sequential_9/dense_9/BiasAdd/ReadVariableOp?4decoder_4/sequential_9/dense_9/MatMul/ReadVariableOp?
4decoder_4/sequential_9/dense_9/MatMul/ReadVariableOpReadVariableOp=decoder_4_sequential_9_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4decoder_4/sequential_9/dense_9/MatMul/ReadVariableOp?
%decoder_4/sequential_9/dense_9/MatMulMatMulinput_1<decoder_4/sequential_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2'
%decoder_4/sequential_9/dense_9/MatMul?
5decoder_4/sequential_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp>decoder_4_sequential_9_dense_9_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype027
5decoder_4/sequential_9/dense_9/BiasAdd/ReadVariableOp?
&decoder_4/sequential_9/dense_9/BiasAddBiasAdd/decoder_4/sequential_9/dense_9/MatMul:product:0=decoder_4/sequential_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2(
&decoder_4/sequential_9/dense_9/BiasAdd?
#decoder_4/sequential_9/dense_9/ReluRelu/decoder_4/sequential_9/dense_9/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2%
#decoder_4/sequential_9/dense_9/Relu?
&decoder_4/sequential_9/reshape_4/ShapeShape1decoder_4/sequential_9/dense_9/Relu:activations:0*
T0*
_output_shapes
:2(
&decoder_4/sequential_9/reshape_4/Shape?
4decoder_4/sequential_9/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4decoder_4/sequential_9/reshape_4/strided_slice/stack?
6decoder_4/sequential_9/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6decoder_4/sequential_9/reshape_4/strided_slice/stack_1?
6decoder_4/sequential_9/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6decoder_4/sequential_9/reshape_4/strided_slice/stack_2?
.decoder_4/sequential_9/reshape_4/strided_sliceStridedSlice/decoder_4/sequential_9/reshape_4/Shape:output:0=decoder_4/sequential_9/reshape_4/strided_slice/stack:output:0?decoder_4/sequential_9/reshape_4/strided_slice/stack_1:output:0?decoder_4/sequential_9/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.decoder_4/sequential_9/reshape_4/strided_slice?
0decoder_4/sequential_9/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0decoder_4/sequential_9/reshape_4/Reshape/shape/1?
0decoder_4/sequential_9/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0decoder_4/sequential_9/reshape_4/Reshape/shape/2?
0decoder_4/sequential_9/reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@22
0decoder_4/sequential_9/reshape_4/Reshape/shape/3?
.decoder_4/sequential_9/reshape_4/Reshape/shapePack7decoder_4/sequential_9/reshape_4/strided_slice:output:09decoder_4/sequential_9/reshape_4/Reshape/shape/1:output:09decoder_4/sequential_9/reshape_4/Reshape/shape/2:output:09decoder_4/sequential_9/reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.decoder_4/sequential_9/reshape_4/Reshape/shape?
(decoder_4/sequential_9/reshape_4/ReshapeReshape1decoder_4/sequential_9/dense_9/Relu:activations:07decoder_4/sequential_9/reshape_4/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2*
(decoder_4/sequential_9/reshape_4/Reshape?
0decoder_4/sequential_9/conv2d_transpose_12/ShapeShape1decoder_4/sequential_9/reshape_4/Reshape:output:0*
T0*
_output_shapes
:22
0decoder_4/sequential_9/conv2d_transpose_12/Shape?
>decoder_4/sequential_9/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>decoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack?
@decoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@decoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack_1?
@decoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@decoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack_2?
8decoder_4/sequential_9/conv2d_transpose_12/strided_sliceStridedSlice9decoder_4/sequential_9/conv2d_transpose_12/Shape:output:0Gdecoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack:output:0Idecoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack_1:output:0Idecoder_4/sequential_9/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8decoder_4/sequential_9/conv2d_transpose_12/strided_slice?
2decoder_4/sequential_9/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 24
2decoder_4/sequential_9/conv2d_transpose_12/stack/1?
2decoder_4/sequential_9/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 24
2decoder_4/sequential_9/conv2d_transpose_12/stack/2?
2decoder_4/sequential_9/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@24
2decoder_4/sequential_9/conv2d_transpose_12/stack/3?
0decoder_4/sequential_9/conv2d_transpose_12/stackPackAdecoder_4/sequential_9/conv2d_transpose_12/strided_slice:output:0;decoder_4/sequential_9/conv2d_transpose_12/stack/1:output:0;decoder_4/sequential_9/conv2d_transpose_12/stack/2:output:0;decoder_4/sequential_9/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:22
0decoder_4/sequential_9/conv2d_transpose_12/stack?
@decoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@decoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack?
Bdecoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack_1?
Bdecoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack_2?
:decoder_4/sequential_9/conv2d_transpose_12/strided_slice_1StridedSlice9decoder_4/sequential_9/conv2d_transpose_12/stack:output:0Idecoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack:output:0Kdecoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack_1:output:0Kdecoder_4/sequential_9/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:decoder_4/sequential_9/conv2d_transpose_12/strided_slice_1?
Jdecoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpSdecoder_4_sequential_9_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02L
Jdecoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
;decoder_4/sequential_9/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput9decoder_4/sequential_9/conv2d_transpose_12/stack:output:0Rdecoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:01decoder_4/sequential_9/reshape_4/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2=
;decoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose?
Adecoder_4/sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOpJdecoder_4_sequential_9_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02C
Adecoder_4/sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp?
2decoder_4/sequential_9/conv2d_transpose_12/BiasAddBiasAddDdecoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose:output:0Idecoder_4/sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @24
2decoder_4/sequential_9/conv2d_transpose_12/BiasAdd?
/decoder_4/sequential_9/conv2d_transpose_12/ReluRelu;decoder_4/sequential_9/conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @21
/decoder_4/sequential_9/conv2d_transpose_12/Relu?
0decoder_4/sequential_9/conv2d_transpose_13/ShapeShape=decoder_4/sequential_9/conv2d_transpose_12/Relu:activations:0*
T0*
_output_shapes
:22
0decoder_4/sequential_9/conv2d_transpose_13/Shape?
>decoder_4/sequential_9/conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>decoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack?
@decoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@decoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack_1?
@decoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@decoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack_2?
8decoder_4/sequential_9/conv2d_transpose_13/strided_sliceStridedSlice9decoder_4/sequential_9/conv2d_transpose_13/Shape:output:0Gdecoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack:output:0Idecoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack_1:output:0Idecoder_4/sequential_9/conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8decoder_4/sequential_9/conv2d_transpose_13/strided_slice?
2decoder_4/sequential_9/conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@24
2decoder_4/sequential_9/conv2d_transpose_13/stack/1?
2decoder_4/sequential_9/conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@24
2decoder_4/sequential_9/conv2d_transpose_13/stack/2?
2decoder_4/sequential_9/conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 24
2decoder_4/sequential_9/conv2d_transpose_13/stack/3?
0decoder_4/sequential_9/conv2d_transpose_13/stackPackAdecoder_4/sequential_9/conv2d_transpose_13/strided_slice:output:0;decoder_4/sequential_9/conv2d_transpose_13/stack/1:output:0;decoder_4/sequential_9/conv2d_transpose_13/stack/2:output:0;decoder_4/sequential_9/conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:22
0decoder_4/sequential_9/conv2d_transpose_13/stack?
@decoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@decoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack?
Bdecoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack_1?
Bdecoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack_2?
:decoder_4/sequential_9/conv2d_transpose_13/strided_slice_1StridedSlice9decoder_4/sequential_9/conv2d_transpose_13/stack:output:0Idecoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack:output:0Kdecoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack_1:output:0Kdecoder_4/sequential_9/conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:decoder_4/sequential_9/conv2d_transpose_13/strided_slice_1?
Jdecoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOpSdecoder_4_sequential_9_conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02L
Jdecoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
;decoder_4/sequential_9/conv2d_transpose_13/conv2d_transposeConv2DBackpropInput9decoder_4/sequential_9/conv2d_transpose_13/stack:output:0Rdecoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0=decoder_4/sequential_9/conv2d_transpose_12/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2=
;decoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose?
Adecoder_4/sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOpJdecoder_4_sequential_9_conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02C
Adecoder_4/sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp?
2decoder_4/sequential_9/conv2d_transpose_13/BiasAddBiasAddDdecoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose:output:0Idecoder_4/sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 24
2decoder_4/sequential_9/conv2d_transpose_13/BiasAdd?
/decoder_4/sequential_9/conv2d_transpose_13/ReluRelu;decoder_4/sequential_9/conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 21
/decoder_4/sequential_9/conv2d_transpose_13/Relu?
0decoder_4/sequential_9/conv2d_transpose_14/ShapeShape=decoder_4/sequential_9/conv2d_transpose_13/Relu:activations:0*
T0*
_output_shapes
:22
0decoder_4/sequential_9/conv2d_transpose_14/Shape?
>decoder_4/sequential_9/conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>decoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack?
@decoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@decoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack_1?
@decoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@decoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack_2?
8decoder_4/sequential_9/conv2d_transpose_14/strided_sliceStridedSlice9decoder_4/sequential_9/conv2d_transpose_14/Shape:output:0Gdecoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack:output:0Idecoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack_1:output:0Idecoder_4/sequential_9/conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8decoder_4/sequential_9/conv2d_transpose_14/strided_slice?
2decoder_4/sequential_9/conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@24
2decoder_4/sequential_9/conv2d_transpose_14/stack/1?
2decoder_4/sequential_9/conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@24
2decoder_4/sequential_9/conv2d_transpose_14/stack/2?
2decoder_4/sequential_9/conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :24
2decoder_4/sequential_9/conv2d_transpose_14/stack/3?
0decoder_4/sequential_9/conv2d_transpose_14/stackPackAdecoder_4/sequential_9/conv2d_transpose_14/strided_slice:output:0;decoder_4/sequential_9/conv2d_transpose_14/stack/1:output:0;decoder_4/sequential_9/conv2d_transpose_14/stack/2:output:0;decoder_4/sequential_9/conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:22
0decoder_4/sequential_9/conv2d_transpose_14/stack?
@decoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@decoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack?
Bdecoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack_1?
Bdecoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bdecoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack_2?
:decoder_4/sequential_9/conv2d_transpose_14/strided_slice_1StridedSlice9decoder_4/sequential_9/conv2d_transpose_14/stack:output:0Idecoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack:output:0Kdecoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack_1:output:0Kdecoder_4/sequential_9/conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:decoder_4/sequential_9/conv2d_transpose_14/strided_slice_1?
Jdecoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOpSdecoder_4_sequential_9_conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02L
Jdecoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
;decoder_4/sequential_9/conv2d_transpose_14/conv2d_transposeConv2DBackpropInput9decoder_4/sequential_9/conv2d_transpose_14/stack:output:0Rdecoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0=decoder_4/sequential_9/conv2d_transpose_13/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2=
;decoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose?
Adecoder_4/sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOpJdecoder_4_sequential_9_conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02C
Adecoder_4/sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp?
2decoder_4/sequential_9/conv2d_transpose_14/BiasAddBiasAddDdecoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose:output:0Idecoder_4/sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@24
2decoder_4/sequential_9/conv2d_transpose_14/BiasAdd?
2decoder_4/sequential_9/conv2d_transpose_14/SigmoidSigmoid;decoder_4/sequential_9/conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@24
2decoder_4/sequential_9/conv2d_transpose_14/Sigmoid?
IdentityIdentity6decoder_4/sequential_9/conv2d_transpose_14/Sigmoid:y:0B^decoder_4/sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOpK^decoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOpB^decoder_4/sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOpK^decoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOpB^decoder_4/sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOpK^decoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp6^decoder_4/sequential_9/dense_9/BiasAdd/ReadVariableOp5^decoder_4/sequential_9/dense_9/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2?
Adecoder_4/sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOpAdecoder_4/sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp2?
Jdecoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOpJdecoder_4/sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2?
Adecoder_4/sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOpAdecoder_4/sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp2?
Jdecoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOpJdecoder_4/sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp2?
Adecoder_4/sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOpAdecoder_4/sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp2?
Jdecoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOpJdecoder_4/sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp2n
5decoder_4/sequential_9/dense_9/BiasAdd/ReadVariableOp5decoder_4/sequential_9/dense_9/BiasAdd/ReadVariableOp2l
4decoder_4/sequential_9/dense_9/MatMul/ReadVariableOp4decoder_4/sequential_9/dense_9/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79044
input_10
dense_9_79022
dense_9_79024
conv2d_transpose_12_79028
conv2d_transpose_12_79030
conv2d_transpose_13_79033
conv2d_transpose_13_79035
conv2d_transpose_14_79038
conv2d_transpose_14_79040
identity??+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCallinput_10dense_9_79022dense_9_79024*
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
GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_789652!
dense_9/StatefulPartitionedCall?
reshape_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *M
fHRF
D__inference_reshape_4_layer_call_and_return_conditional_losses_789952
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_79028conv2d_transpose_12_79030*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_788502-
+conv2d_transpose_12/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0conv2d_transpose_13_79033conv2d_transpose_13_79035*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_788952-
+conv2d_transpose_13/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0conv2d_transpose_14_79038conv2d_transpose_14_79040*
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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_789402-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?	
?
B__inference_dense_9_layer_call_and_return_conditional_losses_78965

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
?	
?
B__inference_dense_9_layer_call_and_return_conditional_losses_79728

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
?$
?
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_78895

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
?&
?
!__inference__traced_restore_79837
file_prefix#
assignvariableop_dense_9_kernel#
assignvariableop_1_dense_9_bias1
-assignvariableop_2_conv2d_transpose_12_kernel/
+assignvariableop_3_conv2d_transpose_12_bias1
-assignvariableop_4_conv2d_transpose_13_kernel/
+assignvariableop_5_conv2d_transpose_13_bias1
-assignvariableop_6_conv2d_transpose_14_kernel/
+assignvariableop_7_conv2d_transpose_14_bias

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
AssignVariableOpAssignVariableOpassignvariableop_dense_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp-assignvariableop_2_conv2d_transpose_12_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp+assignvariableop_3_conv2d_transpose_12_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_conv2d_transpose_13_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp+assignvariableop_5_conv2d_transpose_13_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_conv2d_transpose_14_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp+assignvariableop_7_conv2d_transpose_14_biasIdentity_7:output:0"/device:CPU:0*
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
?
?
3__inference_conv2d_transpose_12_layer_call_fn_78860

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
GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_788502
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
?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79390
x7
3sequential_9_dense_9_matmul_readvariableop_resource8
4sequential_9_dense_9_biasadd_readvariableop_resourceM
Isequential_9_conv2d_transpose_12_conv2d_transpose_readvariableop_resourceD
@sequential_9_conv2d_transpose_12_biasadd_readvariableop_resourceM
Isequential_9_conv2d_transpose_13_conv2d_transpose_readvariableop_resourceD
@sequential_9_conv2d_transpose_13_biasadd_readvariableop_resourceM
Isequential_9_conv2d_transpose_14_conv2d_transpose_readvariableop_resourceD
@sequential_9_conv2d_transpose_14_biasadd_readvariableop_resource
identity??7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp?@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp?@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp?@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?+sequential_9/dense_9/BiasAdd/ReadVariableOp?*sequential_9/dense_9/MatMul/ReadVariableOp?
*sequential_9/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_9/dense_9/MatMul/ReadVariableOp?
sequential_9/dense_9/MatMulMatMulx2sequential_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_9/dense_9/MatMul?
+sequential_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_9_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02-
+sequential_9/dense_9/BiasAdd/ReadVariableOp?
sequential_9/dense_9/BiasAddBiasAdd%sequential_9/dense_9/MatMul:product:03sequential_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_9/dense_9/BiasAdd?
sequential_9/dense_9/ReluRelu%sequential_9/dense_9/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_9/dense_9/Relu?
sequential_9/reshape_4/ShapeShape'sequential_9/dense_9/Relu:activations:0*
T0*
_output_shapes
:2
sequential_9/reshape_4/Shape?
*sequential_9/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_9/reshape_4/strided_slice/stack?
,sequential_9/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/reshape_4/strided_slice/stack_1?
,sequential_9/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/reshape_4/strided_slice/stack_2?
$sequential_9/reshape_4/strided_sliceStridedSlice%sequential_9/reshape_4/Shape:output:03sequential_9/reshape_4/strided_slice/stack:output:05sequential_9/reshape_4/strided_slice/stack_1:output:05sequential_9/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_9/reshape_4/strided_slice?
&sequential_9/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_9/reshape_4/Reshape/shape/1?
&sequential_9/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_9/reshape_4/Reshape/shape/2?
&sequential_9/reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential_9/reshape_4/Reshape/shape/3?
$sequential_9/reshape_4/Reshape/shapePack-sequential_9/reshape_4/strided_slice:output:0/sequential_9/reshape_4/Reshape/shape/1:output:0/sequential_9/reshape_4/Reshape/shape/2:output:0/sequential_9/reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_9/reshape_4/Reshape/shape?
sequential_9/reshape_4/ReshapeReshape'sequential_9/dense_9/Relu:activations:0-sequential_9/reshape_4/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_9/reshape_4/Reshape?
&sequential_9/conv2d_transpose_12/ShapeShape'sequential_9/reshape_4/Reshape:output:0*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_12/Shape?
4sequential_9/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_9/conv2d_transpose_12/strided_slice/stack?
6sequential_9/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_12/strided_slice/stack_1?
6sequential_9/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_12/strided_slice/stack_2?
.sequential_9/conv2d_transpose_12/strided_sliceStridedSlice/sequential_9/conv2d_transpose_12/Shape:output:0=sequential_9/conv2d_transpose_12/strided_slice/stack:output:0?sequential_9/conv2d_transpose_12/strided_slice/stack_1:output:0?sequential_9/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_9/conv2d_transpose_12/strided_slice?
(sequential_9/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_9/conv2d_transpose_12/stack/1?
(sequential_9/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_9/conv2d_transpose_12/stack/2?
(sequential_9/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_12/stack/3?
&sequential_9/conv2d_transpose_12/stackPack7sequential_9/conv2d_transpose_12/strided_slice:output:01sequential_9/conv2d_transpose_12/stack/1:output:01sequential_9/conv2d_transpose_12/stack/2:output:01sequential_9/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_12/stack?
6sequential_9/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_9/conv2d_transpose_12/strided_slice_1/stack?
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_1?
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_2?
0sequential_9/conv2d_transpose_12/strided_slice_1StridedSlice/sequential_9/conv2d_transpose_12/stack:output:0?sequential_9/conv2d_transpose_12/strided_slice_1/stack:output:0Asequential_9/conv2d_transpose_12/strided_slice_1/stack_1:output:0Asequential_9/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_9/conv2d_transpose_12/strided_slice_1?
@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_9_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02B
@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
1sequential_9/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput/sequential_9/conv2d_transpose_12/stack:output:0Hsequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0'sequential_9/reshape_4/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
23
1sequential_9/conv2d_transpose_12/conv2d_transpose?
7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp@sequential_9_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp?
(sequential_9/conv2d_transpose_12/BiasAddBiasAdd:sequential_9/conv2d_transpose_12/conv2d_transpose:output:0?sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2*
(sequential_9/conv2d_transpose_12/BiasAdd?
%sequential_9/conv2d_transpose_12/ReluRelu1sequential_9/conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2'
%sequential_9/conv2d_transpose_12/Relu?
&sequential_9/conv2d_transpose_13/ShapeShape3sequential_9/conv2d_transpose_12/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_13/Shape?
4sequential_9/conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_9/conv2d_transpose_13/strided_slice/stack?
6sequential_9/conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_13/strided_slice/stack_1?
6sequential_9/conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_13/strided_slice/stack_2?
.sequential_9/conv2d_transpose_13/strided_sliceStridedSlice/sequential_9/conv2d_transpose_13/Shape:output:0=sequential_9/conv2d_transpose_13/strided_slice/stack:output:0?sequential_9/conv2d_transpose_13/strided_slice/stack_1:output:0?sequential_9/conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_9/conv2d_transpose_13/strided_slice?
(sequential_9/conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_13/stack/1?
(sequential_9/conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_13/stack/2?
(sequential_9/conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_9/conv2d_transpose_13/stack/3?
&sequential_9/conv2d_transpose_13/stackPack7sequential_9/conv2d_transpose_13/strided_slice:output:01sequential_9/conv2d_transpose_13/stack/1:output:01sequential_9/conv2d_transpose_13/stack/2:output:01sequential_9/conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_13/stack?
6sequential_9/conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_9/conv2d_transpose_13/strided_slice_1/stack?
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_1?
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_2?
0sequential_9/conv2d_transpose_13/strided_slice_1StridedSlice/sequential_9/conv2d_transpose_13/stack:output:0?sequential_9/conv2d_transpose_13/strided_slice_1/stack:output:0Asequential_9/conv2d_transpose_13/strided_slice_1/stack_1:output:0Asequential_9/conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_9/conv2d_transpose_13/strided_slice_1?
@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_9_conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02B
@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
1sequential_9/conv2d_transpose_13/conv2d_transposeConv2DBackpropInput/sequential_9/conv2d_transpose_13/stack:output:0Hsequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:03sequential_9/conv2d_transpose_12/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
23
1sequential_9/conv2d_transpose_13/conv2d_transpose?
7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp@sequential_9_conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype029
7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp?
(sequential_9/conv2d_transpose_13/BiasAddBiasAdd:sequential_9/conv2d_transpose_13/conv2d_transpose:output:0?sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2*
(sequential_9/conv2d_transpose_13/BiasAdd?
%sequential_9/conv2d_transpose_13/ReluRelu1sequential_9/conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2'
%sequential_9/conv2d_transpose_13/Relu?
&sequential_9/conv2d_transpose_14/ShapeShape3sequential_9/conv2d_transpose_13/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_14/Shape?
4sequential_9/conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_9/conv2d_transpose_14/strided_slice/stack?
6sequential_9/conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_14/strided_slice/stack_1?
6sequential_9/conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_14/strided_slice/stack_2?
.sequential_9/conv2d_transpose_14/strided_sliceStridedSlice/sequential_9/conv2d_transpose_14/Shape:output:0=sequential_9/conv2d_transpose_14/strided_slice/stack:output:0?sequential_9/conv2d_transpose_14/strided_slice/stack_1:output:0?sequential_9/conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_9/conv2d_transpose_14/strided_slice?
(sequential_9/conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_14/stack/1?
(sequential_9/conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_14/stack/2?
(sequential_9/conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_9/conv2d_transpose_14/stack/3?
&sequential_9/conv2d_transpose_14/stackPack7sequential_9/conv2d_transpose_14/strided_slice:output:01sequential_9/conv2d_transpose_14/stack/1:output:01sequential_9/conv2d_transpose_14/stack/2:output:01sequential_9/conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_14/stack?
6sequential_9/conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_9/conv2d_transpose_14/strided_slice_1/stack?
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_1?
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_2?
0sequential_9/conv2d_transpose_14/strided_slice_1StridedSlice/sequential_9/conv2d_transpose_14/stack:output:0?sequential_9/conv2d_transpose_14/strided_slice_1/stack:output:0Asequential_9/conv2d_transpose_14/strided_slice_1/stack_1:output:0Asequential_9/conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_9/conv2d_transpose_14/strided_slice_1?
@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_9_conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02B
@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
1sequential_9/conv2d_transpose_14/conv2d_transposeConv2DBackpropInput/sequential_9/conv2d_transpose_14/stack:output:0Hsequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:03sequential_9/conv2d_transpose_13/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
23
1sequential_9/conv2d_transpose_14/conv2d_transpose?
7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp@sequential_9_conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp?
(sequential_9/conv2d_transpose_14/BiasAddBiasAdd:sequential_9/conv2d_transpose_14/conv2d_transpose:output:0?sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2*
(sequential_9/conv2d_transpose_14/BiasAdd?
(sequential_9/conv2d_transpose_14/SigmoidSigmoid1sequential_9/conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2*
(sequential_9/conv2d_transpose_14/Sigmoid?
IdentityIdentity,sequential_9/conv2d_transpose_14/Sigmoid:y:08^sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOpA^sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp8^sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOpA^sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp8^sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOpA^sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp,^sequential_9/dense_9/BiasAdd/ReadVariableOp+^sequential_9/dense_9/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2r
7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp2?
@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2r
7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp2?
@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp2r
7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp2?
@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp2Z
+sequential_9/dense_9/BiasAdd/ReadVariableOp+sequential_9/dense_9/BiasAdd/ReadVariableOp2X
*sequential_9/dense_9/MatMul/ReadVariableOp*sequential_9/dense_9/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
#__inference_signature_wrapper_79309
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
GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_788152
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
?
?
)__inference_decoder_4_layer_call_fn_79286
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
GPU2*0J 8? *M
fHRF
D__inference_decoder_4_layer_call_and_return_conditional_losses_792462
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
,__inference_sequential_9_layer_call_fn_79696

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
GPU2*0J 8? *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_790722
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
??
?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79471
x7
3sequential_9_dense_9_matmul_readvariableop_resource8
4sequential_9_dense_9_biasadd_readvariableop_resourceM
Isequential_9_conv2d_transpose_12_conv2d_transpose_readvariableop_resourceD
@sequential_9_conv2d_transpose_12_biasadd_readvariableop_resourceM
Isequential_9_conv2d_transpose_13_conv2d_transpose_readvariableop_resourceD
@sequential_9_conv2d_transpose_13_biasadd_readvariableop_resourceM
Isequential_9_conv2d_transpose_14_conv2d_transpose_readvariableop_resourceD
@sequential_9_conv2d_transpose_14_biasadd_readvariableop_resource
identity??7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp?@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp?@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp?@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?+sequential_9/dense_9/BiasAdd/ReadVariableOp?*sequential_9/dense_9/MatMul/ReadVariableOp?
*sequential_9/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_9/dense_9/MatMul/ReadVariableOp?
sequential_9/dense_9/MatMulMatMulx2sequential_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_9/dense_9/MatMul?
+sequential_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_9_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02-
+sequential_9/dense_9/BiasAdd/ReadVariableOp?
sequential_9/dense_9/BiasAddBiasAdd%sequential_9/dense_9/MatMul:product:03sequential_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
sequential_9/dense_9/BiasAdd?
sequential_9/dense_9/ReluRelu%sequential_9/dense_9/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
sequential_9/dense_9/Relu?
sequential_9/reshape_4/ShapeShape'sequential_9/dense_9/Relu:activations:0*
T0*
_output_shapes
:2
sequential_9/reshape_4/Shape?
*sequential_9/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_9/reshape_4/strided_slice/stack?
,sequential_9/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/reshape_4/strided_slice/stack_1?
,sequential_9/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/reshape_4/strided_slice/stack_2?
$sequential_9/reshape_4/strided_sliceStridedSlice%sequential_9/reshape_4/Shape:output:03sequential_9/reshape_4/strided_slice/stack:output:05sequential_9/reshape_4/strided_slice/stack_1:output:05sequential_9/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_9/reshape_4/strided_slice?
&sequential_9/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_9/reshape_4/Reshape/shape/1?
&sequential_9/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_9/reshape_4/Reshape/shape/2?
&sequential_9/reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential_9/reshape_4/Reshape/shape/3?
$sequential_9/reshape_4/Reshape/shapePack-sequential_9/reshape_4/strided_slice:output:0/sequential_9/reshape_4/Reshape/shape/1:output:0/sequential_9/reshape_4/Reshape/shape/2:output:0/sequential_9/reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_9/reshape_4/Reshape/shape?
sequential_9/reshape_4/ReshapeReshape'sequential_9/dense_9/Relu:activations:0-sequential_9/reshape_4/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_9/reshape_4/Reshape?
&sequential_9/conv2d_transpose_12/ShapeShape'sequential_9/reshape_4/Reshape:output:0*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_12/Shape?
4sequential_9/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_9/conv2d_transpose_12/strided_slice/stack?
6sequential_9/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_12/strided_slice/stack_1?
6sequential_9/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_12/strided_slice/stack_2?
.sequential_9/conv2d_transpose_12/strided_sliceStridedSlice/sequential_9/conv2d_transpose_12/Shape:output:0=sequential_9/conv2d_transpose_12/strided_slice/stack:output:0?sequential_9/conv2d_transpose_12/strided_slice/stack_1:output:0?sequential_9/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_9/conv2d_transpose_12/strided_slice?
(sequential_9/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_9/conv2d_transpose_12/stack/1?
(sequential_9/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_9/conv2d_transpose_12/stack/2?
(sequential_9/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_12/stack/3?
&sequential_9/conv2d_transpose_12/stackPack7sequential_9/conv2d_transpose_12/strided_slice:output:01sequential_9/conv2d_transpose_12/stack/1:output:01sequential_9/conv2d_transpose_12/stack/2:output:01sequential_9/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_12/stack?
6sequential_9/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_9/conv2d_transpose_12/strided_slice_1/stack?
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_1?
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_12/strided_slice_1/stack_2?
0sequential_9/conv2d_transpose_12/strided_slice_1StridedSlice/sequential_9/conv2d_transpose_12/stack:output:0?sequential_9/conv2d_transpose_12/strided_slice_1/stack:output:0Asequential_9/conv2d_transpose_12/strided_slice_1/stack_1:output:0Asequential_9/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_9/conv2d_transpose_12/strided_slice_1?
@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_9_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02B
@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
1sequential_9/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput/sequential_9/conv2d_transpose_12/stack:output:0Hsequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0'sequential_9/reshape_4/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
23
1sequential_9/conv2d_transpose_12/conv2d_transpose?
7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp@sequential_9_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp?
(sequential_9/conv2d_transpose_12/BiasAddBiasAdd:sequential_9/conv2d_transpose_12/conv2d_transpose:output:0?sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2*
(sequential_9/conv2d_transpose_12/BiasAdd?
%sequential_9/conv2d_transpose_12/ReluRelu1sequential_9/conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2'
%sequential_9/conv2d_transpose_12/Relu?
&sequential_9/conv2d_transpose_13/ShapeShape3sequential_9/conv2d_transpose_12/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_13/Shape?
4sequential_9/conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_9/conv2d_transpose_13/strided_slice/stack?
6sequential_9/conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_13/strided_slice/stack_1?
6sequential_9/conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_13/strided_slice/stack_2?
.sequential_9/conv2d_transpose_13/strided_sliceStridedSlice/sequential_9/conv2d_transpose_13/Shape:output:0=sequential_9/conv2d_transpose_13/strided_slice/stack:output:0?sequential_9/conv2d_transpose_13/strided_slice/stack_1:output:0?sequential_9/conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_9/conv2d_transpose_13/strided_slice?
(sequential_9/conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_13/stack/1?
(sequential_9/conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_13/stack/2?
(sequential_9/conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_9/conv2d_transpose_13/stack/3?
&sequential_9/conv2d_transpose_13/stackPack7sequential_9/conv2d_transpose_13/strided_slice:output:01sequential_9/conv2d_transpose_13/stack/1:output:01sequential_9/conv2d_transpose_13/stack/2:output:01sequential_9/conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_13/stack?
6sequential_9/conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_9/conv2d_transpose_13/strided_slice_1/stack?
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_1?
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_13/strided_slice_1/stack_2?
0sequential_9/conv2d_transpose_13/strided_slice_1StridedSlice/sequential_9/conv2d_transpose_13/stack:output:0?sequential_9/conv2d_transpose_13/strided_slice_1/stack:output:0Asequential_9/conv2d_transpose_13/strided_slice_1/stack_1:output:0Asequential_9/conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_9/conv2d_transpose_13/strided_slice_1?
@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_9_conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02B
@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
1sequential_9/conv2d_transpose_13/conv2d_transposeConv2DBackpropInput/sequential_9/conv2d_transpose_13/stack:output:0Hsequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:03sequential_9/conv2d_transpose_12/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
23
1sequential_9/conv2d_transpose_13/conv2d_transpose?
7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp@sequential_9_conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype029
7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp?
(sequential_9/conv2d_transpose_13/BiasAddBiasAdd:sequential_9/conv2d_transpose_13/conv2d_transpose:output:0?sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2*
(sequential_9/conv2d_transpose_13/BiasAdd?
%sequential_9/conv2d_transpose_13/ReluRelu1sequential_9/conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2'
%sequential_9/conv2d_transpose_13/Relu?
&sequential_9/conv2d_transpose_14/ShapeShape3sequential_9/conv2d_transpose_13/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_14/Shape?
4sequential_9/conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_9/conv2d_transpose_14/strided_slice/stack?
6sequential_9/conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_14/strided_slice/stack_1?
6sequential_9/conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_9/conv2d_transpose_14/strided_slice/stack_2?
.sequential_9/conv2d_transpose_14/strided_sliceStridedSlice/sequential_9/conv2d_transpose_14/Shape:output:0=sequential_9/conv2d_transpose_14/strided_slice/stack:output:0?sequential_9/conv2d_transpose_14/strided_slice/stack_1:output:0?sequential_9/conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_9/conv2d_transpose_14/strided_slice?
(sequential_9/conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_14/stack/1?
(sequential_9/conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_9/conv2d_transpose_14/stack/2?
(sequential_9/conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_9/conv2d_transpose_14/stack/3?
&sequential_9/conv2d_transpose_14/stackPack7sequential_9/conv2d_transpose_14/strided_slice:output:01sequential_9/conv2d_transpose_14/stack/1:output:01sequential_9/conv2d_transpose_14/stack/2:output:01sequential_9/conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_9/conv2d_transpose_14/stack?
6sequential_9/conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_9/conv2d_transpose_14/strided_slice_1/stack?
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_1?
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_9/conv2d_transpose_14/strided_slice_1/stack_2?
0sequential_9/conv2d_transpose_14/strided_slice_1StridedSlice/sequential_9/conv2d_transpose_14/stack:output:0?sequential_9/conv2d_transpose_14/strided_slice_1/stack:output:0Asequential_9/conv2d_transpose_14/strided_slice_1/stack_1:output:0Asequential_9/conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_9/conv2d_transpose_14/strided_slice_1?
@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_9_conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02B
@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
1sequential_9/conv2d_transpose_14/conv2d_transposeConv2DBackpropInput/sequential_9/conv2d_transpose_14/stack:output:0Hsequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:03sequential_9/conv2d_transpose_13/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
23
1sequential_9/conv2d_transpose_14/conv2d_transpose?
7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp@sequential_9_conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp?
(sequential_9/conv2d_transpose_14/BiasAddBiasAdd:sequential_9/conv2d_transpose_14/conv2d_transpose:output:0?sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2*
(sequential_9/conv2d_transpose_14/BiasAdd?
(sequential_9/conv2d_transpose_14/SigmoidSigmoid1sequential_9/conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2*
(sequential_9/conv2d_transpose_14/Sigmoid?
IdentityIdentity,sequential_9/conv2d_transpose_14/Sigmoid:y:08^sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOpA^sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp8^sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOpA^sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp8^sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOpA^sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp,^sequential_9/dense_9/BiasAdd/ReadVariableOp+^sequential_9/dense_9/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2r
7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp7sequential_9/conv2d_transpose_12/BiasAdd/ReadVariableOp2?
@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp@sequential_9/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2r
7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp7sequential_9/conv2d_transpose_13/BiasAdd/ReadVariableOp2?
@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp@sequential_9/conv2d_transpose_13/conv2d_transpose/ReadVariableOp2r
7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp7sequential_9/conv2d_transpose_14/BiasAdd/ReadVariableOp2?
@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp@sequential_9/conv2d_transpose_14/conv2d_transpose/ReadVariableOp2Z
+sequential_9/dense_9/BiasAdd/ReadVariableOp+sequential_9/dense_9/BiasAdd/ReadVariableOp2X
*sequential_9/dense_9/MatMul/ReadVariableOp*sequential_9/dense_9/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?
|
'__inference_dense_9_layer_call_fn_79737

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
GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_789652
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
?z
?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79675

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource@
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_12_biasadd_readvariableop_resource@
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_13_biasadd_readvariableop_resource@
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_14_biasadd_readvariableop_resource
identity??*conv2d_transpose_12/BiasAdd/ReadVariableOp?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?*conv2d_transpose_13/BiasAdd/ReadVariableOp?3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?*conv2d_transpose_14/BiasAdd/ReadVariableOp?3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulinputs%dense_9/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
dense_9/BiasAddr
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*)
_output_shapes
:???????????2
dense_9/Relul
reshape_4/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:2
reshape_4/Shape?
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stack?
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1?
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2?
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2x
reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_4/Reshape/shape/3?
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0"reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shape?
reshape_4/ReshapeReshapedense_9/Relu:activations:0 reshape_4/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2
reshape_4/Reshape?
conv2d_transpose_12/ShapeShapereshape_4/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape?
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack?
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1?
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_12/stack/2|
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_12/stack/3?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack?
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack?
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1?
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0reshape_4/Reshape:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose?
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_12/BiasAdd/ReadVariableOp?
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_12/BiasAdd?
conv2d_transpose_12/ReluRelu$conv2d_transpose_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2
conv2d_transpose_12/Relu?
conv2d_transpose_13/ShapeShape&conv2d_transpose_12/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape?
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack?
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1?
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2?
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_13/stack/3?
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack?
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack?
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1?
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2?
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1?
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_12/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose?
*conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_13/BiasAdd/ReadVariableOp?
conv2d_transpose_13/BiasAddBiasAdd-conv2d_transpose_13/conv2d_transpose:output:02conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_13/BiasAdd?
conv2d_transpose_13/ReluRelu$conv2d_transpose_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_transpose_13/Relu?
conv2d_transpose_14/ShapeShape&conv2d_transpose_13/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape?
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack?
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1?
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2?
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/3?
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack?
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack?
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1?
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2?
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1?
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_13/Relu:activations:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose?
*conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_14/BiasAdd/ReadVariableOp?
conv2d_transpose_14/BiasAddBiasAdd-conv2d_transpose_14/conv2d_transpose:output:02conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_14/BiasAdd?
conv2d_transpose_14/SigmoidSigmoid$conv2d_transpose_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_14/Sigmoid?
IdentityIdentityconv2d_transpose_14/Sigmoid:y:0+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp+^conv2d_transpose_13/BiasAdd/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp+^conv2d_transpose_14/BiasAdd/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_13/BiasAdd/ReadVariableOp*conv2d_transpose_13/BiasAdd/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_14/BiasAdd/ReadVariableOp*conv2d_transpose_14/BiasAdd/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_decoder_4_layer_call_fn_79492
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
GPU2*0J 8? *M
fHRF
D__inference_decoder_4_layer_call_and_return_conditional_losses_792462
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

?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79222
input_1
sequential_9_79204
sequential_9_79206
sequential_9_79208
sequential_9_79210
sequential_9_79212
sequential_9_79214
sequential_9_79216
sequential_9_79218
identity??$sequential_9/StatefulPartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_9_79204sequential_9_79206sequential_9_79208sequential_9_79210sequential_9_79212sequential_9_79214sequential_9_79216sequential_9_79218*
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
GPU2*0J 8? *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_791182&
$sequential_9/StatefulPartitionedCall?
IdentityIdentity-sequential_9/StatefulPartitionedCall:output:0%^sequential_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79201
input_1
sequential_9_79183
sequential_9_79185
sequential_9_79187
sequential_9_79189
sequential_9_79191
sequential_9_79193
sequential_9_79195
sequential_9_79197
identity??$sequential_9/StatefulPartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_9_79183sequential_9_79185sequential_9_79187sequential_9_79189sequential_9_79191sequential_9_79193sequential_9_79195sequential_9_79197*
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
GPU2*0J 8? *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_790722&
$sequential_9/StatefulPartitionedCall?
IdentityIdentity-sequential_9/StatefulPartitionedCall:output:0%^sequential_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::::2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:P L
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
_tf_keras_model?{"class_name": "Decoder", "name": "decoder_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Decoder"}}
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
*S&call_and_return_all_conditional_losses"?2
_tf_keras_sequential?2{"class_name": "Sequential", "name": "sequential_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_10"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 16384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [16, 16, 64]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_10"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 16384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [16, 16, 64]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 16384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}}
?
!regularization_losses
"trainable_variables
#	variables
$	keras_api
W__call__
*X&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [16, 16, 64]}}}
?


kernel
bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?


kernel
bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
[__call__
*\&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 64]}}
?


kernel
bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
]__call__
*^&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 32]}}
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
": 
??2dense_9/kernel
:??2dense_9/bias
4:2@@2conv2d_transpose_12/kernel
&:$@2conv2d_transpose_12/bias
4:2 @2conv2d_transpose_13/kernel
&:$ 2conv2d_transpose_13/bias
4:2 2conv2d_transpose_14/kernel
&:$2conv2d_transpose_14/bias
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
 __inference__wrapped_model_78815?
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
)__inference_decoder_4_layer_call_fn_79513
)__inference_decoder_4_layer_call_fn_79492
)__inference_decoder_4_layer_call_fn_79265
)__inference_decoder_4_layer_call_fn_79286?
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
D__inference_decoder_4_layer_call_and_return_conditional_losses_79471
D__inference_decoder_4_layer_call_and_return_conditional_losses_79201
D__inference_decoder_4_layer_call_and_return_conditional_losses_79222
D__inference_decoder_4_layer_call_and_return_conditional_losses_79390?
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
?2?
,__inference_sequential_9_layer_call_fn_79137
,__inference_sequential_9_layer_call_fn_79696
,__inference_sequential_9_layer_call_fn_79717
,__inference_sequential_9_layer_call_fn_79091?
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
G__inference_sequential_9_layer_call_and_return_conditional_losses_79594
G__inference_sequential_9_layer_call_and_return_conditional_losses_79044
G__inference_sequential_9_layer_call_and_return_conditional_losses_79675
G__inference_sequential_9_layer_call_and_return_conditional_losses_79019?
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
#__inference_signature_wrapper_79309input_1"?
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
'__inference_dense_9_layer_call_fn_79737?
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
B__inference_dense_9_layer_call_and_return_conditional_losses_79728?
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
)__inference_reshape_4_layer_call_fn_79756?
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
D__inference_reshape_4_layer_call_and_return_conditional_losses_79751?
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
3__inference_conv2d_transpose_12_layer_call_fn_78860?
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
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_78850?
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
3__inference_conv2d_transpose_13_layer_call_fn_78905?
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
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_78895?
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
3__inference_conv2d_transpose_14_layer_call_fn_78950?
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
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_78940?
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
 __inference__wrapped_model_78815y0?-
&?#
!?
input_1?????????
? ";?8
6
output_1*?'
output_1?????????@@?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_78850?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
3__inference_conv2d_transpose_12_layer_call_fn_78860?I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_78895?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
3__inference_conv2d_transpose_13_layer_call_fn_78905?I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_78940?I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
3__inference_conv2d_transpose_14_layer_call_fn_78950?I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
D__inference_decoder_4_layer_call_and_return_conditional_losses_79201?4?1
*?'
!?
input_1?????????
p
? "??<
5?2
0+???????????????????????????
? ?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79222?4?1
*?'
!?
input_1?????????
p 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79390i.?+
$?!
?
x?????????
p
? "-?*
#? 
0?????????@@
? ?
D__inference_decoder_4_layer_call_and_return_conditional_losses_79471i.?+
$?!
?
x?????????
p 
? "-?*
#? 
0?????????@@
? ?
)__inference_decoder_4_layer_call_fn_79265t4?1
*?'
!?
input_1?????????
p
? "2?/+????????????????????????????
)__inference_decoder_4_layer_call_fn_79286t4?1
*?'
!?
input_1?????????
p 
? "2?/+????????????????????????????
)__inference_decoder_4_layer_call_fn_79492n.?+
$?!
?
x?????????
p
? "2?/+????????????????????????????
)__inference_decoder_4_layer_call_fn_79513n.?+
$?!
?
x?????????
p 
? "2?/+????????????????????????????
B__inference_dense_9_layer_call_and_return_conditional_losses_79728^/?,
%?"
 ?
inputs?????????
? "'?$
?
0???????????
? |
'__inference_dense_9_layer_call_fn_79737Q/?,
%?"
 ?
inputs?????????
? "?????????????
D__inference_reshape_4_layer_call_and_return_conditional_losses_79751b1?.
'?$
"?
inputs???????????
? "-?*
#? 
0?????????@
? ?
)__inference_reshape_4_layer_call_fn_79756U1?.
'?$
"?
inputs???????????
? " ??????????@?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79019?9?6
/?,
"?
input_10?????????
p

 
? "??<
5?2
0+???????????????????????????
? ?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79044?9?6
/?,
"?
input_10?????????
p 

 
? "??<
5?2
0+???????????????????????????
? ?
G__inference_sequential_9_layer_call_and_return_conditional_losses_79594r7?4
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
G__inference_sequential_9_layer_call_and_return_conditional_losses_79675r7?4
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
,__inference_sequential_9_layer_call_fn_79091y9?6
/?,
"?
input_10?????????
p

 
? "2?/+????????????????????????????
,__inference_sequential_9_layer_call_fn_79137y9?6
/?,
"?
input_10?????????
p 

 
? "2?/+????????????????????????????
,__inference_sequential_9_layer_call_fn_79696w7?4
-?*
 ?
inputs?????????
p

 
? "2?/+????????????????????????????
,__inference_sequential_9_layer_call_fn_79717w7?4
-?*
 ?
inputs?????????
p 

 
? "2?/+????????????????????????????
#__inference_signature_wrapper_79309?;?8
? 
1?.
,
input_1!?
input_1?????????";?8
6
output_1*?'
output_1?????????@@