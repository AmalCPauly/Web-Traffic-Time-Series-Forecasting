џ
Я
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.11.02v2.11.0-rc2-15-g6290819256d8џЩ
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

Adam/v/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_16/bias
y
(Adam/v/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/bias*
_output_shapes
:*
dtype0

Adam/m/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_16/bias
y
(Adam/m/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/bias*
_output_shapes
:*
dtype0

Adam/v/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/v/dense_16/kernel

*Adam/v/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/kernel*
_output_shapes

:d*
dtype0

Adam/m/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/m/dense_16/kernel

*Adam/m/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/kernel*
_output_shapes

:d*
dtype0

 Adam/v/lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/v/lstm_16/lstm_cell_16/bias

4Adam/v/lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_16/lstm_cell_16/bias*
_output_shapes	
:*
dtype0

 Adam/m/lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/m/lstm_16/lstm_cell_16/bias

4Adam/m/lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_16/lstm_cell_16/bias*
_output_shapes	
:*
dtype0
Е
,Adam/v/lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/v/lstm_16/lstm_cell_16/recurrent_kernel
Ў
@Adam/v/lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_16/lstm_cell_16/recurrent_kernel*
_output_shapes
:	d*
dtype0
Е
,Adam/m/lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/m/lstm_16/lstm_cell_16/recurrent_kernel
Ў
@Adam/m/lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_16/lstm_cell_16/recurrent_kernel*
_output_shapes
:	d*
dtype0
Ё
"Adam/v/lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/v/lstm_16/lstm_cell_16/kernel

6Adam/v/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_16/lstm_cell_16/kernel*
_output_shapes
:	*
dtype0
Ё
"Adam/m/lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/m/lstm_16/lstm_cell_16/kernel

6Adam/m/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_16/lstm_cell_16/kernel*
_output_shapes
:	*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_16/lstm_cell_16/bias

-lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/bias*
_output_shapes	
:*
dtype0
Ї
%lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_16/lstm_cell_16/recurrent_kernel
 
9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_16/lstm_cell_16/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_16/lstm_cell_16/kernel

/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/kernel*
_output_shapes
:	*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:d*
dtype0

serving_default_lstm_16_inputPlaceholder*+
_output_shapes
:џџџџџџџџџZ*
dtype0* 
shape:џџџџџџџџџZ
Т
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_16_inputlstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biasdense_16/kerneldense_16/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_4913334

NoOpNoOp
§(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*И(
valueЎ(BЋ( BЄ(

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
І
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
А
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
%trace_0
&trace_1
'trace_2
(trace_3* 
6
)trace_0
*trace_1
+trace_2
,trace_3* 
* 

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla*

4serving_default* 

0
1
2*

0
1
2*
* 


5states
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
;trace_0
<trace_1
=trace_2
>trace_3* 
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
* 
у
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator
J
state_size

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_16/lstm_cell_16/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_16/lstm_cell_16/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_16/lstm_cell_16/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

R0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
R
.0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
S0
U1
W2
Y3
[4*
'
T0
V1
X2
Z3
\4*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
* 

]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

btrace_0
ctrace_1* 

dtrace_0
etrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
f	variables
g	keras_api
	htotal
	icount*
mg
VARIABLE_VALUE"Adam/m/lstm_16/lstm_cell_16/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_16/lstm_cell_16/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_16/lstm_cell_16/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/v/lstm_16/lstm_cell_16/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_16/lstm_cell_16/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_16/lstm_cell_16/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_16/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_16/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_16/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_16/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

h0
i1*

f	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOp9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp-lstm_16/lstm_cell_16/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp6Adam/m/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOp6Adam/v/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOp@Adam/m/lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp@Adam/v/lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp4Adam/m/lstm_16/lstm_cell_16/bias/Read/ReadVariableOp4Adam/v/lstm_16/lstm_cell_16/bias/Read/ReadVariableOp*Adam/m/dense_16/kernel/Read/ReadVariableOp*Adam/v/dense_16/kernel/Read/ReadVariableOp(Adam/m/dense_16/bias/Read/ReadVariableOp(Adam/v/dense_16/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst* 
Tin
2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_4914487

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_16/kerneldense_16/biaslstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/bias	iterationlearning_rate"Adam/m/lstm_16/lstm_cell_16/kernel"Adam/v/lstm_16/lstm_cell_16/kernel,Adam/m/lstm_16/lstm_cell_16/recurrent_kernel,Adam/v/lstm_16/lstm_cell_16/recurrent_kernel Adam/m/lstm_16/lstm_cell_16/bias Adam/v/lstm_16/lstm_cell_16/biasAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biastotalcount*
Tin
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_4914554зу
ЌK

D__inference_lstm_16_layer_call_and_return_conditional_losses_4913213

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	@
-lstm_cell_16_matmul_1_readvariableop_resource:	d;
,lstm_cell_16_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ZџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4913128*
condR
while_cond_4913127*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџZ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
к\

J__inference_sequential_16_layer_call_and_return_conditional_losses_4913515

inputsF
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:	H
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:	dC
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:	9
'dense_16_matmul_readvariableop_resource:d6
(dense_16_biasadd_readvariableop_resource:
identityЂdense_16/BiasAdd/ReadVariableOpЂdense_16/MatMul/ReadVariableOpЂ+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpЂ*lstm_16/lstm_cell_16/MatMul/ReadVariableOpЂ,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpЂlstm_16/whileC
lstm_16/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_16/transpose	Transposeinputslstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:ZџџџџџџџџџT
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:g
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ў
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ј
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split~
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdx
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdu
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЂ
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   f
$lstm_16/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0-lstm_16/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_16_while_body_4913424*&
condR
lstm_16_while_cond_4913423*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ю
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsp
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
dense_16/MatMulMatMul lstm_16/strided_slice_3:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_16/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2Z
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp*lstm_16/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
ЌK

D__inference_lstm_16_layer_call_and_return_conditional_losses_4914290

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	@
-lstm_cell_16_matmul_1_readvariableop_resource:	d;
,lstm_cell_16_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ZџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4914205*
condR
while_cond_4914204*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџZ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
К
Ш
while_cond_4914204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914204___redundant_placeholder05
1while_while_cond_4914204___redundant_placeholder15
1while_while_cond_4914204___redundant_placeholder25
1while_while_cond_4914204___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Љ9
б
while_body_4913770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_4912776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4912776___redundant_placeholder05
1while_while_cond_4912776___redundant_placeholder15
1while_while_cond_4912776___redundant_placeholder25
1while_while_cond_4912776___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
й
ђ
/__inference_sequential_16_layer_call_fn_4913349

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:d
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913032o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs


ш
lstm_16_while_cond_4913574,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1E
Alstm_16_while_lstm_16_while_cond_4913574___redundant_placeholder0E
Alstm_16_while_lstm_16_while_cond_4913574___redundant_placeholder1E
Alstm_16_while_lstm_16_while_cond_4913574___redundant_placeholder2E
Alstm_16_while_lstm_16_while_cond_4913574___redundant_placeholder3
lstm_16_while_identity

lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: [
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
й
ђ
/__inference_sequential_16_layer_call_fn_4913364

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:d
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913255o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
Љ9
б
while_body_4913128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ЯK

D__inference_lstm_16_layer_call_and_return_conditional_losses_4913855
inputs_0>
+lstm_cell_16_matmul_readvariableop_resource:	@
-lstm_cell_16_matmul_1_readvariableop_resource:	d;
,lstm_cell_16_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4913770*
condR
while_cond_4913769*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
о

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914375

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_1
ж

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912717

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
р
к
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913255

inputs"
lstm_16_4913242:	"
lstm_16_4913244:	d
lstm_16_4913246:	"
dense_16_4913249:d
dense_16_4913251:
identityЂ dense_16/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCall
lstm_16/StatefulPartitionedCallStatefulPartitionedCallinputslstm_16_4913242lstm_16_4913244lstm_16_4913246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913213
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_16_4913249dense_16_4913251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_4913025x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_16/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
љ
Ж
)__inference_lstm_16_layer_call_fn_4913699

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913007o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџZ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
ж

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912569

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
ЌK

D__inference_lstm_16_layer_call_and_return_conditional_losses_4914145

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	@
-lstm_cell_16_matmul_1_readvariableop_resource:	d;
,lstm_cell_16_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ZџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4914060*
condR
while_cond_4914059*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџZ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
Ѓ

(sequential_16_lstm_16_while_cond_4912410H
Dsequential_16_lstm_16_while_sequential_16_lstm_16_while_loop_counterN
Jsequential_16_lstm_16_while_sequential_16_lstm_16_while_maximum_iterations+
'sequential_16_lstm_16_while_placeholder-
)sequential_16_lstm_16_while_placeholder_1-
)sequential_16_lstm_16_while_placeholder_2-
)sequential_16_lstm_16_while_placeholder_3J
Fsequential_16_lstm_16_while_less_sequential_16_lstm_16_strided_slice_1a
]sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_4912410___redundant_placeholder0a
]sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_4912410___redundant_placeholder1a
]sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_4912410___redundant_placeholder2a
]sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_4912410___redundant_placeholder3(
$sequential_16_lstm_16_while_identity
К
 sequential_16/lstm_16/while/LessLess'sequential_16_lstm_16_while_placeholderFsequential_16_lstm_16_while_less_sequential_16_lstm_16_strided_slice_1*
T0*
_output_shapes
: w
$sequential_16/lstm_16/while/IdentityIdentity$sequential_16/lstm_16/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_16_lstm_16_while_identity-sequential_16/lstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
9

D__inference_lstm_16_layer_call_and_return_conditional_losses_4912847

inputs'
lstm_cell_16_4912763:	'
lstm_cell_16_4912765:	d#
lstm_cell_16_4912767:	
identityЂ$lstm_cell_16/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskљ
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_4912763lstm_cell_16_4912765lstm_cell_16_4912767*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912717n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_4912763lstm_cell_16_4912765lstm_cell_16_4912767*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4912777*
condR
while_cond_4912776*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdu
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

И
)__inference_lstm_16_layer_call_fn_4913677
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4912654o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
љ
Ж
)__inference_lstm_16_layer_call_fn_4913710

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913213o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџZ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
К
Ш
while_cond_4914059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914059___redundant_placeholder05
1while_while_cond_4914059___redundant_placeholder15
1while_while_cond_4914059___redundant_placeholder25
1while_while_cond_4914059___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ЯK

D__inference_lstm_16_layer_call_and_return_conditional_losses_4914000
inputs_0>
+lstm_cell_16_matmul_readvariableop_resource:	@
-lstm_cell_16_matmul_1_readvariableop_resource:	d;
,lstm_cell_16_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4913915*
condR
while_cond_4913914*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
К
Ш
while_cond_4913769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4913769___redundant_placeholder05
1while_while_cond_4913769___redundant_placeholder15
1while_while_cond_4913769___redundant_placeholder25
1while_while_cond_4913769___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Љ9
б
while_body_4913915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
э
ї
.__inference_lstm_cell_16_layer_call_fn_4914326

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_1
ѕ
с
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913299
lstm_16_input"
lstm_16_4913286:	"
lstm_16_4913288:	d
lstm_16_4913290:	"
dense_16_4913293:d
dense_16_4913295:
identityЂ dense_16/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCall
lstm_16/StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputlstm_16_4913286lstm_16_4913288lstm_16_4913290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913007
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_16_4913293dense_16_4913295*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_4913025x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_16/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџZ
'
_user_specified_namelstm_16_input
Ш	
і
E__inference_dense_16_layer_call_and_return_conditional_losses_4913025

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
$
ъ
while_body_4912777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_16_4912801_0:	/
while_lstm_cell_16_4912803_0:	d+
while_lstm_cell_16_4912805_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_16_4912801:	-
while_lstm_cell_16_4912803:	d)
while_lstm_cell_16_4912805:	Ђ*while/lstm_cell_16/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0З
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_4912801_0while_lstm_cell_16_4912803_0while_lstm_cell_16_4912805_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912717r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_16/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_16_4912801while_lstm_cell_16_4912801_0":
while_lstm_cell_16_4912803while_lstm_cell_16_4912803_0":
while_lstm_cell_16_4912805while_lstm_cell_16_4912805_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ѕ
с
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913315
lstm_16_input"
lstm_16_4913302:	"
lstm_16_4913304:	d
lstm_16_4913306:	"
dense_16_4913309:d
dense_16_4913311:
identityЂ dense_16/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCall
lstm_16/StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputlstm_16_4913302lstm_16_4913304lstm_16_4913306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913213
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_16_4913309dense_16_4913311*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_4913025x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_16/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџZ
'
_user_specified_namelstm_16_input


ш
lstm_16_while_cond_4913423,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1E
Alstm_16_while_lstm_16_while_cond_4913423___redundant_placeholder0E
Alstm_16_while_lstm_16_while_cond_4913423___redundant_placeholder1E
Alstm_16_while_lstm_16_while_cond_4913423___redundant_placeholder2E
Alstm_16_while_lstm_16_while_cond_4913423___redundant_placeholder3
lstm_16_while_identity

lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: [
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ЙS

(sequential_16_lstm_16_while_body_4912411H
Dsequential_16_lstm_16_while_sequential_16_lstm_16_while_loop_counterN
Jsequential_16_lstm_16_while_sequential_16_lstm_16_while_maximum_iterations+
'sequential_16_lstm_16_while_placeholder-
)sequential_16_lstm_16_while_placeholder_1-
)sequential_16_lstm_16_while_placeholder_2-
)sequential_16_lstm_16_while_placeholder_3G
Csequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1_0
sequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_16_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:	^
Ksequential_16_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dY
Jsequential_16_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:	(
$sequential_16_lstm_16_while_identity*
&sequential_16_lstm_16_while_identity_1*
&sequential_16_lstm_16_while_identity_2*
&sequential_16_lstm_16_while_identity_3*
&sequential_16_lstm_16_while_identity_4*
&sequential_16_lstm_16_while_identity_5E
Asequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1
}sequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_16_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:	\
Isequential_16_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:	dW
Hsequential_16_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ?sequential_16/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpЂ>sequential_16/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpЂ@sequential_16/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp
Msequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
?sequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensor_0'sequential_16_lstm_16_while_placeholderVsequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Щ
>sequential_16/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpIsequential_16_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ќ
/sequential_16/lstm_16/while/lstm_cell_16/MatMulMatMulFsequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_16/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЭ
@sequential_16/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpKsequential_16_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0у
1sequential_16/lstm_16/while/lstm_cell_16/MatMul_1MatMul)sequential_16_lstm_16_while_placeholder_2Hsequential_16/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџр
,sequential_16/lstm_16/while/lstm_cell_16/addAddV29sequential_16/lstm_16/while/lstm_cell_16/MatMul:product:0;sequential_16/lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЧ
?sequential_16/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpJsequential_16_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0щ
0sequential_16/lstm_16/while/lstm_cell_16/BiasAddBiasAdd0sequential_16/lstm_16/while/lstm_cell_16/add:z:0Gsequential_16/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
8sequential_16/lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_16/lstm_16/while/lstm_cell_16/splitSplitAsequential_16/lstm_16/while/lstm_cell_16/split/split_dim:output:09sequential_16/lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitІ
0sequential_16/lstm_16/while/lstm_cell_16/SigmoidSigmoid7sequential_16/lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_16/lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid7sequential_16/lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdШ
,sequential_16/lstm_16/while/lstm_cell_16/mulMul6sequential_16/lstm_16/while/lstm_cell_16/Sigmoid_1:y:0)sequential_16_lstm_16_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd 
-sequential_16/lstm_16/while/lstm_cell_16/ReluRelu7sequential_16/lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdк
.sequential_16/lstm_16/while/lstm_cell_16/mul_1Mul4sequential_16/lstm_16/while/lstm_cell_16/Sigmoid:y:0;sequential_16/lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЯ
.sequential_16/lstm_16/while/lstm_cell_16/add_1AddV20sequential_16/lstm_16/while/lstm_cell_16/mul:z:02sequential_16/lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_16/lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid7sequential_16/lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
/sequential_16/lstm_16/while/lstm_cell_16/Relu_1Relu2sequential_16/lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdо
.sequential_16/lstm_16/while/lstm_cell_16/mul_2Mul6sequential_16/lstm_16/while/lstm_cell_16/Sigmoid_2:y:0=sequential_16/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
Fsequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Х
@sequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_16_lstm_16_while_placeholder_1Osequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_16/lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential_16/lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_16/lstm_16/while/addAddV2'sequential_16_lstm_16_while_placeholder*sequential_16/lstm_16/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_16/lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential_16/lstm_16/while/add_1AddV2Dsequential_16_lstm_16_while_sequential_16_lstm_16_while_loop_counter,sequential_16/lstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_16/lstm_16/while/IdentityIdentity%sequential_16/lstm_16/while/add_1:z:0!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: Т
&sequential_16/lstm_16/while/Identity_1IdentityJsequential_16_lstm_16_while_sequential_16_lstm_16_while_maximum_iterations!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: 
&sequential_16/lstm_16/while/Identity_2Identity#sequential_16/lstm_16/while/add:z:0!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: Ш
&sequential_16/lstm_16/while/Identity_3IdentityPsequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: Л
&sequential_16/lstm_16/while/Identity_4Identity2sequential_16/lstm_16/while/lstm_cell_16/mul_2:z:0!^sequential_16/lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЛ
&sequential_16/lstm_16/while/Identity_5Identity2sequential_16/lstm_16/while/lstm_cell_16/add_1:z:0!^sequential_16/lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЈ
 sequential_16/lstm_16/while/NoOpNoOp@^sequential_16/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?^sequential_16/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpA^sequential_16/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_16_lstm_16_while_identity-sequential_16/lstm_16/while/Identity:output:0"Y
&sequential_16_lstm_16_while_identity_1/sequential_16/lstm_16/while/Identity_1:output:0"Y
&sequential_16_lstm_16_while_identity_2/sequential_16/lstm_16/while/Identity_2:output:0"Y
&sequential_16_lstm_16_while_identity_3/sequential_16/lstm_16/while/Identity_3:output:0"Y
&sequential_16_lstm_16_while_identity_4/sequential_16/lstm_16/while/Identity_4:output:0"Y
&sequential_16_lstm_16_while_identity_5/sequential_16/lstm_16/while/Identity_5:output:0"
Hsequential_16_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resourceJsequential_16_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"
Isequential_16_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resourceKsequential_16_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"
Gsequential_16_lstm_16_while_lstm_cell_16_matmul_readvariableop_resourceIsequential_16_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"
Asequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1Csequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1_0"
}sequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensorsequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2
?sequential_16/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?sequential_16/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2
>sequential_16/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp>sequential_16/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2
@sequential_16/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp@sequential_16/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
p

"__inference__wrapped_model_4912502
lstm_16_inputT
Asequential_16_lstm_16_lstm_cell_16_matmul_readvariableop_resource:	V
Csequential_16_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:	dQ
Bsequential_16_lstm_16_lstm_cell_16_biasadd_readvariableop_resource:	G
5sequential_16_dense_16_matmul_readvariableop_resource:dD
6sequential_16_dense_16_biasadd_readvariableop_resource:
identityЂ-sequential_16/dense_16/BiasAdd/ReadVariableOpЂ,sequential_16/dense_16/MatMul/ReadVariableOpЂ9sequential_16/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpЂ8sequential_16/lstm_16/lstm_cell_16/MatMul/ReadVariableOpЂ:sequential_16/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpЂsequential_16/lstm_16/whileX
sequential_16/lstm_16/ShapeShapelstm_16_input*
T0*
_output_shapes
:s
)sequential_16/lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_16/lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_16/lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_16/lstm_16/strided_sliceStridedSlice$sequential_16/lstm_16/Shape:output:02sequential_16/lstm_16/strided_slice/stack:output:04sequential_16/lstm_16/strided_slice/stack_1:output:04sequential_16/lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_16/lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЕ
"sequential_16/lstm_16/zeros/packedPack,sequential_16/lstm_16/strided_slice:output:0-sequential_16/lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_16/lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_16/lstm_16/zerosFill+sequential_16/lstm_16/zeros/packed:output:0*sequential_16/lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
&sequential_16/lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЙ
$sequential_16/lstm_16/zeros_1/packedPack,sequential_16/lstm_16/strided_slice:output:0/sequential_16/lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_16/lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_16/lstm_16/zeros_1Fill-sequential_16/lstm_16/zeros_1/packed:output:0,sequential_16/lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdy
$sequential_16/lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_16/lstm_16/transpose	Transposelstm_16_input-sequential_16/lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:Zџџџџџџџџџp
sequential_16/lstm_16/Shape_1Shape#sequential_16/lstm_16/transpose:y:0*
T0*
_output_shapes
:u
+sequential_16/lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_16/lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_16/lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_16/lstm_16/strided_slice_1StridedSlice&sequential_16/lstm_16/Shape_1:output:04sequential_16/lstm_16/strided_slice_1/stack:output:06sequential_16/lstm_16/strided_slice_1/stack_1:output:06sequential_16/lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_16/lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential_16/lstm_16/TensorArrayV2TensorListReserve:sequential_16/lstm_16/TensorArrayV2/element_shape:output:0.sequential_16/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ђ
=sequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_16/lstm_16/transpose:y:0Tsequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential_16/lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_16/lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_16/lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%sequential_16/lstm_16/strided_slice_2StridedSlice#sequential_16/lstm_16/transpose:y:04sequential_16/lstm_16/strided_slice_2/stack:output:06sequential_16/lstm_16/strided_slice_2/stack_1:output:06sequential_16/lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЛ
8sequential_16/lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpAsequential_16_lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0и
)sequential_16/lstm_16/lstm_cell_16/MatMulMatMul.sequential_16/lstm_16/strided_slice_2:output:0@sequential_16/lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџП
:sequential_16/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpCsequential_16_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0в
+sequential_16/lstm_16/lstm_cell_16/MatMul_1MatMul$sequential_16/lstm_16/zeros:output:0Bsequential_16/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЮ
&sequential_16/lstm_16/lstm_cell_16/addAddV23sequential_16/lstm_16/lstm_cell_16/MatMul:product:05sequential_16/lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
9sequential_16/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpBsequential_16_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0з
*sequential_16/lstm_16/lstm_cell_16/BiasAddBiasAdd*sequential_16/lstm_16/lstm_cell_16/add:z:0Asequential_16/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџt
2sequential_16/lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_16/lstm_16/lstm_cell_16/splitSplit;sequential_16/lstm_16/lstm_cell_16/split/split_dim:output:03sequential_16/lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
*sequential_16/lstm_16/lstm_cell_16/SigmoidSigmoid1sequential_16/lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_16/lstm_16/lstm_cell_16/Sigmoid_1Sigmoid1sequential_16/lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЙ
&sequential_16/lstm_16/lstm_cell_16/mulMul0sequential_16/lstm_16/lstm_cell_16/Sigmoid_1:y:0&sequential_16/lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
'sequential_16/lstm_16/lstm_cell_16/ReluRelu1sequential_16/lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdШ
(sequential_16/lstm_16/lstm_cell_16/mul_1Mul.sequential_16/lstm_16/lstm_cell_16/Sigmoid:y:05sequential_16/lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdН
(sequential_16/lstm_16/lstm_cell_16/add_1AddV2*sequential_16/lstm_16/lstm_cell_16/mul:z:0,sequential_16/lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_16/lstm_16/lstm_cell_16/Sigmoid_2Sigmoid1sequential_16/lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
)sequential_16/lstm_16/lstm_cell_16/Relu_1Relu,sequential_16/lstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЬ
(sequential_16/lstm_16/lstm_cell_16/mul_2Mul0sequential_16/lstm_16/lstm_cell_16/Sigmoid_2:y:07sequential_16/lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
3sequential_16/lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   t
2sequential_16/lstm_16/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_16/lstm_16/TensorArrayV2_1TensorListReserve<sequential_16/lstm_16/TensorArrayV2_1/element_shape:output:0;sequential_16/lstm_16/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential_16/lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_16/lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential_16/lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : И
sequential_16/lstm_16/whileWhile1sequential_16/lstm_16/while/loop_counter:output:07sequential_16/lstm_16/while/maximum_iterations:output:0#sequential_16/lstm_16/time:output:0.sequential_16/lstm_16/TensorArrayV2_1:handle:0$sequential_16/lstm_16/zeros:output:0&sequential_16/lstm_16/zeros_1:output:0.sequential_16/lstm_16/strided_slice_1:output:0Msequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_16_lstm_16_lstm_cell_16_matmul_readvariableop_resourceCsequential_16_lstm_16_lstm_cell_16_matmul_1_readvariableop_resourceBsequential_16_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_16_lstm_16_while_body_4912411*4
cond,R*
(sequential_16_lstm_16_while_cond_4912410*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
Fsequential_16/lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
8sequential_16/lstm_16/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_16/lstm_16/while:output:3Osequential_16/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elements~
+sequential_16/lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential_16/lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_16/lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%sequential_16/lstm_16/strided_slice_3StridedSliceAsequential_16/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:04sequential_16/lstm_16/strided_slice_3/stack:output:06sequential_16/lstm_16/strided_slice_3/stack_1:output:06sequential_16/lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask{
&sequential_16/lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
!sequential_16/lstm_16/transpose_1	TransposeAsequential_16/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_16/lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdq
sequential_16/lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
,sequential_16/dense_16/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_16_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0П
sequential_16/dense_16/MatMulMatMul.sequential_16/lstm_16/strided_slice_3:output:04sequential_16/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_16/dense_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_16/dense_16/BiasAddBiasAdd'sequential_16/dense_16/MatMul:product:05sequential_16/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_16/dense_16/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџї
NoOpNoOp.^sequential_16/dense_16/BiasAdd/ReadVariableOp-^sequential_16/dense_16/MatMul/ReadVariableOp:^sequential_16/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp9^sequential_16/lstm_16/lstm_cell_16/MatMul/ReadVariableOp;^sequential_16/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^sequential_16/lstm_16/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 2^
-sequential_16/dense_16/BiasAdd/ReadVariableOp-sequential_16/dense_16/BiasAdd/ReadVariableOp2\
,sequential_16/dense_16/MatMul/ReadVariableOp,sequential_16/dense_16/MatMul/ReadVariableOp2v
9sequential_16/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp9sequential_16/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2t
8sequential_16/lstm_16/lstm_cell_16/MatMul/ReadVariableOp8sequential_16/lstm_16/lstm_cell_16/MatMul/ReadVariableOp2x
:sequential_16/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:sequential_16/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2:
sequential_16/lstm_16/whilesequential_16/lstm_16/while:Z V
+
_output_shapes
:џџџџџџџџџZ
'
_user_specified_namelstm_16_input
ЌK

D__inference_lstm_16_layer_call_and_return_conditional_losses_4913007

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	@
-lstm_cell_16_matmul_1_readvariableop_resource:	d;
,lstm_cell_16_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ZџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4912922*
condR
while_cond_4912921*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџZ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
Ф

*__inference_dense_16_layer_call_fn_4914299

inputs
unknown:d
	unknown_0:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_4913025o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ў0
Ѕ	
 __inference__traced_save_4914487
file_prefix.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop:
6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableopD
@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop8
4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopA
=savev2_adam_m_lstm_16_lstm_cell_16_kernel_read_readvariableopA
=savev2_adam_v_lstm_16_lstm_cell_16_kernel_read_readvariableopK
Gsavev2_adam_m_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableopK
Gsavev2_adam_v_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop?
;savev2_adam_m_lstm_16_lstm_cell_16_bias_read_readvariableop?
;savev2_adam_v_lstm_16_lstm_cell_16_bias_read_readvariableop5
1savev2_adam_m_dense_16_kernel_read_readvariableop5
1savev2_adam_v_dense_16_kernel_read_readvariableop3
/savev2_adam_m_dense_16_bias_read_readvariableop3
/savev2_adam_v_dense_16_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Т
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B з	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableop@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop=savev2_adam_m_lstm_16_lstm_cell_16_kernel_read_readvariableop=savev2_adam_v_lstm_16_lstm_cell_16_kernel_read_readvariableopGsavev2_adam_m_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableopGsavev2_adam_v_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop;savev2_adam_m_lstm_16_lstm_cell_16_bias_read_readvariableop;savev2_adam_v_lstm_16_lstm_cell_16_bias_read_readvariableop1savev2_adam_m_dense_16_kernel_read_readvariableop1savev2_adam_v_dense_16_kernel_read_readvariableop/savev2_adam_m_dense_16_bias_read_readvariableop/savev2_adam_v_dense_16_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *"
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ј
_input_shapes
: :d::	:	d:: : :	:	:	d:	d:::d:d::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	d:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	:%
!

_output_shapes
:	d:%!

_output_shapes
:	d:!

_output_shapes	
::!

_output_shapes	
::$ 

_output_shapes

:d:$ 

_output_shapes

:d: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_4912921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4912921___redundant_placeholder05
1while_while_cond_4912921___redundant_placeholder15
1while_while_cond_4912921___redundant_placeholder25
1while_while_cond_4912921___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Љ9
б
while_body_4914205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_4912583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4912583___redundant_placeholder05
1while_while_cond_4912583___redundant_placeholder15
1while_while_cond_4912583___redundant_placeholder25
1while_while_cond_4912583___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ъB
б

lstm_16_while_body_4913575,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:	P
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dK
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:	
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorL
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:	N
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:	dI
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpЂ0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpЂ2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0­
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0в
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Й
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdА
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdД
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdz
8lstm_16/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1Alstm_16/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: q
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd№
lstm_16/while/NoOpNoOp2^lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"z
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"Ш
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2f
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_4913127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4913127___redundant_placeholder05
1while_while_cond_4913127___redundant_placeholder15
1while_while_cond_4913127___redundant_placeholder25
1while_while_cond_4913127___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
$
ъ
while_body_4912584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_16_4912608_0:	/
while_lstm_cell_16_4912610_0:	d+
while_lstm_cell_16_4912612_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_16_4912608:	-
while_lstm_cell_16_4912610:	d)
while_lstm_cell_16_4912612:	Ђ*while/lstm_cell_16/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0З
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_4912608_0while_lstm_cell_16_4912610_0while_lstm_cell_16_4912612_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912569r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_16/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_16_4912608while_lstm_cell_16_4912608_0":
while_lstm_cell_16_4912610while_lstm_cell_16_4912610_0":
while_lstm_cell_16_4912612while_lstm_cell_16_4912612_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ъB
б

lstm_16_while_body_4913424,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:	P
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dK
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:	
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorL
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:	N
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:	dI
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpЂ0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpЂ2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0­
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0в
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Й
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdА
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdД
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdz
8lstm_16/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1Alstm_16/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: q
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd№
lstm_16/while/NoOpNoOp2^lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"z
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"Ш
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2f
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ш	
і
E__inference_dense_16_layer_call_and_return_conditional_losses_4914309

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
р
к
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913032

inputs"
lstm_16_4913008:	"
lstm_16_4913010:	d
lstm_16_4913012:	"
dense_16_4913026:d
dense_16_4913028:
identityЂ dense_16/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCall
lstm_16/StatefulPartitionedCallStatefulPartitionedCallinputslstm_16_4913008lstm_16_4913010lstm_16_4913012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913007
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_16_4913026dense_16_4913028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_4913025x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_16/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
Љ9
б
while_body_4912922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 

И
)__inference_lstm_16_layer_call_fn_4913688
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_4912847o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
о

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914407

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_1
Љ9
б
while_body_4914060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_16_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
їT
т
#__inference__traced_restore_4914554
file_prefix2
 assignvariableop_dense_16_kernel:d.
 assignvariableop_1_dense_16_bias:A
.assignvariableop_2_lstm_16_lstm_cell_16_kernel:	K
8assignvariableop_3_lstm_16_lstm_cell_16_recurrent_kernel:	d;
,assignvariableop_4_lstm_16_lstm_cell_16_bias:	&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: H
5assignvariableop_7_adam_m_lstm_16_lstm_cell_16_kernel:	H
5assignvariableop_8_adam_v_lstm_16_lstm_cell_16_kernel:	R
?assignvariableop_9_adam_m_lstm_16_lstm_cell_16_recurrent_kernel:	dS
@assignvariableop_10_adam_v_lstm_16_lstm_cell_16_recurrent_kernel:	dC
4assignvariableop_11_adam_m_lstm_16_lstm_cell_16_bias:	C
4assignvariableop_12_adam_v_lstm_16_lstm_cell_16_bias:	<
*assignvariableop_13_adam_m_dense_16_kernel:d<
*assignvariableop_14_adam_v_dense_16_kernel:d6
(assignvariableop_15_adam_m_dense_16_bias:6
(assignvariableop_16_adam_v_dense_16_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: 
identity_20ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOpAssignVariableOp assignvariableop_dense_16_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_16_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_2AssignVariableOp.assignvariableop_2_lstm_16_lstm_cell_16_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_3AssignVariableOp8assignvariableop_3_lstm_16_lstm_cell_16_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_4AssignVariableOp,assignvariableop_4_lstm_16_lstm_cell_16_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_7AssignVariableOp5assignvariableop_7_adam_m_lstm_16_lstm_cell_16_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_8AssignVariableOp5assignvariableop_8_adam_v_lstm_16_lstm_cell_16_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_9AssignVariableOp?assignvariableop_9_adam_m_lstm_16_lstm_cell_16_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_10AssignVariableOp@assignvariableop_10_adam_v_lstm_16_lstm_cell_16_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_11AssignVariableOp4assignvariableop_11_adam_m_lstm_16_lstm_cell_16_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_12AssignVariableOp4assignvariableop_12_adam_v_lstm_16_lstm_cell_16_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_m_dense_16_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_v_dense_16_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_dense_16_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_dense_16_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ё
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: о
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
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
ю
љ
/__inference_sequential_16_layer_call_fn_4913283
lstm_16_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:d
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913255o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџZ
'
_user_specified_namelstm_16_input
ю
љ
/__inference_sequential_16_layer_call_fn_4913045
lstm_16_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:d
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913032o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџZ
'
_user_specified_namelstm_16_input
К
Ш
while_cond_4913914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4913914___redundant_placeholder05
1while_while_cond_4913914___redundant_placeholder15
1while_while_cond_4913914___redundant_placeholder25
1while_while_cond_4913914___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
к\

J__inference_sequential_16_layer_call_and_return_conditional_losses_4913666

inputsF
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:	H
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:	dC
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:	9
'dense_16_matmul_readvariableop_resource:d6
(dense_16_biasadd_readvariableop_resource:
identityЂdense_16/BiasAdd/ReadVariableOpЂdense_16/MatMul/ReadVariableOpЂ+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpЂ*lstm_16/lstm_cell_16/MatMul/ReadVariableOpЂ,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpЂlstm_16/whileC
lstm_16/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_16/transpose	Transposeinputslstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:ZџџџџџџџџџT
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:g
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ў
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ј
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split~
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdx
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdu
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЂ
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   f
$lstm_16/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0-lstm_16/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_16_while_body_4913575*&
condR
lstm_16_while_cond_4913574*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ю
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsp
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
dense_16/MatMulMatMul lstm_16/strided_slice_3:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_16/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2Z
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp*lstm_16/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while:S O
+
_output_shapes
:џџџџџџџџџZ
 
_user_specified_nameinputs
э
ї
.__inference_lstm_cell_16_layer_call_fn_4914343

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states_1
9

D__inference_lstm_16_layer_call_and_return_conditional_losses_4912654

inputs'
lstm_cell_16_4912570:	'
lstm_cell_16_4912572:	d#
lstm_cell_16_4912574:	
identityЂ$lstm_cell_16/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskљ
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_4912570lstm_cell_16_4912572lstm_cell_16_4912574*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4912569n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_4912570lstm_cell_16_4912572lstm_cell_16_4912574*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4912584*
condR
while_cond_4912583*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdu
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
М
я
%__inference_signature_wrapper_4913334
lstm_16_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:d
	unknown_3:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_4912502o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџZ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџZ
'
_user_specified_namelstm_16_input"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Л
serving_defaultЇ
K
lstm_16_input:
serving_default_lstm_16_input:0џџџџџџџџџZ<
dense_160
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
%trace_0
&trace_1
'trace_2
(trace_32
/__inference_sequential_16_layer_call_fn_4913045
/__inference_sequential_16_layer_call_fn_4913349
/__inference_sequential_16_layer_call_fn_4913364
/__inference_sequential_16_layer_call_fn_4913283П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z%trace_0z&trace_1z'trace_2z(trace_3
н
)trace_0
*trace_1
+trace_2
,trace_32ђ
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913515
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913666
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913299
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913315П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z)trace_0z*trace_1z+trace_2z,trace_3
гBа
"__inference__wrapped_model_4912502lstm_16_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla"
experimentalOptimizer
,
4serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

5states
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
;trace_0
<trace_1
=trace_2
>trace_32
)__inference_lstm_16_layer_call_fn_4913677
)__inference_lstm_16_layer_call_fn_4913688
)__inference_lstm_16_layer_call_fn_4913699
)__inference_lstm_16_layer_call_fn_4913710д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z;trace_0z<trace_1z=trace_2z>trace_3
к
?trace_0
@trace_1
Atrace_2
Btrace_32я
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913855
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914000
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914145
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914290д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
"
_generic_user_object
ј
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator
J
state_size

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
Ptrace_02б
*__inference_dense_16_layer_call_fn_4914299Ђ
В
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
annotationsЊ *
 zPtrace_0

Qtrace_02ь
E__inference_dense_16_layer_call_and_return_conditional_losses_4914309Ђ
В
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
annotationsЊ *
 zQtrace_0
!:d2dense_16/kernel
:2dense_16/bias
.:,	2lstm_16/lstm_cell_16/kernel
8:6	d2%lstm_16/lstm_cell_16/recurrent_kernel
(:&2lstm_16/lstm_cell_16/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
R0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_sequential_16_layer_call_fn_4913045lstm_16_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_sequential_16_layer_call_fn_4913349inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_sequential_16_layer_call_fn_4913364inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
/__inference_sequential_16_layer_call_fn_4913283lstm_16_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913515inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913666inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЂB
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913299lstm_16_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЂB
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913315lstm_16_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
n
.0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
S0
U1
W2
Y3
[4"
trackable_list_wrapper
C
T0
V1
X2
Z3
\4"
trackable_list_wrapper
П2МЙ
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
вBЯ
%__inference_signature_wrapper_4913334lstm_16_input"
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
)__inference_lstm_16_layer_call_fn_4913677inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_16_layer_call_fn_4913688inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_16_layer_call_fn_4913699inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_16_layer_call_fn_4913710inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913855inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914000inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914145inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914290inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
з
btrace_0
ctrace_12 
.__inference_lstm_cell_16_layer_call_fn_4914326
.__inference_lstm_cell_16_layer_call_fn_4914343Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

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
annotationsЊ *
 zbtrace_0zctrace_1

dtrace_0
etrace_12ж
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914375
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914407Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

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
annotationsЊ *
 zdtrace_0zetrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
оBл
*__inference_dense_16_layer_call_fn_4914299inputs"Ђ
В
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
annotationsЊ *
 
љBі
E__inference_dense_16_layer_call_and_return_conditional_losses_4914309inputs"Ђ
В
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
annotationsЊ *
 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
3:1	2"Adam/m/lstm_16/lstm_cell_16/kernel
3:1	2"Adam/v/lstm_16/lstm_cell_16/kernel
=:;	d2,Adam/m/lstm_16/lstm_cell_16/recurrent_kernel
=:;	d2,Adam/v/lstm_16/lstm_cell_16/recurrent_kernel
-:+2 Adam/m/lstm_16/lstm_cell_16/bias
-:+2 Adam/v/lstm_16/lstm_cell_16/bias
&:$d2Adam/m/dense_16/kernel
&:$d2Adam/v/dense_16/kernel
 :2Adam/m/dense_16/bias
 :2Adam/v/dense_16/bias
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
B
.__inference_lstm_cell_16_layer_call_fn_4914326inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

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
annotationsЊ *
 
B
.__inference_lstm_cell_16_layer_call_fn_4914343inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

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
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914375inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

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
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914407inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

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
annotationsЊ *
 
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
"__inference__wrapped_model_4912502x:Ђ7
0Ђ-
+(
lstm_16_inputџџџџџџџџџZ
Њ "3Њ0
.
dense_16"
dense_16џџџџџџџџџЌ
E__inference_dense_16_layer_call_and_return_conditional_losses_4914309c/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
*__inference_dense_16_layer_call_fn_4914299X/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "!
unknownџџџџџџџџџЭ
D__inference_lstm_16_layer_call_and_return_conditional_losses_4913855OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџd
 Э
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914000OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџd
 М
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914145t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџZ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџd
 М
D__inference_lstm_16_layer_call_and_return_conditional_losses_4914290t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџZ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџd
 І
)__inference_lstm_16_layer_call_fn_4913677yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "!
unknownџџџџџџџџџdІ
)__inference_lstm_16_layer_call_fn_4913688yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "!
unknownџџџџџџџџџd
)__inference_lstm_16_layer_call_fn_4913699i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџZ

 
p 

 
Њ "!
unknownџџџџџџџџџd
)__inference_lstm_16_layer_call_fn_4913710i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџZ

 
p

 
Њ "!
unknownџџџџџџџџџdт
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914375Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџd
"
states_1џџџџџџџџџd
p 
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџd
SP
&#
tensor_0_1_0џџџџџџџџџd
&#
tensor_0_1_1џџџџџџџџџd
 т
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_4914407Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџd
"
states_1џџџџџџџџџd
p
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџd
SP
&#
tensor_0_1_0џџџџџџџџџd
&#
tensor_0_1_1џџџџџџџџџd
 Е
.__inference_lstm_cell_16_layer_call_fn_4914326Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџd
"
states_1џџџџџџџџџd
p 
Њ "xЂu
"
tensor_0џџџџџџџџџd
OL
$!

tensor_1_0џџџџџџџџџd
$!

tensor_1_1џџџџџџџџџdЕ
.__inference_lstm_cell_16_layer_call_fn_4914343Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџd
"
states_1џџџџџџџџџd
p
Њ "xЂu
"
tensor_0џџџџџџџџџd
OL
$!

tensor_1_0џџџџџџџџџd
$!

tensor_1_1џџџџџџџџџdЧ
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913299yBЂ?
8Ђ5
+(
lstm_16_inputџџџџџџџџџZ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ч
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913315yBЂ?
8Ђ5
+(
lstm_16_inputџџџџџџџџџZ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Р
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913515r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџZ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Р
J__inference_sequential_16_layer_call_and_return_conditional_losses_4913666r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџZ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ё
/__inference_sequential_16_layer_call_fn_4913045nBЂ?
8Ђ5
+(
lstm_16_inputџџџџџџџџџZ
p 

 
Њ "!
unknownџџџџџџџџџЁ
/__inference_sequential_16_layer_call_fn_4913283nBЂ?
8Ђ5
+(
lstm_16_inputџџџџџџџџџZ
p

 
Њ "!
unknownџџџџџџџџџ
/__inference_sequential_16_layer_call_fn_4913349g;Ђ8
1Ђ.
$!
inputsџџџџџџџџџZ
p 

 
Њ "!
unknownџџџџџџџџџ
/__inference_sequential_16_layer_call_fn_4913364g;Ђ8
1Ђ.
$!
inputsџџџџџџџџџZ
p

 
Њ "!
unknownџџџџџџџџџГ
%__inference_signature_wrapper_4913334KЂH
Ђ 
AЊ>
<
lstm_16_input+(
lstm_16_inputџџџџџџџџџZ"3Њ0
.
dense_16"
dense_16џџџџџџџџџ