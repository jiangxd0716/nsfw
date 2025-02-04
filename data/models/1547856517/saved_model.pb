��!
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%��8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
�
ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:�  �
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.12.02v1.12.0-0-ga6d8ffae09��

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R 
�
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
o
input_tensorPlaceholder*
dtype0*'
_output_shapes
:�@@*
shape:�@@
f
Reshape/shapeConst*%
valueB"����@   @      *
dtype0*
_output_shapes
:
o
ReshapeReshapeinput_tensorReshape/shape*
T0*
Tshape0*'
_output_shapes
:�@@
Q

images/tagConst*
dtype0*
_output_shapes
: *
valueB Bimages

imagesImageSummary
images/tagReshape*

max_images*
T0*
	bad_colorB:�  �*
_output_shapes
: 
�
=resnet_model/conv2d/kernel/Initializer/truncated_normal/shapeConst*-
_class#
!loc:@resnet_model/conv2d/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
<resnet_model/conv2d/kernel/Initializer/truncated_normal/meanConst*-
_class#
!loc:@resnet_model/conv2d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
>resnet_model/conv2d/kernel/Initializer/truncated_normal/stddevConst*-
_class#
!loc:@resnet_model/conv2d/kernel*
valueB
 *�	`>*
dtype0*
_output_shapes
: 
�
Gresnet_model/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal=resnet_model/conv2d/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*-
_class#
!loc:@resnet_model/conv2d/kernel*
seed2 
�
;resnet_model/conv2d/kernel/Initializer/truncated_normal/mulMulGresnet_model/conv2d/kernel/Initializer/truncated_normal/TruncatedNormal>resnet_model/conv2d/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*-
_class#
!loc:@resnet_model/conv2d/kernel
�
7resnet_model/conv2d/kernel/Initializer/truncated_normalAdd;resnet_model/conv2d/kernel/Initializer/truncated_normal/mul<resnet_model/conv2d/kernel/Initializer/truncated_normal/mean*
T0*-
_class#
!loc:@resnet_model/conv2d/kernel*&
_output_shapes
:
�
resnet_model/conv2d/kernel
VariableV2*
shared_name *-
_class#
!loc:@resnet_model/conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
!resnet_model/conv2d/kernel/AssignAssignresnet_model/conv2d/kernel7resnet_model/conv2d/kernel/Initializer/truncated_normal*
use_locking(*
T0*-
_class#
!loc:@resnet_model/conv2d/kernel*
validate_shape(*&
_output_shapes
:
�
resnet_model/conv2d/kernel/readIdentityresnet_model/conv2d/kernel*&
_output_shapes
:*
T0*-
_class#
!loc:@resnet_model/conv2d/kernel
r
!resnet_model/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d/Conv2DConv2DReshaperesnet_model/conv2d/kernel/read*
paddingSAME*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
s
resnet_model/initial_convIdentityresnet_model/conv2d/Conv2D*
T0*'
_output_shapes
:�@@
�
7resnet_model/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@resnet_model/batch_normalization/gamma*
valueB*  �?
�
&resnet_model/batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *9
_class/
-+loc:@resnet_model/batch_normalization/gamma*
	container *
shape:
�
-resnet_model/batch_normalization/gamma/AssignAssign&resnet_model/batch_normalization/gamma7resnet_model/batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@resnet_model/batch_normalization/gamma*
validate_shape(*
_output_shapes
:
�
+resnet_model/batch_normalization/gamma/readIdentity&resnet_model/batch_normalization/gamma*
T0*9
_class/
-+loc:@resnet_model/batch_normalization/gamma*
_output_shapes
:
�
7resnet_model/batch_normalization/beta/Initializer/zerosConst*8
_class.
,*loc:@resnet_model/batch_normalization/beta*
valueB*    *
dtype0*
_output_shapes
:
�
%resnet_model/batch_normalization/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *8
_class.
,*loc:@resnet_model/batch_normalization/beta*
	container *
shape:
�
,resnet_model/batch_normalization/beta/AssignAssign%resnet_model/batch_normalization/beta7resnet_model/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@resnet_model/batch_normalization/beta*
validate_shape(*
_output_shapes
:
�
*resnet_model/batch_normalization/beta/readIdentity%resnet_model/batch_normalization/beta*
_output_shapes
:*
T0*8
_class.
,*loc:@resnet_model/batch_normalization/beta
�
>resnet_model/batch_normalization/moving_mean/Initializer/zerosConst*?
_class5
31loc:@resnet_model/batch_normalization/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
,resnet_model/batch_normalization/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *?
_class5
31loc:@resnet_model/batch_normalization/moving_mean
�
3resnet_model/batch_normalization/moving_mean/AssignAssign,resnet_model/batch_normalization/moving_mean>resnet_model/batch_normalization/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*?
_class5
31loc:@resnet_model/batch_normalization/moving_mean
�
1resnet_model/batch_normalization/moving_mean/readIdentity,resnet_model/batch_normalization/moving_mean*
_output_shapes
:*
T0*?
_class5
31loc:@resnet_model/batch_normalization/moving_mean
�
Aresnet_model/batch_normalization/moving_variance/Initializer/onesConst*C
_class9
75loc:@resnet_model/batch_normalization/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
0resnet_model/batch_normalization/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *C
_class9
75loc:@resnet_model/batch_normalization/moving_variance*
	container *
shape:
�
7resnet_model/batch_normalization/moving_variance/AssignAssign0resnet_model/batch_normalization/moving_varianceAresnet_model/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@resnet_model/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:
�
5resnet_model/batch_normalization/moving_variance/readIdentity0resnet_model/batch_normalization/moving_variance*
T0*C
_class9
75loc:@resnet_model/batch_normalization/moving_variance*
_output_shapes
:
�
/resnet_model/batch_normalization/FusedBatchNormFusedBatchNormresnet_model/initial_conv+resnet_model/batch_normalization/gamma/read*resnet_model/batch_normalization/beta/read1resnet_model/batch_normalization/moving_mean/read5resnet_model/batch_normalization/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
k
&resnet_model/batch_normalization/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
|
resnet_model/ReluRelu/resnet_model/batch_normalization/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
?resnet_model/conv2d_1/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_1/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_1/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*
valueB
 *6��>*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_1/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*
seed2 
�
=resnet_model/conv2d_1/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*&
_output_shapes
:
�
9resnet_model/conv2d_1/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_1/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*&
_output_shapes
:
�
resnet_model/conv2d_1/kernel
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name */
_class%
#!loc:@resnet_model/conv2d_1/kernel*
	container 
�
#resnet_model/conv2d_1/kernel/AssignAssignresnet_model/conv2d_1/kernel9resnet_model/conv2d_1/kernel/Initializer/truncated_normal*
T0*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
!resnet_model/conv2d_1/kernel/readIdentityresnet_model/conv2d_1/kernel*
T0*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*&
_output_shapes
:
t
#resnet_model/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_1/Conv2DConv2Dresnet_model/Relu!resnet_model/conv2d_1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@
�
?resnet_model/conv2d_2/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_2/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_2/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_2/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_2/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_2/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@resnet_model/conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
�
=resnet_model/conv2d_2/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_2/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_2/kernel
�
9resnet_model/conv2d_2/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_2/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_2/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_2/kernel*&
_output_shapes
:
�
resnet_model/conv2d_2/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name */
_class%
#!loc:@resnet_model/conv2d_2/kernel*
	container *
shape:
�
#resnet_model/conv2d_2/kernel/AssignAssignresnet_model/conv2d_2/kernel9resnet_model/conv2d_2/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_2/kernel*
validate_shape(*&
_output_shapes
:
�
!resnet_model/conv2d_2/kernel/readIdentityresnet_model/conv2d_2/kernel*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_2/kernel
t
#resnet_model/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_2/Conv2DConv2Dresnet_model/Relu!resnet_model/conv2d_2/kernel/read*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
9resnet_model/batch_normalization_1/gamma/Initializer/onesConst*;
_class1
/-loc:@resnet_model/batch_normalization_1/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_1/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_1/gamma*
	container *
shape:
�
/resnet_model/batch_normalization_1/gamma/AssignAssign(resnet_model/batch_normalization_1/gamma9resnet_model/batch_normalization_1/gamma/Initializer/ones*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
-resnet_model/batch_normalization_1/gamma/readIdentity(resnet_model/batch_normalization_1/gamma*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_1/gamma*
_output_shapes
:
�
9resnet_model/batch_normalization_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@resnet_model/batch_normalization_1/beta*
valueB*    
�
'resnet_model/batch_normalization_1/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_1/beta*
	container 
�
.resnet_model/batch_normalization_1/beta/AssignAssign'resnet_model/batch_normalization_1/beta9resnet_model/batch_normalization_1/beta/Initializer/zeros*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_1/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
,resnet_model/batch_normalization_1/beta/readIdentity'resnet_model/batch_normalization_1/beta*
_output_shapes
:*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_1/beta
�
@resnet_model/batch_normalization_1/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_1/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_1/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *A
_class7
53loc:@resnet_model/batch_normalization_1/moving_mean
�
5resnet_model/batch_normalization_1/moving_mean/AssignAssign.resnet_model/batch_normalization_1/moving_mean@resnet_model/batch_normalization_1/moving_mean/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:
�
3resnet_model/batch_normalization_1/moving_mean/readIdentity.resnet_model/batch_normalization_1/moving_mean*
T0*A
_class7
53loc:@resnet_model/batch_normalization_1/moving_mean*
_output_shapes
:
�
Cresnet_model/batch_normalization_1/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_1/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_1/moving_variance
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *E
_class;
97loc:@resnet_model/batch_normalization_1/moving_variance*
	container 
�
9resnet_model/batch_normalization_1/moving_variance/AssignAssign2resnet_model/batch_normalization_1/moving_varianceCresnet_model/batch_normalization_1/moving_variance/Initializer/ones*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
�
7resnet_model/batch_normalization_1/moving_variance/readIdentity2resnet_model/batch_normalization_1/moving_variance*
T0*E
_class;
97loc:@resnet_model/batch_normalization_1/moving_variance*
_output_shapes
:
�
1resnet_model/batch_normalization_1/FusedBatchNormFusedBatchNormresnet_model/conv2d_2/Conv2D-resnet_model/batch_normalization_1/gamma/read,resnet_model/batch_normalization_1/beta/read3resnet_model/batch_normalization_1/moving_mean/read7resnet_model/batch_normalization_1/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( *
epsilon%��'7*
T0
m
(resnet_model/batch_normalization_1/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_1Relu1resnet_model/batch_normalization_1/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
?resnet_model/conv2d_3/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_3/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_3/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_3/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_3/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@resnet_model/conv2d_3/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
�
=resnet_model/conv2d_3/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_3/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_3/kernel
�
9resnet_model/conv2d_3/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_3/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_3/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_3/kernel*&
_output_shapes
:
�
resnet_model/conv2d_3/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name */
_class%
#!loc:@resnet_model/conv2d_3/kernel*
	container *
shape:
�
#resnet_model/conv2d_3/kernel/AssignAssignresnet_model/conv2d_3/kernel9resnet_model/conv2d_3/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_3/kernel
�
!resnet_model/conv2d_3/kernel/readIdentityresnet_model/conv2d_3/kernel*
T0*/
_class%
#!loc:@resnet_model/conv2d_3/kernel*&
_output_shapes
:
t
#resnet_model/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_3/Conv2DConv2Dresnet_model/Relu_1!resnet_model/conv2d_3/kernel/read*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
resnet_model/addAddresnet_model/conv2d_3/Conv2Dresnet_model/conv2d_1/Conv2D*
T0*'
_output_shapes
:�@@
�
9resnet_model/batch_normalization_2/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@resnet_model/batch_normalization_2/gamma*
valueB*  �?
�
(resnet_model/batch_normalization_2/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_2/gamma*
	container *
shape:
�
/resnet_model/batch_normalization_2/gamma/AssignAssign(resnet_model/batch_normalization_2/gamma9resnet_model/batch_normalization_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_2/gamma
�
-resnet_model/batch_normalization_2/gamma/readIdentity(resnet_model/batch_normalization_2/gamma*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_2/gamma*
_output_shapes
:
�
9resnet_model/batch_normalization_2/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@resnet_model/batch_normalization_2/beta*
valueB*    
�
'resnet_model/batch_normalization_2/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_2/beta*
	container 
�
.resnet_model/batch_normalization_2/beta/AssignAssign'resnet_model/batch_normalization_2/beta9resnet_model/batch_normalization_2/beta/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_2/beta*
validate_shape(*
_output_shapes
:
�
,resnet_model/batch_normalization_2/beta/readIdentity'resnet_model/batch_normalization_2/beta*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_2/beta*
_output_shapes
:
�
@resnet_model/batch_normalization_2/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:*A
_class7
53loc:@resnet_model/batch_normalization_2/moving_mean*
valueB*    
�
.resnet_model/batch_normalization_2/moving_mean
VariableV2*
shared_name *A
_class7
53loc:@resnet_model/batch_normalization_2/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
�
5resnet_model/batch_normalization_2/moving_mean/AssignAssign.resnet_model/batch_normalization_2/moving_mean@resnet_model/batch_normalization_2/moving_mean/Initializer/zeros*
T0*A
_class7
53loc:@resnet_model/batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
3resnet_model/batch_normalization_2/moving_mean/readIdentity.resnet_model/batch_normalization_2/moving_mean*
T0*A
_class7
53loc:@resnet_model/batch_normalization_2/moving_mean*
_output_shapes
:
�
Cresnet_model/batch_normalization_2/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_2/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_2/moving_variance
VariableV2*
shared_name *E
_class;
97loc:@resnet_model/batch_normalization_2/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
9resnet_model/batch_normalization_2/moving_variance/AssignAssign2resnet_model/batch_normalization_2/moving_varianceCresnet_model/batch_normalization_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_2/moving_variance
�
7resnet_model/batch_normalization_2/moving_variance/readIdentity2resnet_model/batch_normalization_2/moving_variance*
_output_shapes
:*
T0*E
_class;
97loc:@resnet_model/batch_normalization_2/moving_variance
�
1resnet_model/batch_normalization_2/FusedBatchNormFusedBatchNormresnet_model/add-resnet_model/batch_normalization_2/gamma/read,resnet_model/batch_normalization_2/beta/read3resnet_model/batch_normalization_2/moving_mean/read7resnet_model/batch_normalization_2/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( *
epsilon%��'7
m
(resnet_model/batch_normalization_2/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_2Relu1resnet_model/batch_normalization_2/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
?resnet_model/conv2d_4/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_4/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@resnet_model/conv2d_4/kernel*
valueB
 *    
�
@resnet_model/conv2d_4/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_4/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_4/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@resnet_model/conv2d_4/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
�
=resnet_model/conv2d_4/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_4/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_4/kernel
�
9resnet_model/conv2d_4/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_4/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_4/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_4/kernel*&
_output_shapes
:
�
resnet_model/conv2d_4/kernel
VariableV2*
shared_name */
_class%
#!loc:@resnet_model/conv2d_4/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
#resnet_model/conv2d_4/kernel/AssignAssignresnet_model/conv2d_4/kernel9resnet_model/conv2d_4/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_4/kernel*
validate_shape(*&
_output_shapes
:
�
!resnet_model/conv2d_4/kernel/readIdentityresnet_model/conv2d_4/kernel*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_4/kernel
t
#resnet_model/conv2d_4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_4/Conv2DConv2Dresnet_model/Relu_2!resnet_model/conv2d_4/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@*
	dilations

�
9resnet_model/batch_normalization_3/gamma/Initializer/onesConst*;
_class1
/-loc:@resnet_model/batch_normalization_3/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_3/gamma
VariableV2*;
_class1
/-loc:@resnet_model/batch_normalization_3/gamma*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
/resnet_model/batch_normalization_3/gamma/AssignAssign(resnet_model/batch_normalization_3/gamma9resnet_model/batch_normalization_3/gamma/Initializer/ones*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_3/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
-resnet_model/batch_normalization_3/gamma/readIdentity(resnet_model/batch_normalization_3/gamma*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_3/gamma*
_output_shapes
:
�
9resnet_model/batch_normalization_3/beta/Initializer/zerosConst*:
_class0
.,loc:@resnet_model/batch_normalization_3/beta*
valueB*    *
dtype0*
_output_shapes
:
�
'resnet_model/batch_normalization_3/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_3/beta*
	container 
�
.resnet_model/batch_normalization_3/beta/AssignAssign'resnet_model/batch_normalization_3/beta9resnet_model/batch_normalization_3/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_3/beta
�
,resnet_model/batch_normalization_3/beta/readIdentity'resnet_model/batch_normalization_3/beta*
_output_shapes
:*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_3/beta
�
@resnet_model/batch_normalization_3/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_3/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_3/moving_mean
VariableV2*A
_class7
53loc:@resnet_model/batch_normalization_3/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
5resnet_model/batch_normalization_3/moving_mean/AssignAssign.resnet_model/batch_normalization_3/moving_mean@resnet_model/batch_normalization_3/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_3/moving_mean
�
3resnet_model/batch_normalization_3/moving_mean/readIdentity.resnet_model/batch_normalization_3/moving_mean*
T0*A
_class7
53loc:@resnet_model/batch_normalization_3/moving_mean*
_output_shapes
:
�
Cresnet_model/batch_normalization_3/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_3/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_3/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *E
_class;
97loc:@resnet_model/batch_normalization_3/moving_variance*
	container *
shape:
�
9resnet_model/batch_normalization_3/moving_variance/AssignAssign2resnet_model/batch_normalization_3/moving_varianceCresnet_model/batch_normalization_3/moving_variance/Initializer/ones*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes
:
�
7resnet_model/batch_normalization_3/moving_variance/readIdentity2resnet_model/batch_normalization_3/moving_variance*
T0*E
_class;
97loc:@resnet_model/batch_normalization_3/moving_variance*
_output_shapes
:
�
1resnet_model/batch_normalization_3/FusedBatchNormFusedBatchNormresnet_model/conv2d_4/Conv2D-resnet_model/batch_normalization_3/gamma/read,resnet_model/batch_normalization_3/beta/read3resnet_model/batch_normalization_3/moving_mean/read7resnet_model/batch_normalization_3/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
m
(resnet_model/batch_normalization_3/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_3Relu1resnet_model/batch_normalization_3/FusedBatchNorm*'
_output_shapes
:�@@*
T0
�
?resnet_model/conv2d_5/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_5/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_5/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_5/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_5/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*
seed2 
�
=resnet_model/conv2d_5/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_5/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_5/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_5/kernel
�
9resnet_model/conv2d_5/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_5/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_5/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*&
_output_shapes
:
�
resnet_model/conv2d_5/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name */
_class%
#!loc:@resnet_model/conv2d_5/kernel*
	container *
shape:
�
#resnet_model/conv2d_5/kernel/AssignAssignresnet_model/conv2d_5/kernel9resnet_model/conv2d_5/kernel/Initializer/truncated_normal*
T0*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
!resnet_model/conv2d_5/kernel/readIdentityresnet_model/conv2d_5/kernel*
T0*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*&
_output_shapes
:
t
#resnet_model/conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_5/Conv2DConv2Dresnet_model/Relu_3!resnet_model/conv2d_5/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@
{
resnet_model/add_1Addresnet_model/conv2d_5/Conv2Dresnet_model/add*
T0*'
_output_shapes
:�@@
�
9resnet_model/batch_normalization_4/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@resnet_model/batch_normalization_4/gamma*
valueB*  �?
�
(resnet_model/batch_normalization_4/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_4/gamma*
	container *
shape:
�
/resnet_model/batch_normalization_4/gamma/AssignAssign(resnet_model/batch_normalization_4/gamma9resnet_model/batch_normalization_4/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_4/gamma
�
-resnet_model/batch_normalization_4/gamma/readIdentity(resnet_model/batch_normalization_4/gamma*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_4/gamma*
_output_shapes
:
�
9resnet_model/batch_normalization_4/beta/Initializer/zerosConst*:
_class0
.,loc:@resnet_model/batch_normalization_4/beta*
valueB*    *
dtype0*
_output_shapes
:
�
'resnet_model/batch_normalization_4/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_4/beta
�
.resnet_model/batch_normalization_4/beta/AssignAssign'resnet_model/batch_normalization_4/beta9resnet_model/batch_normalization_4/beta/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_4/beta*
validate_shape(*
_output_shapes
:
�
,resnet_model/batch_normalization_4/beta/readIdentity'resnet_model/batch_normalization_4/beta*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_4/beta*
_output_shapes
:
�
@resnet_model/batch_normalization_4/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_4/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_4/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *A
_class7
53loc:@resnet_model/batch_normalization_4/moving_mean
�
5resnet_model/batch_normalization_4/moving_mean/AssignAssign.resnet_model/batch_normalization_4/moving_mean@resnet_model/batch_normalization_4/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_4/moving_mean
�
3resnet_model/batch_normalization_4/moving_mean/readIdentity.resnet_model/batch_normalization_4/moving_mean*
_output_shapes
:*
T0*A
_class7
53loc:@resnet_model/batch_normalization_4/moving_mean
�
Cresnet_model/batch_normalization_4/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_4/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_4/moving_variance
VariableV2*
shared_name *E
_class;
97loc:@resnet_model/batch_normalization_4/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
9resnet_model/batch_normalization_4/moving_variance/AssignAssign2resnet_model/batch_normalization_4/moving_varianceCresnet_model/batch_normalization_4/moving_variance/Initializer/ones*
T0*E
_class;
97loc:@resnet_model/batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
7resnet_model/batch_normalization_4/moving_variance/readIdentity2resnet_model/batch_normalization_4/moving_variance*
T0*E
_class;
97loc:@resnet_model/batch_normalization_4/moving_variance*
_output_shapes
:
�
1resnet_model/batch_normalization_4/FusedBatchNormFusedBatchNormresnet_model/add_1-resnet_model/batch_normalization_4/gamma/read,resnet_model/batch_normalization_4/beta/read3resnet_model/batch_normalization_4/moving_mean/read7resnet_model/batch_normalization_4/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( *
epsilon%��'7*
T0
m
(resnet_model/batch_normalization_4/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_4Relu1resnet_model/batch_normalization_4/FusedBatchNorm*'
_output_shapes
:�@@*
T0
�
?resnet_model/conv2d_6/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_6/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_6/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_6/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_6/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_6/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_6/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_6/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*/
_class%
#!loc:@resnet_model/conv2d_6/kernel*
seed2 
�
=resnet_model/conv2d_6/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_6/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_6/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_6/kernel
�
9resnet_model/conv2d_6/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_6/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_6/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_6/kernel*&
_output_shapes
:
�
resnet_model/conv2d_6/kernel
VariableV2*/
_class%
#!loc:@resnet_model/conv2d_6/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
�
#resnet_model/conv2d_6/kernel/AssignAssignresnet_model/conv2d_6/kernel9resnet_model/conv2d_6/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_6/kernel
�
!resnet_model/conv2d_6/kernel/readIdentityresnet_model/conv2d_6/kernel*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_6/kernel
t
#resnet_model/conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_6/Conv2DConv2Dresnet_model/Relu_4!resnet_model/conv2d_6/kernel/read*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
9resnet_model/batch_normalization_5/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@resnet_model/batch_normalization_5/gamma*
valueB*  �?
�
(resnet_model/batch_normalization_5/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_5/gamma
�
/resnet_model/batch_normalization_5/gamma/AssignAssign(resnet_model/batch_normalization_5/gamma9resnet_model/batch_normalization_5/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_5/gamma
�
-resnet_model/batch_normalization_5/gamma/readIdentity(resnet_model/batch_normalization_5/gamma*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_5/gamma*
_output_shapes
:
�
9resnet_model/batch_normalization_5/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@resnet_model/batch_normalization_5/beta*
valueB*    
�
'resnet_model/batch_normalization_5/beta
VariableV2*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_5/beta*
	container *
shape:*
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_5/beta/AssignAssign'resnet_model/batch_normalization_5/beta9resnet_model/batch_normalization_5/beta/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_5/beta*
validate_shape(*
_output_shapes
:
�
,resnet_model/batch_normalization_5/beta/readIdentity'resnet_model/batch_normalization_5/beta*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_5/beta*
_output_shapes
:
�
@resnet_model/batch_normalization_5/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_5/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_5/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *A
_class7
53loc:@resnet_model/batch_normalization_5/moving_mean
�
5resnet_model/batch_normalization_5/moving_mean/AssignAssign.resnet_model/batch_normalization_5/moving_mean@resnet_model/batch_normalization_5/moving_mean/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes
:
�
3resnet_model/batch_normalization_5/moving_mean/readIdentity.resnet_model/batch_normalization_5/moving_mean*
T0*A
_class7
53loc:@resnet_model/batch_normalization_5/moving_mean*
_output_shapes
:
�
Cresnet_model/batch_normalization_5/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_5/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_5/moving_variance
VariableV2*E
_class;
97loc:@resnet_model/batch_normalization_5/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
9resnet_model/batch_normalization_5/moving_variance/AssignAssign2resnet_model/batch_normalization_5/moving_varianceCresnet_model/batch_normalization_5/moving_variance/Initializer/ones*
T0*E
_class;
97loc:@resnet_model/batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
7resnet_model/batch_normalization_5/moving_variance/readIdentity2resnet_model/batch_normalization_5/moving_variance*
_output_shapes
:*
T0*E
_class;
97loc:@resnet_model/batch_normalization_5/moving_variance
�
1resnet_model/batch_normalization_5/FusedBatchNormFusedBatchNormresnet_model/conv2d_6/Conv2D-resnet_model/batch_normalization_5/gamma/read,resnet_model/batch_normalization_5/beta/read3resnet_model/batch_normalization_5/moving_mean/read7resnet_model/batch_normalization_5/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
m
(resnet_model/batch_normalization_5/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_5Relu1resnet_model/batch_normalization_5/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
?resnet_model/conv2d_7/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_7/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_7/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_7/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_7/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*/
_class%
#!loc:@resnet_model/conv2d_7/kernel
�
=resnet_model/conv2d_7/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_7/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_7/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*&
_output_shapes
:
�
9resnet_model/conv2d_7/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_7/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_7/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*&
_output_shapes
:
�
resnet_model/conv2d_7/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name */
_class%
#!loc:@resnet_model/conv2d_7/kernel*
	container *
shape:
�
#resnet_model/conv2d_7/kernel/AssignAssignresnet_model/conv2d_7/kernel9resnet_model/conv2d_7/kernel/Initializer/truncated_normal*
T0*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
!resnet_model/conv2d_7/kernel/readIdentityresnet_model/conv2d_7/kernel*
T0*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*&
_output_shapes
:
t
#resnet_model/conv2d_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_7/Conv2DConv2Dresnet_model/Relu_5!resnet_model/conv2d_7/kernel/read*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
}
resnet_model/add_2Addresnet_model/conv2d_7/Conv2Dresnet_model/add_1*
T0*'
_output_shapes
:�@@
�
9resnet_model/batch_normalization_6/gamma/Initializer/onesConst*;
_class1
/-loc:@resnet_model/batch_normalization_6/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_6/gamma
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_6/gamma*
	container 
�
/resnet_model/batch_normalization_6/gamma/AssignAssign(resnet_model/batch_normalization_6/gamma9resnet_model/batch_normalization_6/gamma/Initializer/ones*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_6/gamma*
validate_shape(*
_output_shapes
:
�
-resnet_model/batch_normalization_6/gamma/readIdentity(resnet_model/batch_normalization_6/gamma*
_output_shapes
:*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_6/gamma
�
9resnet_model/batch_normalization_6/beta/Initializer/zerosConst*:
_class0
.,loc:@resnet_model/batch_normalization_6/beta*
valueB*    *
dtype0*
_output_shapes
:
�
'resnet_model/batch_normalization_6/beta
VariableV2*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_6/beta*
	container *
shape:*
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_6/beta/AssignAssign'resnet_model/batch_normalization_6/beta9resnet_model/batch_normalization_6/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_6/beta
�
,resnet_model/batch_normalization_6/beta/readIdentity'resnet_model/batch_normalization_6/beta*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_6/beta*
_output_shapes
:
�
@resnet_model/batch_normalization_6/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_6/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_6/moving_mean
VariableV2*A
_class7
53loc:@resnet_model/batch_normalization_6/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
5resnet_model/batch_normalization_6/moving_mean/AssignAssign.resnet_model/batch_normalization_6/moving_mean@resnet_model/batch_normalization_6/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_6/moving_mean
�
3resnet_model/batch_normalization_6/moving_mean/readIdentity.resnet_model/batch_normalization_6/moving_mean*
T0*A
_class7
53loc:@resnet_model/batch_normalization_6/moving_mean*
_output_shapes
:
�
Cresnet_model/batch_normalization_6/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_6/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_6/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *E
_class;
97loc:@resnet_model/batch_normalization_6/moving_variance*
	container *
shape:
�
9resnet_model/batch_normalization_6/moving_variance/AssignAssign2resnet_model/batch_normalization_6/moving_varianceCresnet_model/batch_normalization_6/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_6/moving_variance
�
7resnet_model/batch_normalization_6/moving_variance/readIdentity2resnet_model/batch_normalization_6/moving_variance*
T0*E
_class;
97loc:@resnet_model/batch_normalization_6/moving_variance*
_output_shapes
:
�
1resnet_model/batch_normalization_6/FusedBatchNormFusedBatchNormresnet_model/add_2-resnet_model/batch_normalization_6/gamma/read,resnet_model/batch_normalization_6/beta/read3resnet_model/batch_normalization_6/moving_mean/read7resnet_model/batch_normalization_6/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
m
(resnet_model/batch_normalization_6/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_6Relu1resnet_model/batch_normalization_6/FusedBatchNorm*'
_output_shapes
:�@@*
T0
�
?resnet_model/conv2d_8/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_8/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_8/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_8/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_8/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_8/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_8/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_8/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@resnet_model/conv2d_8/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
�
=resnet_model/conv2d_8/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_8/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_8/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@resnet_model/conv2d_8/kernel*&
_output_shapes
:
�
9resnet_model/conv2d_8/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_8/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_8/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_8/kernel*&
_output_shapes
:
�
resnet_model/conv2d_8/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name */
_class%
#!loc:@resnet_model/conv2d_8/kernel*
	container *
shape:
�
#resnet_model/conv2d_8/kernel/AssignAssignresnet_model/conv2d_8/kernel9resnet_model/conv2d_8/kernel/Initializer/truncated_normal*
T0*/
_class%
#!loc:@resnet_model/conv2d_8/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
!resnet_model/conv2d_8/kernel/readIdentityresnet_model/conv2d_8/kernel*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_8/kernel
t
#resnet_model/conv2d_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_8/Conv2DConv2Dresnet_model/Relu_6!resnet_model/conv2d_8/kernel/read*
paddingSAME*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
9resnet_model/batch_normalization_7/gamma/Initializer/onesConst*;
_class1
/-loc:@resnet_model/batch_normalization_7/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_7/gamma
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_7/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_7/gamma/AssignAssign(resnet_model/batch_normalization_7/gamma9resnet_model/batch_normalization_7/gamma/Initializer/ones*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_7/gamma*
validate_shape(*
_output_shapes
:
�
-resnet_model/batch_normalization_7/gamma/readIdentity(resnet_model/batch_normalization_7/gamma*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_7/gamma*
_output_shapes
:
�
9resnet_model/batch_normalization_7/beta/Initializer/zerosConst*:
_class0
.,loc:@resnet_model/batch_normalization_7/beta*
valueB*    *
dtype0*
_output_shapes
:
�
'resnet_model/batch_normalization_7/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_7/beta*
	container *
shape:
�
.resnet_model/batch_normalization_7/beta/AssignAssign'resnet_model/batch_normalization_7/beta9resnet_model/batch_normalization_7/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_7/beta
�
,resnet_model/batch_normalization_7/beta/readIdentity'resnet_model/batch_normalization_7/beta*
_output_shapes
:*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_7/beta
�
@resnet_model/batch_normalization_7/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_7/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_7/moving_mean
VariableV2*
shared_name *A
_class7
53loc:@resnet_model/batch_normalization_7/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
�
5resnet_model/batch_normalization_7/moving_mean/AssignAssign.resnet_model/batch_normalization_7/moving_mean@resnet_model/batch_normalization_7/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_7/moving_mean
�
3resnet_model/batch_normalization_7/moving_mean/readIdentity.resnet_model/batch_normalization_7/moving_mean*
_output_shapes
:*
T0*A
_class7
53loc:@resnet_model/batch_normalization_7/moving_mean
�
Cresnet_model/batch_normalization_7/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_7/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_7/moving_variance
VariableV2*E
_class;
97loc:@resnet_model/batch_normalization_7/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
9resnet_model/batch_normalization_7/moving_variance/AssignAssign2resnet_model/batch_normalization_7/moving_varianceCresnet_model/batch_normalization_7/moving_variance/Initializer/ones*
T0*E
_class;
97loc:@resnet_model/batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
7resnet_model/batch_normalization_7/moving_variance/readIdentity2resnet_model/batch_normalization_7/moving_variance*
T0*E
_class;
97loc:@resnet_model/batch_normalization_7/moving_variance*
_output_shapes
:
�
1resnet_model/batch_normalization_7/FusedBatchNormFusedBatchNormresnet_model/conv2d_8/Conv2D-resnet_model/batch_normalization_7/gamma/read,resnet_model/batch_normalization_7/beta/read3resnet_model/batch_normalization_7/moving_mean/read7resnet_model/batch_normalization_7/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
m
(resnet_model/batch_normalization_7/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_7Relu1resnet_model/batch_normalization_7/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
?resnet_model/conv2d_9/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
>resnet_model/conv2d_9/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
@resnet_model/conv2d_9/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Iresnet_model/conv2d_9/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?resnet_model/conv2d_9/kernel/Initializer/truncated_normal/shape*

seed *
T0*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*
seed2 *
dtype0*&
_output_shapes
:
�
=resnet_model/conv2d_9/kernel/Initializer/truncated_normal/mulMulIresnet_model/conv2d_9/kernel/Initializer/truncated_normal/TruncatedNormal@resnet_model/conv2d_9/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*&
_output_shapes
:
�
9resnet_model/conv2d_9/kernel/Initializer/truncated_normalAdd=resnet_model/conv2d_9/kernel/Initializer/truncated_normal/mul>resnet_model/conv2d_9/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*&
_output_shapes
:
�
resnet_model/conv2d_9/kernel
VariableV2*
shared_name */
_class%
#!loc:@resnet_model/conv2d_9/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
#resnet_model/conv2d_9/kernel/AssignAssignresnet_model/conv2d_9/kernel9resnet_model/conv2d_9/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*
validate_shape(*&
_output_shapes
:
�
!resnet_model/conv2d_9/kernel/readIdentityresnet_model/conv2d_9/kernel*&
_output_shapes
:*
T0*/
_class%
#!loc:@resnet_model/conv2d_9/kernel
t
#resnet_model/conv2d_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_9/Conv2DConv2Dresnet_model/Relu_7!resnet_model/conv2d_9/kernel/read*
paddingSAME*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
}
resnet_model/add_3Addresnet_model/conv2d_9/Conv2Dresnet_model/add_2*'
_output_shapes
:�@@*
T0
�
9resnet_model/batch_normalization_8/gamma/Initializer/onesConst*;
_class1
/-loc:@resnet_model/batch_normalization_8/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_8/gamma
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_8/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_8/gamma/AssignAssign(resnet_model/batch_normalization_8/gamma9resnet_model/batch_normalization_8/gamma/Initializer/ones*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_8/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
-resnet_model/batch_normalization_8/gamma/readIdentity(resnet_model/batch_normalization_8/gamma*
_output_shapes
:*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_8/gamma
�
9resnet_model/batch_normalization_8/beta/Initializer/zerosConst*:
_class0
.,loc:@resnet_model/batch_normalization_8/beta*
valueB*    *
dtype0*
_output_shapes
:
�
'resnet_model/batch_normalization_8/beta
VariableV2*
shared_name *:
_class0
.,loc:@resnet_model/batch_normalization_8/beta*
	container *
shape:*
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_8/beta/AssignAssign'resnet_model/batch_normalization_8/beta9resnet_model/batch_normalization_8/beta/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_8/beta*
validate_shape(*
_output_shapes
:
�
,resnet_model/batch_normalization_8/beta/readIdentity'resnet_model/batch_normalization_8/beta*
_output_shapes
:*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_8/beta
�
@resnet_model/batch_normalization_8/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_8/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_8/moving_mean
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *A
_class7
53loc:@resnet_model/batch_normalization_8/moving_mean*
	container 
�
5resnet_model/batch_normalization_8/moving_mean/AssignAssign.resnet_model/batch_normalization_8/moving_mean@resnet_model/batch_normalization_8/moving_mean/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_8/moving_mean*
validate_shape(*
_output_shapes
:
�
3resnet_model/batch_normalization_8/moving_mean/readIdentity.resnet_model/batch_normalization_8/moving_mean*
T0*A
_class7
53loc:@resnet_model/batch_normalization_8/moving_mean*
_output_shapes
:
�
Cresnet_model/batch_normalization_8/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_8/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_8/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *E
_class;
97loc:@resnet_model/batch_normalization_8/moving_variance
�
9resnet_model/batch_normalization_8/moving_variance/AssignAssign2resnet_model/batch_normalization_8/moving_varianceCresnet_model/batch_normalization_8/moving_variance/Initializer/ones*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_8/moving_variance*
validate_shape(*
_output_shapes
:
�
7resnet_model/batch_normalization_8/moving_variance/readIdentity2resnet_model/batch_normalization_8/moving_variance*
_output_shapes
:*
T0*E
_class;
97loc:@resnet_model/batch_normalization_8/moving_variance
�
1resnet_model/batch_normalization_8/FusedBatchNormFusedBatchNormresnet_model/add_3-resnet_model/batch_normalization_8/gamma/read,resnet_model/batch_normalization_8/beta/read3resnet_model/batch_normalization_8/moving_mean/read7resnet_model/batch_normalization_8/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
m
(resnet_model/batch_normalization_8/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_8Relu1resnet_model/batch_normalization_8/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
@resnet_model/conv2d_10/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_10/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_10/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_10/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_10/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_10/kernel
�
>resnet_model/conv2d_10/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_10/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_10/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*&
_output_shapes
:
�
:resnet_model/conv2d_10/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_10/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_10/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*&
_output_shapes
:
�
resnet_model/conv2d_10/kernel
VariableV2*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
�
$resnet_model/conv2d_10/kernel/AssignAssignresnet_model/conv2d_10/kernel:resnet_model/conv2d_10/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*
validate_shape(*&
_output_shapes
:
�
"resnet_model/conv2d_10/kernel/readIdentityresnet_model/conv2d_10/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_10/Conv2DConv2Dresnet_model/Relu_8"resnet_model/conv2d_10/kernel/read*
paddingSAME*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
9resnet_model/batch_normalization_9/gamma/Initializer/onesConst*;
_class1
/-loc:@resnet_model/batch_normalization_9/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_9/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_9/gamma
�
/resnet_model/batch_normalization_9/gamma/AssignAssign(resnet_model/batch_normalization_9/gamma9resnet_model/batch_normalization_9/gamma/Initializer/ones*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_9/gamma*
validate_shape(*
_output_shapes
:
�
-resnet_model/batch_normalization_9/gamma/readIdentity(resnet_model/batch_normalization_9/gamma*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_9/gamma*
_output_shapes
:
�
9resnet_model/batch_normalization_9/beta/Initializer/zerosConst*:
_class0
.,loc:@resnet_model/batch_normalization_9/beta*
valueB*    *
dtype0*
_output_shapes
:
�
'resnet_model/batch_normalization_9/beta
VariableV2*:
_class0
.,loc:@resnet_model/batch_normalization_9/beta*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
.resnet_model/batch_normalization_9/beta/AssignAssign'resnet_model/batch_normalization_9/beta9resnet_model/batch_normalization_9/beta/Initializer/zeros*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_9/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
,resnet_model/batch_normalization_9/beta/readIdentity'resnet_model/batch_normalization_9/beta*
_output_shapes
:*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_9/beta
�
@resnet_model/batch_normalization_9/moving_mean/Initializer/zerosConst*A
_class7
53loc:@resnet_model/batch_normalization_9/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
.resnet_model/batch_normalization_9/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *A
_class7
53loc:@resnet_model/batch_normalization_9/moving_mean*
	container *
shape:
�
5resnet_model/batch_normalization_9/moving_mean/AssignAssign.resnet_model/batch_normalization_9/moving_mean@resnet_model/batch_normalization_9/moving_mean/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_9/moving_mean*
validate_shape(*
_output_shapes
:
�
3resnet_model/batch_normalization_9/moving_mean/readIdentity.resnet_model/batch_normalization_9/moving_mean*
T0*A
_class7
53loc:@resnet_model/batch_normalization_9/moving_mean*
_output_shapes
:
�
Cresnet_model/batch_normalization_9/moving_variance/Initializer/onesConst*E
_class;
97loc:@resnet_model/batch_normalization_9/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
2resnet_model/batch_normalization_9/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *E
_class;
97loc:@resnet_model/batch_normalization_9/moving_variance*
	container *
shape:
�
9resnet_model/batch_normalization_9/moving_variance/AssignAssign2resnet_model/batch_normalization_9/moving_varianceCresnet_model/batch_normalization_9/moving_variance/Initializer/ones*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_9/moving_variance*
validate_shape(*
_output_shapes
:
�
7resnet_model/batch_normalization_9/moving_variance/readIdentity2resnet_model/batch_normalization_9/moving_variance*
_output_shapes
:*
T0*E
_class;
97loc:@resnet_model/batch_normalization_9/moving_variance
�
1resnet_model/batch_normalization_9/FusedBatchNormFusedBatchNormresnet_model/conv2d_10/Conv2D-resnet_model/batch_normalization_9/gamma/read,resnet_model/batch_normalization_9/beta/read3resnet_model/batch_normalization_9/moving_mean/read7resnet_model/batch_normalization_9/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
m
(resnet_model/batch_normalization_9/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_9Relu1resnet_model/batch_normalization_9/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
@resnet_model/conv2d_11/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_11/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_11/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_11/kernel*
valueB
 *    
�
Aresnet_model/conv2d_11/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_11/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_11/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_11/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_11/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
�
>resnet_model/conv2d_11/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_11/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_11/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_11/kernel*&
_output_shapes
:
�
:resnet_model/conv2d_11/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_11/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_11/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*0
_class&
$"loc:@resnet_model/conv2d_11/kernel
�
resnet_model/conv2d_11/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_11/kernel*
	container *
shape:
�
$resnet_model/conv2d_11/kernel/AssignAssignresnet_model/conv2d_11/kernel:resnet_model/conv2d_11/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_11/kernel*
validate_shape(*&
_output_shapes
:
�
"resnet_model/conv2d_11/kernel/readIdentityresnet_model/conv2d_11/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_11/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_11/Conv2DConv2Dresnet_model/Relu_9"resnet_model/conv2d_11/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@
~
resnet_model/add_4Addresnet_model/conv2d_11/Conv2Dresnet_model/add_3*
T0*'
_output_shapes
:�@@
�
:resnet_model/batch_normalization_10/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_10/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
)resnet_model/batch_normalization_10/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_10/gamma*
	container *
shape:
�
0resnet_model/batch_normalization_10/gamma/AssignAssign)resnet_model/batch_normalization_10/gamma:resnet_model/batch_normalization_10/gamma/Initializer/ones*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_10/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
.resnet_model/batch_normalization_10/gamma/readIdentity)resnet_model/batch_normalization_10/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_10/gamma*
_output_shapes
:
�
:resnet_model/batch_normalization_10/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@resnet_model/batch_normalization_10/beta*
valueB*    
�
(resnet_model/batch_normalization_10/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_10/beta*
	container 
�
/resnet_model/batch_normalization_10/beta/AssignAssign(resnet_model/batch_normalization_10/beta:resnet_model/batch_normalization_10/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_10/beta*
validate_shape(*
_output_shapes
:
�
-resnet_model/batch_normalization_10/beta/readIdentity(resnet_model/batch_normalization_10/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_10/beta*
_output_shapes
:
�
Aresnet_model/batch_normalization_10/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_10/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_10/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_10/moving_mean*
	container *
shape:
�
6resnet_model/batch_normalization_10/moving_mean/AssignAssign/resnet_model/batch_normalization_10/moving_meanAresnet_model/batch_normalization_10/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_10/moving_mean*
validate_shape(*
_output_shapes
:
�
4resnet_model/batch_normalization_10/moving_mean/readIdentity/resnet_model/batch_normalization_10/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_10/moving_mean*
_output_shapes
:
�
Dresnet_model/batch_normalization_10/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_10/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
3resnet_model/batch_normalization_10/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_10/moving_variance
�
:resnet_model/batch_normalization_10/moving_variance/AssignAssign3resnet_model/batch_normalization_10/moving_varianceDresnet_model/batch_normalization_10/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_10/moving_variance*
validate_shape(*
_output_shapes
:
�
8resnet_model/batch_normalization_10/moving_variance/readIdentity3resnet_model/batch_normalization_10/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_10/moving_variance*
_output_shapes
:
�
2resnet_model/batch_normalization_10/FusedBatchNormFusedBatchNormresnet_model/add_4.resnet_model/batch_normalization_10/gamma/read-resnet_model/batch_normalization_10/beta/read4resnet_model/batch_normalization_10/moving_mean/read8resnet_model/batch_normalization_10/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
n
)resnet_model/batch_normalization_10/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_10Relu2resnet_model/batch_normalization_10/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
@resnet_model/conv2d_12/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*%
valueB"            
�
?resnet_model/conv2d_12/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_12/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_12/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_12/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_12/kernel
�
>resnet_model/conv2d_12/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_12/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_12/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*&
_output_shapes
:
�
:resnet_model/conv2d_12/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_12/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_12/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*&
_output_shapes
:
�
resnet_model/conv2d_12/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_12/kernel*
	container *
shape:
�
$resnet_model/conv2d_12/kernel/AssignAssignresnet_model/conv2d_12/kernel:resnet_model/conv2d_12/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*
validate_shape(*&
_output_shapes
:
�
"resnet_model/conv2d_12/kernel/readIdentityresnet_model/conv2d_12/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_12/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_12/Conv2DConv2Dresnet_model/Relu_10"resnet_model/conv2d_12/kernel/read*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
:resnet_model/batch_normalization_11/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*<
_class2
0.loc:@resnet_model/batch_normalization_11/gamma*
valueB*  �?
�
)resnet_model/batch_normalization_11/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_11/gamma*
	container *
shape:
�
0resnet_model/batch_normalization_11/gamma/AssignAssign)resnet_model/batch_normalization_11/gamma:resnet_model/batch_normalization_11/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_11/gamma
�
.resnet_model/batch_normalization_11/gamma/readIdentity)resnet_model/batch_normalization_11/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_11/gamma*
_output_shapes
:
�
:resnet_model/batch_normalization_11/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_11/beta*
valueB*    *
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_11/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_11/beta*
	container 
�
/resnet_model/batch_normalization_11/beta/AssignAssign(resnet_model/batch_normalization_11/beta:resnet_model/batch_normalization_11/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_11/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
-resnet_model/batch_normalization_11/beta/readIdentity(resnet_model/batch_normalization_11/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_11/beta*
_output_shapes
:
�
Aresnet_model/batch_normalization_11/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_11/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_11/moving_mean
VariableV2*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_11/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
�
6resnet_model/batch_normalization_11/moving_mean/AssignAssign/resnet_model/batch_normalization_11/moving_meanAresnet_model/batch_normalization_11/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_11/moving_mean
�
4resnet_model/batch_normalization_11/moving_mean/readIdentity/resnet_model/batch_normalization_11/moving_mean*
_output_shapes
:*
T0*B
_class8
64loc:@resnet_model/batch_normalization_11/moving_mean
�
Dresnet_model/batch_normalization_11/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_11/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
3resnet_model/batch_normalization_11/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_11/moving_variance*
	container *
shape:
�
:resnet_model/batch_normalization_11/moving_variance/AssignAssign3resnet_model/batch_normalization_11/moving_varianceDresnet_model/batch_normalization_11/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_11/moving_variance*
validate_shape(*
_output_shapes
:
�
8resnet_model/batch_normalization_11/moving_variance/readIdentity3resnet_model/batch_normalization_11/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_11/moving_variance*
_output_shapes
:
�
2resnet_model/batch_normalization_11/FusedBatchNormFusedBatchNormresnet_model/conv2d_12/Conv2D.resnet_model/batch_normalization_11/gamma/read-resnet_model/batch_normalization_11/beta/read4resnet_model/batch_normalization_11/moving_mean/read8resnet_model/batch_normalization_11/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
n
)resnet_model/batch_normalization_11/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_11Relu2resnet_model/batch_normalization_11/FusedBatchNorm*'
_output_shapes
:�@@*
T0
�
@resnet_model/conv2d_13/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_13/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_13/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_13/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_13/kernel/Initializer/truncated_normal/shape*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*
seed2 *
dtype0*&
_output_shapes
:
�
>resnet_model/conv2d_13/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_13/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_13/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*&
_output_shapes
:
�
:resnet_model/conv2d_13/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_13/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_13/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*&
_output_shapes
:
�
resnet_model/conv2d_13/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_13/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
$resnet_model/conv2d_13/kernel/AssignAssignresnet_model/conv2d_13/kernel:resnet_model/conv2d_13/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*
validate_shape(*&
_output_shapes
:
�
"resnet_model/conv2d_13/kernel/readIdentityresnet_model/conv2d_13/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_13/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_13/Conv2DConv2Dresnet_model/Relu_11"resnet_model/conv2d_13/kernel/read*
paddingSAME*'
_output_shapes
:�@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
~
resnet_model/add_5Addresnet_model/conv2d_13/Conv2Dresnet_model/add_4*
T0*'
_output_shapes
:�@@
�
:resnet_model/batch_normalization_12/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_12/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
)resnet_model/batch_normalization_12/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_12/gamma*
	container *
shape:
�
0resnet_model/batch_normalization_12/gamma/AssignAssign)resnet_model/batch_normalization_12/gamma:resnet_model/batch_normalization_12/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_12/gamma
�
.resnet_model/batch_normalization_12/gamma/readIdentity)resnet_model/batch_normalization_12/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_12/gamma*
_output_shapes
:
�
:resnet_model/batch_normalization_12/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_12/beta*
valueB*    *
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_12/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_12/beta*
	container *
shape:*
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_12/beta/AssignAssign(resnet_model/batch_normalization_12/beta:resnet_model/batch_normalization_12/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_12/beta*
validate_shape(*
_output_shapes
:
�
-resnet_model/batch_normalization_12/beta/readIdentity(resnet_model/batch_normalization_12/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_12/beta*
_output_shapes
:
�
Aresnet_model/batch_normalization_12/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_12/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_12/moving_mean
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_12/moving_mean*
	container 
�
6resnet_model/batch_normalization_12/moving_mean/AssignAssign/resnet_model/batch_normalization_12/moving_meanAresnet_model/batch_normalization_12/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_12/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
4resnet_model/batch_normalization_12/moving_mean/readIdentity/resnet_model/batch_normalization_12/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_12/moving_mean*
_output_shapes
:
�
Dresnet_model/batch_normalization_12/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_12/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
3resnet_model/batch_normalization_12/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_12/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
:resnet_model/batch_normalization_12/moving_variance/AssignAssign3resnet_model/batch_normalization_12/moving_varianceDresnet_model/batch_normalization_12/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_12/moving_variance
�
8resnet_model/batch_normalization_12/moving_variance/readIdentity3resnet_model/batch_normalization_12/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_12/moving_variance*
_output_shapes
:
�
2resnet_model/batch_normalization_12/FusedBatchNormFusedBatchNormresnet_model/add_5.resnet_model/batch_normalization_12/gamma/read-resnet_model/batch_normalization_12/beta/read4resnet_model/batch_normalization_12/moving_mean/read8resnet_model/batch_normalization_12/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_12/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_12Relu2resnet_model/batch_normalization_12/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
@resnet_model/conv2d_14/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_14/kernel*%
valueB"            
�
?resnet_model/conv2d_14/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_14/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_14/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_14/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_14/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_14/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_14/kernel*
seed2 
�
>resnet_model/conv2d_14/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_14/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_14/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*0
_class&
$"loc:@resnet_model/conv2d_14/kernel
�
:resnet_model/conv2d_14/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_14/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_14/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*0
_class&
$"loc:@resnet_model/conv2d_14/kernel
�
resnet_model/conv2d_14/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_14/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
$resnet_model/conv2d_14/kernel/AssignAssignresnet_model/conv2d_14/kernel:resnet_model/conv2d_14/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_14/kernel*
validate_shape(*&
_output_shapes
:
�
"resnet_model/conv2d_14/kernel/readIdentityresnet_model/conv2d_14/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_14/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_14/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_14/Conv2DConv2Dresnet_model/Relu_12"resnet_model/conv2d_14/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@*
	dilations
*
T0
�
:resnet_model/batch_normalization_13/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_13/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
)resnet_model/batch_normalization_13/gamma
VariableV2*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_13/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
0resnet_model/batch_normalization_13/gamma/AssignAssign)resnet_model/batch_normalization_13/gamma:resnet_model/batch_normalization_13/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_13/gamma
�
.resnet_model/batch_normalization_13/gamma/readIdentity)resnet_model/batch_normalization_13/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_13/gamma*
_output_shapes
:
�
:resnet_model/batch_normalization_13/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_13/beta*
valueB*    *
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_13/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_13/beta*
	container *
shape:
�
/resnet_model/batch_normalization_13/beta/AssignAssign(resnet_model/batch_normalization_13/beta:resnet_model/batch_normalization_13/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_13/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
-resnet_model/batch_normalization_13/beta/readIdentity(resnet_model/batch_normalization_13/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_13/beta*
_output_shapes
:
�
Aresnet_model/batch_normalization_13/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_13/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_13/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_13/moving_mean*
	container *
shape:
�
6resnet_model/batch_normalization_13/moving_mean/AssignAssign/resnet_model/batch_normalization_13/moving_meanAresnet_model/batch_normalization_13/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_13/moving_mean*
validate_shape(*
_output_shapes
:
�
4resnet_model/batch_normalization_13/moving_mean/readIdentity/resnet_model/batch_normalization_13/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_13/moving_mean*
_output_shapes
:
�
Dresnet_model/batch_normalization_13/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_13/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
3resnet_model/batch_normalization_13/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_13/moving_variance*
	container *
shape:
�
:resnet_model/batch_normalization_13/moving_variance/AssignAssign3resnet_model/batch_normalization_13/moving_varianceDresnet_model/batch_normalization_13/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_13/moving_variance*
validate_shape(*
_output_shapes
:
�
8resnet_model/batch_normalization_13/moving_variance/readIdentity3resnet_model/batch_normalization_13/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_13/moving_variance*
_output_shapes
:
�
2resnet_model/batch_normalization_13/FusedBatchNormFusedBatchNormresnet_model/conv2d_14/Conv2D.resnet_model/batch_normalization_13/gamma/read-resnet_model/batch_normalization_13/beta/read4resnet_model/batch_normalization_13/moving_mean/read8resnet_model/batch_normalization_13/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_13/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_13Relu2resnet_model/batch_normalization_13/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
@resnet_model/conv2d_15/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*%
valueB"            
�
?resnet_model/conv2d_15/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_15/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_15/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_15/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*
seed2 
�
>resnet_model/conv2d_15/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_15/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_15/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*&
_output_shapes
:
�
:resnet_model/conv2d_15/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_15/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_15/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*&
_output_shapes
:
�
resnet_model/conv2d_15/kernel
VariableV2*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
�
$resnet_model/conv2d_15/kernel/AssignAssignresnet_model/conv2d_15/kernel:resnet_model/conv2d_15/kernel/Initializer/truncated_normal*
T0*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
"resnet_model/conv2d_15/kernel/readIdentityresnet_model/conv2d_15/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_15/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_15/Conv2DConv2Dresnet_model/Relu_13"resnet_model/conv2d_15/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@
~
resnet_model/add_6Addresnet_model/conv2d_15/Conv2Dresnet_model/add_5*
T0*'
_output_shapes
:�@@
�
:resnet_model/batch_normalization_14/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*<
_class2
0.loc:@resnet_model/batch_normalization_14/gamma*
valueB*  �?
�
)resnet_model/batch_normalization_14/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_14/gamma*
	container *
shape:
�
0resnet_model/batch_normalization_14/gamma/AssignAssign)resnet_model/batch_normalization_14/gamma:resnet_model/batch_normalization_14/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_14/gamma*
validate_shape(*
_output_shapes
:
�
.resnet_model/batch_normalization_14/gamma/readIdentity)resnet_model/batch_normalization_14/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_14/gamma*
_output_shapes
:
�
:resnet_model/batch_normalization_14/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@resnet_model/batch_normalization_14/beta*
valueB*    
�
(resnet_model/batch_normalization_14/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_14/beta
�
/resnet_model/batch_normalization_14/beta/AssignAssign(resnet_model/batch_normalization_14/beta:resnet_model/batch_normalization_14/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_14/beta*
validate_shape(*
_output_shapes
:
�
-resnet_model/batch_normalization_14/beta/readIdentity(resnet_model/batch_normalization_14/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_14/beta*
_output_shapes
:
�
Aresnet_model/batch_normalization_14/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_14/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_14/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_14/moving_mean*
	container *
shape:
�
6resnet_model/batch_normalization_14/moving_mean/AssignAssign/resnet_model/batch_normalization_14/moving_meanAresnet_model/batch_normalization_14/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_14/moving_mean*
validate_shape(*
_output_shapes
:
�
4resnet_model/batch_normalization_14/moving_mean/readIdentity/resnet_model/batch_normalization_14/moving_mean*
_output_shapes
:*
T0*B
_class8
64loc:@resnet_model/batch_normalization_14/moving_mean
�
Dresnet_model/batch_normalization_14/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_14/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
3resnet_model/batch_normalization_14/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_14/moving_variance*
	container *
shape:
�
:resnet_model/batch_normalization_14/moving_variance/AssignAssign3resnet_model/batch_normalization_14/moving_varianceDresnet_model/batch_normalization_14/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_14/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
8resnet_model/batch_normalization_14/moving_variance/readIdentity3resnet_model/batch_normalization_14/moving_variance*
_output_shapes
:*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_14/moving_variance
�
2resnet_model/batch_normalization_14/FusedBatchNormFusedBatchNormresnet_model/add_6.resnet_model/batch_normalization_14/gamma/read-resnet_model/batch_normalization_14/beta/read4resnet_model/batch_normalization_14/moving_mean/read8resnet_model/batch_normalization_14/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_14/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_14Relu2resnet_model/batch_normalization_14/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
@resnet_model/conv2d_16/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_16/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_16/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_16/kernel*
valueB
 *��=
�
Jresnet_model/conv2d_16/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_16/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
�
>resnet_model/conv2d_16/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_16/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_16/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*&
_output_shapes
:
�
:resnet_model/conv2d_16/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_16/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_16/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*&
_output_shapes
:
�
resnet_model/conv2d_16/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_16/kernel*
	container *
shape:
�
$resnet_model/conv2d_16/kernel/AssignAssignresnet_model/conv2d_16/kernel:resnet_model/conv2d_16/kernel/Initializer/truncated_normal*
T0*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
"resnet_model/conv2d_16/kernel/readIdentityresnet_model/conv2d_16/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_16/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_16/Conv2DConv2Dresnet_model/Relu_14"resnet_model/conv2d_16/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@
�
:resnet_model/batch_normalization_15/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_15/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
)resnet_model/batch_normalization_15/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_15/gamma*
	container *
shape:
�
0resnet_model/batch_normalization_15/gamma/AssignAssign)resnet_model/batch_normalization_15/gamma:resnet_model/batch_normalization_15/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_15/gamma*
validate_shape(*
_output_shapes
:
�
.resnet_model/batch_normalization_15/gamma/readIdentity)resnet_model/batch_normalization_15/gamma*
_output_shapes
:*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_15/gamma
�
:resnet_model/batch_normalization_15/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_15/beta*
valueB*    *
dtype0*
_output_shapes
:
�
(resnet_model/batch_normalization_15/beta
VariableV2*;
_class1
/-loc:@resnet_model/batch_normalization_15/beta*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
/resnet_model/batch_normalization_15/beta/AssignAssign(resnet_model/batch_normalization_15/beta:resnet_model/batch_normalization_15/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_15/beta
�
-resnet_model/batch_normalization_15/beta/readIdentity(resnet_model/batch_normalization_15/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_15/beta*
_output_shapes
:
�
Aresnet_model/batch_normalization_15/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_15/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_15/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_15/moving_mean
�
6resnet_model/batch_normalization_15/moving_mean/AssignAssign/resnet_model/batch_normalization_15/moving_meanAresnet_model/batch_normalization_15/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_15/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
4resnet_model/batch_normalization_15/moving_mean/readIdentity/resnet_model/batch_normalization_15/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_15/moving_mean*
_output_shapes
:
�
Dresnet_model/batch_normalization_15/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:*F
_class<
:8loc:@resnet_model/batch_normalization_15/moving_variance*
valueB*  �?
�
3resnet_model/batch_normalization_15/moving_variance
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_15/moving_variance*
	container 
�
:resnet_model/batch_normalization_15/moving_variance/AssignAssign3resnet_model/batch_normalization_15/moving_varianceDresnet_model/batch_normalization_15/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_15/moving_variance*
validate_shape(*
_output_shapes
:
�
8resnet_model/batch_normalization_15/moving_variance/readIdentity3resnet_model/batch_normalization_15/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_15/moving_variance*
_output_shapes
:
�
2resnet_model/batch_normalization_15/FusedBatchNormFusedBatchNormresnet_model/conv2d_16/Conv2D.resnet_model/batch_normalization_15/gamma/read-resnet_model/batch_normalization_15/beta/read4resnet_model/batch_normalization_15/moving_mean/read8resnet_model/batch_normalization_15/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( 
n
)resnet_model/batch_normalization_15/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_15Relu2resnet_model/batch_normalization_15/FusedBatchNorm*'
_output_shapes
:�@@*
T0
�
@resnet_model/conv2d_17/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_17/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_17/kernel*
valueB
 *    
�
Aresnet_model/conv2d_17/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_17/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_17/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*
seed2 
�
>resnet_model/conv2d_17/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_17/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_17/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*&
_output_shapes
:
�
:resnet_model/conv2d_17/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_17/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_17/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*0
_class&
$"loc:@resnet_model/conv2d_17/kernel
�
resnet_model/conv2d_17/kernel
VariableV2*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
�
$resnet_model/conv2d_17/kernel/AssignAssignresnet_model/conv2d_17/kernel:resnet_model/conv2d_17/kernel/Initializer/truncated_normal*
T0*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
"resnet_model/conv2d_17/kernel/readIdentityresnet_model/conv2d_17/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*&
_output_shapes
:
u
$resnet_model/conv2d_17/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_17/Conv2DConv2Dresnet_model/Relu_15"resnet_model/conv2d_17/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@@
~
resnet_model/add_7Addresnet_model/conv2d_17/Conv2Dresnet_model/add_6*
T0*'
_output_shapes
:�@@
k
resnet_model/block_layer1Identityresnet_model/add_7*
T0*'
_output_shapes
:�@@
�
:resnet_model/batch_normalization_16/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*<
_class2
0.loc:@resnet_model/batch_normalization_16/gamma*
valueB*  �?
�
)resnet_model/batch_normalization_16/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_16/gamma*
	container *
shape:
�
0resnet_model/batch_normalization_16/gamma/AssignAssign)resnet_model/batch_normalization_16/gamma:resnet_model/batch_normalization_16/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_16/gamma
�
.resnet_model/batch_normalization_16/gamma/readIdentity)resnet_model/batch_normalization_16/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_16/gamma*
_output_shapes
:
�
:resnet_model/batch_normalization_16/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@resnet_model/batch_normalization_16/beta*
valueB*    
�
(resnet_model/batch_normalization_16/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_16/beta*
	container *
shape:
�
/resnet_model/batch_normalization_16/beta/AssignAssign(resnet_model/batch_normalization_16/beta:resnet_model/batch_normalization_16/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_16/beta*
validate_shape(*
_output_shapes
:
�
-resnet_model/batch_normalization_16/beta/readIdentity(resnet_model/batch_normalization_16/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_16/beta*
_output_shapes
:
�
Aresnet_model/batch_normalization_16/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_16/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
/resnet_model/batch_normalization_16/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_16/moving_mean
�
6resnet_model/batch_normalization_16/moving_mean/AssignAssign/resnet_model/batch_normalization_16/moving_meanAresnet_model/batch_normalization_16/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_16/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
4resnet_model/batch_normalization_16/moving_mean/readIdentity/resnet_model/batch_normalization_16/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_16/moving_mean*
_output_shapes
:
�
Dresnet_model/batch_normalization_16/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_16/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
3resnet_model/batch_normalization_16/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_16/moving_variance
�
:resnet_model/batch_normalization_16/moving_variance/AssignAssign3resnet_model/batch_normalization_16/moving_varianceDresnet_model/batch_normalization_16/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_16/moving_variance
�
8resnet_model/batch_normalization_16/moving_variance/readIdentity3resnet_model/batch_normalization_16/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_16/moving_variance*
_output_shapes
:
�
2resnet_model/batch_normalization_16/FusedBatchNormFusedBatchNormresnet_model/block_layer1.resnet_model/batch_normalization_16/gamma/read-resnet_model/batch_normalization_16/beta/read4resnet_model/batch_normalization_16/moving_mean/read8resnet_model/batch_normalization_16/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@@::::*
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_16/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_16Relu2resnet_model/batch_normalization_16/FusedBatchNorm*
T0*'
_output_shapes
:�@@
�
resnet_model/Pad/paddingsConst*9
value0B."                                 *
dtype0*
_output_shapes

:
�
resnet_model/PadPadresnet_model/Relu_16resnet_model/Pad/paddings*
T0*
	Tpaddings0*'
_output_shapes
:�@@
�
@resnet_model/conv2d_18/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*%
valueB"             *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_18/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_18/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*
valueB
 *6��>*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_18/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_18/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*
seed2 
�
>resnet_model/conv2d_18/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_18/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_18/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
: *
T0*0
_class&
$"loc:@resnet_model/conv2d_18/kernel
�
:resnet_model/conv2d_18/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_18/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_18/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*&
_output_shapes
: 
�
resnet_model/conv2d_18/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_18/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
�
$resnet_model/conv2d_18/kernel/AssignAssignresnet_model/conv2d_18/kernel:resnet_model/conv2d_18/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*
validate_shape(*&
_output_shapes
: 
�
"resnet_model/conv2d_18/kernel/readIdentityresnet_model/conv2d_18/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*&
_output_shapes
: 
u
$resnet_model/conv2d_18/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_18/Conv2DConv2Dresnet_model/Pad"resnet_model/conv2d_18/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:�   
�
resnet_model/Pad_1/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
�
resnet_model/Pad_1Padresnet_model/Relu_16resnet_model/Pad_1/paddings*
T0*
	Tpaddings0*'
_output_shapes
:�BB
�
@resnet_model/conv2d_19/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_19/kernel*%
valueB"             
�
?resnet_model/conv2d_19/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_19/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_19/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_19/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_19/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_19/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
: *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_19/kernel
�
>resnet_model/conv2d_19/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_19/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_19/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_19/kernel*&
_output_shapes
: 
�
:resnet_model/conv2d_19/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_19/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_19/kernel/Initializer/truncated_normal/mean*&
_output_shapes
: *
T0*0
_class&
$"loc:@resnet_model/conv2d_19/kernel
�
resnet_model/conv2d_19/kernel
VariableV2*0
_class&
$"loc:@resnet_model/conv2d_19/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
�
$resnet_model/conv2d_19/kernel/AssignAssignresnet_model/conv2d_19/kernel:resnet_model/conv2d_19/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_19/kernel
�
"resnet_model/conv2d_19/kernel/readIdentityresnet_model/conv2d_19/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_19/kernel*&
_output_shapes
: 
u
$resnet_model/conv2d_19/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_19/Conv2DConv2Dresnet_model/Pad_1"resnet_model/conv2d_19/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_17/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_17/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_17/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_17/gamma*
	container *
shape: 
�
0resnet_model/batch_normalization_17/gamma/AssignAssign)resnet_model/batch_normalization_17/gamma:resnet_model/batch_normalization_17/gamma/Initializer/ones*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_17/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
.resnet_model/batch_normalization_17/gamma/readIdentity)resnet_model/batch_normalization_17/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_17/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_17/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_17/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_17/beta
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_17/beta*
	container 
�
/resnet_model/batch_normalization_17/beta/AssignAssign(resnet_model/batch_normalization_17/beta:resnet_model/batch_normalization_17/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_17/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_17/beta/readIdentity(resnet_model/batch_normalization_17/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_17/beta
�
Aresnet_model/batch_normalization_17/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_17/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_17/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_17/moving_mean*
	container 
�
6resnet_model/batch_normalization_17/moving_mean/AssignAssign/resnet_model/batch_normalization_17/moving_meanAresnet_model/batch_normalization_17/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_17/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
�
4resnet_model/batch_normalization_17/moving_mean/readIdentity/resnet_model/batch_normalization_17/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_17/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_17/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@resnet_model/batch_normalization_17/moving_variance*
valueB *  �?
�
3resnet_model/batch_normalization_17/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_17/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_17/moving_variance/AssignAssign3resnet_model/batch_normalization_17/moving_varianceDresnet_model/batch_normalization_17/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_17/moving_variance*
validate_shape(*
_output_shapes
: 
�
8resnet_model/batch_normalization_17/moving_variance/readIdentity3resnet_model/batch_normalization_17/moving_variance*
_output_shapes
: *
T0*F
_class<
:8loc:@resnet_model/batch_normalization_17/moving_variance
�
2resnet_model/batch_normalization_17/FusedBatchNormFusedBatchNormresnet_model/conv2d_19/Conv2D.resnet_model/batch_normalization_17/gamma/read-resnet_model/batch_normalization_17/beta/read4resnet_model/batch_normalization_17/moving_mean/read8resnet_model/batch_normalization_17/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_17/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_17Relu2resnet_model/batch_normalization_17/FusedBatchNorm*'
_output_shapes
:�   *
T0
�
@resnet_model/conv2d_20/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_20/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_20/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_20/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_20/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_20/kernel
�
>resnet_model/conv2d_20/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_20/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_20/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_20/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_20/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_20/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_20/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_20/kernel*
	container *
shape:  
�
$resnet_model/conv2d_20/kernel/AssignAssignresnet_model/conv2d_20/kernel:resnet_model/conv2d_20/kernel/Initializer/truncated_normal*
T0*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
�
"resnet_model/conv2d_20/kernel/readIdentityresnet_model/conv2d_20/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_20/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_20/Conv2DConv2Dresnet_model/Relu_17"resnet_model/conv2d_20/kernel/read*
paddingSAME*'
_output_shapes
:�   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
resnet_model/add_8Addresnet_model/conv2d_20/Conv2Dresnet_model/conv2d_18/Conv2D*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_18/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_18/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_18/gamma
VariableV2*<
_class2
0.loc:@resnet_model/batch_normalization_18/gamma*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
0resnet_model/batch_normalization_18/gamma/AssignAssign)resnet_model/batch_normalization_18/gamma:resnet_model/batch_normalization_18/gamma/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_18/gamma
�
.resnet_model/batch_normalization_18/gamma/readIdentity)resnet_model/batch_normalization_18/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_18/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_18/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_18/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_18/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_18/beta*
	container *
shape: 
�
/resnet_model/batch_normalization_18/beta/AssignAssign(resnet_model/batch_normalization_18/beta:resnet_model/batch_normalization_18/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_18/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_18/beta/readIdentity(resnet_model/batch_normalization_18/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_18/beta
�
Aresnet_model/batch_normalization_18/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_18/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_18/moving_mean
VariableV2*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_18/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: 
�
6resnet_model/batch_normalization_18/moving_mean/AssignAssign/resnet_model/batch_normalization_18/moving_meanAresnet_model/batch_normalization_18/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_18/moving_mean
�
4resnet_model/batch_normalization_18/moving_mean/readIdentity/resnet_model/batch_normalization_18/moving_mean*
_output_shapes
: *
T0*B
_class8
64loc:@resnet_model/batch_normalization_18/moving_mean
�
Dresnet_model/batch_normalization_18/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@resnet_model/batch_normalization_18/moving_variance*
valueB *  �?
�
3resnet_model/batch_normalization_18/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_18/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 
�
:resnet_model/batch_normalization_18/moving_variance/AssignAssign3resnet_model/batch_normalization_18/moving_varianceDresnet_model/batch_normalization_18/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_18/moving_variance
�
8resnet_model/batch_normalization_18/moving_variance/readIdentity3resnet_model/batch_normalization_18/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_18/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_18/FusedBatchNormFusedBatchNormresnet_model/add_8.resnet_model/batch_normalization_18/gamma/read-resnet_model/batch_normalization_18/beta/read4resnet_model/batch_normalization_18/moving_mean/read8resnet_model/batch_normalization_18/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( 
n
)resnet_model/batch_normalization_18/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_18Relu2resnet_model/batch_normalization_18/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_21/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_21/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_21/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_21/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_21/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_21/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_21/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_21/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_21/kernel*
seed2 
�
>resnet_model/conv2d_21/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_21/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_21/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_21/kernel
�
:resnet_model/conv2d_21/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_21/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_21/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_21/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_21/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_21/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  
�
$resnet_model/conv2d_21/kernel/AssignAssignresnet_model/conv2d_21/kernel:resnet_model/conv2d_21/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_21/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_21/kernel/readIdentityresnet_model/conv2d_21/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_21/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_21/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_21/Conv2DConv2Dresnet_model/Relu_18"resnet_model/conv2d_21/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   *
	dilations
*
T0
�
:resnet_model/batch_normalization_19/gamma/Initializer/onesConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@resnet_model/batch_normalization_19/gamma*
valueB *  �?
�
)resnet_model/batch_normalization_19/gamma
VariableV2*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_19/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
�
0resnet_model/batch_normalization_19/gamma/AssignAssign)resnet_model/batch_normalization_19/gamma:resnet_model/batch_normalization_19/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_19/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_19/gamma/readIdentity)resnet_model/batch_normalization_19/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_19/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_19/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_19/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_19/beta
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_19/beta*
	container 
�
/resnet_model/batch_normalization_19/beta/AssignAssign(resnet_model/batch_normalization_19/beta:resnet_model/batch_normalization_19/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_19/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_19/beta/readIdentity(resnet_model/batch_normalization_19/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_19/beta
�
Aresnet_model/batch_normalization_19/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_19/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_19/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_19/moving_mean*
	container *
shape: 
�
6resnet_model/batch_normalization_19/moving_mean/AssignAssign/resnet_model/batch_normalization_19/moving_meanAresnet_model/batch_normalization_19/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_19/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
�
4resnet_model/batch_normalization_19/moving_mean/readIdentity/resnet_model/batch_normalization_19/moving_mean*
_output_shapes
: *
T0*B
_class8
64loc:@resnet_model/batch_normalization_19/moving_mean
�
Dresnet_model/batch_normalization_19/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_19/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_19/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_19/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_19/moving_variance/AssignAssign3resnet_model/batch_normalization_19/moving_varianceDresnet_model/batch_normalization_19/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_19/moving_variance
�
8resnet_model/batch_normalization_19/moving_variance/readIdentity3resnet_model/batch_normalization_19/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_19/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_19/FusedBatchNormFusedBatchNormresnet_model/conv2d_21/Conv2D.resnet_model/batch_normalization_19/gamma/read-resnet_model/batch_normalization_19/beta/read4resnet_model/batch_normalization_19/moving_mean/read8resnet_model/batch_normalization_19/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( 
n
)resnet_model/batch_normalization_19/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_19Relu2resnet_model/batch_normalization_19/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_22/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*%
valueB"              
�
?resnet_model/conv2d_22/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_22/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_22/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_22/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*
seed2 
�
>resnet_model/conv2d_22/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_22/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_22/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_22/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_22/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_22/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_22/kernel
VariableV2*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_22/kernel
�
$resnet_model/conv2d_22/kernel/AssignAssignresnet_model/conv2d_22/kernel:resnet_model/conv2d_22/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_22/kernel/readIdentityresnet_model/conv2d_22/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_22/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_22/Conv2DConv2Dresnet_model/Relu_19"resnet_model/conv2d_22/kernel/read*'
_output_shapes
:�   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
~
resnet_model/add_9Addresnet_model/conv2d_22/Conv2Dresnet_model/add_8*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_20/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_20/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_20/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_20/gamma*
	container *
shape: 
�
0resnet_model/batch_normalization_20/gamma/AssignAssign)resnet_model/batch_normalization_20/gamma:resnet_model/batch_normalization_20/gamma/Initializer/ones*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_20/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
.resnet_model/batch_normalization_20/gamma/readIdentity)resnet_model/batch_normalization_20/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_20/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_20/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_20/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_20/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_20/beta*
	container *
shape: 
�
/resnet_model/batch_normalization_20/beta/AssignAssign(resnet_model/batch_normalization_20/beta:resnet_model/batch_normalization_20/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_20/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_20/beta/readIdentity(resnet_model/batch_normalization_20/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_20/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_20/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_20/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_20/moving_mean
VariableV2*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_20/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: 
�
6resnet_model/batch_normalization_20/moving_mean/AssignAssign/resnet_model/batch_normalization_20/moving_meanAresnet_model/batch_normalization_20/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_20/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_20/moving_mean/readIdentity/resnet_model/batch_normalization_20/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_20/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_20/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_20/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_20/moving_variance
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_20/moving_variance
�
:resnet_model/batch_normalization_20/moving_variance/AssignAssign3resnet_model/batch_normalization_20/moving_varianceDresnet_model/batch_normalization_20/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_20/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
8resnet_model/batch_normalization_20/moving_variance/readIdentity3resnet_model/batch_normalization_20/moving_variance*
_output_shapes
: *
T0*F
_class<
:8loc:@resnet_model/batch_normalization_20/moving_variance
�
2resnet_model/batch_normalization_20/FusedBatchNormFusedBatchNormresnet_model/add_9.resnet_model/batch_normalization_20/gamma/read-resnet_model/batch_normalization_20/beta/read4resnet_model/batch_normalization_20/moving_mean/read8resnet_model/batch_normalization_20/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( 
n
)resnet_model/batch_normalization_20/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_20Relu2resnet_model/batch_normalization_20/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_23/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*%
valueB"              
�
?resnet_model/conv2d_23/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_23/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_23/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_23/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*
seed2 *
dtype0*&
_output_shapes
:  *

seed 
�
>resnet_model/conv2d_23/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_23/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_23/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_23/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_23/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_23/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_23/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_23/kernel*
	container *
shape:  
�
$resnet_model/conv2d_23/kernel/AssignAssignresnet_model/conv2d_23/kernel:resnet_model/conv2d_23/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_23/kernel/readIdentityresnet_model/conv2d_23/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_23/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_23/Conv2DConv2Dresnet_model/Relu_20"resnet_model/conv2d_23/kernel/read*
paddingSAME*'
_output_shapes
:�   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
:resnet_model/batch_normalization_21/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_21/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_21/gamma
VariableV2*<
_class2
0.loc:@resnet_model/batch_normalization_21/gamma*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
0resnet_model/batch_normalization_21/gamma/AssignAssign)resnet_model/batch_normalization_21/gamma:resnet_model/batch_normalization_21/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_21/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_21/gamma/readIdentity)resnet_model/batch_normalization_21/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_21/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_21/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_21/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_21/beta
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_21/beta
�
/resnet_model/batch_normalization_21/beta/AssignAssign(resnet_model/batch_normalization_21/beta:resnet_model/batch_normalization_21/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_21/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_21/beta/readIdentity(resnet_model/batch_normalization_21/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_21/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_21/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_21/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_21/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_21/moving_mean*
	container 
�
6resnet_model/batch_normalization_21/moving_mean/AssignAssign/resnet_model/batch_normalization_21/moving_meanAresnet_model/batch_normalization_21/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_21/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_21/moving_mean/readIdentity/resnet_model/batch_normalization_21/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_21/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_21/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_21/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_21/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_21/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_21/moving_variance/AssignAssign3resnet_model/batch_normalization_21/moving_varianceDresnet_model/batch_normalization_21/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_21/moving_variance*
validate_shape(*
_output_shapes
: 
�
8resnet_model/batch_normalization_21/moving_variance/readIdentity3resnet_model/batch_normalization_21/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_21/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_21/FusedBatchNormFusedBatchNormresnet_model/conv2d_23/Conv2D.resnet_model/batch_normalization_21/gamma/read-resnet_model/batch_normalization_21/beta/read4resnet_model/batch_normalization_21/moving_mean/read8resnet_model/batch_normalization_21/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_21/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_21Relu2resnet_model/batch_normalization_21/FusedBatchNorm*'
_output_shapes
:�   *
T0
�
@resnet_model/conv2d_24/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_24/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_24/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_24/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_24/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_24/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_24/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_24/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_24/kernel*
seed2 
�
>resnet_model/conv2d_24/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_24/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_24/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_24/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_24/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_24/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_24/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_24/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_24/kernel
VariableV2*
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_24/kernel*
	container 
�
$resnet_model/conv2d_24/kernel/AssignAssignresnet_model/conv2d_24/kernel:resnet_model/conv2d_24/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_24/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_24/kernel/readIdentityresnet_model/conv2d_24/kernel*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_24/kernel
u
$resnet_model/conv2d_24/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_24/Conv2DConv2Dresnet_model/Relu_21"resnet_model/conv2d_24/kernel/read*
paddingSAME*'
_output_shapes
:�   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

resnet_model/add_10Addresnet_model/conv2d_24/Conv2Dresnet_model/add_9*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_22/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_22/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_22/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_22/gamma*
	container *
shape: 
�
0resnet_model/batch_normalization_22/gamma/AssignAssign)resnet_model/batch_normalization_22/gamma:resnet_model/batch_normalization_22/gamma/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_22/gamma
�
.resnet_model/batch_normalization_22/gamma/readIdentity)resnet_model/batch_normalization_22/gamma*
_output_shapes
: *
T0*<
_class2
0.loc:@resnet_model/batch_normalization_22/gamma
�
:resnet_model/batch_normalization_22/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_22/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_22/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_22/beta*
	container *
shape: 
�
/resnet_model/batch_normalization_22/beta/AssignAssign(resnet_model/batch_normalization_22/beta:resnet_model/batch_normalization_22/beta/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_22/beta
�
-resnet_model/batch_normalization_22/beta/readIdentity(resnet_model/batch_normalization_22/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_22/beta
�
Aresnet_model/batch_normalization_22/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_22/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_22/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_22/moving_mean*
	container 
�
6resnet_model/batch_normalization_22/moving_mean/AssignAssign/resnet_model/batch_normalization_22/moving_meanAresnet_model/batch_normalization_22/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_22/moving_mean
�
4resnet_model/batch_normalization_22/moving_mean/readIdentity/resnet_model/batch_normalization_22/moving_mean*
_output_shapes
: *
T0*B
_class8
64loc:@resnet_model/batch_normalization_22/moving_mean
�
Dresnet_model/batch_normalization_22/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_22/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_22/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_22/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 
�
:resnet_model/batch_normalization_22/moving_variance/AssignAssign3resnet_model/batch_normalization_22/moving_varianceDresnet_model/batch_normalization_22/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_22/moving_variance*
validate_shape(*
_output_shapes
: 
�
8resnet_model/batch_normalization_22/moving_variance/readIdentity3resnet_model/batch_normalization_22/moving_variance*
_output_shapes
: *
T0*F
_class<
:8loc:@resnet_model/batch_normalization_22/moving_variance
�
2resnet_model/batch_normalization_22/FusedBatchNormFusedBatchNormresnet_model/add_10.resnet_model/batch_normalization_22/gamma/read-resnet_model/batch_normalization_22/beta/read4resnet_model/batch_normalization_22/moving_mean/read8resnet_model/batch_normalization_22/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_22/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_22Relu2resnet_model/batch_normalization_22/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_25/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_25/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_25/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_25/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_25/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_25/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_25/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_25/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_25/kernel*
seed2 *
dtype0*&
_output_shapes
:  *

seed 
�
>resnet_model/conv2d_25/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_25/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_25/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_25/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_25/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_25/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_25/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_25/kernel
�
resnet_model/conv2d_25/kernel
VariableV2*
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_25/kernel*
	container 
�
$resnet_model/conv2d_25/kernel/AssignAssignresnet_model/conv2d_25/kernel:resnet_model/conv2d_25/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_25/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_25/kernel/readIdentityresnet_model/conv2d_25/kernel*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_25/kernel
u
$resnet_model/conv2d_25/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_25/Conv2DConv2Dresnet_model/Relu_22"resnet_model/conv2d_25/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   *
	dilations

�
:resnet_model/batch_normalization_23/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_23/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_23/gamma
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_23/gamma*
	container 
�
0resnet_model/batch_normalization_23/gamma/AssignAssign)resnet_model/batch_normalization_23/gamma:resnet_model/batch_normalization_23/gamma/Initializer/ones*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_23/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
.resnet_model/batch_normalization_23/gamma/readIdentity)resnet_model/batch_normalization_23/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_23/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_23/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_23/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_23/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_23/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_23/beta/AssignAssign(resnet_model/batch_normalization_23/beta:resnet_model/batch_normalization_23/beta/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_23/beta
�
-resnet_model/batch_normalization_23/beta/readIdentity(resnet_model/batch_normalization_23/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_23/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_23/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_23/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_23/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_23/moving_mean*
	container 
�
6resnet_model/batch_normalization_23/moving_mean/AssignAssign/resnet_model/batch_normalization_23/moving_meanAresnet_model/batch_normalization_23/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_23/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_23/moving_mean/readIdentity/resnet_model/batch_normalization_23/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_23/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_23/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@resnet_model/batch_normalization_23/moving_variance*
valueB *  �?
�
3resnet_model/batch_normalization_23/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_23/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_23/moving_variance/AssignAssign3resnet_model/batch_normalization_23/moving_varianceDresnet_model/batch_normalization_23/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_23/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
8resnet_model/batch_normalization_23/moving_variance/readIdentity3resnet_model/batch_normalization_23/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_23/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_23/FusedBatchNormFusedBatchNormresnet_model/conv2d_25/Conv2D.resnet_model/batch_normalization_23/gamma/read-resnet_model/batch_normalization_23/beta/read4resnet_model/batch_normalization_23/moving_mean/read8resnet_model/batch_normalization_23/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( 
n
)resnet_model/batch_normalization_23/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_23Relu2resnet_model/batch_normalization_23/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_26/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_26/kernel*%
valueB"              
�
?resnet_model/conv2d_26/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_26/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_26/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_26/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_26/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_26/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_26/kernel*
seed2 *
dtype0*&
_output_shapes
:  *

seed 
�
>resnet_model/conv2d_26/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_26/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_26/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_26/kernel
�
:resnet_model/conv2d_26/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_26/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_26/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_26/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_26/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_26/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  
�
$resnet_model/conv2d_26/kernel/AssignAssignresnet_model/conv2d_26/kernel:resnet_model/conv2d_26/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_26/kernel
�
"resnet_model/conv2d_26/kernel/readIdentityresnet_model/conv2d_26/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_26/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_26/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_26/Conv2DConv2Dresnet_model/Relu_23"resnet_model/conv2d_26/kernel/read*
paddingSAME*'
_output_shapes
:�   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
resnet_model/add_11Addresnet_model/conv2d_26/Conv2Dresnet_model/add_10*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_24/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_24/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_24/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_24/gamma*
	container *
shape: 
�
0resnet_model/batch_normalization_24/gamma/AssignAssign)resnet_model/batch_normalization_24/gamma:resnet_model/batch_normalization_24/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_24/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_24/gamma/readIdentity)resnet_model/batch_normalization_24/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_24/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_24/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_24/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_24/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_24/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_24/beta/AssignAssign(resnet_model/batch_normalization_24/beta:resnet_model/batch_normalization_24/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_24/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_24/beta/readIdentity(resnet_model/batch_normalization_24/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_24/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_24/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_24/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_24/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_24/moving_mean*
	container *
shape: 
�
6resnet_model/batch_normalization_24/moving_mean/AssignAssign/resnet_model/batch_normalization_24/moving_meanAresnet_model/batch_normalization_24/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_24/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_24/moving_mean/readIdentity/resnet_model/batch_normalization_24/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_24/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_24/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_24/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_24/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_24/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_24/moving_variance/AssignAssign3resnet_model/batch_normalization_24/moving_varianceDresnet_model/batch_normalization_24/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_24/moving_variance
�
8resnet_model/batch_normalization_24/moving_variance/readIdentity3resnet_model/batch_normalization_24/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_24/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_24/FusedBatchNormFusedBatchNormresnet_model/add_11.resnet_model/batch_normalization_24/gamma/read-resnet_model/batch_normalization_24/beta/read4resnet_model/batch_normalization_24/moving_mean/read8resnet_model/batch_normalization_24/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_24/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_24Relu2resnet_model/batch_normalization_24/FusedBatchNorm*'
_output_shapes
:�   *
T0
�
@resnet_model/conv2d_27/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_27/kernel*%
valueB"              
�
?resnet_model/conv2d_27/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_27/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_27/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_27/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_27/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_27/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_27/kernel*
seed2 
�
>resnet_model/conv2d_27/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_27/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_27/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_27/kernel
�
:resnet_model/conv2d_27/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_27/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_27/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_27/kernel
�
resnet_model/conv2d_27/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_27/kernel*
	container *
shape:  
�
$resnet_model/conv2d_27/kernel/AssignAssignresnet_model/conv2d_27/kernel:resnet_model/conv2d_27/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_27/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_27/kernel/readIdentityresnet_model/conv2d_27/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_27/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_27/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_27/Conv2DConv2Dresnet_model/Relu_24"resnet_model/conv2d_27/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   *
	dilations
*
T0
�
:resnet_model/batch_normalization_25/gamma/Initializer/onesConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@resnet_model/batch_normalization_25/gamma*
valueB *  �?
�
)resnet_model/batch_normalization_25/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_25/gamma*
	container *
shape: 
�
0resnet_model/batch_normalization_25/gamma/AssignAssign)resnet_model/batch_normalization_25/gamma:resnet_model/batch_normalization_25/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_25/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_25/gamma/readIdentity)resnet_model/batch_normalization_25/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_25/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_25/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_25/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_25/beta
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_25/beta
�
/resnet_model/batch_normalization_25/beta/AssignAssign(resnet_model/batch_normalization_25/beta:resnet_model/batch_normalization_25/beta/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_25/beta
�
-resnet_model/batch_normalization_25/beta/readIdentity(resnet_model/batch_normalization_25/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_25/beta
�
Aresnet_model/batch_normalization_25/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_25/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_25/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_25/moving_mean*
	container *
shape: 
�
6resnet_model/batch_normalization_25/moving_mean/AssignAssign/resnet_model/batch_normalization_25/moving_meanAresnet_model/batch_normalization_25/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_25/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_25/moving_mean/readIdentity/resnet_model/batch_normalization_25/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_25/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_25/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_25/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_25/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_25/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_25/moving_variance/AssignAssign3resnet_model/batch_normalization_25/moving_varianceDresnet_model/batch_normalization_25/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_25/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
8resnet_model/batch_normalization_25/moving_variance/readIdentity3resnet_model/batch_normalization_25/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_25/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_25/FusedBatchNormFusedBatchNormresnet_model/conv2d_27/Conv2D.resnet_model/batch_normalization_25/gamma/read-resnet_model/batch_normalization_25/beta/read4resnet_model/batch_normalization_25/moving_mean/read8resnet_model/batch_normalization_25/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_25/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_25Relu2resnet_model/batch_normalization_25/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_28/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_28/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_28/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_28/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_28/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_28/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_28/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_28/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_28/kernel*
seed2 
�
>resnet_model/conv2d_28/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_28/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_28/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_28/kernel
�
:resnet_model/conv2d_28/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_28/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_28/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_28/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_28/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_28/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  
�
$resnet_model/conv2d_28/kernel/AssignAssignresnet_model/conv2d_28/kernel:resnet_model/conv2d_28/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_28/kernel
�
"resnet_model/conv2d_28/kernel/readIdentityresnet_model/conv2d_28/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_28/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_28/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_28/Conv2DConv2Dresnet_model/Relu_25"resnet_model/conv2d_28/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   *
	dilations

�
resnet_model/add_12Addresnet_model/conv2d_28/Conv2Dresnet_model/add_11*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_26/gamma/Initializer/onesConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@resnet_model/batch_normalization_26/gamma*
valueB *  �?
�
)resnet_model/batch_normalization_26/gamma
VariableV2*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_26/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
�
0resnet_model/batch_normalization_26/gamma/AssignAssign)resnet_model/batch_normalization_26/gamma:resnet_model/batch_normalization_26/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_26/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_26/gamma/readIdentity)resnet_model/batch_normalization_26/gamma*
_output_shapes
: *
T0*<
_class2
0.loc:@resnet_model/batch_normalization_26/gamma
�
:resnet_model/batch_normalization_26/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_26/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_26/beta
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_26/beta
�
/resnet_model/batch_normalization_26/beta/AssignAssign(resnet_model/batch_normalization_26/beta:resnet_model/batch_normalization_26/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_26/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_26/beta/readIdentity(resnet_model/batch_normalization_26/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_26/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_26/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
: *B
_class8
64loc:@resnet_model/batch_normalization_26/moving_mean*
valueB *    
�
/resnet_model/batch_normalization_26/moving_mean
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_26/moving_mean
�
6resnet_model/batch_normalization_26/moving_mean/AssignAssign/resnet_model/batch_normalization_26/moving_meanAresnet_model/batch_normalization_26/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_26/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_26/moving_mean/readIdentity/resnet_model/batch_normalization_26/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_26/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_26/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_26/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_26/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_26/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_26/moving_variance/AssignAssign3resnet_model/batch_normalization_26/moving_varianceDresnet_model/batch_normalization_26/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_26/moving_variance*
validate_shape(*
_output_shapes
: 
�
8resnet_model/batch_normalization_26/moving_variance/readIdentity3resnet_model/batch_normalization_26/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_26/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_26/FusedBatchNormFusedBatchNormresnet_model/add_12.resnet_model/batch_normalization_26/gamma/read-resnet_model/batch_normalization_26/beta/read4resnet_model/batch_normalization_26/moving_mean/read8resnet_model/batch_normalization_26/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_26/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_26Relu2resnet_model/batch_normalization_26/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_29/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_29/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_29/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_29/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_29/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_29/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_29/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_29/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_29/kernel*
seed2 
�
>resnet_model/conv2d_29/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_29/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_29/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_29/kernel
�
:resnet_model/conv2d_29/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_29/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_29/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_29/kernel
�
resnet_model/conv2d_29/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_29/kernel*
	container *
shape:  
�
$resnet_model/conv2d_29/kernel/AssignAssignresnet_model/conv2d_29/kernel:resnet_model/conv2d_29/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_29/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_29/kernel/readIdentityresnet_model/conv2d_29/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_29/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_29/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_29/Conv2DConv2Dresnet_model/Relu_26"resnet_model/conv2d_29/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_27/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_27/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_27/gamma
VariableV2*<
_class2
0.loc:@resnet_model/batch_normalization_27/gamma*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
0resnet_model/batch_normalization_27/gamma/AssignAssign)resnet_model/batch_normalization_27/gamma:resnet_model/batch_normalization_27/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_27/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_27/gamma/readIdentity)resnet_model/batch_normalization_27/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_27/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_27/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_27/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_27/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_27/beta*
	container *
shape: 
�
/resnet_model/batch_normalization_27/beta/AssignAssign(resnet_model/batch_normalization_27/beta:resnet_model/batch_normalization_27/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_27/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_27/beta/readIdentity(resnet_model/batch_normalization_27/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_27/beta
�
Aresnet_model/batch_normalization_27/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_27/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_27/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_27/moving_mean*
	container *
shape: 
�
6resnet_model/batch_normalization_27/moving_mean/AssignAssign/resnet_model/batch_normalization_27/moving_meanAresnet_model/batch_normalization_27/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_27/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
�
4resnet_model/batch_normalization_27/moving_mean/readIdentity/resnet_model/batch_normalization_27/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_27/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_27/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@resnet_model/batch_normalization_27/moving_variance*
valueB *  �?
�
3resnet_model/batch_normalization_27/moving_variance
VariableV2*F
_class<
:8loc:@resnet_model/batch_normalization_27/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
:resnet_model/batch_normalization_27/moving_variance/AssignAssign3resnet_model/batch_normalization_27/moving_varianceDresnet_model/batch_normalization_27/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_27/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
8resnet_model/batch_normalization_27/moving_variance/readIdentity3resnet_model/batch_normalization_27/moving_variance*
_output_shapes
: *
T0*F
_class<
:8loc:@resnet_model/batch_normalization_27/moving_variance
�
2resnet_model/batch_normalization_27/FusedBatchNormFusedBatchNormresnet_model/conv2d_29/Conv2D.resnet_model/batch_normalization_27/gamma/read-resnet_model/batch_normalization_27/beta/read4resnet_model/batch_normalization_27/moving_mean/read8resnet_model/batch_normalization_27/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( 
n
)resnet_model/batch_normalization_27/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_27Relu2resnet_model/batch_normalization_27/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_30/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_30/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_30/kernel*
valueB
 *    
�
Aresnet_model/conv2d_30/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_30/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_30/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*
seed2 *
dtype0*&
_output_shapes
:  *

seed 
�
>resnet_model/conv2d_30/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_30/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_30/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_30/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_30/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_30/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_30/kernel
VariableV2*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name 
�
$resnet_model/conv2d_30/kernel/AssignAssignresnet_model/conv2d_30/kernel:resnet_model/conv2d_30/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_30/kernel/readIdentityresnet_model/conv2d_30/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_30/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_30/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_30/Conv2DConv2Dresnet_model/Relu_27"resnet_model/conv2d_30/kernel/read*'
_output_shapes
:�   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
resnet_model/add_13Addresnet_model/conv2d_30/Conv2Dresnet_model/add_12*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_28/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_28/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_28/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_28/gamma*
	container *
shape: 
�
0resnet_model/batch_normalization_28/gamma/AssignAssign)resnet_model/batch_normalization_28/gamma:resnet_model/batch_normalization_28/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_28/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_28/gamma/readIdentity)resnet_model/batch_normalization_28/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_28/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_28/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_28/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_28/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_28/beta*
	container *
shape: 
�
/resnet_model/batch_normalization_28/beta/AssignAssign(resnet_model/batch_normalization_28/beta:resnet_model/batch_normalization_28/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_28/beta*
validate_shape(*
_output_shapes
: *
use_locking(
�
-resnet_model/batch_normalization_28/beta/readIdentity(resnet_model/batch_normalization_28/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_28/beta
�
Aresnet_model/batch_normalization_28/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
: *B
_class8
64loc:@resnet_model/batch_normalization_28/moving_mean*
valueB *    
�
/resnet_model/batch_normalization_28/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_28/moving_mean*
	container *
shape: 
�
6resnet_model/batch_normalization_28/moving_mean/AssignAssign/resnet_model/batch_normalization_28/moving_meanAresnet_model/batch_normalization_28/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_28/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_28/moving_mean/readIdentity/resnet_model/batch_normalization_28/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_28/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_28/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_28/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_28/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_28/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_28/moving_variance/AssignAssign3resnet_model/batch_normalization_28/moving_varianceDresnet_model/batch_normalization_28/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_28/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
8resnet_model/batch_normalization_28/moving_variance/readIdentity3resnet_model/batch_normalization_28/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_28/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_28/FusedBatchNormFusedBatchNormresnet_model/add_13.resnet_model/batch_normalization_28/gamma/read-resnet_model/batch_normalization_28/beta/read4resnet_model/batch_normalization_28/moving_mean/read8resnet_model/batch_normalization_28/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_28Relu2resnet_model/batch_normalization_28/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_31/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_31/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_31/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_31/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_31/kernel/Initializer/truncated_normal/shape*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*
seed2 *
dtype0*&
_output_shapes
:  
�
>resnet_model/conv2d_31/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_31/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_31/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_31/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_31/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_31/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_31/kernel
VariableV2*
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_31/kernel*
	container 
�
$resnet_model/conv2d_31/kernel/AssignAssignresnet_model/conv2d_31/kernel:resnet_model/conv2d_31/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_31/kernel/readIdentityresnet_model/conv2d_31/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_31/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_31/Conv2DConv2Dresnet_model/Relu_28"resnet_model/conv2d_31/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_29/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_29/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_29/gamma
VariableV2*<
_class2
0.loc:@resnet_model/batch_normalization_29/gamma*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
0resnet_model/batch_normalization_29/gamma/AssignAssign)resnet_model/batch_normalization_29/gamma:resnet_model/batch_normalization_29/gamma/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_29/gamma
�
.resnet_model/batch_normalization_29/gamma/readIdentity)resnet_model/batch_normalization_29/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_29/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_29/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_29/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_29/beta
VariableV2*;
_class1
/-loc:@resnet_model/batch_normalization_29/beta*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
/resnet_model/batch_normalization_29/beta/AssignAssign(resnet_model/batch_normalization_29/beta:resnet_model/batch_normalization_29/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_29/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_29/beta/readIdentity(resnet_model/batch_normalization_29/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_29/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_29/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
: *B
_class8
64loc:@resnet_model/batch_normalization_29/moving_mean*
valueB *    
�
/resnet_model/batch_normalization_29/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_29/moving_mean*
	container *
shape: 
�
6resnet_model/batch_normalization_29/moving_mean/AssignAssign/resnet_model/batch_normalization_29/moving_meanAresnet_model/batch_normalization_29/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_29/moving_mean*
validate_shape(*
_output_shapes
: 
�
4resnet_model/batch_normalization_29/moving_mean/readIdentity/resnet_model/batch_normalization_29/moving_mean*
_output_shapes
: *
T0*B
_class8
64loc:@resnet_model/batch_normalization_29/moving_mean
�
Dresnet_model/batch_normalization_29/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@resnet_model/batch_normalization_29/moving_variance*
valueB *  �?
�
3resnet_model/batch_normalization_29/moving_variance
VariableV2*F
_class<
:8loc:@resnet_model/batch_normalization_29/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
:resnet_model/batch_normalization_29/moving_variance/AssignAssign3resnet_model/batch_normalization_29/moving_varianceDresnet_model/batch_normalization_29/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_29/moving_variance*
validate_shape(*
_output_shapes
: 
�
8resnet_model/batch_normalization_29/moving_variance/readIdentity3resnet_model/batch_normalization_29/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_29/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_29/FusedBatchNormFusedBatchNormresnet_model/conv2d_31/Conv2D.resnet_model/batch_normalization_29/gamma/read-resnet_model/batch_normalization_29/beta/read4resnet_model/batch_normalization_29/moving_mean/read8resnet_model/batch_normalization_29/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_29/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_29Relu2resnet_model/batch_normalization_29/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_32/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_32/kernel*%
valueB"              
�
?resnet_model/conv2d_32/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_32/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_32/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_32/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_32/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_32/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_32/kernel*
seed2 
�
>resnet_model/conv2d_32/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_32/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_32/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_32/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_32/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_32/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_32/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_32/kernel
�
resnet_model/conv2d_32/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_32/kernel*
	container *
shape:  
�
$resnet_model/conv2d_32/kernel/AssignAssignresnet_model/conv2d_32/kernel:resnet_model/conv2d_32/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_32/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_32/kernel/readIdentityresnet_model/conv2d_32/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_32/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_32/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_32/Conv2DConv2Dresnet_model/Relu_29"resnet_model/conv2d_32/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   
�
resnet_model/add_14Addresnet_model/conv2d_32/Conv2Dresnet_model/add_13*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_30/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_30/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_30/gamma
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_30/gamma
�
0resnet_model/batch_normalization_30/gamma/AssignAssign)resnet_model/batch_normalization_30/gamma:resnet_model/batch_normalization_30/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_30/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_30/gamma/readIdentity)resnet_model/batch_normalization_30/gamma*
_output_shapes
: *
T0*<
_class2
0.loc:@resnet_model/batch_normalization_30/gamma
�
:resnet_model/batch_normalization_30/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_30/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_30/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_30/beta*
	container *
shape: 
�
/resnet_model/batch_normalization_30/beta/AssignAssign(resnet_model/batch_normalization_30/beta:resnet_model/batch_normalization_30/beta/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_30/beta
�
-resnet_model/batch_normalization_30/beta/readIdentity(resnet_model/batch_normalization_30/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_30/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_30/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_30/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_30/moving_mean
VariableV2*B
_class8
64loc:@resnet_model/batch_normalization_30/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
6resnet_model/batch_normalization_30/moving_mean/AssignAssign/resnet_model/batch_normalization_30/moving_meanAresnet_model/batch_normalization_30/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_30/moving_mean
�
4resnet_model/batch_normalization_30/moving_mean/readIdentity/resnet_model/batch_normalization_30/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_30/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_30/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@resnet_model/batch_normalization_30/moving_variance*
valueB *  �?
�
3resnet_model/batch_normalization_30/moving_variance
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_30/moving_variance
�
:resnet_model/batch_normalization_30/moving_variance/AssignAssign3resnet_model/batch_normalization_30/moving_varianceDresnet_model/batch_normalization_30/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_30/moving_variance*
validate_shape(*
_output_shapes
: 
�
8resnet_model/batch_normalization_30/moving_variance/readIdentity3resnet_model/batch_normalization_30/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_30/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_30/FusedBatchNormFusedBatchNormresnet_model/add_14.resnet_model/batch_normalization_30/gamma/read-resnet_model/batch_normalization_30/beta/read4resnet_model/batch_normalization_30/moving_mean/read8resnet_model/batch_normalization_30/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_30/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_30Relu2resnet_model/batch_normalization_30/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_33/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*%
valueB"              *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_33/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_33/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*
valueB
 *�1�=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_33/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_33/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*
seed2 *
dtype0*&
_output_shapes
:  *

seed 
�
>resnet_model/conv2d_33/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_33/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_33/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:  *
T0*0
_class&
$"loc:@resnet_model/conv2d_33/kernel
�
:resnet_model/conv2d_33/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_33/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_33/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_33/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_33/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  
�
$resnet_model/conv2d_33/kernel/AssignAssignresnet_model/conv2d_33/kernel:resnet_model/conv2d_33/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*
validate_shape(*&
_output_shapes
:  
�
"resnet_model/conv2d_33/kernel/readIdentityresnet_model/conv2d_33/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_33/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_33/Conv2DConv2Dresnet_model/Relu_30"resnet_model/conv2d_33/kernel/read*'
_output_shapes
:�   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
:resnet_model/batch_normalization_31/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_31/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_31/gamma
VariableV2*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_31/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
�
0resnet_model/batch_normalization_31/gamma/AssignAssign)resnet_model/batch_normalization_31/gamma:resnet_model/batch_normalization_31/gamma/Initializer/ones*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_31/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
.resnet_model/batch_normalization_31/gamma/readIdentity)resnet_model/batch_normalization_31/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_31/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_31/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_31/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_31/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_31/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_31/beta/AssignAssign(resnet_model/batch_normalization_31/beta:resnet_model/batch_normalization_31/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_31/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_31/beta/readIdentity(resnet_model/batch_normalization_31/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_31/beta*
_output_shapes
: 
�
Aresnet_model/batch_normalization_31/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_31/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_31/moving_mean
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_31/moving_mean
�
6resnet_model/batch_normalization_31/moving_mean/AssignAssign/resnet_model/batch_normalization_31/moving_meanAresnet_model/batch_normalization_31/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_31/moving_mean
�
4resnet_model/batch_normalization_31/moving_mean/readIdentity/resnet_model/batch_normalization_31/moving_mean*
_output_shapes
: *
T0*B
_class8
64loc:@resnet_model/batch_normalization_31/moving_mean
�
Dresnet_model/batch_normalization_31/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_31/moving_variance*
valueB *  �?*
dtype0*
_output_shapes
: 
�
3resnet_model/batch_normalization_31/moving_variance
VariableV2*F
_class<
:8loc:@resnet_model/batch_normalization_31/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
:resnet_model/batch_normalization_31/moving_variance/AssignAssign3resnet_model/batch_normalization_31/moving_varianceDresnet_model/batch_normalization_31/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_31/moving_variance*
validate_shape(*
_output_shapes
: 
�
8resnet_model/batch_normalization_31/moving_variance/readIdentity3resnet_model/batch_normalization_31/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_31/moving_variance*
_output_shapes
: 
�
2resnet_model/batch_normalization_31/FusedBatchNormFusedBatchNormresnet_model/conv2d_33/Conv2D.resnet_model/batch_normalization_31/gamma/read-resnet_model/batch_normalization_31/beta/read4resnet_model/batch_normalization_31/moving_mean/read8resnet_model/batch_normalization_31/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_31/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_31Relu2resnet_model/batch_normalization_31/FusedBatchNorm*
T0*'
_output_shapes
:�   
�
@resnet_model/conv2d_34/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_34/kernel*%
valueB"              
�
?resnet_model/conv2d_34/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_34/kernel*
valueB
 *    
�
Aresnet_model/conv2d_34/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_34/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_34/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_34/kernel/Initializer/truncated_normal/shape*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_34/kernel*
seed2 *
dtype0*&
_output_shapes
:  
�
>resnet_model/conv2d_34/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_34/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_34/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_34/kernel*&
_output_shapes
:  
�
:resnet_model/conv2d_34/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_34/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_34/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_34/kernel*&
_output_shapes
:  
�
resnet_model/conv2d_34/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *0
_class&
$"loc:@resnet_model/conv2d_34/kernel*
	container *
shape:  
�
$resnet_model/conv2d_34/kernel/AssignAssignresnet_model/conv2d_34/kernel:resnet_model/conv2d_34/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_34/kernel
�
"resnet_model/conv2d_34/kernel/readIdentityresnet_model/conv2d_34/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_34/kernel*&
_output_shapes
:  
u
$resnet_model/conv2d_34/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_34/Conv2DConv2Dresnet_model/Relu_31"resnet_model/conv2d_34/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�   
�
resnet_model/add_15Addresnet_model/conv2d_34/Conv2Dresnet_model/add_14*
T0*'
_output_shapes
:�   
l
resnet_model/block_layer2Identityresnet_model/add_15*
T0*'
_output_shapes
:�   
�
:resnet_model/batch_normalization_32/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_32/gamma*
valueB *  �?*
dtype0*
_output_shapes
: 
�
)resnet_model/batch_normalization_32/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_32/gamma*
	container *
shape: 
�
0resnet_model/batch_normalization_32/gamma/AssignAssign)resnet_model/batch_normalization_32/gamma:resnet_model/batch_normalization_32/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_32/gamma*
validate_shape(*
_output_shapes
: 
�
.resnet_model/batch_normalization_32/gamma/readIdentity)resnet_model/batch_normalization_32/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_32/gamma*
_output_shapes
: 
�
:resnet_model/batch_normalization_32/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_32/beta*
valueB *    *
dtype0*
_output_shapes
: 
�
(resnet_model/batch_normalization_32/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_32/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_32/beta/AssignAssign(resnet_model/batch_normalization_32/beta:resnet_model/batch_normalization_32/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_32/beta*
validate_shape(*
_output_shapes
: 
�
-resnet_model/batch_normalization_32/beta/readIdentity(resnet_model/batch_normalization_32/beta*
_output_shapes
: *
T0*;
_class1
/-loc:@resnet_model/batch_normalization_32/beta
�
Aresnet_model/batch_normalization_32/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_32/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
�
/resnet_model/batch_normalization_32/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_32/moving_mean*
	container *
shape: 
�
6resnet_model/batch_normalization_32/moving_mean/AssignAssign/resnet_model/batch_normalization_32/moving_meanAresnet_model/batch_normalization_32/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_32/moving_mean
�
4resnet_model/batch_normalization_32/moving_mean/readIdentity/resnet_model/batch_normalization_32/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_32/moving_mean*
_output_shapes
: 
�
Dresnet_model/batch_normalization_32/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@resnet_model/batch_normalization_32/moving_variance*
valueB *  �?
�
3resnet_model/batch_normalization_32/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_32/moving_variance*
	container *
shape: 
�
:resnet_model/batch_normalization_32/moving_variance/AssignAssign3resnet_model/batch_normalization_32/moving_varianceDresnet_model/batch_normalization_32/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_32/moving_variance
�
8resnet_model/batch_normalization_32/moving_variance/readIdentity3resnet_model/batch_normalization_32/moving_variance*
_output_shapes
: *
T0*F
_class<
:8loc:@resnet_model/batch_normalization_32/moving_variance
�
2resnet_model/batch_normalization_32/FusedBatchNormFusedBatchNormresnet_model/block_layer2.resnet_model/batch_normalization_32/gamma/read-resnet_model/batch_normalization_32/beta/read4resnet_model/batch_normalization_32/moving_mean/read8resnet_model/batch_normalization_32/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�   : : : : *
is_training( 
n
)resnet_model/batch_normalization_32/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_32Relu2resnet_model/batch_normalization_32/FusedBatchNorm*'
_output_shapes
:�   *
T0
�
resnet_model/Pad_2/paddingsConst*9
value0B."                                 *
dtype0*
_output_shapes

:
�
resnet_model/Pad_2Padresnet_model/Relu_32resnet_model/Pad_2/paddings*
T0*
	Tpaddings0*'
_output_shapes
:�   
�
@resnet_model/conv2d_35/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_35/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_35/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_35/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_35/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_35/kernel*
valueB
 *��M>
�
Jresnet_model/conv2d_35/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_35/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_35/kernel*
seed2 
�
>resnet_model/conv2d_35/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_35/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_35/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_35/kernel*&
_output_shapes
: @
�
:resnet_model/conv2d_35/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_35/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_35/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_35/kernel*&
_output_shapes
: @
�
resnet_model/conv2d_35/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_35/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @
�
$resnet_model/conv2d_35/kernel/AssignAssignresnet_model/conv2d_35/kernel:resnet_model/conv2d_35/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_35/kernel
�
"resnet_model/conv2d_35/kernel/readIdentityresnet_model/conv2d_35/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_35/kernel*&
_output_shapes
: @
u
$resnet_model/conv2d_35/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_35/Conv2DConv2Dresnet_model/Pad_2"resnet_model/conv2d_35/kernel/read*
paddingVALID*'
_output_shapes
:�@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
resnet_model/Pad_3/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
�
resnet_model/Pad_3Padresnet_model/Relu_32resnet_model/Pad_3/paddings*
T0*
	Tpaddings0*'
_output_shapes
:�"" 
�
@resnet_model/conv2d_36/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_36/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_36/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_36/kernel*
valueB
 *    
�
Aresnet_model/conv2d_36/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_36/kernel*
valueB
 *�1�=
�
Jresnet_model/conv2d_36/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_36/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
: @*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_36/kernel
�
>resnet_model/conv2d_36/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_36/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_36/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_36/kernel*&
_output_shapes
: @
�
:resnet_model/conv2d_36/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_36/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_36/kernel/Initializer/truncated_normal/mean*&
_output_shapes
: @*
T0*0
_class&
$"loc:@resnet_model/conv2d_36/kernel
�
resnet_model/conv2d_36/kernel
VariableV2*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_36/kernel
�
$resnet_model/conv2d_36/kernel/AssignAssignresnet_model/conv2d_36/kernel:resnet_model/conv2d_36/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_36/kernel*
validate_shape(*&
_output_shapes
: @
�
"resnet_model/conv2d_36/kernel/readIdentityresnet_model/conv2d_36/kernel*&
_output_shapes
: @*
T0*0
_class&
$"loc:@resnet_model/conv2d_36/kernel
u
$resnet_model/conv2d_36/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_36/Conv2DConv2Dresnet_model/Pad_3"resnet_model/conv2d_36/kernel/read*'
_output_shapes
:�@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
�
:resnet_model/batch_normalization_33/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_33/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_33/gamma
VariableV2*<
_class2
0.loc:@resnet_model/batch_normalization_33/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
0resnet_model/batch_normalization_33/gamma/AssignAssign)resnet_model/batch_normalization_33/gamma:resnet_model/batch_normalization_33/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_33/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_33/gamma/readIdentity)resnet_model/batch_normalization_33/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_33/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_33/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_33/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_33/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_33/beta
�
/resnet_model/batch_normalization_33/beta/AssignAssign(resnet_model/batch_normalization_33/beta:resnet_model/batch_normalization_33/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_33/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_33/beta/readIdentity(resnet_model/batch_normalization_33/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_33/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_33/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*B
_class8
64loc:@resnet_model/batch_normalization_33/moving_mean*
valueB@*    
�
/resnet_model/batch_normalization_33/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_33/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_33/moving_mean/AssignAssign/resnet_model/batch_normalization_33/moving_meanAresnet_model/batch_normalization_33/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_33/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_33/moving_mean/readIdentity/resnet_model/batch_normalization_33/moving_mean*
_output_shapes
:@*
T0*B
_class8
64loc:@resnet_model/batch_normalization_33/moving_mean
�
Dresnet_model/batch_normalization_33/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_33/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_33/moving_variance
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_33/moving_variance*
	container 
�
:resnet_model/batch_normalization_33/moving_variance/AssignAssign3resnet_model/batch_normalization_33/moving_varianceDresnet_model/batch_normalization_33/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_33/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_33/moving_variance/readIdentity3resnet_model/batch_normalization_33/moving_variance*
_output_shapes
:@*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_33/moving_variance
�
2resnet_model/batch_normalization_33/FusedBatchNormFusedBatchNormresnet_model/conv2d_36/Conv2D.resnet_model/batch_normalization_33/gamma/read-resnet_model/batch_normalization_33/beta/read4resnet_model/batch_normalization_33/moving_mean/read8resnet_model/batch_normalization_33/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_33/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_33Relu2resnet_model/batch_normalization_33/FusedBatchNorm*'
_output_shapes
:�@*
T0
�
@resnet_model/conv2d_37/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_37/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_37/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_37/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_37/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
�
>resnet_model/conv2d_37/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_37/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_37/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_37/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_37/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_37/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_37/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_37/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
�
$resnet_model/conv2d_37/kernel/AssignAssignresnet_model/conv2d_37/kernel:resnet_model/conv2d_37/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_37/kernel
�
"resnet_model/conv2d_37/kernel/readIdentityresnet_model/conv2d_37/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_37/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_37/Conv2DConv2Dresnet_model/Relu_33"resnet_model/conv2d_37/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@*
	dilations

�
resnet_model/add_16Addresnet_model/conv2d_37/Conv2Dresnet_model/conv2d_35/Conv2D*
T0*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_34/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*<
_class2
0.loc:@resnet_model/batch_normalization_34/gamma*
valueB@*  �?
�
)resnet_model/batch_normalization_34/gamma
VariableV2*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_34/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
0resnet_model/batch_normalization_34/gamma/AssignAssign)resnet_model/batch_normalization_34/gamma:resnet_model/batch_normalization_34/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_34/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_34/gamma/readIdentity)resnet_model/batch_normalization_34/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_34/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_34/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_34/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_34/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_34/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_34/beta/AssignAssign(resnet_model/batch_normalization_34/beta:resnet_model/batch_normalization_34/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_34/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
-resnet_model/batch_normalization_34/beta/readIdentity(resnet_model/batch_normalization_34/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_34/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_34/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_34/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_34/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_34/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_34/moving_mean/AssignAssign/resnet_model/batch_normalization_34/moving_meanAresnet_model/batch_normalization_34/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_34/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
4resnet_model/batch_normalization_34/moving_mean/readIdentity/resnet_model/batch_normalization_34/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_34/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_34/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_34/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_34/moving_variance
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_34/moving_variance
�
:resnet_model/batch_normalization_34/moving_variance/AssignAssign3resnet_model/batch_normalization_34/moving_varianceDresnet_model/batch_normalization_34/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_34/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
8resnet_model/batch_normalization_34/moving_variance/readIdentity3resnet_model/batch_normalization_34/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_34/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_34/FusedBatchNormFusedBatchNormresnet_model/add_16.resnet_model/batch_normalization_34/gamma/read-resnet_model/batch_normalization_34/beta/read4resnet_model/batch_normalization_34/moving_mean/read8resnet_model/batch_normalization_34/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_34/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_34Relu2resnet_model/batch_normalization_34/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_38/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_38/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_38/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_38/kernel*
valueB
 *    
�
Aresnet_model/conv2d_38/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_38/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_38/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_38/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_38/kernel
�
>resnet_model/conv2d_38/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_38/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_38/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_38/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_38/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_38/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_38/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_38/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_38/kernel
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_38/kernel*
	container *
shape:@@
�
$resnet_model/conv2d_38/kernel/AssignAssignresnet_model/conv2d_38/kernel:resnet_model/conv2d_38/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_38/kernel*
validate_shape(*&
_output_shapes
:@@
�
"resnet_model/conv2d_38/kernel/readIdentityresnet_model/conv2d_38/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_38/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_38/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_38/Conv2DConv2Dresnet_model/Relu_34"resnet_model/conv2d_38/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_35/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_35/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_35/gamma
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_35/gamma
�
0resnet_model/batch_normalization_35/gamma/AssignAssign)resnet_model/batch_normalization_35/gamma:resnet_model/batch_normalization_35/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_35/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_35/gamma/readIdentity)resnet_model/batch_normalization_35/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_35/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_35/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_35/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_35/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_35/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_35/beta/AssignAssign(resnet_model/batch_normalization_35/beta:resnet_model/batch_normalization_35/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_35/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
-resnet_model/batch_normalization_35/beta/readIdentity(resnet_model/batch_normalization_35/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_35/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_35/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_35/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_35/moving_mean
VariableV2*B
_class8
64loc:@resnet_model/batch_normalization_35/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
6resnet_model/batch_normalization_35/moving_mean/AssignAssign/resnet_model/batch_normalization_35/moving_meanAresnet_model/batch_normalization_35/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_35/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_35/moving_mean/readIdentity/resnet_model/batch_normalization_35/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_35/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_35/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_35/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_35/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_35/moving_variance*
	container *
shape:@
�
:resnet_model/batch_normalization_35/moving_variance/AssignAssign3resnet_model/batch_normalization_35/moving_varianceDresnet_model/batch_normalization_35/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_35/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
8resnet_model/batch_normalization_35/moving_variance/readIdentity3resnet_model/batch_normalization_35/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_35/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_35/FusedBatchNormFusedBatchNormresnet_model/conv2d_38/Conv2D.resnet_model/batch_normalization_35/gamma/read-resnet_model/batch_normalization_35/beta/read4resnet_model/batch_normalization_35/moving_mean/read8resnet_model/batch_normalization_35/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_35/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_35Relu2resnet_model/batch_normalization_35/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_39/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_39/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_39/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_39/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_39/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_39/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_39/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_39/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_39/kernel*
seed2 
�
>resnet_model/conv2d_39/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_39/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_39/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_39/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_39/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_39/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_39/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_39/kernel
�
resnet_model/conv2d_39/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_39/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
�
$resnet_model/conv2d_39/kernel/AssignAssignresnet_model/conv2d_39/kernel:resnet_model/conv2d_39/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_39/kernel
�
"resnet_model/conv2d_39/kernel/readIdentityresnet_model/conv2d_39/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_39/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_39/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_39/Conv2DConv2Dresnet_model/Relu_35"resnet_model/conv2d_39/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@*
	dilations
*
T0
�
resnet_model/add_17Addresnet_model/conv2d_39/Conv2Dresnet_model/add_16*
T0*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_36/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_36/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_36/gamma
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_36/gamma*
	container 
�
0resnet_model/batch_normalization_36/gamma/AssignAssign)resnet_model/batch_normalization_36/gamma:resnet_model/batch_normalization_36/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_36/gamma
�
.resnet_model/batch_normalization_36/gamma/readIdentity)resnet_model/batch_normalization_36/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_36/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_36/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*;
_class1
/-loc:@resnet_model/batch_normalization_36/beta*
valueB@*    
�
(resnet_model/batch_normalization_36/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_36/beta*
	container 
�
/resnet_model/batch_normalization_36/beta/AssignAssign(resnet_model/batch_normalization_36/beta:resnet_model/batch_normalization_36/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_36/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
-resnet_model/batch_normalization_36/beta/readIdentity(resnet_model/batch_normalization_36/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_36/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_36/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_36/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_36/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_36/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_36/moving_mean/AssignAssign/resnet_model/batch_normalization_36/moving_meanAresnet_model/batch_normalization_36/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_36/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_36/moving_mean/readIdentity/resnet_model/batch_normalization_36/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_36/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_36/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*F
_class<
:8loc:@resnet_model/batch_normalization_36/moving_variance*
valueB@*  �?
�
3resnet_model/batch_normalization_36/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_36/moving_variance*
	container *
shape:@
�
:resnet_model/batch_normalization_36/moving_variance/AssignAssign3resnet_model/batch_normalization_36/moving_varianceDresnet_model/batch_normalization_36/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_36/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_36/moving_variance/readIdentity3resnet_model/batch_normalization_36/moving_variance*
_output_shapes
:@*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_36/moving_variance
�
2resnet_model/batch_normalization_36/FusedBatchNormFusedBatchNormresnet_model/add_17.resnet_model/batch_normalization_36/gamma/read-resnet_model/batch_normalization_36/beta/read4resnet_model/batch_normalization_36/moving_mean/read8resnet_model/batch_normalization_36/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_36/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_36Relu2resnet_model/batch_normalization_36/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_40/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_40/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_40/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_40/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_40/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*
seed2 
�
>resnet_model/conv2d_40/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_40/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_40/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_40/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_40/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_40/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_40/kernel
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_40/kernel*
	container *
shape:@@
�
$resnet_model/conv2d_40/kernel/AssignAssignresnet_model/conv2d_40/kernel:resnet_model/conv2d_40/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_40/kernel
�
"resnet_model/conv2d_40/kernel/readIdentityresnet_model/conv2d_40/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_40/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_40/Conv2DConv2Dresnet_model/Relu_36"resnet_model/conv2d_40/kernel/read*
paddingSAME*'
_output_shapes
:�@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
:resnet_model/batch_normalization_37/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_37/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_37/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_37/gamma*
	container *
shape:@
�
0resnet_model/batch_normalization_37/gamma/AssignAssign)resnet_model/batch_normalization_37/gamma:resnet_model/batch_normalization_37/gamma/Initializer/ones*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_37/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
�
.resnet_model/batch_normalization_37/gamma/readIdentity)resnet_model/batch_normalization_37/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_37/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_37/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*;
_class1
/-loc:@resnet_model/batch_normalization_37/beta*
valueB@*    
�
(resnet_model/batch_normalization_37/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_37/beta*
	container 
�
/resnet_model/batch_normalization_37/beta/AssignAssign(resnet_model/batch_normalization_37/beta:resnet_model/batch_normalization_37/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_37/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_37/beta/readIdentity(resnet_model/batch_normalization_37/beta*
_output_shapes
:@*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_37/beta
�
Aresnet_model/batch_normalization_37/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*B
_class8
64loc:@resnet_model/batch_normalization_37/moving_mean*
valueB@*    
�
/resnet_model/batch_normalization_37/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_37/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_37/moving_mean/AssignAssign/resnet_model/batch_normalization_37/moving_meanAresnet_model/batch_normalization_37/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_37/moving_mean
�
4resnet_model/batch_normalization_37/moving_mean/readIdentity/resnet_model/batch_normalization_37/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_37/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_37/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_37/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_37/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_37/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
:resnet_model/batch_normalization_37/moving_variance/AssignAssign3resnet_model/batch_normalization_37/moving_varianceDresnet_model/batch_normalization_37/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_37/moving_variance
�
8resnet_model/batch_normalization_37/moving_variance/readIdentity3resnet_model/batch_normalization_37/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_37/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_37/FusedBatchNormFusedBatchNormresnet_model/conv2d_40/Conv2D.resnet_model/batch_normalization_37/gamma/read-resnet_model/batch_normalization_37/beta/read4resnet_model/batch_normalization_37/moving_mean/read8resnet_model/batch_normalization_37/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_37/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_37Relu2resnet_model/batch_normalization_37/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_41/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_41/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_41/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_41/kernel*
valueB
 *    
�
Aresnet_model/conv2d_41/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_41/kernel*
valueB
 *�B=
�
Jresnet_model/conv2d_41/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_41/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_41/kernel*
seed2 
�
>resnet_model/conv2d_41/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_41/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_41/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_41/kernel
�
:resnet_model/conv2d_41/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_41/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_41/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_41/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_41/kernel
VariableV2*0
_class&
$"loc:@resnet_model/conv2d_41/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name 
�
$resnet_model/conv2d_41/kernel/AssignAssignresnet_model/conv2d_41/kernel:resnet_model/conv2d_41/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_41/kernel*
validate_shape(*&
_output_shapes
:@@
�
"resnet_model/conv2d_41/kernel/readIdentityresnet_model/conv2d_41/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_41/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_41/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_41/Conv2DConv2Dresnet_model/Relu_37"resnet_model/conv2d_41/kernel/read*
paddingSAME*'
_output_shapes
:�@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
resnet_model/add_18Addresnet_model/conv2d_41/Conv2Dresnet_model/add_17*'
_output_shapes
:�@*
T0
�
:resnet_model/batch_normalization_38/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_38/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_38/gamma
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_38/gamma*
	container 
�
0resnet_model/batch_normalization_38/gamma/AssignAssign)resnet_model/batch_normalization_38/gamma:resnet_model/batch_normalization_38/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_38/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_38/gamma/readIdentity)resnet_model/batch_normalization_38/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_38/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_38/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*;
_class1
/-loc:@resnet_model/batch_normalization_38/beta*
valueB@*    
�
(resnet_model/batch_normalization_38/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_38/beta*
	container *
shape:@
�
/resnet_model/batch_normalization_38/beta/AssignAssign(resnet_model/batch_normalization_38/beta:resnet_model/batch_normalization_38/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_38/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
-resnet_model/batch_normalization_38/beta/readIdentity(resnet_model/batch_normalization_38/beta*
_output_shapes
:@*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_38/beta
�
Aresnet_model/batch_normalization_38/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_38/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_38/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_38/moving_mean
�
6resnet_model/batch_normalization_38/moving_mean/AssignAssign/resnet_model/batch_normalization_38/moving_meanAresnet_model/batch_normalization_38/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_38/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_38/moving_mean/readIdentity/resnet_model/batch_normalization_38/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_38/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_38/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_38/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_38/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_38/moving_variance*
	container *
shape:@
�
:resnet_model/batch_normalization_38/moving_variance/AssignAssign3resnet_model/batch_normalization_38/moving_varianceDresnet_model/batch_normalization_38/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_38/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_38/moving_variance/readIdentity3resnet_model/batch_normalization_38/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_38/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_38/FusedBatchNormFusedBatchNormresnet_model/add_18.resnet_model/batch_normalization_38/gamma/read-resnet_model/batch_normalization_38/beta/read4resnet_model/batch_normalization_38/moving_mean/read8resnet_model/batch_normalization_38/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_38/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_38Relu2resnet_model/batch_normalization_38/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_42/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_42/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_42/kernel*
valueB
 *    
�
Aresnet_model/conv2d_42/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_42/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_42/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
�
>resnet_model/conv2d_42/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_42/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_42/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_42/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_42/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_42/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_42/kernel
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_42/kernel*
	container *
shape:@@
�
$resnet_model/conv2d_42/kernel/AssignAssignresnet_model/conv2d_42/kernel:resnet_model/conv2d_42/kernel/Initializer/truncated_normal*
T0*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
"resnet_model/conv2d_42/kernel/readIdentityresnet_model/conv2d_42/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_42/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_42/Conv2DConv2Dresnet_model/Relu_38"resnet_model/conv2d_42/kernel/read*
paddingSAME*'
_output_shapes
:�@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
:resnet_model/batch_normalization_39/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_39/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_39/gamma
VariableV2*<
_class2
0.loc:@resnet_model/batch_normalization_39/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
0resnet_model/batch_normalization_39/gamma/AssignAssign)resnet_model/batch_normalization_39/gamma:resnet_model/batch_normalization_39/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_39/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_39/gamma/readIdentity)resnet_model/batch_normalization_39/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_39/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_39/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*;
_class1
/-loc:@resnet_model/batch_normalization_39/beta*
valueB@*    
�
(resnet_model/batch_normalization_39/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_39/beta
�
/resnet_model/batch_normalization_39/beta/AssignAssign(resnet_model/batch_normalization_39/beta:resnet_model/batch_normalization_39/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_39/beta
�
-resnet_model/batch_normalization_39/beta/readIdentity(resnet_model/batch_normalization_39/beta*
_output_shapes
:@*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_39/beta
�
Aresnet_model/batch_normalization_39/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_39/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_39/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_39/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_39/moving_mean/AssignAssign/resnet_model/batch_normalization_39/moving_meanAresnet_model/batch_normalization_39/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_39/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_39/moving_mean/readIdentity/resnet_model/batch_normalization_39/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_39/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_39/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_39/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_39/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_39/moving_variance*
	container *
shape:@
�
:resnet_model/batch_normalization_39/moving_variance/AssignAssign3resnet_model/batch_normalization_39/moving_varianceDresnet_model/batch_normalization_39/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_39/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_39/moving_variance/readIdentity3resnet_model/batch_normalization_39/moving_variance*
_output_shapes
:@*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_39/moving_variance
�
2resnet_model/batch_normalization_39/FusedBatchNormFusedBatchNormresnet_model/conv2d_42/Conv2D.resnet_model/batch_normalization_39/gamma/read-resnet_model/batch_normalization_39/beta/read4resnet_model/batch_normalization_39/moving_mean/read8resnet_model/batch_normalization_39/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_39/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_39Relu2resnet_model/batch_normalization_39/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_43/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_43/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_43/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_43/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_43/kernel/Initializer/truncated_normal/shape*
T0*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
�
>resnet_model/conv2d_43/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_43/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_43/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_43/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_43/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_43/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_43/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_43/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
�
$resnet_model/conv2d_43/kernel/AssignAssignresnet_model/conv2d_43/kernel:resnet_model/conv2d_43/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*
validate_shape(*&
_output_shapes
:@@
�
"resnet_model/conv2d_43/kernel/readIdentityresnet_model/conv2d_43/kernel*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_43/kernel
u
$resnet_model/conv2d_43/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_43/Conv2DConv2Dresnet_model/Relu_39"resnet_model/conv2d_43/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@*
	dilations
*
T0
�
resnet_model/add_19Addresnet_model/conv2d_43/Conv2Dresnet_model/add_18*
T0*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_40/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_40/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_40/gamma
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_40/gamma*
	container 
�
0resnet_model/batch_normalization_40/gamma/AssignAssign)resnet_model/batch_normalization_40/gamma:resnet_model/batch_normalization_40/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_40/gamma
�
.resnet_model/batch_normalization_40/gamma/readIdentity)resnet_model/batch_normalization_40/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_40/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_40/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_40/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_40/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_40/beta
�
/resnet_model/batch_normalization_40/beta/AssignAssign(resnet_model/batch_normalization_40/beta:resnet_model/batch_normalization_40/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_40/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_40/beta/readIdentity(resnet_model/batch_normalization_40/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_40/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_40/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*B
_class8
64loc:@resnet_model/batch_normalization_40/moving_mean*
valueB@*    
�
/resnet_model/batch_normalization_40/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_40/moving_mean*
	container 
�
6resnet_model/batch_normalization_40/moving_mean/AssignAssign/resnet_model/batch_normalization_40/moving_meanAresnet_model/batch_normalization_40/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_40/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
4resnet_model/batch_normalization_40/moving_mean/readIdentity/resnet_model/batch_normalization_40/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_40/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_40/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_40/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_40/moving_variance
VariableV2*F
_class<
:8loc:@resnet_model/batch_normalization_40/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
:resnet_model/batch_normalization_40/moving_variance/AssignAssign3resnet_model/batch_normalization_40/moving_varianceDresnet_model/batch_normalization_40/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_40/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_40/moving_variance/readIdentity3resnet_model/batch_normalization_40/moving_variance*
_output_shapes
:@*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_40/moving_variance
�
2resnet_model/batch_normalization_40/FusedBatchNormFusedBatchNormresnet_model/add_19.resnet_model/batch_normalization_40/gamma/read-resnet_model/batch_normalization_40/beta/read4resnet_model/batch_normalization_40/moving_mean/read8resnet_model/batch_normalization_40/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_40/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_40Relu2resnet_model/batch_normalization_40/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_44/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_44/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_44/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_44/kernel*
valueB
 *�B=
�
Jresnet_model/conv2d_44/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_44/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*
seed2 
�
>resnet_model/conv2d_44/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_44/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_44/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_44/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_44/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_44/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_44/kernel
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_44/kernel
�
$resnet_model/conv2d_44/kernel/AssignAssignresnet_model/conv2d_44/kernel:resnet_model/conv2d_44/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*
validate_shape(*&
_output_shapes
:@@
�
"resnet_model/conv2d_44/kernel/readIdentityresnet_model/conv2d_44/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_44/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_44/Conv2DConv2Dresnet_model/Relu_40"resnet_model/conv2d_44/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@*
	dilations

�
:resnet_model/batch_normalization_41/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*<
_class2
0.loc:@resnet_model/batch_normalization_41/gamma*
valueB@*  �?
�
)resnet_model/batch_normalization_41/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_41/gamma*
	container *
shape:@
�
0resnet_model/batch_normalization_41/gamma/AssignAssign)resnet_model/batch_normalization_41/gamma:resnet_model/batch_normalization_41/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_41/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_41/gamma/readIdentity)resnet_model/batch_normalization_41/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_41/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_41/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*;
_class1
/-loc:@resnet_model/batch_normalization_41/beta*
valueB@*    
�
(resnet_model/batch_normalization_41/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_41/beta*
	container *
shape:@
�
/resnet_model/batch_normalization_41/beta/AssignAssign(resnet_model/batch_normalization_41/beta:resnet_model/batch_normalization_41/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_41/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_41/beta/readIdentity(resnet_model/batch_normalization_41/beta*
_output_shapes
:@*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_41/beta
�
Aresnet_model/batch_normalization_41/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_41/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_41/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_41/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_41/moving_mean/AssignAssign/resnet_model/batch_normalization_41/moving_meanAresnet_model/batch_normalization_41/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_41/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_41/moving_mean/readIdentity/resnet_model/batch_normalization_41/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_41/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_41/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_41/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_41/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_41/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
:resnet_model/batch_normalization_41/moving_variance/AssignAssign3resnet_model/batch_normalization_41/moving_varianceDresnet_model/batch_normalization_41/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_41/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_41/moving_variance/readIdentity3resnet_model/batch_normalization_41/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_41/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_41/FusedBatchNormFusedBatchNormresnet_model/conv2d_44/Conv2D.resnet_model/batch_normalization_41/gamma/read-resnet_model/batch_normalization_41/beta/read4resnet_model/batch_normalization_41/moving_mean/read8resnet_model/batch_normalization_41/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_41/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_41Relu2resnet_model/batch_normalization_41/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_45/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_45/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_45/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_45/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_45/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_45/kernel
�
>resnet_model/conv2d_45/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_45/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_45/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_45/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_45/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_45/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_45/kernel
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_45/kernel*
	container *
shape:@@
�
$resnet_model/conv2d_45/kernel/AssignAssignresnet_model/conv2d_45/kernel:resnet_model/conv2d_45/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*
validate_shape(*&
_output_shapes
:@@
�
"resnet_model/conv2d_45/kernel/readIdentityresnet_model/conv2d_45/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_45/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_45/Conv2DConv2Dresnet_model/Relu_41"resnet_model/conv2d_45/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@
�
resnet_model/add_20Addresnet_model/conv2d_45/Conv2Dresnet_model/add_19*
T0*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_42/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_42/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_42/gamma
VariableV2*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_42/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
0resnet_model/batch_normalization_42/gamma/AssignAssign)resnet_model/batch_normalization_42/gamma:resnet_model/batch_normalization_42/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_42/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_42/gamma/readIdentity)resnet_model/batch_normalization_42/gamma*
_output_shapes
:@*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_42/gamma
�
:resnet_model/batch_normalization_42/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*;
_class1
/-loc:@resnet_model/batch_normalization_42/beta*
valueB@*    
�
(resnet_model/batch_normalization_42/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_42/beta*
	container *
shape:@
�
/resnet_model/batch_normalization_42/beta/AssignAssign(resnet_model/batch_normalization_42/beta:resnet_model/batch_normalization_42/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_42/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
-resnet_model/batch_normalization_42/beta/readIdentity(resnet_model/batch_normalization_42/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_42/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_42/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_42/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_42/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_42/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_42/moving_mean/AssignAssign/resnet_model/batch_normalization_42/moving_meanAresnet_model/batch_normalization_42/moving_mean/Initializer/zeros*
T0*B
_class8
64loc:@resnet_model/batch_normalization_42/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
4resnet_model/batch_normalization_42/moving_mean/readIdentity/resnet_model/batch_normalization_42/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_42/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_42/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_42/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_42/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_42/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
:resnet_model/batch_normalization_42/moving_variance/AssignAssign3resnet_model/batch_normalization_42/moving_varianceDresnet_model/batch_normalization_42/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_42/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_42/moving_variance/readIdentity3resnet_model/batch_normalization_42/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_42/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_42/FusedBatchNormFusedBatchNormresnet_model/add_20.resnet_model/batch_normalization_42/gamma/read-resnet_model/batch_normalization_42/beta/read4resnet_model/batch_normalization_42/moving_mean/read8resnet_model/batch_normalization_42/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_42/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_42Relu2resnet_model/batch_normalization_42/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_46/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_46/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_46/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_46/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_46/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*
seed2 
�
>resnet_model/conv2d_46/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_46/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_46/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_46/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_46/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_46/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_46/kernel
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_46/kernel*
	container *
shape:@@
�
$resnet_model/conv2d_46/kernel/AssignAssignresnet_model/conv2d_46/kernel:resnet_model/conv2d_46/kernel/Initializer/truncated_normal*
T0*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
"resnet_model/conv2d_46/kernel/readIdentityresnet_model/conv2d_46/kernel*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_46/kernel
u
$resnet_model/conv2d_46/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_46/Conv2DConv2Dresnet_model/Relu_42"resnet_model/conv2d_46/kernel/read*
paddingSAME*'
_output_shapes
:�@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
:resnet_model/batch_normalization_43/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_43/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_43/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_43/gamma*
	container *
shape:@
�
0resnet_model/batch_normalization_43/gamma/AssignAssign)resnet_model/batch_normalization_43/gamma:resnet_model/batch_normalization_43/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_43/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_43/gamma/readIdentity)resnet_model/batch_normalization_43/gamma*
_output_shapes
:@*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_43/gamma
�
:resnet_model/batch_normalization_43/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_43/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_43/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_43/beta
�
/resnet_model/batch_normalization_43/beta/AssignAssign(resnet_model/batch_normalization_43/beta:resnet_model/batch_normalization_43/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_43/beta
�
-resnet_model/batch_normalization_43/beta/readIdentity(resnet_model/batch_normalization_43/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_43/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_43/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*B
_class8
64loc:@resnet_model/batch_normalization_43/moving_mean*
valueB@*    
�
/resnet_model/batch_normalization_43/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_43/moving_mean*
	container 
�
6resnet_model/batch_normalization_43/moving_mean/AssignAssign/resnet_model/batch_normalization_43/moving_meanAresnet_model/batch_normalization_43/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_43/moving_mean
�
4resnet_model/batch_normalization_43/moving_mean/readIdentity/resnet_model/batch_normalization_43/moving_mean*
_output_shapes
:@*
T0*B
_class8
64loc:@resnet_model/batch_normalization_43/moving_mean
�
Dresnet_model/batch_normalization_43/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*F
_class<
:8loc:@resnet_model/batch_normalization_43/moving_variance*
valueB@*  �?
�
3resnet_model/batch_normalization_43/moving_variance
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_43/moving_variance*
	container 
�
:resnet_model/batch_normalization_43/moving_variance/AssignAssign3resnet_model/batch_normalization_43/moving_varianceDresnet_model/batch_normalization_43/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_43/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_43/moving_variance/readIdentity3resnet_model/batch_normalization_43/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_43/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_43/FusedBatchNormFusedBatchNormresnet_model/conv2d_46/Conv2D.resnet_model/batch_normalization_43/gamma/read-resnet_model/batch_normalization_43/beta/read4resnet_model/batch_normalization_43/moving_mean/read8resnet_model/batch_normalization_43/moving_variance/read*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7
n
)resnet_model/batch_normalization_43/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_43Relu2resnet_model/batch_normalization_43/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_47/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_47/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_47/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_47/kernel*
valueB
 *    
�
Aresnet_model/conv2d_47/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_47/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_47/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_47/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_47/kernel*
seed2 
�
>resnet_model/conv2d_47/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_47/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_47/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_47/kernel
�
:resnet_model/conv2d_47/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_47/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_47/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_47/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_47/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_47/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
�
$resnet_model/conv2d_47/kernel/AssignAssignresnet_model/conv2d_47/kernel:resnet_model/conv2d_47/kernel/Initializer/truncated_normal*
T0*0
_class&
$"loc:@resnet_model/conv2d_47/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
"resnet_model/conv2d_47/kernel/readIdentityresnet_model/conv2d_47/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_47/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_47/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_47/Conv2DConv2Dresnet_model/Relu_43"resnet_model/conv2d_47/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@
�
resnet_model/add_21Addresnet_model/conv2d_47/Conv2Dresnet_model/add_20*
T0*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_44/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_44/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_44/gamma
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_44/gamma*
	container 
�
0resnet_model/batch_normalization_44/gamma/AssignAssign)resnet_model/batch_normalization_44/gamma:resnet_model/batch_normalization_44/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_44/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_44/gamma/readIdentity)resnet_model/batch_normalization_44/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_44/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_44/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_44/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_44/beta
VariableV2*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_44/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_44/beta/AssignAssign(resnet_model/batch_normalization_44/beta:resnet_model/batch_normalization_44/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_44/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_44/beta/readIdentity(resnet_model/batch_normalization_44/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_44/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_44/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_44/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_44/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_44/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_44/moving_mean/AssignAssign/resnet_model/batch_normalization_44/moving_meanAresnet_model/batch_normalization_44/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_44/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_44/moving_mean/readIdentity/resnet_model/batch_normalization_44/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_44/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_44/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_44/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_44/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_44/moving_variance*
	container *
shape:@
�
:resnet_model/batch_normalization_44/moving_variance/AssignAssign3resnet_model/batch_normalization_44/moving_varianceDresnet_model/batch_normalization_44/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_44/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_44/moving_variance/readIdentity3resnet_model/batch_normalization_44/moving_variance*
_output_shapes
:@*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_44/moving_variance
�
2resnet_model/batch_normalization_44/FusedBatchNormFusedBatchNormresnet_model/add_21.resnet_model/batch_normalization_44/gamma/read-resnet_model/batch_normalization_44/beta/read4resnet_model/batch_normalization_44/moving_mean/read8resnet_model/batch_normalization_44/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_44/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_44Relu2resnet_model/batch_normalization_44/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_48/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_48/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_48/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_48/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_48/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_48/kernel*
valueB
 *�B=
�
Jresnet_model/conv2d_48/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_48/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_48/kernel*
seed2 
�
>resnet_model/conv2d_48/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_48/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_48/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_48/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_48/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_48/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_48/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_48/kernel
�
resnet_model/conv2d_48/kernel
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_48/kernel
�
$resnet_model/conv2d_48/kernel/AssignAssignresnet_model/conv2d_48/kernel:resnet_model/conv2d_48/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_48/kernel
�
"resnet_model/conv2d_48/kernel/readIdentityresnet_model/conv2d_48/kernel*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_48/kernel
u
$resnet_model/conv2d_48/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
resnet_model/conv2d_48/Conv2DConv2Dresnet_model/Relu_44"resnet_model/conv2d_48/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_45/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_45/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_45/gamma
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_45/gamma*
	container 
�
0resnet_model/batch_normalization_45/gamma/AssignAssign)resnet_model/batch_normalization_45/gamma:resnet_model/batch_normalization_45/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_45/gamma
�
.resnet_model/batch_normalization_45/gamma/readIdentity)resnet_model/batch_normalization_45/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_45/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_45/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_45/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_45/beta
VariableV2*;
_class1
/-loc:@resnet_model/batch_normalization_45/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
/resnet_model/batch_normalization_45/beta/AssignAssign(resnet_model/batch_normalization_45/beta:resnet_model/batch_normalization_45/beta/Initializer/zeros*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_45/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
-resnet_model/batch_normalization_45/beta/readIdentity(resnet_model/batch_normalization_45/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_45/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_45/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*B
_class8
64loc:@resnet_model/batch_normalization_45/moving_mean*
valueB@*    
�
/resnet_model/batch_normalization_45/moving_mean
VariableV2*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_45/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
6resnet_model/batch_normalization_45/moving_mean/AssignAssign/resnet_model/batch_normalization_45/moving_meanAresnet_model/batch_normalization_45/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_45/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_45/moving_mean/readIdentity/resnet_model/batch_normalization_45/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_45/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_45/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*F
_class<
:8loc:@resnet_model/batch_normalization_45/moving_variance*
valueB@*  �?
�
3resnet_model/batch_normalization_45/moving_variance
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_45/moving_variance*
	container 
�
:resnet_model/batch_normalization_45/moving_variance/AssignAssign3resnet_model/batch_normalization_45/moving_varianceDresnet_model/batch_normalization_45/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_45/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
8resnet_model/batch_normalization_45/moving_variance/readIdentity3resnet_model/batch_normalization_45/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_45/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_45/FusedBatchNormFusedBatchNormresnet_model/conv2d_48/Conv2D.resnet_model/batch_normalization_45/gamma/read-resnet_model/batch_normalization_45/beta/read4resnet_model/batch_normalization_45/moving_mean/read8resnet_model/batch_normalization_45/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_45/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_45Relu2resnet_model/batch_normalization_45/FusedBatchNorm*'
_output_shapes
:�@*
T0
�
@resnet_model/conv2d_49/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@resnet_model/conv2d_49/kernel*%
valueB"      @   @   
�
?resnet_model/conv2d_49/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_49/kernel*
valueB
 *    
�
Aresnet_model/conv2d_49/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_49/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_49/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_49/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_49/kernel*
seed2 
�
>resnet_model/conv2d_49/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_49/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_49/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_49/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_49/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_49/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_49/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_49/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_49/kernel
VariableV2*0
_class&
$"loc:@resnet_model/conv2d_49/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name 
�
$resnet_model/conv2d_49/kernel/AssignAssignresnet_model/conv2d_49/kernel:resnet_model/conv2d_49/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_49/kernel
�
"resnet_model/conv2d_49/kernel/readIdentityresnet_model/conv2d_49/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_49/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_49/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_49/Conv2DConv2Dresnet_model/Relu_45"resnet_model/conv2d_49/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@
�
resnet_model/add_22Addresnet_model/conv2d_49/Conv2Dresnet_model/add_21*'
_output_shapes
:�@*
T0
�
:resnet_model/batch_normalization_46/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*<
_class2
0.loc:@resnet_model/batch_normalization_46/gamma*
valueB@*  �?
�
)resnet_model/batch_normalization_46/gamma
VariableV2*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_46/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
0resnet_model/batch_normalization_46/gamma/AssignAssign)resnet_model/batch_normalization_46/gamma:resnet_model/batch_normalization_46/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_46/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_46/gamma/readIdentity)resnet_model/batch_normalization_46/gamma*
_output_shapes
:@*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_46/gamma
�
:resnet_model/batch_normalization_46/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_46/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_46/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_46/beta*
	container *
shape:@
�
/resnet_model/batch_normalization_46/beta/AssignAssign(resnet_model/batch_normalization_46/beta:resnet_model/batch_normalization_46/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_46/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_46/beta/readIdentity(resnet_model/batch_normalization_46/beta*
_output_shapes
:@*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_46/beta
�
Aresnet_model/batch_normalization_46/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_46/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_46/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_46/moving_mean
�
6resnet_model/batch_normalization_46/moving_mean/AssignAssign/resnet_model/batch_normalization_46/moving_meanAresnet_model/batch_normalization_46/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_46/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_46/moving_mean/readIdentity/resnet_model/batch_normalization_46/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_46/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_46/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_46/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_46/moving_variance
VariableV2*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_46/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
:resnet_model/batch_normalization_46/moving_variance/AssignAssign3resnet_model/batch_normalization_46/moving_varianceDresnet_model/batch_normalization_46/moving_variance/Initializer/ones*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_46/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
8resnet_model/batch_normalization_46/moving_variance/readIdentity3resnet_model/batch_normalization_46/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_46/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_46/FusedBatchNormFusedBatchNormresnet_model/add_22.resnet_model/batch_normalization_46/gamma/read-resnet_model/batch_normalization_46/beta/read4resnet_model/batch_normalization_46/moving_mean/read8resnet_model/batch_normalization_46/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_46/ConstConst*
valueB
 *d;?*
dtype0*
_output_shapes
: 
�
resnet_model/Relu_46Relu2resnet_model/batch_normalization_46/FusedBatchNorm*'
_output_shapes
:�@*
T0
�
@resnet_model/conv2d_50/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_50/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_50/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@resnet_model/conv2d_50/kernel*
valueB
 *    
�
Aresnet_model/conv2d_50/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_50/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_50/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_50/kernel/Initializer/truncated_normal/shape*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_50/kernel*
seed2 *
dtype0*&
_output_shapes
:@@
�
>resnet_model/conv2d_50/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_50/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_50/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_50/kernel
�
:resnet_model/conv2d_50/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_50/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_50/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_50/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_50/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_50/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
�
$resnet_model/conv2d_50/kernel/AssignAssignresnet_model/conv2d_50/kernel:resnet_model/conv2d_50/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_50/kernel*
validate_shape(*&
_output_shapes
:@@
�
"resnet_model/conv2d_50/kernel/readIdentityresnet_model/conv2d_50/kernel*&
_output_shapes
:@@*
T0*0
_class&
$"loc:@resnet_model/conv2d_50/kernel
u
$resnet_model/conv2d_50/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_50/Conv2DConv2Dresnet_model/Relu_46"resnet_model/conv2d_50/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_47/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_47/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_47/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@resnet_model/batch_normalization_47/gamma*
	container *
shape:@
�
0resnet_model/batch_normalization_47/gamma/AssignAssign)resnet_model/batch_normalization_47/gamma:resnet_model/batch_normalization_47/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_47/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_47/gamma/readIdentity)resnet_model/batch_normalization_47/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_47/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_47/beta/Initializer/zerosConst*;
_class1
/-loc:@resnet_model/batch_normalization_47/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
(resnet_model/batch_normalization_47/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_47/beta
�
/resnet_model/batch_normalization_47/beta/AssignAssign(resnet_model/batch_normalization_47/beta:resnet_model/batch_normalization_47/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_47/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_47/beta/readIdentity(resnet_model/batch_normalization_47/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_47/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_47/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_47/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_47/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_47/moving_mean*
	container *
shape:@
�
6resnet_model/batch_normalization_47/moving_mean/AssignAssign/resnet_model/batch_normalization_47/moving_meanAresnet_model/batch_normalization_47/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_47/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_47/moving_mean/readIdentity/resnet_model/batch_normalization_47/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_47/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_47/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_47/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_47/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_47/moving_variance*
	container *
shape:@
�
:resnet_model/batch_normalization_47/moving_variance/AssignAssign3resnet_model/batch_normalization_47/moving_varianceDresnet_model/batch_normalization_47/moving_variance/Initializer/ones*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_47/moving_variance*
validate_shape(*
_output_shapes
:@
�
8resnet_model/batch_normalization_47/moving_variance/readIdentity3resnet_model/batch_normalization_47/moving_variance*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_47/moving_variance*
_output_shapes
:@
�
2resnet_model/batch_normalization_47/FusedBatchNormFusedBatchNormresnet_model/conv2d_50/Conv2D.resnet_model/batch_normalization_47/gamma/read-resnet_model/batch_normalization_47/beta/read4resnet_model/batch_normalization_47/moving_mean/read8resnet_model/batch_normalization_47/moving_variance/read*
epsilon%��'7*
T0*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( 
n
)resnet_model/batch_normalization_47/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_47Relu2resnet_model/batch_normalization_47/FusedBatchNorm*
T0*'
_output_shapes
:�@
�
@resnet_model/conv2d_51/kernel/Initializer/truncated_normal/shapeConst*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:
�
?resnet_model/conv2d_51/kernel/Initializer/truncated_normal/meanConst*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Aresnet_model/conv2d_51/kernel/Initializer/truncated_normal/stddevConst*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*
valueB
 *�B=*
dtype0*
_output_shapes
: 
�
Jresnet_model/conv2d_51/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@resnet_model/conv2d_51/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*
seed2 
�
>resnet_model/conv2d_51/kernel/Initializer/truncated_normal/mulMulJresnet_model/conv2d_51/kernel/Initializer/truncated_normal/TruncatedNormalAresnet_model/conv2d_51/kernel/Initializer/truncated_normal/stddev*
T0*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*&
_output_shapes
:@@
�
:resnet_model/conv2d_51/kernel/Initializer/truncated_normalAdd>resnet_model/conv2d_51/kernel/Initializer/truncated_normal/mul?resnet_model/conv2d_51/kernel/Initializer/truncated_normal/mean*
T0*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*&
_output_shapes
:@@
�
resnet_model/conv2d_51/kernel
VariableV2*
shared_name *0
_class&
$"loc:@resnet_model/conv2d_51/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
�
$resnet_model/conv2d_51/kernel/AssignAssignresnet_model/conv2d_51/kernel:resnet_model/conv2d_51/kernel/Initializer/truncated_normal*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*
validate_shape(*&
_output_shapes
:@@
�
"resnet_model/conv2d_51/kernel/readIdentityresnet_model/conv2d_51/kernel*
T0*0
_class&
$"loc:@resnet_model/conv2d_51/kernel*&
_output_shapes
:@@
u
$resnet_model/conv2d_51/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/conv2d_51/Conv2DConv2Dresnet_model/Relu_47"resnet_model/conv2d_51/kernel/read*'
_output_shapes
:�@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
resnet_model/add_23Addresnet_model/conv2d_51/Conv2Dresnet_model/add_22*
T0*'
_output_shapes
:�@
l
resnet_model/block_layer3Identityresnet_model/add_23*
T0*'
_output_shapes
:�@
�
:resnet_model/batch_normalization_48/gamma/Initializer/onesConst*<
_class2
0.loc:@resnet_model/batch_normalization_48/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
)resnet_model/batch_normalization_48/gamma
VariableV2*<
_class2
0.loc:@resnet_model/batch_normalization_48/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
0resnet_model/batch_normalization_48/gamma/AssignAssign)resnet_model/batch_normalization_48/gamma:resnet_model/batch_normalization_48/gamma/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_48/gamma*
validate_shape(*
_output_shapes
:@
�
.resnet_model/batch_normalization_48/gamma/readIdentity)resnet_model/batch_normalization_48/gamma*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_48/gamma*
_output_shapes
:@
�
:resnet_model/batch_normalization_48/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*;
_class1
/-loc:@resnet_model/batch_normalization_48/beta*
valueB@*    
�
(resnet_model/batch_normalization_48/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *;
_class1
/-loc:@resnet_model/batch_normalization_48/beta*
	container *
shape:@
�
/resnet_model/batch_normalization_48/beta/AssignAssign(resnet_model/batch_normalization_48/beta:resnet_model/batch_normalization_48/beta/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_48/beta*
validate_shape(*
_output_shapes
:@
�
-resnet_model/batch_normalization_48/beta/readIdentity(resnet_model/batch_normalization_48/beta*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_48/beta*
_output_shapes
:@
�
Aresnet_model/batch_normalization_48/moving_mean/Initializer/zerosConst*B
_class8
64loc:@resnet_model/batch_normalization_48/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
/resnet_model/batch_normalization_48/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@resnet_model/batch_normalization_48/moving_mean*
	container 
�
6resnet_model/batch_normalization_48/moving_mean/AssignAssign/resnet_model/batch_normalization_48/moving_meanAresnet_model/batch_normalization_48/moving_mean/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_48/moving_mean*
validate_shape(*
_output_shapes
:@
�
4resnet_model/batch_normalization_48/moving_mean/readIdentity/resnet_model/batch_normalization_48/moving_mean*
T0*B
_class8
64loc:@resnet_model/batch_normalization_48/moving_mean*
_output_shapes
:@
�
Dresnet_model/batch_normalization_48/moving_variance/Initializer/onesConst*F
_class<
:8loc:@resnet_model/batch_normalization_48/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
3resnet_model/batch_normalization_48/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *F
_class<
:8loc:@resnet_model/batch_normalization_48/moving_variance*
	container *
shape:@
�
:resnet_model/batch_normalization_48/moving_variance/AssignAssign3resnet_model/batch_normalization_48/moving_varianceDresnet_model/batch_normalization_48/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_48/moving_variance
�
8resnet_model/batch_normalization_48/moving_variance/readIdentity3resnet_model/batch_normalization_48/moving_variance*
_output_shapes
:@*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_48/moving_variance
�
2resnet_model/batch_normalization_48/FusedBatchNormFusedBatchNormresnet_model/block_layer3.resnet_model/batch_normalization_48/gamma/read-resnet_model/batch_normalization_48/beta/read4resnet_model/batch_normalization_48/moving_mean/read8resnet_model/batch_normalization_48/moving_variance/read*
data_formatNHWC*?
_output_shapes-
+:�@:@:@:@:@*
is_training( *
epsilon%��'7*
T0
n
)resnet_model/batch_normalization_48/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *d;?
�
resnet_model/Relu_48Relu2resnet_model/batch_normalization_48/FusedBatchNorm*'
_output_shapes
:�@*
T0
t
#resnet_model/Mean/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
�
resnet_model/MeanMeanresnet_model/Relu_48#resnet_model/Mean/reduction_indices*'
_output_shapes
:�@*
	keep_dims(*

Tidx0*
T0
o
resnet_model/final_reduce_meanIdentityresnet_model/Mean*
T0*'
_output_shapes
:�@
k
resnet_model/Reshape/shapeConst*
valueB"����@   *
dtype0*
_output_shapes
:
�
resnet_model/ReshapeReshaperesnet_model/final_reduce_meanresnet_model/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	�@
�
:resnet_model/dense/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@resnet_model/dense/kernel*
valueB"@      *
dtype0*
_output_shapes
:
�
8resnet_model/dense/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@resnet_model/dense/kernel*
valueB
 *���*
dtype0*
_output_shapes
: 
�
8resnet_model/dense/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@resnet_model/dense/kernel*
valueB
 *��>*
dtype0*
_output_shapes
: 
�
Bresnet_model/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform:resnet_model/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*,
_class"
 loc:@resnet_model/dense/kernel*
seed2 
�
8resnet_model/dense/kernel/Initializer/random_uniform/subSub8resnet_model/dense/kernel/Initializer/random_uniform/max8resnet_model/dense/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@resnet_model/dense/kernel*
_output_shapes
: 
�
8resnet_model/dense/kernel/Initializer/random_uniform/mulMulBresnet_model/dense/kernel/Initializer/random_uniform/RandomUniform8resnet_model/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*,
_class"
 loc:@resnet_model/dense/kernel
�
4resnet_model/dense/kernel/Initializer/random_uniformAdd8resnet_model/dense/kernel/Initializer/random_uniform/mul8resnet_model/dense/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@resnet_model/dense/kernel*
_output_shapes

:@
�
resnet_model/dense/kernel
VariableV2*
shared_name *,
_class"
 loc:@resnet_model/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
�
 resnet_model/dense/kernel/AssignAssignresnet_model/dense/kernel4resnet_model/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@resnet_model/dense/kernel*
validate_shape(*
_output_shapes

:@
�
resnet_model/dense/kernel/readIdentityresnet_model/dense/kernel*
T0*,
_class"
 loc:@resnet_model/dense/kernel*
_output_shapes

:@
�
)resnet_model/dense/bias/Initializer/zerosConst**
_class 
loc:@resnet_model/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
resnet_model/dense/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@resnet_model/dense/bias
�
resnet_model/dense/bias/AssignAssignresnet_model/dense/bias)resnet_model/dense/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@resnet_model/dense/bias*
validate_shape(*
_output_shapes
:
�
resnet_model/dense/bias/readIdentityresnet_model/dense/bias*
T0**
_class 
loc:@resnet_model/dense/bias*
_output_shapes
:
�
resnet_model/dense/MatMulMatMulresnet_model/Reshaperesnet_model/dense/kernel/read*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
�
resnet_model/dense/BiasAddBiasAddresnet_model/dense/MatMulresnet_model/dense/bias/read*
T0*
data_formatNHWC*
_output_shapes
:	�
j
resnet_model/final_denseIdentityresnet_model/dense/BiasAdd*
T0*
_output_shapes
:	�
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
ArgMaxArgMaxresnet_model/final_denseArgMax/dimension*
T0*
output_type0	*
_output_shapes	
:�*

Tidx0
]
softmax_tensorSoftmaxresnet_model/final_dense*
T0*
_output_shapes
:	�

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_4a00887e184f4ab5a0654e87a114b3ee/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�U
save/SaveV2/tensor_namesConst"/device:CPU:0*�T
value�TB�T�Bglobal_stepB%resnet_model/batch_normalization/betaB&resnet_model/batch_normalization/gammaB,resnet_model/batch_normalization/moving_meanB0resnet_model/batch_normalization/moving_varianceB'resnet_model/batch_normalization_1/betaB(resnet_model/batch_normalization_1/gammaB.resnet_model/batch_normalization_1/moving_meanB2resnet_model/batch_normalization_1/moving_varianceB(resnet_model/batch_normalization_10/betaB)resnet_model/batch_normalization_10/gammaB/resnet_model/batch_normalization_10/moving_meanB3resnet_model/batch_normalization_10/moving_varianceB(resnet_model/batch_normalization_11/betaB)resnet_model/batch_normalization_11/gammaB/resnet_model/batch_normalization_11/moving_meanB3resnet_model/batch_normalization_11/moving_varianceB(resnet_model/batch_normalization_12/betaB)resnet_model/batch_normalization_12/gammaB/resnet_model/batch_normalization_12/moving_meanB3resnet_model/batch_normalization_12/moving_varianceB(resnet_model/batch_normalization_13/betaB)resnet_model/batch_normalization_13/gammaB/resnet_model/batch_normalization_13/moving_meanB3resnet_model/batch_normalization_13/moving_varianceB(resnet_model/batch_normalization_14/betaB)resnet_model/batch_normalization_14/gammaB/resnet_model/batch_normalization_14/moving_meanB3resnet_model/batch_normalization_14/moving_varianceB(resnet_model/batch_normalization_15/betaB)resnet_model/batch_normalization_15/gammaB/resnet_model/batch_normalization_15/moving_meanB3resnet_model/batch_normalization_15/moving_varianceB(resnet_model/batch_normalization_16/betaB)resnet_model/batch_normalization_16/gammaB/resnet_model/batch_normalization_16/moving_meanB3resnet_model/batch_normalization_16/moving_varianceB(resnet_model/batch_normalization_17/betaB)resnet_model/batch_normalization_17/gammaB/resnet_model/batch_normalization_17/moving_meanB3resnet_model/batch_normalization_17/moving_varianceB(resnet_model/batch_normalization_18/betaB)resnet_model/batch_normalization_18/gammaB/resnet_model/batch_normalization_18/moving_meanB3resnet_model/batch_normalization_18/moving_varianceB(resnet_model/batch_normalization_19/betaB)resnet_model/batch_normalization_19/gammaB/resnet_model/batch_normalization_19/moving_meanB3resnet_model/batch_normalization_19/moving_varianceB'resnet_model/batch_normalization_2/betaB(resnet_model/batch_normalization_2/gammaB.resnet_model/batch_normalization_2/moving_meanB2resnet_model/batch_normalization_2/moving_varianceB(resnet_model/batch_normalization_20/betaB)resnet_model/batch_normalization_20/gammaB/resnet_model/batch_normalization_20/moving_meanB3resnet_model/batch_normalization_20/moving_varianceB(resnet_model/batch_normalization_21/betaB)resnet_model/batch_normalization_21/gammaB/resnet_model/batch_normalization_21/moving_meanB3resnet_model/batch_normalization_21/moving_varianceB(resnet_model/batch_normalization_22/betaB)resnet_model/batch_normalization_22/gammaB/resnet_model/batch_normalization_22/moving_meanB3resnet_model/batch_normalization_22/moving_varianceB(resnet_model/batch_normalization_23/betaB)resnet_model/batch_normalization_23/gammaB/resnet_model/batch_normalization_23/moving_meanB3resnet_model/batch_normalization_23/moving_varianceB(resnet_model/batch_normalization_24/betaB)resnet_model/batch_normalization_24/gammaB/resnet_model/batch_normalization_24/moving_meanB3resnet_model/batch_normalization_24/moving_varianceB(resnet_model/batch_normalization_25/betaB)resnet_model/batch_normalization_25/gammaB/resnet_model/batch_normalization_25/moving_meanB3resnet_model/batch_normalization_25/moving_varianceB(resnet_model/batch_normalization_26/betaB)resnet_model/batch_normalization_26/gammaB/resnet_model/batch_normalization_26/moving_meanB3resnet_model/batch_normalization_26/moving_varianceB(resnet_model/batch_normalization_27/betaB)resnet_model/batch_normalization_27/gammaB/resnet_model/batch_normalization_27/moving_meanB3resnet_model/batch_normalization_27/moving_varianceB(resnet_model/batch_normalization_28/betaB)resnet_model/batch_normalization_28/gammaB/resnet_model/batch_normalization_28/moving_meanB3resnet_model/batch_normalization_28/moving_varianceB(resnet_model/batch_normalization_29/betaB)resnet_model/batch_normalization_29/gammaB/resnet_model/batch_normalization_29/moving_meanB3resnet_model/batch_normalization_29/moving_varianceB'resnet_model/batch_normalization_3/betaB(resnet_model/batch_normalization_3/gammaB.resnet_model/batch_normalization_3/moving_meanB2resnet_model/batch_normalization_3/moving_varianceB(resnet_model/batch_normalization_30/betaB)resnet_model/batch_normalization_30/gammaB/resnet_model/batch_normalization_30/moving_meanB3resnet_model/batch_normalization_30/moving_varianceB(resnet_model/batch_normalization_31/betaB)resnet_model/batch_normalization_31/gammaB/resnet_model/batch_normalization_31/moving_meanB3resnet_model/batch_normalization_31/moving_varianceB(resnet_model/batch_normalization_32/betaB)resnet_model/batch_normalization_32/gammaB/resnet_model/batch_normalization_32/moving_meanB3resnet_model/batch_normalization_32/moving_varianceB(resnet_model/batch_normalization_33/betaB)resnet_model/batch_normalization_33/gammaB/resnet_model/batch_normalization_33/moving_meanB3resnet_model/batch_normalization_33/moving_varianceB(resnet_model/batch_normalization_34/betaB)resnet_model/batch_normalization_34/gammaB/resnet_model/batch_normalization_34/moving_meanB3resnet_model/batch_normalization_34/moving_varianceB(resnet_model/batch_normalization_35/betaB)resnet_model/batch_normalization_35/gammaB/resnet_model/batch_normalization_35/moving_meanB3resnet_model/batch_normalization_35/moving_varianceB(resnet_model/batch_normalization_36/betaB)resnet_model/batch_normalization_36/gammaB/resnet_model/batch_normalization_36/moving_meanB3resnet_model/batch_normalization_36/moving_varianceB(resnet_model/batch_normalization_37/betaB)resnet_model/batch_normalization_37/gammaB/resnet_model/batch_normalization_37/moving_meanB3resnet_model/batch_normalization_37/moving_varianceB(resnet_model/batch_normalization_38/betaB)resnet_model/batch_normalization_38/gammaB/resnet_model/batch_normalization_38/moving_meanB3resnet_model/batch_normalization_38/moving_varianceB(resnet_model/batch_normalization_39/betaB)resnet_model/batch_normalization_39/gammaB/resnet_model/batch_normalization_39/moving_meanB3resnet_model/batch_normalization_39/moving_varianceB'resnet_model/batch_normalization_4/betaB(resnet_model/batch_normalization_4/gammaB.resnet_model/batch_normalization_4/moving_meanB2resnet_model/batch_normalization_4/moving_varianceB(resnet_model/batch_normalization_40/betaB)resnet_model/batch_normalization_40/gammaB/resnet_model/batch_normalization_40/moving_meanB3resnet_model/batch_normalization_40/moving_varianceB(resnet_model/batch_normalization_41/betaB)resnet_model/batch_normalization_41/gammaB/resnet_model/batch_normalization_41/moving_meanB3resnet_model/batch_normalization_41/moving_varianceB(resnet_model/batch_normalization_42/betaB)resnet_model/batch_normalization_42/gammaB/resnet_model/batch_normalization_42/moving_meanB3resnet_model/batch_normalization_42/moving_varianceB(resnet_model/batch_normalization_43/betaB)resnet_model/batch_normalization_43/gammaB/resnet_model/batch_normalization_43/moving_meanB3resnet_model/batch_normalization_43/moving_varianceB(resnet_model/batch_normalization_44/betaB)resnet_model/batch_normalization_44/gammaB/resnet_model/batch_normalization_44/moving_meanB3resnet_model/batch_normalization_44/moving_varianceB(resnet_model/batch_normalization_45/betaB)resnet_model/batch_normalization_45/gammaB/resnet_model/batch_normalization_45/moving_meanB3resnet_model/batch_normalization_45/moving_varianceB(resnet_model/batch_normalization_46/betaB)resnet_model/batch_normalization_46/gammaB/resnet_model/batch_normalization_46/moving_meanB3resnet_model/batch_normalization_46/moving_varianceB(resnet_model/batch_normalization_47/betaB)resnet_model/batch_normalization_47/gammaB/resnet_model/batch_normalization_47/moving_meanB3resnet_model/batch_normalization_47/moving_varianceB(resnet_model/batch_normalization_48/betaB)resnet_model/batch_normalization_48/gammaB/resnet_model/batch_normalization_48/moving_meanB3resnet_model/batch_normalization_48/moving_varianceB'resnet_model/batch_normalization_5/betaB(resnet_model/batch_normalization_5/gammaB.resnet_model/batch_normalization_5/moving_meanB2resnet_model/batch_normalization_5/moving_varianceB'resnet_model/batch_normalization_6/betaB(resnet_model/batch_normalization_6/gammaB.resnet_model/batch_normalization_6/moving_meanB2resnet_model/batch_normalization_6/moving_varianceB'resnet_model/batch_normalization_7/betaB(resnet_model/batch_normalization_7/gammaB.resnet_model/batch_normalization_7/moving_meanB2resnet_model/batch_normalization_7/moving_varianceB'resnet_model/batch_normalization_8/betaB(resnet_model/batch_normalization_8/gammaB.resnet_model/batch_normalization_8/moving_meanB2resnet_model/batch_normalization_8/moving_varianceB'resnet_model/batch_normalization_9/betaB(resnet_model/batch_normalization_9/gammaB.resnet_model/batch_normalization_9/moving_meanB2resnet_model/batch_normalization_9/moving_varianceBresnet_model/conv2d/kernelBresnet_model/conv2d_1/kernelBresnet_model/conv2d_10/kernelBresnet_model/conv2d_11/kernelBresnet_model/conv2d_12/kernelBresnet_model/conv2d_13/kernelBresnet_model/conv2d_14/kernelBresnet_model/conv2d_15/kernelBresnet_model/conv2d_16/kernelBresnet_model/conv2d_17/kernelBresnet_model/conv2d_18/kernelBresnet_model/conv2d_19/kernelBresnet_model/conv2d_2/kernelBresnet_model/conv2d_20/kernelBresnet_model/conv2d_21/kernelBresnet_model/conv2d_22/kernelBresnet_model/conv2d_23/kernelBresnet_model/conv2d_24/kernelBresnet_model/conv2d_25/kernelBresnet_model/conv2d_26/kernelBresnet_model/conv2d_27/kernelBresnet_model/conv2d_28/kernelBresnet_model/conv2d_29/kernelBresnet_model/conv2d_3/kernelBresnet_model/conv2d_30/kernelBresnet_model/conv2d_31/kernelBresnet_model/conv2d_32/kernelBresnet_model/conv2d_33/kernelBresnet_model/conv2d_34/kernelBresnet_model/conv2d_35/kernelBresnet_model/conv2d_36/kernelBresnet_model/conv2d_37/kernelBresnet_model/conv2d_38/kernelBresnet_model/conv2d_39/kernelBresnet_model/conv2d_4/kernelBresnet_model/conv2d_40/kernelBresnet_model/conv2d_41/kernelBresnet_model/conv2d_42/kernelBresnet_model/conv2d_43/kernelBresnet_model/conv2d_44/kernelBresnet_model/conv2d_45/kernelBresnet_model/conv2d_46/kernelBresnet_model/conv2d_47/kernelBresnet_model/conv2d_48/kernelBresnet_model/conv2d_49/kernelBresnet_model/conv2d_5/kernelBresnet_model/conv2d_50/kernelBresnet_model/conv2d_51/kernelBresnet_model/conv2d_6/kernelBresnet_model/conv2d_7/kernelBresnet_model/conv2d_8/kernelBresnet_model/conv2d_9/kernelBresnet_model/dense/biasBresnet_model/dense/kernel*
dtype0*
_output_shapes	
:�
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:�
�W
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step%resnet_model/batch_normalization/beta&resnet_model/batch_normalization/gamma,resnet_model/batch_normalization/moving_mean0resnet_model/batch_normalization/moving_variance'resnet_model/batch_normalization_1/beta(resnet_model/batch_normalization_1/gamma.resnet_model/batch_normalization_1/moving_mean2resnet_model/batch_normalization_1/moving_variance(resnet_model/batch_normalization_10/beta)resnet_model/batch_normalization_10/gamma/resnet_model/batch_normalization_10/moving_mean3resnet_model/batch_normalization_10/moving_variance(resnet_model/batch_normalization_11/beta)resnet_model/batch_normalization_11/gamma/resnet_model/batch_normalization_11/moving_mean3resnet_model/batch_normalization_11/moving_variance(resnet_model/batch_normalization_12/beta)resnet_model/batch_normalization_12/gamma/resnet_model/batch_normalization_12/moving_mean3resnet_model/batch_normalization_12/moving_variance(resnet_model/batch_normalization_13/beta)resnet_model/batch_normalization_13/gamma/resnet_model/batch_normalization_13/moving_mean3resnet_model/batch_normalization_13/moving_variance(resnet_model/batch_normalization_14/beta)resnet_model/batch_normalization_14/gamma/resnet_model/batch_normalization_14/moving_mean3resnet_model/batch_normalization_14/moving_variance(resnet_model/batch_normalization_15/beta)resnet_model/batch_normalization_15/gamma/resnet_model/batch_normalization_15/moving_mean3resnet_model/batch_normalization_15/moving_variance(resnet_model/batch_normalization_16/beta)resnet_model/batch_normalization_16/gamma/resnet_model/batch_normalization_16/moving_mean3resnet_model/batch_normalization_16/moving_variance(resnet_model/batch_normalization_17/beta)resnet_model/batch_normalization_17/gamma/resnet_model/batch_normalization_17/moving_mean3resnet_model/batch_normalization_17/moving_variance(resnet_model/batch_normalization_18/beta)resnet_model/batch_normalization_18/gamma/resnet_model/batch_normalization_18/moving_mean3resnet_model/batch_normalization_18/moving_variance(resnet_model/batch_normalization_19/beta)resnet_model/batch_normalization_19/gamma/resnet_model/batch_normalization_19/moving_mean3resnet_model/batch_normalization_19/moving_variance'resnet_model/batch_normalization_2/beta(resnet_model/batch_normalization_2/gamma.resnet_model/batch_normalization_2/moving_mean2resnet_model/batch_normalization_2/moving_variance(resnet_model/batch_normalization_20/beta)resnet_model/batch_normalization_20/gamma/resnet_model/batch_normalization_20/moving_mean3resnet_model/batch_normalization_20/moving_variance(resnet_model/batch_normalization_21/beta)resnet_model/batch_normalization_21/gamma/resnet_model/batch_normalization_21/moving_mean3resnet_model/batch_normalization_21/moving_variance(resnet_model/batch_normalization_22/beta)resnet_model/batch_normalization_22/gamma/resnet_model/batch_normalization_22/moving_mean3resnet_model/batch_normalization_22/moving_variance(resnet_model/batch_normalization_23/beta)resnet_model/batch_normalization_23/gamma/resnet_model/batch_normalization_23/moving_mean3resnet_model/batch_normalization_23/moving_variance(resnet_model/batch_normalization_24/beta)resnet_model/batch_normalization_24/gamma/resnet_model/batch_normalization_24/moving_mean3resnet_model/batch_normalization_24/moving_variance(resnet_model/batch_normalization_25/beta)resnet_model/batch_normalization_25/gamma/resnet_model/batch_normalization_25/moving_mean3resnet_model/batch_normalization_25/moving_variance(resnet_model/batch_normalization_26/beta)resnet_model/batch_normalization_26/gamma/resnet_model/batch_normalization_26/moving_mean3resnet_model/batch_normalization_26/moving_variance(resnet_model/batch_normalization_27/beta)resnet_model/batch_normalization_27/gamma/resnet_model/batch_normalization_27/moving_mean3resnet_model/batch_normalization_27/moving_variance(resnet_model/batch_normalization_28/beta)resnet_model/batch_normalization_28/gamma/resnet_model/batch_normalization_28/moving_mean3resnet_model/batch_normalization_28/moving_variance(resnet_model/batch_normalization_29/beta)resnet_model/batch_normalization_29/gamma/resnet_model/batch_normalization_29/moving_mean3resnet_model/batch_normalization_29/moving_variance'resnet_model/batch_normalization_3/beta(resnet_model/batch_normalization_3/gamma.resnet_model/batch_normalization_3/moving_mean2resnet_model/batch_normalization_3/moving_variance(resnet_model/batch_normalization_30/beta)resnet_model/batch_normalization_30/gamma/resnet_model/batch_normalization_30/moving_mean3resnet_model/batch_normalization_30/moving_variance(resnet_model/batch_normalization_31/beta)resnet_model/batch_normalization_31/gamma/resnet_model/batch_normalization_31/moving_mean3resnet_model/batch_normalization_31/moving_variance(resnet_model/batch_normalization_32/beta)resnet_model/batch_normalization_32/gamma/resnet_model/batch_normalization_32/moving_mean3resnet_model/batch_normalization_32/moving_variance(resnet_model/batch_normalization_33/beta)resnet_model/batch_normalization_33/gamma/resnet_model/batch_normalization_33/moving_mean3resnet_model/batch_normalization_33/moving_variance(resnet_model/batch_normalization_34/beta)resnet_model/batch_normalization_34/gamma/resnet_model/batch_normalization_34/moving_mean3resnet_model/batch_normalization_34/moving_variance(resnet_model/batch_normalization_35/beta)resnet_model/batch_normalization_35/gamma/resnet_model/batch_normalization_35/moving_mean3resnet_model/batch_normalization_35/moving_variance(resnet_model/batch_normalization_36/beta)resnet_model/batch_normalization_36/gamma/resnet_model/batch_normalization_36/moving_mean3resnet_model/batch_normalization_36/moving_variance(resnet_model/batch_normalization_37/beta)resnet_model/batch_normalization_37/gamma/resnet_model/batch_normalization_37/moving_mean3resnet_model/batch_normalization_37/moving_variance(resnet_model/batch_normalization_38/beta)resnet_model/batch_normalization_38/gamma/resnet_model/batch_normalization_38/moving_mean3resnet_model/batch_normalization_38/moving_variance(resnet_model/batch_normalization_39/beta)resnet_model/batch_normalization_39/gamma/resnet_model/batch_normalization_39/moving_mean3resnet_model/batch_normalization_39/moving_variance'resnet_model/batch_normalization_4/beta(resnet_model/batch_normalization_4/gamma.resnet_model/batch_normalization_4/moving_mean2resnet_model/batch_normalization_4/moving_variance(resnet_model/batch_normalization_40/beta)resnet_model/batch_normalization_40/gamma/resnet_model/batch_normalization_40/moving_mean3resnet_model/batch_normalization_40/moving_variance(resnet_model/batch_normalization_41/beta)resnet_model/batch_normalization_41/gamma/resnet_model/batch_normalization_41/moving_mean3resnet_model/batch_normalization_41/moving_variance(resnet_model/batch_normalization_42/beta)resnet_model/batch_normalization_42/gamma/resnet_model/batch_normalization_42/moving_mean3resnet_model/batch_normalization_42/moving_variance(resnet_model/batch_normalization_43/beta)resnet_model/batch_normalization_43/gamma/resnet_model/batch_normalization_43/moving_mean3resnet_model/batch_normalization_43/moving_variance(resnet_model/batch_normalization_44/beta)resnet_model/batch_normalization_44/gamma/resnet_model/batch_normalization_44/moving_mean3resnet_model/batch_normalization_44/moving_variance(resnet_model/batch_normalization_45/beta)resnet_model/batch_normalization_45/gamma/resnet_model/batch_normalization_45/moving_mean3resnet_model/batch_normalization_45/moving_variance(resnet_model/batch_normalization_46/beta)resnet_model/batch_normalization_46/gamma/resnet_model/batch_normalization_46/moving_mean3resnet_model/batch_normalization_46/moving_variance(resnet_model/batch_normalization_47/beta)resnet_model/batch_normalization_47/gamma/resnet_model/batch_normalization_47/moving_mean3resnet_model/batch_normalization_47/moving_variance(resnet_model/batch_normalization_48/beta)resnet_model/batch_normalization_48/gamma/resnet_model/batch_normalization_48/moving_mean3resnet_model/batch_normalization_48/moving_variance'resnet_model/batch_normalization_5/beta(resnet_model/batch_normalization_5/gamma.resnet_model/batch_normalization_5/moving_mean2resnet_model/batch_normalization_5/moving_variance'resnet_model/batch_normalization_6/beta(resnet_model/batch_normalization_6/gamma.resnet_model/batch_normalization_6/moving_mean2resnet_model/batch_normalization_6/moving_variance'resnet_model/batch_normalization_7/beta(resnet_model/batch_normalization_7/gamma.resnet_model/batch_normalization_7/moving_mean2resnet_model/batch_normalization_7/moving_variance'resnet_model/batch_normalization_8/beta(resnet_model/batch_normalization_8/gamma.resnet_model/batch_normalization_8/moving_mean2resnet_model/batch_normalization_8/moving_variance'resnet_model/batch_normalization_9/beta(resnet_model/batch_normalization_9/gamma.resnet_model/batch_normalization_9/moving_mean2resnet_model/batch_normalization_9/moving_varianceresnet_model/conv2d/kernelresnet_model/conv2d_1/kernelresnet_model/conv2d_10/kernelresnet_model/conv2d_11/kernelresnet_model/conv2d_12/kernelresnet_model/conv2d_13/kernelresnet_model/conv2d_14/kernelresnet_model/conv2d_15/kernelresnet_model/conv2d_16/kernelresnet_model/conv2d_17/kernelresnet_model/conv2d_18/kernelresnet_model/conv2d_19/kernelresnet_model/conv2d_2/kernelresnet_model/conv2d_20/kernelresnet_model/conv2d_21/kernelresnet_model/conv2d_22/kernelresnet_model/conv2d_23/kernelresnet_model/conv2d_24/kernelresnet_model/conv2d_25/kernelresnet_model/conv2d_26/kernelresnet_model/conv2d_27/kernelresnet_model/conv2d_28/kernelresnet_model/conv2d_29/kernelresnet_model/conv2d_3/kernelresnet_model/conv2d_30/kernelresnet_model/conv2d_31/kernelresnet_model/conv2d_32/kernelresnet_model/conv2d_33/kernelresnet_model/conv2d_34/kernelresnet_model/conv2d_35/kernelresnet_model/conv2d_36/kernelresnet_model/conv2d_37/kernelresnet_model/conv2d_38/kernelresnet_model/conv2d_39/kernelresnet_model/conv2d_4/kernelresnet_model/conv2d_40/kernelresnet_model/conv2d_41/kernelresnet_model/conv2d_42/kernelresnet_model/conv2d_43/kernelresnet_model/conv2d_44/kernelresnet_model/conv2d_45/kernelresnet_model/conv2d_46/kernelresnet_model/conv2d_47/kernelresnet_model/conv2d_48/kernelresnet_model/conv2d_49/kernelresnet_model/conv2d_5/kernelresnet_model/conv2d_50/kernelresnet_model/conv2d_51/kernelresnet_model/conv2d_6/kernelresnet_model/conv2d_7/kernelresnet_model/conv2d_8/kernelresnet_model/conv2d_9/kernelresnet_model/dense/biasresnet_model/dense/kernel"/device:CPU:0*�
dtypes�
�2�	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�U
save/RestoreV2/tensor_namesConst"/device:CPU:0*�T
value�TB�T�Bglobal_stepB%resnet_model/batch_normalization/betaB&resnet_model/batch_normalization/gammaB,resnet_model/batch_normalization/moving_meanB0resnet_model/batch_normalization/moving_varianceB'resnet_model/batch_normalization_1/betaB(resnet_model/batch_normalization_1/gammaB.resnet_model/batch_normalization_1/moving_meanB2resnet_model/batch_normalization_1/moving_varianceB(resnet_model/batch_normalization_10/betaB)resnet_model/batch_normalization_10/gammaB/resnet_model/batch_normalization_10/moving_meanB3resnet_model/batch_normalization_10/moving_varianceB(resnet_model/batch_normalization_11/betaB)resnet_model/batch_normalization_11/gammaB/resnet_model/batch_normalization_11/moving_meanB3resnet_model/batch_normalization_11/moving_varianceB(resnet_model/batch_normalization_12/betaB)resnet_model/batch_normalization_12/gammaB/resnet_model/batch_normalization_12/moving_meanB3resnet_model/batch_normalization_12/moving_varianceB(resnet_model/batch_normalization_13/betaB)resnet_model/batch_normalization_13/gammaB/resnet_model/batch_normalization_13/moving_meanB3resnet_model/batch_normalization_13/moving_varianceB(resnet_model/batch_normalization_14/betaB)resnet_model/batch_normalization_14/gammaB/resnet_model/batch_normalization_14/moving_meanB3resnet_model/batch_normalization_14/moving_varianceB(resnet_model/batch_normalization_15/betaB)resnet_model/batch_normalization_15/gammaB/resnet_model/batch_normalization_15/moving_meanB3resnet_model/batch_normalization_15/moving_varianceB(resnet_model/batch_normalization_16/betaB)resnet_model/batch_normalization_16/gammaB/resnet_model/batch_normalization_16/moving_meanB3resnet_model/batch_normalization_16/moving_varianceB(resnet_model/batch_normalization_17/betaB)resnet_model/batch_normalization_17/gammaB/resnet_model/batch_normalization_17/moving_meanB3resnet_model/batch_normalization_17/moving_varianceB(resnet_model/batch_normalization_18/betaB)resnet_model/batch_normalization_18/gammaB/resnet_model/batch_normalization_18/moving_meanB3resnet_model/batch_normalization_18/moving_varianceB(resnet_model/batch_normalization_19/betaB)resnet_model/batch_normalization_19/gammaB/resnet_model/batch_normalization_19/moving_meanB3resnet_model/batch_normalization_19/moving_varianceB'resnet_model/batch_normalization_2/betaB(resnet_model/batch_normalization_2/gammaB.resnet_model/batch_normalization_2/moving_meanB2resnet_model/batch_normalization_2/moving_varianceB(resnet_model/batch_normalization_20/betaB)resnet_model/batch_normalization_20/gammaB/resnet_model/batch_normalization_20/moving_meanB3resnet_model/batch_normalization_20/moving_varianceB(resnet_model/batch_normalization_21/betaB)resnet_model/batch_normalization_21/gammaB/resnet_model/batch_normalization_21/moving_meanB3resnet_model/batch_normalization_21/moving_varianceB(resnet_model/batch_normalization_22/betaB)resnet_model/batch_normalization_22/gammaB/resnet_model/batch_normalization_22/moving_meanB3resnet_model/batch_normalization_22/moving_varianceB(resnet_model/batch_normalization_23/betaB)resnet_model/batch_normalization_23/gammaB/resnet_model/batch_normalization_23/moving_meanB3resnet_model/batch_normalization_23/moving_varianceB(resnet_model/batch_normalization_24/betaB)resnet_model/batch_normalization_24/gammaB/resnet_model/batch_normalization_24/moving_meanB3resnet_model/batch_normalization_24/moving_varianceB(resnet_model/batch_normalization_25/betaB)resnet_model/batch_normalization_25/gammaB/resnet_model/batch_normalization_25/moving_meanB3resnet_model/batch_normalization_25/moving_varianceB(resnet_model/batch_normalization_26/betaB)resnet_model/batch_normalization_26/gammaB/resnet_model/batch_normalization_26/moving_meanB3resnet_model/batch_normalization_26/moving_varianceB(resnet_model/batch_normalization_27/betaB)resnet_model/batch_normalization_27/gammaB/resnet_model/batch_normalization_27/moving_meanB3resnet_model/batch_normalization_27/moving_varianceB(resnet_model/batch_normalization_28/betaB)resnet_model/batch_normalization_28/gammaB/resnet_model/batch_normalization_28/moving_meanB3resnet_model/batch_normalization_28/moving_varianceB(resnet_model/batch_normalization_29/betaB)resnet_model/batch_normalization_29/gammaB/resnet_model/batch_normalization_29/moving_meanB3resnet_model/batch_normalization_29/moving_varianceB'resnet_model/batch_normalization_3/betaB(resnet_model/batch_normalization_3/gammaB.resnet_model/batch_normalization_3/moving_meanB2resnet_model/batch_normalization_3/moving_varianceB(resnet_model/batch_normalization_30/betaB)resnet_model/batch_normalization_30/gammaB/resnet_model/batch_normalization_30/moving_meanB3resnet_model/batch_normalization_30/moving_varianceB(resnet_model/batch_normalization_31/betaB)resnet_model/batch_normalization_31/gammaB/resnet_model/batch_normalization_31/moving_meanB3resnet_model/batch_normalization_31/moving_varianceB(resnet_model/batch_normalization_32/betaB)resnet_model/batch_normalization_32/gammaB/resnet_model/batch_normalization_32/moving_meanB3resnet_model/batch_normalization_32/moving_varianceB(resnet_model/batch_normalization_33/betaB)resnet_model/batch_normalization_33/gammaB/resnet_model/batch_normalization_33/moving_meanB3resnet_model/batch_normalization_33/moving_varianceB(resnet_model/batch_normalization_34/betaB)resnet_model/batch_normalization_34/gammaB/resnet_model/batch_normalization_34/moving_meanB3resnet_model/batch_normalization_34/moving_varianceB(resnet_model/batch_normalization_35/betaB)resnet_model/batch_normalization_35/gammaB/resnet_model/batch_normalization_35/moving_meanB3resnet_model/batch_normalization_35/moving_varianceB(resnet_model/batch_normalization_36/betaB)resnet_model/batch_normalization_36/gammaB/resnet_model/batch_normalization_36/moving_meanB3resnet_model/batch_normalization_36/moving_varianceB(resnet_model/batch_normalization_37/betaB)resnet_model/batch_normalization_37/gammaB/resnet_model/batch_normalization_37/moving_meanB3resnet_model/batch_normalization_37/moving_varianceB(resnet_model/batch_normalization_38/betaB)resnet_model/batch_normalization_38/gammaB/resnet_model/batch_normalization_38/moving_meanB3resnet_model/batch_normalization_38/moving_varianceB(resnet_model/batch_normalization_39/betaB)resnet_model/batch_normalization_39/gammaB/resnet_model/batch_normalization_39/moving_meanB3resnet_model/batch_normalization_39/moving_varianceB'resnet_model/batch_normalization_4/betaB(resnet_model/batch_normalization_4/gammaB.resnet_model/batch_normalization_4/moving_meanB2resnet_model/batch_normalization_4/moving_varianceB(resnet_model/batch_normalization_40/betaB)resnet_model/batch_normalization_40/gammaB/resnet_model/batch_normalization_40/moving_meanB3resnet_model/batch_normalization_40/moving_varianceB(resnet_model/batch_normalization_41/betaB)resnet_model/batch_normalization_41/gammaB/resnet_model/batch_normalization_41/moving_meanB3resnet_model/batch_normalization_41/moving_varianceB(resnet_model/batch_normalization_42/betaB)resnet_model/batch_normalization_42/gammaB/resnet_model/batch_normalization_42/moving_meanB3resnet_model/batch_normalization_42/moving_varianceB(resnet_model/batch_normalization_43/betaB)resnet_model/batch_normalization_43/gammaB/resnet_model/batch_normalization_43/moving_meanB3resnet_model/batch_normalization_43/moving_varianceB(resnet_model/batch_normalization_44/betaB)resnet_model/batch_normalization_44/gammaB/resnet_model/batch_normalization_44/moving_meanB3resnet_model/batch_normalization_44/moving_varianceB(resnet_model/batch_normalization_45/betaB)resnet_model/batch_normalization_45/gammaB/resnet_model/batch_normalization_45/moving_meanB3resnet_model/batch_normalization_45/moving_varianceB(resnet_model/batch_normalization_46/betaB)resnet_model/batch_normalization_46/gammaB/resnet_model/batch_normalization_46/moving_meanB3resnet_model/batch_normalization_46/moving_varianceB(resnet_model/batch_normalization_47/betaB)resnet_model/batch_normalization_47/gammaB/resnet_model/batch_normalization_47/moving_meanB3resnet_model/batch_normalization_47/moving_varianceB(resnet_model/batch_normalization_48/betaB)resnet_model/batch_normalization_48/gammaB/resnet_model/batch_normalization_48/moving_meanB3resnet_model/batch_normalization_48/moving_varianceB'resnet_model/batch_normalization_5/betaB(resnet_model/batch_normalization_5/gammaB.resnet_model/batch_normalization_5/moving_meanB2resnet_model/batch_normalization_5/moving_varianceB'resnet_model/batch_normalization_6/betaB(resnet_model/batch_normalization_6/gammaB.resnet_model/batch_normalization_6/moving_meanB2resnet_model/batch_normalization_6/moving_varianceB'resnet_model/batch_normalization_7/betaB(resnet_model/batch_normalization_7/gammaB.resnet_model/batch_normalization_7/moving_meanB2resnet_model/batch_normalization_7/moving_varianceB'resnet_model/batch_normalization_8/betaB(resnet_model/batch_normalization_8/gammaB.resnet_model/batch_normalization_8/moving_meanB2resnet_model/batch_normalization_8/moving_varianceB'resnet_model/batch_normalization_9/betaB(resnet_model/batch_normalization_9/gammaB.resnet_model/batch_normalization_9/moving_meanB2resnet_model/batch_normalization_9/moving_varianceBresnet_model/conv2d/kernelBresnet_model/conv2d_1/kernelBresnet_model/conv2d_10/kernelBresnet_model/conv2d_11/kernelBresnet_model/conv2d_12/kernelBresnet_model/conv2d_13/kernelBresnet_model/conv2d_14/kernelBresnet_model/conv2d_15/kernelBresnet_model/conv2d_16/kernelBresnet_model/conv2d_17/kernelBresnet_model/conv2d_18/kernelBresnet_model/conv2d_19/kernelBresnet_model/conv2d_2/kernelBresnet_model/conv2d_20/kernelBresnet_model/conv2d_21/kernelBresnet_model/conv2d_22/kernelBresnet_model/conv2d_23/kernelBresnet_model/conv2d_24/kernelBresnet_model/conv2d_25/kernelBresnet_model/conv2d_26/kernelBresnet_model/conv2d_27/kernelBresnet_model/conv2d_28/kernelBresnet_model/conv2d_29/kernelBresnet_model/conv2d_3/kernelBresnet_model/conv2d_30/kernelBresnet_model/conv2d_31/kernelBresnet_model/conv2d_32/kernelBresnet_model/conv2d_33/kernelBresnet_model/conv2d_34/kernelBresnet_model/conv2d_35/kernelBresnet_model/conv2d_36/kernelBresnet_model/conv2d_37/kernelBresnet_model/conv2d_38/kernelBresnet_model/conv2d_39/kernelBresnet_model/conv2d_4/kernelBresnet_model/conv2d_40/kernelBresnet_model/conv2d_41/kernelBresnet_model/conv2d_42/kernelBresnet_model/conv2d_43/kernelBresnet_model/conv2d_44/kernelBresnet_model/conv2d_45/kernelBresnet_model/conv2d_46/kernelBresnet_model/conv2d_47/kernelBresnet_model/conv2d_48/kernelBresnet_model/conv2d_49/kernelBresnet_model/conv2d_5/kernelBresnet_model/conv2d_50/kernelBresnet_model/conv2d_51/kernelBresnet_model/conv2d_6/kernelBresnet_model/conv2d_7/kernelBresnet_model/conv2d_8/kernelBresnet_model/conv2d_9/kernelBresnet_model/dense/biasBresnet_model/dense/kernel*
dtype0*
_output_shapes	
:�
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:�
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
dtypes�
�2�	*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
�
save/AssignAssignglobal_stepsave/RestoreV2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save/Assign_1Assign%resnet_model/batch_normalization/betasave/RestoreV2:1*
use_locking(*
T0*8
_class.
,*loc:@resnet_model/batch_normalization/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_2Assign&resnet_model/batch_normalization/gammasave/RestoreV2:2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*9
_class/
-+loc:@resnet_model/batch_normalization/gamma
�
save/Assign_3Assign,resnet_model/batch_normalization/moving_meansave/RestoreV2:3*
T0*?
_class5
31loc:@resnet_model/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_4Assign0resnet_model/batch_normalization/moving_variancesave/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*C
_class9
75loc:@resnet_model/batch_normalization/moving_variance
�
save/Assign_5Assign'resnet_model/batch_normalization_1/betasave/RestoreV2:5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_1/beta
�
save/Assign_6Assign(resnet_model/batch_normalization_1/gammasave/RestoreV2:6*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_1/gamma
�
save/Assign_7Assign.resnet_model/batch_normalization_1/moving_meansave/RestoreV2:7*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_8Assign2resnet_model/batch_normalization_1/moving_variancesave/RestoreV2:8*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
�
save/Assign_9Assign(resnet_model/batch_normalization_10/betasave/RestoreV2:9*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_10/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_10Assign)resnet_model/batch_normalization_10/gammasave/RestoreV2:10*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_10/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_11Assign/resnet_model/batch_normalization_10/moving_meansave/RestoreV2:11*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_10/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_12Assign3resnet_model/batch_normalization_10/moving_variancesave/RestoreV2:12*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_10/moving_variance*
validate_shape(*
_output_shapes
:
�
save/Assign_13Assign(resnet_model/batch_normalization_11/betasave/RestoreV2:13*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_11/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_14Assign)resnet_model/batch_normalization_11/gammasave/RestoreV2:14*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_11/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_15Assign/resnet_model/batch_normalization_11/moving_meansave/RestoreV2:15*
T0*B
_class8
64loc:@resnet_model/batch_normalization_11/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_16Assign3resnet_model/batch_normalization_11/moving_variancesave/RestoreV2:16*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_11/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_17Assign(resnet_model/batch_normalization_12/betasave/RestoreV2:17*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_12/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_18Assign)resnet_model/batch_normalization_12/gammasave/RestoreV2:18*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_12/gamma
�
save/Assign_19Assign/resnet_model/batch_normalization_12/moving_meansave/RestoreV2:19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_12/moving_mean
�
save/Assign_20Assign3resnet_model/batch_normalization_12/moving_variancesave/RestoreV2:20*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_12/moving_variance
�
save/Assign_21Assign(resnet_model/batch_normalization_13/betasave/RestoreV2:21*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_13/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_22Assign)resnet_model/batch_normalization_13/gammasave/RestoreV2:22*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_13/gamma
�
save/Assign_23Assign/resnet_model/batch_normalization_13/moving_meansave/RestoreV2:23*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_13/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_24Assign3resnet_model/batch_normalization_13/moving_variancesave/RestoreV2:24*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_13/moving_variance
�
save/Assign_25Assign(resnet_model/batch_normalization_14/betasave/RestoreV2:25*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_14/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_26Assign)resnet_model/batch_normalization_14/gammasave/RestoreV2:26*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_14/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_27Assign/resnet_model/batch_normalization_14/moving_meansave/RestoreV2:27*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_14/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_28Assign3resnet_model/batch_normalization_14/moving_variancesave/RestoreV2:28*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_14/moving_variance
�
save/Assign_29Assign(resnet_model/batch_normalization_15/betasave/RestoreV2:29*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_15/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_30Assign)resnet_model/batch_normalization_15/gammasave/RestoreV2:30*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_15/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_31Assign/resnet_model/batch_normalization_15/moving_meansave/RestoreV2:31*
T0*B
_class8
64loc:@resnet_model/batch_normalization_15/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_32Assign3resnet_model/batch_normalization_15/moving_variancesave/RestoreV2:32*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_15/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_33Assign(resnet_model/batch_normalization_16/betasave/RestoreV2:33*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_16/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_34Assign)resnet_model/batch_normalization_16/gammasave/RestoreV2:34*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_16/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_35Assign/resnet_model/batch_normalization_16/moving_meansave/RestoreV2:35*
T0*B
_class8
64loc:@resnet_model/batch_normalization_16/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_36Assign3resnet_model/batch_normalization_16/moving_variancesave/RestoreV2:36*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_16/moving_variance*
validate_shape(*
_output_shapes
:
�
save/Assign_37Assign(resnet_model/batch_normalization_17/betasave/RestoreV2:37*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_17/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_38Assign)resnet_model/batch_normalization_17/gammasave/RestoreV2:38*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_17/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_39Assign/resnet_model/batch_normalization_17/moving_meansave/RestoreV2:39*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_17/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_40Assign3resnet_model/batch_normalization_17/moving_variancesave/RestoreV2:40*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_17/moving_variance*
validate_shape(*
_output_shapes
: 
�
save/Assign_41Assign(resnet_model/batch_normalization_18/betasave/RestoreV2:41*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_18/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_42Assign)resnet_model/batch_normalization_18/gammasave/RestoreV2:42*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_18/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_43Assign/resnet_model/batch_normalization_18/moving_meansave/RestoreV2:43*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_18/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_44Assign3resnet_model/batch_normalization_18/moving_variancesave/RestoreV2:44*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_18/moving_variance*
validate_shape(*
_output_shapes
: 
�
save/Assign_45Assign(resnet_model/batch_normalization_19/betasave/RestoreV2:45*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_19/beta
�
save/Assign_46Assign)resnet_model/batch_normalization_19/gammasave/RestoreV2:46*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_19/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_47Assign/resnet_model/batch_normalization_19/moving_meansave/RestoreV2:47*
T0*B
_class8
64loc:@resnet_model/batch_normalization_19/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_48Assign3resnet_model/batch_normalization_19/moving_variancesave/RestoreV2:48*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_19/moving_variance
�
save/Assign_49Assign'resnet_model/batch_normalization_2/betasave/RestoreV2:49*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_2/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_50Assign(resnet_model/batch_normalization_2/gammasave/RestoreV2:50*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_51Assign.resnet_model/batch_normalization_2/moving_meansave/RestoreV2:51*
T0*A
_class7
53loc:@resnet_model/batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_52Assign2resnet_model/batch_normalization_2/moving_variancesave/RestoreV2:52*
T0*E
_class;
97loc:@resnet_model/batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_53Assign(resnet_model/batch_normalization_20/betasave/RestoreV2:53*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_20/beta*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_54Assign)resnet_model/batch_normalization_20/gammasave/RestoreV2:54*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_20/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_55Assign/resnet_model/batch_normalization_20/moving_meansave/RestoreV2:55*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_20/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_56Assign3resnet_model/batch_normalization_20/moving_variancesave/RestoreV2:56*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_20/moving_variance
�
save/Assign_57Assign(resnet_model/batch_normalization_21/betasave/RestoreV2:57*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_21/beta*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_58Assign)resnet_model/batch_normalization_21/gammasave/RestoreV2:58*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_21/gamma
�
save/Assign_59Assign/resnet_model/batch_normalization_21/moving_meansave/RestoreV2:59*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_21/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_60Assign3resnet_model/batch_normalization_21/moving_variancesave/RestoreV2:60*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_21/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_61Assign(resnet_model/batch_normalization_22/betasave/RestoreV2:61*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_22/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_62Assign)resnet_model/batch_normalization_22/gammasave/RestoreV2:62*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_22/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_63Assign/resnet_model/batch_normalization_22/moving_meansave/RestoreV2:63*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_22/moving_mean
�
save/Assign_64Assign3resnet_model/batch_normalization_22/moving_variancesave/RestoreV2:64*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_22/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_65Assign(resnet_model/batch_normalization_23/betasave/RestoreV2:65*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_23/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_66Assign)resnet_model/batch_normalization_23/gammasave/RestoreV2:66*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_23/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_67Assign/resnet_model/batch_normalization_23/moving_meansave/RestoreV2:67*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_23/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_68Assign3resnet_model/batch_normalization_23/moving_variancesave/RestoreV2:68*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_23/moving_variance
�
save/Assign_69Assign(resnet_model/batch_normalization_24/betasave/RestoreV2:69*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_24/beta
�
save/Assign_70Assign)resnet_model/batch_normalization_24/gammasave/RestoreV2:70*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_24/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_71Assign/resnet_model/batch_normalization_24/moving_meansave/RestoreV2:71*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_24/moving_mean
�
save/Assign_72Assign3resnet_model/batch_normalization_24/moving_variancesave/RestoreV2:72*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_24/moving_variance*
validate_shape(*
_output_shapes
: 
�
save/Assign_73Assign(resnet_model/batch_normalization_25/betasave/RestoreV2:73*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_25/beta
�
save/Assign_74Assign)resnet_model/batch_normalization_25/gammasave/RestoreV2:74*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_25/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_75Assign/resnet_model/batch_normalization_25/moving_meansave/RestoreV2:75*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_25/moving_mean
�
save/Assign_76Assign3resnet_model/batch_normalization_25/moving_variancesave/RestoreV2:76*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_25/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_77Assign(resnet_model/batch_normalization_26/betasave/RestoreV2:77*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_26/beta*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_78Assign)resnet_model/batch_normalization_26/gammasave/RestoreV2:78*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_26/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_79Assign/resnet_model/batch_normalization_26/moving_meansave/RestoreV2:79*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_26/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_80Assign3resnet_model/batch_normalization_26/moving_variancesave/RestoreV2:80*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_26/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_81Assign(resnet_model/batch_normalization_27/betasave/RestoreV2:81*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_27/beta
�
save/Assign_82Assign)resnet_model/batch_normalization_27/gammasave/RestoreV2:82*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_27/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_83Assign/resnet_model/batch_normalization_27/moving_meansave/RestoreV2:83*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_27/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_84Assign3resnet_model/batch_normalization_27/moving_variancesave/RestoreV2:84*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_27/moving_variance
�
save/Assign_85Assign(resnet_model/batch_normalization_28/betasave/RestoreV2:85*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_28/beta*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_86Assign)resnet_model/batch_normalization_28/gammasave/RestoreV2:86*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_28/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_87Assign/resnet_model/batch_normalization_28/moving_meansave/RestoreV2:87*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_28/moving_mean*
validate_shape(*
_output_shapes
: 
�
save/Assign_88Assign3resnet_model/batch_normalization_28/moving_variancesave/RestoreV2:88*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_28/moving_variance*
validate_shape(*
_output_shapes
: 
�
save/Assign_89Assign(resnet_model/batch_normalization_29/betasave/RestoreV2:89*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_29/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_90Assign)resnet_model/batch_normalization_29/gammasave/RestoreV2:90*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_29/gamma
�
save/Assign_91Assign/resnet_model/batch_normalization_29/moving_meansave/RestoreV2:91*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_29/moving_mean
�
save/Assign_92Assign3resnet_model/batch_normalization_29/moving_variancesave/RestoreV2:92*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_29/moving_variance
�
save/Assign_93Assign'resnet_model/batch_normalization_3/betasave/RestoreV2:93*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_3/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_94Assign(resnet_model/batch_normalization_3/gammasave/RestoreV2:94*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_3/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_95Assign.resnet_model/batch_normalization_3/moving_meansave/RestoreV2:95*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_96Assign2resnet_model/batch_normalization_3/moving_variancesave/RestoreV2:96*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_3/moving_variance
�
save/Assign_97Assign(resnet_model/batch_normalization_30/betasave/RestoreV2:97*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_30/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_98Assign)resnet_model/batch_normalization_30/gammasave/RestoreV2:98*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_30/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_99Assign/resnet_model/batch_normalization_30/moving_meansave/RestoreV2:99*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_30/moving_mean
�
save/Assign_100Assign3resnet_model/batch_normalization_30/moving_variancesave/RestoreV2:100*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_30/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_101Assign(resnet_model/batch_normalization_31/betasave/RestoreV2:101*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_31/beta
�
save/Assign_102Assign)resnet_model/batch_normalization_31/gammasave/RestoreV2:102*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_31/gamma*
validate_shape(*
_output_shapes
: 
�
save/Assign_103Assign/resnet_model/batch_normalization_31/moving_meansave/RestoreV2:103*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_31/moving_mean
�
save/Assign_104Assign3resnet_model/batch_normalization_31/moving_variancesave/RestoreV2:104*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_31/moving_variance*
validate_shape(*
_output_shapes
: 
�
save/Assign_105Assign(resnet_model/batch_normalization_32/betasave/RestoreV2:105*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_32/beta*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_106Assign)resnet_model/batch_normalization_32/gammasave/RestoreV2:106*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_32/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_107Assign/resnet_model/batch_normalization_32/moving_meansave/RestoreV2:107*
T0*B
_class8
64loc:@resnet_model/batch_normalization_32/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_108Assign3resnet_model/batch_normalization_32/moving_variancesave/RestoreV2:108*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_32/moving_variance*
validate_shape(*
_output_shapes
: 
�
save/Assign_109Assign(resnet_model/batch_normalization_33/betasave/RestoreV2:109*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_33/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_110Assign)resnet_model/batch_normalization_33/gammasave/RestoreV2:110*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_33/gamma
�
save/Assign_111Assign/resnet_model/batch_normalization_33/moving_meansave/RestoreV2:111*
T0*B
_class8
64loc:@resnet_model/batch_normalization_33/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_112Assign3resnet_model/batch_normalization_33/moving_variancesave/RestoreV2:112*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_33/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_113Assign(resnet_model/batch_normalization_34/betasave/RestoreV2:113*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_34/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_114Assign)resnet_model/batch_normalization_34/gammasave/RestoreV2:114*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_34/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_115Assign/resnet_model/batch_normalization_34/moving_meansave/RestoreV2:115*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_34/moving_mean*
validate_shape(*
_output_shapes
:@
�
save/Assign_116Assign3resnet_model/batch_normalization_34/moving_variancesave/RestoreV2:116*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_34/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_117Assign(resnet_model/batch_normalization_35/betasave/RestoreV2:117*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_35/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_118Assign)resnet_model/batch_normalization_35/gammasave/RestoreV2:118*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_35/gamma
�
save/Assign_119Assign/resnet_model/batch_normalization_35/moving_meansave/RestoreV2:119*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_35/moving_mean*
validate_shape(*
_output_shapes
:@
�
save/Assign_120Assign3resnet_model/batch_normalization_35/moving_variancesave/RestoreV2:120*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_35/moving_variance
�
save/Assign_121Assign(resnet_model/batch_normalization_36/betasave/RestoreV2:121*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_36/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_122Assign)resnet_model/batch_normalization_36/gammasave/RestoreV2:122*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_36/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_123Assign/resnet_model/batch_normalization_36/moving_meansave/RestoreV2:123*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_36/moving_mean*
validate_shape(*
_output_shapes
:@
�
save/Assign_124Assign3resnet_model/batch_normalization_36/moving_variancesave/RestoreV2:124*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_36/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_125Assign(resnet_model/batch_normalization_37/betasave/RestoreV2:125*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_37/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_126Assign)resnet_model/batch_normalization_37/gammasave/RestoreV2:126*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_37/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_127Assign/resnet_model/batch_normalization_37/moving_meansave/RestoreV2:127*
T0*B
_class8
64loc:@resnet_model/batch_normalization_37/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_128Assign3resnet_model/batch_normalization_37/moving_variancesave/RestoreV2:128*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_37/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_129Assign(resnet_model/batch_normalization_38/betasave/RestoreV2:129*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_38/beta
�
save/Assign_130Assign)resnet_model/batch_normalization_38/gammasave/RestoreV2:130*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_38/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_131Assign/resnet_model/batch_normalization_38/moving_meansave/RestoreV2:131*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_38/moving_mean*
validate_shape(*
_output_shapes
:@
�
save/Assign_132Assign3resnet_model/batch_normalization_38/moving_variancesave/RestoreV2:132*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_38/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_133Assign(resnet_model/batch_normalization_39/betasave/RestoreV2:133*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_39/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_134Assign)resnet_model/batch_normalization_39/gammasave/RestoreV2:134*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_39/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_135Assign/resnet_model/batch_normalization_39/moving_meansave/RestoreV2:135*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_39/moving_mean*
validate_shape(*
_output_shapes
:@
�
save/Assign_136Assign3resnet_model/batch_normalization_39/moving_variancesave/RestoreV2:136*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_39/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_137Assign'resnet_model/batch_normalization_4/betasave/RestoreV2:137*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_4/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_138Assign(resnet_model/batch_normalization_4/gammasave/RestoreV2:138*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_4/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_139Assign.resnet_model/batch_normalization_4/moving_meansave/RestoreV2:139*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_140Assign2resnet_model/batch_normalization_4/moving_variancesave/RestoreV2:140*
T0*E
_class;
97loc:@resnet_model/batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_141Assign(resnet_model/batch_normalization_40/betasave/RestoreV2:141*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_40/beta
�
save/Assign_142Assign)resnet_model/batch_normalization_40/gammasave/RestoreV2:142*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_40/gamma
�
save/Assign_143Assign/resnet_model/batch_normalization_40/moving_meansave/RestoreV2:143*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_40/moving_mean*
validate_shape(*
_output_shapes
:@
�
save/Assign_144Assign3resnet_model/batch_normalization_40/moving_variancesave/RestoreV2:144*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_40/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_145Assign(resnet_model/batch_normalization_41/betasave/RestoreV2:145*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_41/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_146Assign)resnet_model/batch_normalization_41/gammasave/RestoreV2:146*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_41/gamma
�
save/Assign_147Assign/resnet_model/batch_normalization_41/moving_meansave/RestoreV2:147*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_41/moving_mean
�
save/Assign_148Assign3resnet_model/batch_normalization_41/moving_variancesave/RestoreV2:148*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_41/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_149Assign(resnet_model/batch_normalization_42/betasave/RestoreV2:149*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_42/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_150Assign)resnet_model/batch_normalization_42/gammasave/RestoreV2:150*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_42/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_151Assign/resnet_model/batch_normalization_42/moving_meansave/RestoreV2:151*
T0*B
_class8
64loc:@resnet_model/batch_normalization_42/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_152Assign3resnet_model/batch_normalization_42/moving_variancesave/RestoreV2:152*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_42/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_153Assign(resnet_model/batch_normalization_43/betasave/RestoreV2:153*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_43/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_154Assign)resnet_model/batch_normalization_43/gammasave/RestoreV2:154*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_43/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_155Assign/resnet_model/batch_normalization_43/moving_meansave/RestoreV2:155*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_43/moving_mean
�
save/Assign_156Assign3resnet_model/batch_normalization_43/moving_variancesave/RestoreV2:156*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_43/moving_variance
�
save/Assign_157Assign(resnet_model/batch_normalization_44/betasave/RestoreV2:157*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_44/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_158Assign)resnet_model/batch_normalization_44/gammasave/RestoreV2:158*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_44/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_159Assign/resnet_model/batch_normalization_44/moving_meansave/RestoreV2:159*
T0*B
_class8
64loc:@resnet_model/batch_normalization_44/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_160Assign3resnet_model/batch_normalization_44/moving_variancesave/RestoreV2:160*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_44/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_161Assign(resnet_model/batch_normalization_45/betasave/RestoreV2:161*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_45/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_162Assign)resnet_model/batch_normalization_45/gammasave/RestoreV2:162*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_45/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_163Assign/resnet_model/batch_normalization_45/moving_meansave/RestoreV2:163*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_45/moving_mean
�
save/Assign_164Assign3resnet_model/batch_normalization_45/moving_variancesave/RestoreV2:164*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_45/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_165Assign(resnet_model/batch_normalization_46/betasave/RestoreV2:165*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_46/beta*
validate_shape(*
_output_shapes
:@
�
save/Assign_166Assign)resnet_model/batch_normalization_46/gammasave/RestoreV2:166*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_46/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_167Assign/resnet_model/batch_normalization_46/moving_meansave/RestoreV2:167*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_46/moving_mean*
validate_shape(*
_output_shapes
:@
�
save/Assign_168Assign3resnet_model/batch_normalization_46/moving_variancesave/RestoreV2:168*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_46/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_169Assign(resnet_model/batch_normalization_47/betasave/RestoreV2:169*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_47/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_170Assign)resnet_model/batch_normalization_47/gammasave/RestoreV2:170*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_47/gamma
�
save/Assign_171Assign/resnet_model/batch_normalization_47/moving_meansave/RestoreV2:171*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_47/moving_mean
�
save/Assign_172Assign3resnet_model/batch_normalization_47/moving_variancesave/RestoreV2:172*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_47/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_173Assign(resnet_model/batch_normalization_48/betasave/RestoreV2:173*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_48/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_174Assign)resnet_model/batch_normalization_48/gammasave/RestoreV2:174*
use_locking(*
T0*<
_class2
0.loc:@resnet_model/batch_normalization_48/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_175Assign/resnet_model/batch_normalization_48/moving_meansave/RestoreV2:175*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*B
_class8
64loc:@resnet_model/batch_normalization_48/moving_mean
�
save/Assign_176Assign3resnet_model/batch_normalization_48/moving_variancesave/RestoreV2:176*
use_locking(*
T0*F
_class<
:8loc:@resnet_model/batch_normalization_48/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_177Assign'resnet_model/batch_normalization_5/betasave/RestoreV2:177*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_5/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_178Assign(resnet_model/batch_normalization_5/gammasave/RestoreV2:178*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_5/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_179Assign.resnet_model/batch_normalization_5/moving_meansave/RestoreV2:179*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_180Assign2resnet_model/batch_normalization_5/moving_variancesave/RestoreV2:180*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes
:
�
save/Assign_181Assign'resnet_model/batch_normalization_6/betasave/RestoreV2:181*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_6/beta
�
save/Assign_182Assign(resnet_model/batch_normalization_6/gammasave/RestoreV2:182*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_6/gamma
�
save/Assign_183Assign.resnet_model/batch_normalization_6/moving_meansave/RestoreV2:183*
T0*A
_class7
53loc:@resnet_model/batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_184Assign2resnet_model/batch_normalization_6/moving_variancesave/RestoreV2:184*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_6/moving_variance
�
save/Assign_185Assign'resnet_model/batch_normalization_7/betasave/RestoreV2:185*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_7/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_186Assign(resnet_model/batch_normalization_7/gammasave/RestoreV2:186*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_7/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_187Assign.resnet_model/batch_normalization_7/moving_meansave/RestoreV2:187*
T0*A
_class7
53loc:@resnet_model/batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_188Assign2resnet_model/batch_normalization_7/moving_variancesave/RestoreV2:188*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes
:
�
save/Assign_189Assign'resnet_model/batch_normalization_8/betasave/RestoreV2:189*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_8/beta
�
save/Assign_190Assign(resnet_model/batch_normalization_8/gammasave/RestoreV2:190*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_8/gamma
�
save/Assign_191Assign.resnet_model/batch_normalization_8/moving_meansave/RestoreV2:191*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_8/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_192Assign2resnet_model/batch_normalization_8/moving_variancesave/RestoreV2:192*
T0*E
_class;
97loc:@resnet_model/batch_normalization_8/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_193Assign'resnet_model/batch_normalization_9/betasave/RestoreV2:193*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@resnet_model/batch_normalization_9/beta
�
save/Assign_194Assign(resnet_model/batch_normalization_9/gammasave/RestoreV2:194*
use_locking(*
T0*;
_class1
/-loc:@resnet_model/batch_normalization_9/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_195Assign.resnet_model/batch_normalization_9/moving_meansave/RestoreV2:195*
use_locking(*
T0*A
_class7
53loc:@resnet_model/batch_normalization_9/moving_mean*
validate_shape(*
_output_shapes
:
�
save/Assign_196Assign2resnet_model/batch_normalization_9/moving_variancesave/RestoreV2:196*
use_locking(*
T0*E
_class;
97loc:@resnet_model/batch_normalization_9/moving_variance*
validate_shape(*
_output_shapes
:
�
save/Assign_197Assignresnet_model/conv2d/kernelsave/RestoreV2:197*
T0*-
_class#
!loc:@resnet_model/conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
save/Assign_198Assignresnet_model/conv2d_1/kernelsave/RestoreV2:198*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_1/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_199Assignresnet_model/conv2d_10/kernelsave/RestoreV2:199*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_10/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_200Assignresnet_model/conv2d_11/kernelsave/RestoreV2:200*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_11/kernel
�
save/Assign_201Assignresnet_model/conv2d_12/kernelsave/RestoreV2:201*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_12/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_202Assignresnet_model/conv2d_13/kernelsave/RestoreV2:202*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_13/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_203Assignresnet_model/conv2d_14/kernelsave/RestoreV2:203*
T0*0
_class&
$"loc:@resnet_model/conv2d_14/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
save/Assign_204Assignresnet_model/conv2d_15/kernelsave/RestoreV2:204*
T0*0
_class&
$"loc:@resnet_model/conv2d_15/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
save/Assign_205Assignresnet_model/conv2d_16/kernelsave/RestoreV2:205*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_16/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_206Assignresnet_model/conv2d_17/kernelsave/RestoreV2:206*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_17/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_207Assignresnet_model/conv2d_18/kernelsave/RestoreV2:207*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_18/kernel*
validate_shape(*&
_output_shapes
: 
�
save/Assign_208Assignresnet_model/conv2d_19/kernelsave/RestoreV2:208*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_19/kernel*
validate_shape(*&
_output_shapes
: 
�
save/Assign_209Assignresnet_model/conv2d_2/kernelsave/RestoreV2:209*
T0*/
_class%
#!loc:@resnet_model/conv2d_2/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
save/Assign_210Assignresnet_model/conv2d_20/kernelsave/RestoreV2:210*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_20/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_211Assignresnet_model/conv2d_21/kernelsave/RestoreV2:211*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_21/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_212Assignresnet_model/conv2d_22/kernelsave/RestoreV2:212*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_22/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_213Assignresnet_model/conv2d_23/kernelsave/RestoreV2:213*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_23/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_214Assignresnet_model/conv2d_24/kernelsave/RestoreV2:214*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_24/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_215Assignresnet_model/conv2d_25/kernelsave/RestoreV2:215*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_25/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_216Assignresnet_model/conv2d_26/kernelsave/RestoreV2:216*
T0*0
_class&
$"loc:@resnet_model/conv2d_26/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
�
save/Assign_217Assignresnet_model/conv2d_27/kernelsave/RestoreV2:217*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_27/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_218Assignresnet_model/conv2d_28/kernelsave/RestoreV2:218*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_28/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_219Assignresnet_model/conv2d_29/kernelsave/RestoreV2:219*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_29/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_220Assignresnet_model/conv2d_3/kernelsave/RestoreV2:220*
T0*/
_class%
#!loc:@resnet_model/conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
save/Assign_221Assignresnet_model/conv2d_30/kernelsave/RestoreV2:221*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_30/kernel
�
save/Assign_222Assignresnet_model/conv2d_31/kernelsave/RestoreV2:222*
T0*0
_class&
$"loc:@resnet_model/conv2d_31/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
�
save/Assign_223Assignresnet_model/conv2d_32/kernelsave/RestoreV2:223*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_32/kernel
�
save/Assign_224Assignresnet_model/conv2d_33/kernelsave/RestoreV2:224*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_33/kernel*
validate_shape(*&
_output_shapes
:  
�
save/Assign_225Assignresnet_model/conv2d_34/kernelsave/RestoreV2:225*
T0*0
_class&
$"loc:@resnet_model/conv2d_34/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
�
save/Assign_226Assignresnet_model/conv2d_35/kernelsave/RestoreV2:226*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_35/kernel*
validate_shape(*&
_output_shapes
: @
�
save/Assign_227Assignresnet_model/conv2d_36/kernelsave/RestoreV2:227*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_36/kernel*
validate_shape(*&
_output_shapes
: @
�
save/Assign_228Assignresnet_model/conv2d_37/kernelsave/RestoreV2:228*
T0*0
_class&
$"loc:@resnet_model/conv2d_37/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
save/Assign_229Assignresnet_model/conv2d_38/kernelsave/RestoreV2:229*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_38/kernel*
validate_shape(*&
_output_shapes
:@@
�
save/Assign_230Assignresnet_model/conv2d_39/kernelsave/RestoreV2:230*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_39/kernel*
validate_shape(*&
_output_shapes
:@@
�
save/Assign_231Assignresnet_model/conv2d_4/kernelsave/RestoreV2:231*
T0*/
_class%
#!loc:@resnet_model/conv2d_4/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
save/Assign_232Assignresnet_model/conv2d_40/kernelsave/RestoreV2:232*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_40/kernel*
validate_shape(*&
_output_shapes
:@@
�
save/Assign_233Assignresnet_model/conv2d_41/kernelsave/RestoreV2:233*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_41/kernel
�
save/Assign_234Assignresnet_model/conv2d_42/kernelsave/RestoreV2:234*
T0*0
_class&
$"loc:@resnet_model/conv2d_42/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
save/Assign_235Assignresnet_model/conv2d_43/kernelsave/RestoreV2:235*
T0*0
_class&
$"loc:@resnet_model/conv2d_43/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
save/Assign_236Assignresnet_model/conv2d_44/kernelsave/RestoreV2:236*
T0*0
_class&
$"loc:@resnet_model/conv2d_44/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
save/Assign_237Assignresnet_model/conv2d_45/kernelsave/RestoreV2:237*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_45/kernel*
validate_shape(*&
_output_shapes
:@@
�
save/Assign_238Assignresnet_model/conv2d_46/kernelsave/RestoreV2:238*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_46/kernel*
validate_shape(*&
_output_shapes
:@@
�
save/Assign_239Assignresnet_model/conv2d_47/kernelsave/RestoreV2:239*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_47/kernel
�
save/Assign_240Assignresnet_model/conv2d_48/kernelsave/RestoreV2:240*
T0*0
_class&
$"loc:@resnet_model/conv2d_48/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
�
save/Assign_241Assignresnet_model/conv2d_49/kernelsave/RestoreV2:241*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_49/kernel
�
save/Assign_242Assignresnet_model/conv2d_5/kernelsave/RestoreV2:242*
T0*/
_class%
#!loc:@resnet_model/conv2d_5/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
save/Assign_243Assignresnet_model/conv2d_50/kernelsave/RestoreV2:243*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_50/kernel*
validate_shape(*&
_output_shapes
:@@
�
save/Assign_244Assignresnet_model/conv2d_51/kernelsave/RestoreV2:244*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*0
_class&
$"loc:@resnet_model/conv2d_51/kernel
�
save/Assign_245Assignresnet_model/conv2d_6/kernelsave/RestoreV2:245*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_6/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_246Assignresnet_model/conv2d_7/kernelsave/RestoreV2:246*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_7/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_247Assignresnet_model/conv2d_8/kernelsave/RestoreV2:247*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_8/kernel
�
save/Assign_248Assignresnet_model/conv2d_9/kernelsave/RestoreV2:248*
use_locking(*
T0*/
_class%
#!loc:@resnet_model/conv2d_9/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_249Assignresnet_model/dense/biassave/RestoreV2:249*
use_locking(*
T0**
_class 
loc:@resnet_model/dense/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_250Assignresnet_model/dense/kernelsave/RestoreV2:250*
T0*,
_class"
 loc:@resnet_model/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
�"
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_16^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_17^save/Assign_170^save/Assign_171^save/Assign_172^save/Assign_173^save/Assign_174^save/Assign_175^save/Assign_176^save/Assign_177^save/Assign_178^save/Assign_179^save/Assign_18^save/Assign_180^save/Assign_181^save/Assign_182^save/Assign_183^save/Assign_184^save/Assign_185^save/Assign_186^save/Assign_187^save/Assign_188^save/Assign_189^save/Assign_19^save/Assign_190^save/Assign_191^save/Assign_192^save/Assign_193^save/Assign_194^save/Assign_195^save/Assign_196^save/Assign_197^save/Assign_198^save/Assign_199^save/Assign_2^save/Assign_20^save/Assign_200^save/Assign_201^save/Assign_202^save/Assign_203^save/Assign_204^save/Assign_205^save/Assign_206^save/Assign_207^save/Assign_208^save/Assign_209^save/Assign_21^save/Assign_210^save/Assign_211^save/Assign_212^save/Assign_213^save/Assign_214^save/Assign_215^save/Assign_216^save/Assign_217^save/Assign_218^save/Assign_219^save/Assign_22^save/Assign_220^save/Assign_221^save/Assign_222^save/Assign_223^save/Assign_224^save/Assign_225^save/Assign_226^save/Assign_227^save/Assign_228^save/Assign_229^save/Assign_23^save/Assign_230^save/Assign_231^save/Assign_232^save/Assign_233^save/Assign_234^save/Assign_235^save/Assign_236^save/Assign_237^save/Assign_238^save/Assign_239^save/Assign_24^save/Assign_240^save/Assign_241^save/Assign_242^save/Assign_243^save/Assign_244^save/Assign_245^save/Assign_246^save/Assign_247^save/Assign_248^save/Assign_249^save/Assign_25^save/Assign_250^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"ң
	variablesã��
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
resnet_model/conv2d/kernel:0!resnet_model/conv2d/kernel/Assign!resnet_model/conv2d/kernel/read:029resnet_model/conv2d/kernel/Initializer/truncated_normal:08
�
(resnet_model/batch_normalization/gamma:0-resnet_model/batch_normalization/gamma/Assign-resnet_model/batch_normalization/gamma/read:029resnet_model/batch_normalization/gamma/Initializer/ones:08
�
'resnet_model/batch_normalization/beta:0,resnet_model/batch_normalization/beta/Assign,resnet_model/batch_normalization/beta/read:029resnet_model/batch_normalization/beta/Initializer/zeros:08
�
.resnet_model/batch_normalization/moving_mean:03resnet_model/batch_normalization/moving_mean/Assign3resnet_model/batch_normalization/moving_mean/read:02@resnet_model/batch_normalization/moving_mean/Initializer/zeros:0
�
2resnet_model/batch_normalization/moving_variance:07resnet_model/batch_normalization/moving_variance/Assign7resnet_model/batch_normalization/moving_variance/read:02Cresnet_model/batch_normalization/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_1/kernel:0#resnet_model/conv2d_1/kernel/Assign#resnet_model/conv2d_1/kernel/read:02;resnet_model/conv2d_1/kernel/Initializer/truncated_normal:08
�
resnet_model/conv2d_2/kernel:0#resnet_model/conv2d_2/kernel/Assign#resnet_model/conv2d_2/kernel/read:02;resnet_model/conv2d_2/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_1/gamma:0/resnet_model/batch_normalization_1/gamma/Assign/resnet_model/batch_normalization_1/gamma/read:02;resnet_model/batch_normalization_1/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_1/beta:0.resnet_model/batch_normalization_1/beta/Assign.resnet_model/batch_normalization_1/beta/read:02;resnet_model/batch_normalization_1/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_1/moving_mean:05resnet_model/batch_normalization_1/moving_mean/Assign5resnet_model/batch_normalization_1/moving_mean/read:02Bresnet_model/batch_normalization_1/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_1/moving_variance:09resnet_model/batch_normalization_1/moving_variance/Assign9resnet_model/batch_normalization_1/moving_variance/read:02Eresnet_model/batch_normalization_1/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_3/kernel:0#resnet_model/conv2d_3/kernel/Assign#resnet_model/conv2d_3/kernel/read:02;resnet_model/conv2d_3/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_2/gamma:0/resnet_model/batch_normalization_2/gamma/Assign/resnet_model/batch_normalization_2/gamma/read:02;resnet_model/batch_normalization_2/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_2/beta:0.resnet_model/batch_normalization_2/beta/Assign.resnet_model/batch_normalization_2/beta/read:02;resnet_model/batch_normalization_2/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_2/moving_mean:05resnet_model/batch_normalization_2/moving_mean/Assign5resnet_model/batch_normalization_2/moving_mean/read:02Bresnet_model/batch_normalization_2/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_2/moving_variance:09resnet_model/batch_normalization_2/moving_variance/Assign9resnet_model/batch_normalization_2/moving_variance/read:02Eresnet_model/batch_normalization_2/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_4/kernel:0#resnet_model/conv2d_4/kernel/Assign#resnet_model/conv2d_4/kernel/read:02;resnet_model/conv2d_4/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_3/gamma:0/resnet_model/batch_normalization_3/gamma/Assign/resnet_model/batch_normalization_3/gamma/read:02;resnet_model/batch_normalization_3/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_3/beta:0.resnet_model/batch_normalization_3/beta/Assign.resnet_model/batch_normalization_3/beta/read:02;resnet_model/batch_normalization_3/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_3/moving_mean:05resnet_model/batch_normalization_3/moving_mean/Assign5resnet_model/batch_normalization_3/moving_mean/read:02Bresnet_model/batch_normalization_3/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_3/moving_variance:09resnet_model/batch_normalization_3/moving_variance/Assign9resnet_model/batch_normalization_3/moving_variance/read:02Eresnet_model/batch_normalization_3/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_5/kernel:0#resnet_model/conv2d_5/kernel/Assign#resnet_model/conv2d_5/kernel/read:02;resnet_model/conv2d_5/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_4/gamma:0/resnet_model/batch_normalization_4/gamma/Assign/resnet_model/batch_normalization_4/gamma/read:02;resnet_model/batch_normalization_4/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_4/beta:0.resnet_model/batch_normalization_4/beta/Assign.resnet_model/batch_normalization_4/beta/read:02;resnet_model/batch_normalization_4/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_4/moving_mean:05resnet_model/batch_normalization_4/moving_mean/Assign5resnet_model/batch_normalization_4/moving_mean/read:02Bresnet_model/batch_normalization_4/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_4/moving_variance:09resnet_model/batch_normalization_4/moving_variance/Assign9resnet_model/batch_normalization_4/moving_variance/read:02Eresnet_model/batch_normalization_4/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_6/kernel:0#resnet_model/conv2d_6/kernel/Assign#resnet_model/conv2d_6/kernel/read:02;resnet_model/conv2d_6/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_5/gamma:0/resnet_model/batch_normalization_5/gamma/Assign/resnet_model/batch_normalization_5/gamma/read:02;resnet_model/batch_normalization_5/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_5/beta:0.resnet_model/batch_normalization_5/beta/Assign.resnet_model/batch_normalization_5/beta/read:02;resnet_model/batch_normalization_5/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_5/moving_mean:05resnet_model/batch_normalization_5/moving_mean/Assign5resnet_model/batch_normalization_5/moving_mean/read:02Bresnet_model/batch_normalization_5/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_5/moving_variance:09resnet_model/batch_normalization_5/moving_variance/Assign9resnet_model/batch_normalization_5/moving_variance/read:02Eresnet_model/batch_normalization_5/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_7/kernel:0#resnet_model/conv2d_7/kernel/Assign#resnet_model/conv2d_7/kernel/read:02;resnet_model/conv2d_7/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_6/gamma:0/resnet_model/batch_normalization_6/gamma/Assign/resnet_model/batch_normalization_6/gamma/read:02;resnet_model/batch_normalization_6/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_6/beta:0.resnet_model/batch_normalization_6/beta/Assign.resnet_model/batch_normalization_6/beta/read:02;resnet_model/batch_normalization_6/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_6/moving_mean:05resnet_model/batch_normalization_6/moving_mean/Assign5resnet_model/batch_normalization_6/moving_mean/read:02Bresnet_model/batch_normalization_6/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_6/moving_variance:09resnet_model/batch_normalization_6/moving_variance/Assign9resnet_model/batch_normalization_6/moving_variance/read:02Eresnet_model/batch_normalization_6/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_8/kernel:0#resnet_model/conv2d_8/kernel/Assign#resnet_model/conv2d_8/kernel/read:02;resnet_model/conv2d_8/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_7/gamma:0/resnet_model/batch_normalization_7/gamma/Assign/resnet_model/batch_normalization_7/gamma/read:02;resnet_model/batch_normalization_7/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_7/beta:0.resnet_model/batch_normalization_7/beta/Assign.resnet_model/batch_normalization_7/beta/read:02;resnet_model/batch_normalization_7/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_7/moving_mean:05resnet_model/batch_normalization_7/moving_mean/Assign5resnet_model/batch_normalization_7/moving_mean/read:02Bresnet_model/batch_normalization_7/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_7/moving_variance:09resnet_model/batch_normalization_7/moving_variance/Assign9resnet_model/batch_normalization_7/moving_variance/read:02Eresnet_model/batch_normalization_7/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_9/kernel:0#resnet_model/conv2d_9/kernel/Assign#resnet_model/conv2d_9/kernel/read:02;resnet_model/conv2d_9/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_8/gamma:0/resnet_model/batch_normalization_8/gamma/Assign/resnet_model/batch_normalization_8/gamma/read:02;resnet_model/batch_normalization_8/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_8/beta:0.resnet_model/batch_normalization_8/beta/Assign.resnet_model/batch_normalization_8/beta/read:02;resnet_model/batch_normalization_8/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_8/moving_mean:05resnet_model/batch_normalization_8/moving_mean/Assign5resnet_model/batch_normalization_8/moving_mean/read:02Bresnet_model/batch_normalization_8/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_8/moving_variance:09resnet_model/batch_normalization_8/moving_variance/Assign9resnet_model/batch_normalization_8/moving_variance/read:02Eresnet_model/batch_normalization_8/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_10/kernel:0$resnet_model/conv2d_10/kernel/Assign$resnet_model/conv2d_10/kernel/read:02<resnet_model/conv2d_10/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_9/gamma:0/resnet_model/batch_normalization_9/gamma/Assign/resnet_model/batch_normalization_9/gamma/read:02;resnet_model/batch_normalization_9/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_9/beta:0.resnet_model/batch_normalization_9/beta/Assign.resnet_model/batch_normalization_9/beta/read:02;resnet_model/batch_normalization_9/beta/Initializer/zeros:08
�
0resnet_model/batch_normalization_9/moving_mean:05resnet_model/batch_normalization_9/moving_mean/Assign5resnet_model/batch_normalization_9/moving_mean/read:02Bresnet_model/batch_normalization_9/moving_mean/Initializer/zeros:0
�
4resnet_model/batch_normalization_9/moving_variance:09resnet_model/batch_normalization_9/moving_variance/Assign9resnet_model/batch_normalization_9/moving_variance/read:02Eresnet_model/batch_normalization_9/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_11/kernel:0$resnet_model/conv2d_11/kernel/Assign$resnet_model/conv2d_11/kernel/read:02<resnet_model/conv2d_11/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_10/gamma:00resnet_model/batch_normalization_10/gamma/Assign0resnet_model/batch_normalization_10/gamma/read:02<resnet_model/batch_normalization_10/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_10/beta:0/resnet_model/batch_normalization_10/beta/Assign/resnet_model/batch_normalization_10/beta/read:02<resnet_model/batch_normalization_10/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_10/moving_mean:06resnet_model/batch_normalization_10/moving_mean/Assign6resnet_model/batch_normalization_10/moving_mean/read:02Cresnet_model/batch_normalization_10/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_10/moving_variance:0:resnet_model/batch_normalization_10/moving_variance/Assign:resnet_model/batch_normalization_10/moving_variance/read:02Fresnet_model/batch_normalization_10/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_12/kernel:0$resnet_model/conv2d_12/kernel/Assign$resnet_model/conv2d_12/kernel/read:02<resnet_model/conv2d_12/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_11/gamma:00resnet_model/batch_normalization_11/gamma/Assign0resnet_model/batch_normalization_11/gamma/read:02<resnet_model/batch_normalization_11/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_11/beta:0/resnet_model/batch_normalization_11/beta/Assign/resnet_model/batch_normalization_11/beta/read:02<resnet_model/batch_normalization_11/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_11/moving_mean:06resnet_model/batch_normalization_11/moving_mean/Assign6resnet_model/batch_normalization_11/moving_mean/read:02Cresnet_model/batch_normalization_11/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_11/moving_variance:0:resnet_model/batch_normalization_11/moving_variance/Assign:resnet_model/batch_normalization_11/moving_variance/read:02Fresnet_model/batch_normalization_11/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_13/kernel:0$resnet_model/conv2d_13/kernel/Assign$resnet_model/conv2d_13/kernel/read:02<resnet_model/conv2d_13/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_12/gamma:00resnet_model/batch_normalization_12/gamma/Assign0resnet_model/batch_normalization_12/gamma/read:02<resnet_model/batch_normalization_12/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_12/beta:0/resnet_model/batch_normalization_12/beta/Assign/resnet_model/batch_normalization_12/beta/read:02<resnet_model/batch_normalization_12/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_12/moving_mean:06resnet_model/batch_normalization_12/moving_mean/Assign6resnet_model/batch_normalization_12/moving_mean/read:02Cresnet_model/batch_normalization_12/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_12/moving_variance:0:resnet_model/batch_normalization_12/moving_variance/Assign:resnet_model/batch_normalization_12/moving_variance/read:02Fresnet_model/batch_normalization_12/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_14/kernel:0$resnet_model/conv2d_14/kernel/Assign$resnet_model/conv2d_14/kernel/read:02<resnet_model/conv2d_14/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_13/gamma:00resnet_model/batch_normalization_13/gamma/Assign0resnet_model/batch_normalization_13/gamma/read:02<resnet_model/batch_normalization_13/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_13/beta:0/resnet_model/batch_normalization_13/beta/Assign/resnet_model/batch_normalization_13/beta/read:02<resnet_model/batch_normalization_13/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_13/moving_mean:06resnet_model/batch_normalization_13/moving_mean/Assign6resnet_model/batch_normalization_13/moving_mean/read:02Cresnet_model/batch_normalization_13/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_13/moving_variance:0:resnet_model/batch_normalization_13/moving_variance/Assign:resnet_model/batch_normalization_13/moving_variance/read:02Fresnet_model/batch_normalization_13/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_15/kernel:0$resnet_model/conv2d_15/kernel/Assign$resnet_model/conv2d_15/kernel/read:02<resnet_model/conv2d_15/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_14/gamma:00resnet_model/batch_normalization_14/gamma/Assign0resnet_model/batch_normalization_14/gamma/read:02<resnet_model/batch_normalization_14/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_14/beta:0/resnet_model/batch_normalization_14/beta/Assign/resnet_model/batch_normalization_14/beta/read:02<resnet_model/batch_normalization_14/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_14/moving_mean:06resnet_model/batch_normalization_14/moving_mean/Assign6resnet_model/batch_normalization_14/moving_mean/read:02Cresnet_model/batch_normalization_14/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_14/moving_variance:0:resnet_model/batch_normalization_14/moving_variance/Assign:resnet_model/batch_normalization_14/moving_variance/read:02Fresnet_model/batch_normalization_14/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_16/kernel:0$resnet_model/conv2d_16/kernel/Assign$resnet_model/conv2d_16/kernel/read:02<resnet_model/conv2d_16/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_15/gamma:00resnet_model/batch_normalization_15/gamma/Assign0resnet_model/batch_normalization_15/gamma/read:02<resnet_model/batch_normalization_15/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_15/beta:0/resnet_model/batch_normalization_15/beta/Assign/resnet_model/batch_normalization_15/beta/read:02<resnet_model/batch_normalization_15/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_15/moving_mean:06resnet_model/batch_normalization_15/moving_mean/Assign6resnet_model/batch_normalization_15/moving_mean/read:02Cresnet_model/batch_normalization_15/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_15/moving_variance:0:resnet_model/batch_normalization_15/moving_variance/Assign:resnet_model/batch_normalization_15/moving_variance/read:02Fresnet_model/batch_normalization_15/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_17/kernel:0$resnet_model/conv2d_17/kernel/Assign$resnet_model/conv2d_17/kernel/read:02<resnet_model/conv2d_17/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_16/gamma:00resnet_model/batch_normalization_16/gamma/Assign0resnet_model/batch_normalization_16/gamma/read:02<resnet_model/batch_normalization_16/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_16/beta:0/resnet_model/batch_normalization_16/beta/Assign/resnet_model/batch_normalization_16/beta/read:02<resnet_model/batch_normalization_16/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_16/moving_mean:06resnet_model/batch_normalization_16/moving_mean/Assign6resnet_model/batch_normalization_16/moving_mean/read:02Cresnet_model/batch_normalization_16/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_16/moving_variance:0:resnet_model/batch_normalization_16/moving_variance/Assign:resnet_model/batch_normalization_16/moving_variance/read:02Fresnet_model/batch_normalization_16/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_18/kernel:0$resnet_model/conv2d_18/kernel/Assign$resnet_model/conv2d_18/kernel/read:02<resnet_model/conv2d_18/kernel/Initializer/truncated_normal:08
�
resnet_model/conv2d_19/kernel:0$resnet_model/conv2d_19/kernel/Assign$resnet_model/conv2d_19/kernel/read:02<resnet_model/conv2d_19/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_17/gamma:00resnet_model/batch_normalization_17/gamma/Assign0resnet_model/batch_normalization_17/gamma/read:02<resnet_model/batch_normalization_17/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_17/beta:0/resnet_model/batch_normalization_17/beta/Assign/resnet_model/batch_normalization_17/beta/read:02<resnet_model/batch_normalization_17/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_17/moving_mean:06resnet_model/batch_normalization_17/moving_mean/Assign6resnet_model/batch_normalization_17/moving_mean/read:02Cresnet_model/batch_normalization_17/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_17/moving_variance:0:resnet_model/batch_normalization_17/moving_variance/Assign:resnet_model/batch_normalization_17/moving_variance/read:02Fresnet_model/batch_normalization_17/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_20/kernel:0$resnet_model/conv2d_20/kernel/Assign$resnet_model/conv2d_20/kernel/read:02<resnet_model/conv2d_20/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_18/gamma:00resnet_model/batch_normalization_18/gamma/Assign0resnet_model/batch_normalization_18/gamma/read:02<resnet_model/batch_normalization_18/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_18/beta:0/resnet_model/batch_normalization_18/beta/Assign/resnet_model/batch_normalization_18/beta/read:02<resnet_model/batch_normalization_18/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_18/moving_mean:06resnet_model/batch_normalization_18/moving_mean/Assign6resnet_model/batch_normalization_18/moving_mean/read:02Cresnet_model/batch_normalization_18/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_18/moving_variance:0:resnet_model/batch_normalization_18/moving_variance/Assign:resnet_model/batch_normalization_18/moving_variance/read:02Fresnet_model/batch_normalization_18/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_21/kernel:0$resnet_model/conv2d_21/kernel/Assign$resnet_model/conv2d_21/kernel/read:02<resnet_model/conv2d_21/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_19/gamma:00resnet_model/batch_normalization_19/gamma/Assign0resnet_model/batch_normalization_19/gamma/read:02<resnet_model/batch_normalization_19/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_19/beta:0/resnet_model/batch_normalization_19/beta/Assign/resnet_model/batch_normalization_19/beta/read:02<resnet_model/batch_normalization_19/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_19/moving_mean:06resnet_model/batch_normalization_19/moving_mean/Assign6resnet_model/batch_normalization_19/moving_mean/read:02Cresnet_model/batch_normalization_19/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_19/moving_variance:0:resnet_model/batch_normalization_19/moving_variance/Assign:resnet_model/batch_normalization_19/moving_variance/read:02Fresnet_model/batch_normalization_19/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_22/kernel:0$resnet_model/conv2d_22/kernel/Assign$resnet_model/conv2d_22/kernel/read:02<resnet_model/conv2d_22/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_20/gamma:00resnet_model/batch_normalization_20/gamma/Assign0resnet_model/batch_normalization_20/gamma/read:02<resnet_model/batch_normalization_20/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_20/beta:0/resnet_model/batch_normalization_20/beta/Assign/resnet_model/batch_normalization_20/beta/read:02<resnet_model/batch_normalization_20/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_20/moving_mean:06resnet_model/batch_normalization_20/moving_mean/Assign6resnet_model/batch_normalization_20/moving_mean/read:02Cresnet_model/batch_normalization_20/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_20/moving_variance:0:resnet_model/batch_normalization_20/moving_variance/Assign:resnet_model/batch_normalization_20/moving_variance/read:02Fresnet_model/batch_normalization_20/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_23/kernel:0$resnet_model/conv2d_23/kernel/Assign$resnet_model/conv2d_23/kernel/read:02<resnet_model/conv2d_23/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_21/gamma:00resnet_model/batch_normalization_21/gamma/Assign0resnet_model/batch_normalization_21/gamma/read:02<resnet_model/batch_normalization_21/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_21/beta:0/resnet_model/batch_normalization_21/beta/Assign/resnet_model/batch_normalization_21/beta/read:02<resnet_model/batch_normalization_21/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_21/moving_mean:06resnet_model/batch_normalization_21/moving_mean/Assign6resnet_model/batch_normalization_21/moving_mean/read:02Cresnet_model/batch_normalization_21/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_21/moving_variance:0:resnet_model/batch_normalization_21/moving_variance/Assign:resnet_model/batch_normalization_21/moving_variance/read:02Fresnet_model/batch_normalization_21/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_24/kernel:0$resnet_model/conv2d_24/kernel/Assign$resnet_model/conv2d_24/kernel/read:02<resnet_model/conv2d_24/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_22/gamma:00resnet_model/batch_normalization_22/gamma/Assign0resnet_model/batch_normalization_22/gamma/read:02<resnet_model/batch_normalization_22/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_22/beta:0/resnet_model/batch_normalization_22/beta/Assign/resnet_model/batch_normalization_22/beta/read:02<resnet_model/batch_normalization_22/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_22/moving_mean:06resnet_model/batch_normalization_22/moving_mean/Assign6resnet_model/batch_normalization_22/moving_mean/read:02Cresnet_model/batch_normalization_22/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_22/moving_variance:0:resnet_model/batch_normalization_22/moving_variance/Assign:resnet_model/batch_normalization_22/moving_variance/read:02Fresnet_model/batch_normalization_22/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_25/kernel:0$resnet_model/conv2d_25/kernel/Assign$resnet_model/conv2d_25/kernel/read:02<resnet_model/conv2d_25/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_23/gamma:00resnet_model/batch_normalization_23/gamma/Assign0resnet_model/batch_normalization_23/gamma/read:02<resnet_model/batch_normalization_23/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_23/beta:0/resnet_model/batch_normalization_23/beta/Assign/resnet_model/batch_normalization_23/beta/read:02<resnet_model/batch_normalization_23/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_23/moving_mean:06resnet_model/batch_normalization_23/moving_mean/Assign6resnet_model/batch_normalization_23/moving_mean/read:02Cresnet_model/batch_normalization_23/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_23/moving_variance:0:resnet_model/batch_normalization_23/moving_variance/Assign:resnet_model/batch_normalization_23/moving_variance/read:02Fresnet_model/batch_normalization_23/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_26/kernel:0$resnet_model/conv2d_26/kernel/Assign$resnet_model/conv2d_26/kernel/read:02<resnet_model/conv2d_26/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_24/gamma:00resnet_model/batch_normalization_24/gamma/Assign0resnet_model/batch_normalization_24/gamma/read:02<resnet_model/batch_normalization_24/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_24/beta:0/resnet_model/batch_normalization_24/beta/Assign/resnet_model/batch_normalization_24/beta/read:02<resnet_model/batch_normalization_24/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_24/moving_mean:06resnet_model/batch_normalization_24/moving_mean/Assign6resnet_model/batch_normalization_24/moving_mean/read:02Cresnet_model/batch_normalization_24/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_24/moving_variance:0:resnet_model/batch_normalization_24/moving_variance/Assign:resnet_model/batch_normalization_24/moving_variance/read:02Fresnet_model/batch_normalization_24/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_27/kernel:0$resnet_model/conv2d_27/kernel/Assign$resnet_model/conv2d_27/kernel/read:02<resnet_model/conv2d_27/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_25/gamma:00resnet_model/batch_normalization_25/gamma/Assign0resnet_model/batch_normalization_25/gamma/read:02<resnet_model/batch_normalization_25/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_25/beta:0/resnet_model/batch_normalization_25/beta/Assign/resnet_model/batch_normalization_25/beta/read:02<resnet_model/batch_normalization_25/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_25/moving_mean:06resnet_model/batch_normalization_25/moving_mean/Assign6resnet_model/batch_normalization_25/moving_mean/read:02Cresnet_model/batch_normalization_25/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_25/moving_variance:0:resnet_model/batch_normalization_25/moving_variance/Assign:resnet_model/batch_normalization_25/moving_variance/read:02Fresnet_model/batch_normalization_25/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_28/kernel:0$resnet_model/conv2d_28/kernel/Assign$resnet_model/conv2d_28/kernel/read:02<resnet_model/conv2d_28/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_26/gamma:00resnet_model/batch_normalization_26/gamma/Assign0resnet_model/batch_normalization_26/gamma/read:02<resnet_model/batch_normalization_26/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_26/beta:0/resnet_model/batch_normalization_26/beta/Assign/resnet_model/batch_normalization_26/beta/read:02<resnet_model/batch_normalization_26/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_26/moving_mean:06resnet_model/batch_normalization_26/moving_mean/Assign6resnet_model/batch_normalization_26/moving_mean/read:02Cresnet_model/batch_normalization_26/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_26/moving_variance:0:resnet_model/batch_normalization_26/moving_variance/Assign:resnet_model/batch_normalization_26/moving_variance/read:02Fresnet_model/batch_normalization_26/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_29/kernel:0$resnet_model/conv2d_29/kernel/Assign$resnet_model/conv2d_29/kernel/read:02<resnet_model/conv2d_29/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_27/gamma:00resnet_model/batch_normalization_27/gamma/Assign0resnet_model/batch_normalization_27/gamma/read:02<resnet_model/batch_normalization_27/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_27/beta:0/resnet_model/batch_normalization_27/beta/Assign/resnet_model/batch_normalization_27/beta/read:02<resnet_model/batch_normalization_27/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_27/moving_mean:06resnet_model/batch_normalization_27/moving_mean/Assign6resnet_model/batch_normalization_27/moving_mean/read:02Cresnet_model/batch_normalization_27/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_27/moving_variance:0:resnet_model/batch_normalization_27/moving_variance/Assign:resnet_model/batch_normalization_27/moving_variance/read:02Fresnet_model/batch_normalization_27/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_30/kernel:0$resnet_model/conv2d_30/kernel/Assign$resnet_model/conv2d_30/kernel/read:02<resnet_model/conv2d_30/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_28/gamma:00resnet_model/batch_normalization_28/gamma/Assign0resnet_model/batch_normalization_28/gamma/read:02<resnet_model/batch_normalization_28/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_28/beta:0/resnet_model/batch_normalization_28/beta/Assign/resnet_model/batch_normalization_28/beta/read:02<resnet_model/batch_normalization_28/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_28/moving_mean:06resnet_model/batch_normalization_28/moving_mean/Assign6resnet_model/batch_normalization_28/moving_mean/read:02Cresnet_model/batch_normalization_28/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_28/moving_variance:0:resnet_model/batch_normalization_28/moving_variance/Assign:resnet_model/batch_normalization_28/moving_variance/read:02Fresnet_model/batch_normalization_28/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_31/kernel:0$resnet_model/conv2d_31/kernel/Assign$resnet_model/conv2d_31/kernel/read:02<resnet_model/conv2d_31/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_29/gamma:00resnet_model/batch_normalization_29/gamma/Assign0resnet_model/batch_normalization_29/gamma/read:02<resnet_model/batch_normalization_29/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_29/beta:0/resnet_model/batch_normalization_29/beta/Assign/resnet_model/batch_normalization_29/beta/read:02<resnet_model/batch_normalization_29/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_29/moving_mean:06resnet_model/batch_normalization_29/moving_mean/Assign6resnet_model/batch_normalization_29/moving_mean/read:02Cresnet_model/batch_normalization_29/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_29/moving_variance:0:resnet_model/batch_normalization_29/moving_variance/Assign:resnet_model/batch_normalization_29/moving_variance/read:02Fresnet_model/batch_normalization_29/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_32/kernel:0$resnet_model/conv2d_32/kernel/Assign$resnet_model/conv2d_32/kernel/read:02<resnet_model/conv2d_32/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_30/gamma:00resnet_model/batch_normalization_30/gamma/Assign0resnet_model/batch_normalization_30/gamma/read:02<resnet_model/batch_normalization_30/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_30/beta:0/resnet_model/batch_normalization_30/beta/Assign/resnet_model/batch_normalization_30/beta/read:02<resnet_model/batch_normalization_30/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_30/moving_mean:06resnet_model/batch_normalization_30/moving_mean/Assign6resnet_model/batch_normalization_30/moving_mean/read:02Cresnet_model/batch_normalization_30/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_30/moving_variance:0:resnet_model/batch_normalization_30/moving_variance/Assign:resnet_model/batch_normalization_30/moving_variance/read:02Fresnet_model/batch_normalization_30/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_33/kernel:0$resnet_model/conv2d_33/kernel/Assign$resnet_model/conv2d_33/kernel/read:02<resnet_model/conv2d_33/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_31/gamma:00resnet_model/batch_normalization_31/gamma/Assign0resnet_model/batch_normalization_31/gamma/read:02<resnet_model/batch_normalization_31/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_31/beta:0/resnet_model/batch_normalization_31/beta/Assign/resnet_model/batch_normalization_31/beta/read:02<resnet_model/batch_normalization_31/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_31/moving_mean:06resnet_model/batch_normalization_31/moving_mean/Assign6resnet_model/batch_normalization_31/moving_mean/read:02Cresnet_model/batch_normalization_31/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_31/moving_variance:0:resnet_model/batch_normalization_31/moving_variance/Assign:resnet_model/batch_normalization_31/moving_variance/read:02Fresnet_model/batch_normalization_31/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_34/kernel:0$resnet_model/conv2d_34/kernel/Assign$resnet_model/conv2d_34/kernel/read:02<resnet_model/conv2d_34/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_32/gamma:00resnet_model/batch_normalization_32/gamma/Assign0resnet_model/batch_normalization_32/gamma/read:02<resnet_model/batch_normalization_32/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_32/beta:0/resnet_model/batch_normalization_32/beta/Assign/resnet_model/batch_normalization_32/beta/read:02<resnet_model/batch_normalization_32/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_32/moving_mean:06resnet_model/batch_normalization_32/moving_mean/Assign6resnet_model/batch_normalization_32/moving_mean/read:02Cresnet_model/batch_normalization_32/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_32/moving_variance:0:resnet_model/batch_normalization_32/moving_variance/Assign:resnet_model/batch_normalization_32/moving_variance/read:02Fresnet_model/batch_normalization_32/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_35/kernel:0$resnet_model/conv2d_35/kernel/Assign$resnet_model/conv2d_35/kernel/read:02<resnet_model/conv2d_35/kernel/Initializer/truncated_normal:08
�
resnet_model/conv2d_36/kernel:0$resnet_model/conv2d_36/kernel/Assign$resnet_model/conv2d_36/kernel/read:02<resnet_model/conv2d_36/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_33/gamma:00resnet_model/batch_normalization_33/gamma/Assign0resnet_model/batch_normalization_33/gamma/read:02<resnet_model/batch_normalization_33/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_33/beta:0/resnet_model/batch_normalization_33/beta/Assign/resnet_model/batch_normalization_33/beta/read:02<resnet_model/batch_normalization_33/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_33/moving_mean:06resnet_model/batch_normalization_33/moving_mean/Assign6resnet_model/batch_normalization_33/moving_mean/read:02Cresnet_model/batch_normalization_33/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_33/moving_variance:0:resnet_model/batch_normalization_33/moving_variance/Assign:resnet_model/batch_normalization_33/moving_variance/read:02Fresnet_model/batch_normalization_33/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_37/kernel:0$resnet_model/conv2d_37/kernel/Assign$resnet_model/conv2d_37/kernel/read:02<resnet_model/conv2d_37/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_34/gamma:00resnet_model/batch_normalization_34/gamma/Assign0resnet_model/batch_normalization_34/gamma/read:02<resnet_model/batch_normalization_34/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_34/beta:0/resnet_model/batch_normalization_34/beta/Assign/resnet_model/batch_normalization_34/beta/read:02<resnet_model/batch_normalization_34/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_34/moving_mean:06resnet_model/batch_normalization_34/moving_mean/Assign6resnet_model/batch_normalization_34/moving_mean/read:02Cresnet_model/batch_normalization_34/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_34/moving_variance:0:resnet_model/batch_normalization_34/moving_variance/Assign:resnet_model/batch_normalization_34/moving_variance/read:02Fresnet_model/batch_normalization_34/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_38/kernel:0$resnet_model/conv2d_38/kernel/Assign$resnet_model/conv2d_38/kernel/read:02<resnet_model/conv2d_38/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_35/gamma:00resnet_model/batch_normalization_35/gamma/Assign0resnet_model/batch_normalization_35/gamma/read:02<resnet_model/batch_normalization_35/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_35/beta:0/resnet_model/batch_normalization_35/beta/Assign/resnet_model/batch_normalization_35/beta/read:02<resnet_model/batch_normalization_35/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_35/moving_mean:06resnet_model/batch_normalization_35/moving_mean/Assign6resnet_model/batch_normalization_35/moving_mean/read:02Cresnet_model/batch_normalization_35/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_35/moving_variance:0:resnet_model/batch_normalization_35/moving_variance/Assign:resnet_model/batch_normalization_35/moving_variance/read:02Fresnet_model/batch_normalization_35/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_39/kernel:0$resnet_model/conv2d_39/kernel/Assign$resnet_model/conv2d_39/kernel/read:02<resnet_model/conv2d_39/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_36/gamma:00resnet_model/batch_normalization_36/gamma/Assign0resnet_model/batch_normalization_36/gamma/read:02<resnet_model/batch_normalization_36/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_36/beta:0/resnet_model/batch_normalization_36/beta/Assign/resnet_model/batch_normalization_36/beta/read:02<resnet_model/batch_normalization_36/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_36/moving_mean:06resnet_model/batch_normalization_36/moving_mean/Assign6resnet_model/batch_normalization_36/moving_mean/read:02Cresnet_model/batch_normalization_36/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_36/moving_variance:0:resnet_model/batch_normalization_36/moving_variance/Assign:resnet_model/batch_normalization_36/moving_variance/read:02Fresnet_model/batch_normalization_36/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_40/kernel:0$resnet_model/conv2d_40/kernel/Assign$resnet_model/conv2d_40/kernel/read:02<resnet_model/conv2d_40/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_37/gamma:00resnet_model/batch_normalization_37/gamma/Assign0resnet_model/batch_normalization_37/gamma/read:02<resnet_model/batch_normalization_37/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_37/beta:0/resnet_model/batch_normalization_37/beta/Assign/resnet_model/batch_normalization_37/beta/read:02<resnet_model/batch_normalization_37/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_37/moving_mean:06resnet_model/batch_normalization_37/moving_mean/Assign6resnet_model/batch_normalization_37/moving_mean/read:02Cresnet_model/batch_normalization_37/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_37/moving_variance:0:resnet_model/batch_normalization_37/moving_variance/Assign:resnet_model/batch_normalization_37/moving_variance/read:02Fresnet_model/batch_normalization_37/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_41/kernel:0$resnet_model/conv2d_41/kernel/Assign$resnet_model/conv2d_41/kernel/read:02<resnet_model/conv2d_41/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_38/gamma:00resnet_model/batch_normalization_38/gamma/Assign0resnet_model/batch_normalization_38/gamma/read:02<resnet_model/batch_normalization_38/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_38/beta:0/resnet_model/batch_normalization_38/beta/Assign/resnet_model/batch_normalization_38/beta/read:02<resnet_model/batch_normalization_38/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_38/moving_mean:06resnet_model/batch_normalization_38/moving_mean/Assign6resnet_model/batch_normalization_38/moving_mean/read:02Cresnet_model/batch_normalization_38/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_38/moving_variance:0:resnet_model/batch_normalization_38/moving_variance/Assign:resnet_model/batch_normalization_38/moving_variance/read:02Fresnet_model/batch_normalization_38/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_42/kernel:0$resnet_model/conv2d_42/kernel/Assign$resnet_model/conv2d_42/kernel/read:02<resnet_model/conv2d_42/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_39/gamma:00resnet_model/batch_normalization_39/gamma/Assign0resnet_model/batch_normalization_39/gamma/read:02<resnet_model/batch_normalization_39/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_39/beta:0/resnet_model/batch_normalization_39/beta/Assign/resnet_model/batch_normalization_39/beta/read:02<resnet_model/batch_normalization_39/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_39/moving_mean:06resnet_model/batch_normalization_39/moving_mean/Assign6resnet_model/batch_normalization_39/moving_mean/read:02Cresnet_model/batch_normalization_39/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_39/moving_variance:0:resnet_model/batch_normalization_39/moving_variance/Assign:resnet_model/batch_normalization_39/moving_variance/read:02Fresnet_model/batch_normalization_39/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_43/kernel:0$resnet_model/conv2d_43/kernel/Assign$resnet_model/conv2d_43/kernel/read:02<resnet_model/conv2d_43/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_40/gamma:00resnet_model/batch_normalization_40/gamma/Assign0resnet_model/batch_normalization_40/gamma/read:02<resnet_model/batch_normalization_40/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_40/beta:0/resnet_model/batch_normalization_40/beta/Assign/resnet_model/batch_normalization_40/beta/read:02<resnet_model/batch_normalization_40/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_40/moving_mean:06resnet_model/batch_normalization_40/moving_mean/Assign6resnet_model/batch_normalization_40/moving_mean/read:02Cresnet_model/batch_normalization_40/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_40/moving_variance:0:resnet_model/batch_normalization_40/moving_variance/Assign:resnet_model/batch_normalization_40/moving_variance/read:02Fresnet_model/batch_normalization_40/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_44/kernel:0$resnet_model/conv2d_44/kernel/Assign$resnet_model/conv2d_44/kernel/read:02<resnet_model/conv2d_44/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_41/gamma:00resnet_model/batch_normalization_41/gamma/Assign0resnet_model/batch_normalization_41/gamma/read:02<resnet_model/batch_normalization_41/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_41/beta:0/resnet_model/batch_normalization_41/beta/Assign/resnet_model/batch_normalization_41/beta/read:02<resnet_model/batch_normalization_41/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_41/moving_mean:06resnet_model/batch_normalization_41/moving_mean/Assign6resnet_model/batch_normalization_41/moving_mean/read:02Cresnet_model/batch_normalization_41/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_41/moving_variance:0:resnet_model/batch_normalization_41/moving_variance/Assign:resnet_model/batch_normalization_41/moving_variance/read:02Fresnet_model/batch_normalization_41/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_45/kernel:0$resnet_model/conv2d_45/kernel/Assign$resnet_model/conv2d_45/kernel/read:02<resnet_model/conv2d_45/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_42/gamma:00resnet_model/batch_normalization_42/gamma/Assign0resnet_model/batch_normalization_42/gamma/read:02<resnet_model/batch_normalization_42/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_42/beta:0/resnet_model/batch_normalization_42/beta/Assign/resnet_model/batch_normalization_42/beta/read:02<resnet_model/batch_normalization_42/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_42/moving_mean:06resnet_model/batch_normalization_42/moving_mean/Assign6resnet_model/batch_normalization_42/moving_mean/read:02Cresnet_model/batch_normalization_42/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_42/moving_variance:0:resnet_model/batch_normalization_42/moving_variance/Assign:resnet_model/batch_normalization_42/moving_variance/read:02Fresnet_model/batch_normalization_42/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_46/kernel:0$resnet_model/conv2d_46/kernel/Assign$resnet_model/conv2d_46/kernel/read:02<resnet_model/conv2d_46/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_43/gamma:00resnet_model/batch_normalization_43/gamma/Assign0resnet_model/batch_normalization_43/gamma/read:02<resnet_model/batch_normalization_43/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_43/beta:0/resnet_model/batch_normalization_43/beta/Assign/resnet_model/batch_normalization_43/beta/read:02<resnet_model/batch_normalization_43/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_43/moving_mean:06resnet_model/batch_normalization_43/moving_mean/Assign6resnet_model/batch_normalization_43/moving_mean/read:02Cresnet_model/batch_normalization_43/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_43/moving_variance:0:resnet_model/batch_normalization_43/moving_variance/Assign:resnet_model/batch_normalization_43/moving_variance/read:02Fresnet_model/batch_normalization_43/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_47/kernel:0$resnet_model/conv2d_47/kernel/Assign$resnet_model/conv2d_47/kernel/read:02<resnet_model/conv2d_47/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_44/gamma:00resnet_model/batch_normalization_44/gamma/Assign0resnet_model/batch_normalization_44/gamma/read:02<resnet_model/batch_normalization_44/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_44/beta:0/resnet_model/batch_normalization_44/beta/Assign/resnet_model/batch_normalization_44/beta/read:02<resnet_model/batch_normalization_44/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_44/moving_mean:06resnet_model/batch_normalization_44/moving_mean/Assign6resnet_model/batch_normalization_44/moving_mean/read:02Cresnet_model/batch_normalization_44/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_44/moving_variance:0:resnet_model/batch_normalization_44/moving_variance/Assign:resnet_model/batch_normalization_44/moving_variance/read:02Fresnet_model/batch_normalization_44/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_48/kernel:0$resnet_model/conv2d_48/kernel/Assign$resnet_model/conv2d_48/kernel/read:02<resnet_model/conv2d_48/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_45/gamma:00resnet_model/batch_normalization_45/gamma/Assign0resnet_model/batch_normalization_45/gamma/read:02<resnet_model/batch_normalization_45/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_45/beta:0/resnet_model/batch_normalization_45/beta/Assign/resnet_model/batch_normalization_45/beta/read:02<resnet_model/batch_normalization_45/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_45/moving_mean:06resnet_model/batch_normalization_45/moving_mean/Assign6resnet_model/batch_normalization_45/moving_mean/read:02Cresnet_model/batch_normalization_45/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_45/moving_variance:0:resnet_model/batch_normalization_45/moving_variance/Assign:resnet_model/batch_normalization_45/moving_variance/read:02Fresnet_model/batch_normalization_45/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_49/kernel:0$resnet_model/conv2d_49/kernel/Assign$resnet_model/conv2d_49/kernel/read:02<resnet_model/conv2d_49/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_46/gamma:00resnet_model/batch_normalization_46/gamma/Assign0resnet_model/batch_normalization_46/gamma/read:02<resnet_model/batch_normalization_46/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_46/beta:0/resnet_model/batch_normalization_46/beta/Assign/resnet_model/batch_normalization_46/beta/read:02<resnet_model/batch_normalization_46/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_46/moving_mean:06resnet_model/batch_normalization_46/moving_mean/Assign6resnet_model/batch_normalization_46/moving_mean/read:02Cresnet_model/batch_normalization_46/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_46/moving_variance:0:resnet_model/batch_normalization_46/moving_variance/Assign:resnet_model/batch_normalization_46/moving_variance/read:02Fresnet_model/batch_normalization_46/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_50/kernel:0$resnet_model/conv2d_50/kernel/Assign$resnet_model/conv2d_50/kernel/read:02<resnet_model/conv2d_50/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_47/gamma:00resnet_model/batch_normalization_47/gamma/Assign0resnet_model/batch_normalization_47/gamma/read:02<resnet_model/batch_normalization_47/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_47/beta:0/resnet_model/batch_normalization_47/beta/Assign/resnet_model/batch_normalization_47/beta/read:02<resnet_model/batch_normalization_47/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_47/moving_mean:06resnet_model/batch_normalization_47/moving_mean/Assign6resnet_model/batch_normalization_47/moving_mean/read:02Cresnet_model/batch_normalization_47/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_47/moving_variance:0:resnet_model/batch_normalization_47/moving_variance/Assign:resnet_model/batch_normalization_47/moving_variance/read:02Fresnet_model/batch_normalization_47/moving_variance/Initializer/ones:0
�
resnet_model/conv2d_51/kernel:0$resnet_model/conv2d_51/kernel/Assign$resnet_model/conv2d_51/kernel/read:02<resnet_model/conv2d_51/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_48/gamma:00resnet_model/batch_normalization_48/gamma/Assign0resnet_model/batch_normalization_48/gamma/read:02<resnet_model/batch_normalization_48/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_48/beta:0/resnet_model/batch_normalization_48/beta/Assign/resnet_model/batch_normalization_48/beta/read:02<resnet_model/batch_normalization_48/beta/Initializer/zeros:08
�
1resnet_model/batch_normalization_48/moving_mean:06resnet_model/batch_normalization_48/moving_mean/Assign6resnet_model/batch_normalization_48/moving_mean/read:02Cresnet_model/batch_normalization_48/moving_mean/Initializer/zeros:0
�
5resnet_model/batch_normalization_48/moving_variance:0:resnet_model/batch_normalization_48/moving_variance/Assign:resnet_model/batch_normalization_48/moving_variance/read:02Fresnet_model/batch_normalization_48/moving_variance/Initializer/ones:0
�
resnet_model/dense/kernel:0 resnet_model/dense/kernel/Assign resnet_model/dense/kernel/read:026resnet_model/dense/kernel/Initializer/random_uniform:08
�
resnet_model/dense/bias:0resnet_model/dense/bias/Assignresnet_model/dense/bias/read:02+resnet_model/dense/bias/Initializer/zeros:08"��
trainable_variables����
�
resnet_model/conv2d/kernel:0!resnet_model/conv2d/kernel/Assign!resnet_model/conv2d/kernel/read:029resnet_model/conv2d/kernel/Initializer/truncated_normal:08
�
(resnet_model/batch_normalization/gamma:0-resnet_model/batch_normalization/gamma/Assign-resnet_model/batch_normalization/gamma/read:029resnet_model/batch_normalization/gamma/Initializer/ones:08
�
'resnet_model/batch_normalization/beta:0,resnet_model/batch_normalization/beta/Assign,resnet_model/batch_normalization/beta/read:029resnet_model/batch_normalization/beta/Initializer/zeros:08
�
resnet_model/conv2d_1/kernel:0#resnet_model/conv2d_1/kernel/Assign#resnet_model/conv2d_1/kernel/read:02;resnet_model/conv2d_1/kernel/Initializer/truncated_normal:08
�
resnet_model/conv2d_2/kernel:0#resnet_model/conv2d_2/kernel/Assign#resnet_model/conv2d_2/kernel/read:02;resnet_model/conv2d_2/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_1/gamma:0/resnet_model/batch_normalization_1/gamma/Assign/resnet_model/batch_normalization_1/gamma/read:02;resnet_model/batch_normalization_1/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_1/beta:0.resnet_model/batch_normalization_1/beta/Assign.resnet_model/batch_normalization_1/beta/read:02;resnet_model/batch_normalization_1/beta/Initializer/zeros:08
�
resnet_model/conv2d_3/kernel:0#resnet_model/conv2d_3/kernel/Assign#resnet_model/conv2d_3/kernel/read:02;resnet_model/conv2d_3/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_2/gamma:0/resnet_model/batch_normalization_2/gamma/Assign/resnet_model/batch_normalization_2/gamma/read:02;resnet_model/batch_normalization_2/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_2/beta:0.resnet_model/batch_normalization_2/beta/Assign.resnet_model/batch_normalization_2/beta/read:02;resnet_model/batch_normalization_2/beta/Initializer/zeros:08
�
resnet_model/conv2d_4/kernel:0#resnet_model/conv2d_4/kernel/Assign#resnet_model/conv2d_4/kernel/read:02;resnet_model/conv2d_4/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_3/gamma:0/resnet_model/batch_normalization_3/gamma/Assign/resnet_model/batch_normalization_3/gamma/read:02;resnet_model/batch_normalization_3/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_3/beta:0.resnet_model/batch_normalization_3/beta/Assign.resnet_model/batch_normalization_3/beta/read:02;resnet_model/batch_normalization_3/beta/Initializer/zeros:08
�
resnet_model/conv2d_5/kernel:0#resnet_model/conv2d_5/kernel/Assign#resnet_model/conv2d_5/kernel/read:02;resnet_model/conv2d_5/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_4/gamma:0/resnet_model/batch_normalization_4/gamma/Assign/resnet_model/batch_normalization_4/gamma/read:02;resnet_model/batch_normalization_4/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_4/beta:0.resnet_model/batch_normalization_4/beta/Assign.resnet_model/batch_normalization_4/beta/read:02;resnet_model/batch_normalization_4/beta/Initializer/zeros:08
�
resnet_model/conv2d_6/kernel:0#resnet_model/conv2d_6/kernel/Assign#resnet_model/conv2d_6/kernel/read:02;resnet_model/conv2d_6/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_5/gamma:0/resnet_model/batch_normalization_5/gamma/Assign/resnet_model/batch_normalization_5/gamma/read:02;resnet_model/batch_normalization_5/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_5/beta:0.resnet_model/batch_normalization_5/beta/Assign.resnet_model/batch_normalization_5/beta/read:02;resnet_model/batch_normalization_5/beta/Initializer/zeros:08
�
resnet_model/conv2d_7/kernel:0#resnet_model/conv2d_7/kernel/Assign#resnet_model/conv2d_7/kernel/read:02;resnet_model/conv2d_7/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_6/gamma:0/resnet_model/batch_normalization_6/gamma/Assign/resnet_model/batch_normalization_6/gamma/read:02;resnet_model/batch_normalization_6/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_6/beta:0.resnet_model/batch_normalization_6/beta/Assign.resnet_model/batch_normalization_6/beta/read:02;resnet_model/batch_normalization_6/beta/Initializer/zeros:08
�
resnet_model/conv2d_8/kernel:0#resnet_model/conv2d_8/kernel/Assign#resnet_model/conv2d_8/kernel/read:02;resnet_model/conv2d_8/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_7/gamma:0/resnet_model/batch_normalization_7/gamma/Assign/resnet_model/batch_normalization_7/gamma/read:02;resnet_model/batch_normalization_7/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_7/beta:0.resnet_model/batch_normalization_7/beta/Assign.resnet_model/batch_normalization_7/beta/read:02;resnet_model/batch_normalization_7/beta/Initializer/zeros:08
�
resnet_model/conv2d_9/kernel:0#resnet_model/conv2d_9/kernel/Assign#resnet_model/conv2d_9/kernel/read:02;resnet_model/conv2d_9/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_8/gamma:0/resnet_model/batch_normalization_8/gamma/Assign/resnet_model/batch_normalization_8/gamma/read:02;resnet_model/batch_normalization_8/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_8/beta:0.resnet_model/batch_normalization_8/beta/Assign.resnet_model/batch_normalization_8/beta/read:02;resnet_model/batch_normalization_8/beta/Initializer/zeros:08
�
resnet_model/conv2d_10/kernel:0$resnet_model/conv2d_10/kernel/Assign$resnet_model/conv2d_10/kernel/read:02<resnet_model/conv2d_10/kernel/Initializer/truncated_normal:08
�
*resnet_model/batch_normalization_9/gamma:0/resnet_model/batch_normalization_9/gamma/Assign/resnet_model/batch_normalization_9/gamma/read:02;resnet_model/batch_normalization_9/gamma/Initializer/ones:08
�
)resnet_model/batch_normalization_9/beta:0.resnet_model/batch_normalization_9/beta/Assign.resnet_model/batch_normalization_9/beta/read:02;resnet_model/batch_normalization_9/beta/Initializer/zeros:08
�
resnet_model/conv2d_11/kernel:0$resnet_model/conv2d_11/kernel/Assign$resnet_model/conv2d_11/kernel/read:02<resnet_model/conv2d_11/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_10/gamma:00resnet_model/batch_normalization_10/gamma/Assign0resnet_model/batch_normalization_10/gamma/read:02<resnet_model/batch_normalization_10/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_10/beta:0/resnet_model/batch_normalization_10/beta/Assign/resnet_model/batch_normalization_10/beta/read:02<resnet_model/batch_normalization_10/beta/Initializer/zeros:08
�
resnet_model/conv2d_12/kernel:0$resnet_model/conv2d_12/kernel/Assign$resnet_model/conv2d_12/kernel/read:02<resnet_model/conv2d_12/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_11/gamma:00resnet_model/batch_normalization_11/gamma/Assign0resnet_model/batch_normalization_11/gamma/read:02<resnet_model/batch_normalization_11/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_11/beta:0/resnet_model/batch_normalization_11/beta/Assign/resnet_model/batch_normalization_11/beta/read:02<resnet_model/batch_normalization_11/beta/Initializer/zeros:08
�
resnet_model/conv2d_13/kernel:0$resnet_model/conv2d_13/kernel/Assign$resnet_model/conv2d_13/kernel/read:02<resnet_model/conv2d_13/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_12/gamma:00resnet_model/batch_normalization_12/gamma/Assign0resnet_model/batch_normalization_12/gamma/read:02<resnet_model/batch_normalization_12/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_12/beta:0/resnet_model/batch_normalization_12/beta/Assign/resnet_model/batch_normalization_12/beta/read:02<resnet_model/batch_normalization_12/beta/Initializer/zeros:08
�
resnet_model/conv2d_14/kernel:0$resnet_model/conv2d_14/kernel/Assign$resnet_model/conv2d_14/kernel/read:02<resnet_model/conv2d_14/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_13/gamma:00resnet_model/batch_normalization_13/gamma/Assign0resnet_model/batch_normalization_13/gamma/read:02<resnet_model/batch_normalization_13/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_13/beta:0/resnet_model/batch_normalization_13/beta/Assign/resnet_model/batch_normalization_13/beta/read:02<resnet_model/batch_normalization_13/beta/Initializer/zeros:08
�
resnet_model/conv2d_15/kernel:0$resnet_model/conv2d_15/kernel/Assign$resnet_model/conv2d_15/kernel/read:02<resnet_model/conv2d_15/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_14/gamma:00resnet_model/batch_normalization_14/gamma/Assign0resnet_model/batch_normalization_14/gamma/read:02<resnet_model/batch_normalization_14/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_14/beta:0/resnet_model/batch_normalization_14/beta/Assign/resnet_model/batch_normalization_14/beta/read:02<resnet_model/batch_normalization_14/beta/Initializer/zeros:08
�
resnet_model/conv2d_16/kernel:0$resnet_model/conv2d_16/kernel/Assign$resnet_model/conv2d_16/kernel/read:02<resnet_model/conv2d_16/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_15/gamma:00resnet_model/batch_normalization_15/gamma/Assign0resnet_model/batch_normalization_15/gamma/read:02<resnet_model/batch_normalization_15/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_15/beta:0/resnet_model/batch_normalization_15/beta/Assign/resnet_model/batch_normalization_15/beta/read:02<resnet_model/batch_normalization_15/beta/Initializer/zeros:08
�
resnet_model/conv2d_17/kernel:0$resnet_model/conv2d_17/kernel/Assign$resnet_model/conv2d_17/kernel/read:02<resnet_model/conv2d_17/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_16/gamma:00resnet_model/batch_normalization_16/gamma/Assign0resnet_model/batch_normalization_16/gamma/read:02<resnet_model/batch_normalization_16/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_16/beta:0/resnet_model/batch_normalization_16/beta/Assign/resnet_model/batch_normalization_16/beta/read:02<resnet_model/batch_normalization_16/beta/Initializer/zeros:08
�
resnet_model/conv2d_18/kernel:0$resnet_model/conv2d_18/kernel/Assign$resnet_model/conv2d_18/kernel/read:02<resnet_model/conv2d_18/kernel/Initializer/truncated_normal:08
�
resnet_model/conv2d_19/kernel:0$resnet_model/conv2d_19/kernel/Assign$resnet_model/conv2d_19/kernel/read:02<resnet_model/conv2d_19/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_17/gamma:00resnet_model/batch_normalization_17/gamma/Assign0resnet_model/batch_normalization_17/gamma/read:02<resnet_model/batch_normalization_17/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_17/beta:0/resnet_model/batch_normalization_17/beta/Assign/resnet_model/batch_normalization_17/beta/read:02<resnet_model/batch_normalization_17/beta/Initializer/zeros:08
�
resnet_model/conv2d_20/kernel:0$resnet_model/conv2d_20/kernel/Assign$resnet_model/conv2d_20/kernel/read:02<resnet_model/conv2d_20/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_18/gamma:00resnet_model/batch_normalization_18/gamma/Assign0resnet_model/batch_normalization_18/gamma/read:02<resnet_model/batch_normalization_18/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_18/beta:0/resnet_model/batch_normalization_18/beta/Assign/resnet_model/batch_normalization_18/beta/read:02<resnet_model/batch_normalization_18/beta/Initializer/zeros:08
�
resnet_model/conv2d_21/kernel:0$resnet_model/conv2d_21/kernel/Assign$resnet_model/conv2d_21/kernel/read:02<resnet_model/conv2d_21/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_19/gamma:00resnet_model/batch_normalization_19/gamma/Assign0resnet_model/batch_normalization_19/gamma/read:02<resnet_model/batch_normalization_19/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_19/beta:0/resnet_model/batch_normalization_19/beta/Assign/resnet_model/batch_normalization_19/beta/read:02<resnet_model/batch_normalization_19/beta/Initializer/zeros:08
�
resnet_model/conv2d_22/kernel:0$resnet_model/conv2d_22/kernel/Assign$resnet_model/conv2d_22/kernel/read:02<resnet_model/conv2d_22/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_20/gamma:00resnet_model/batch_normalization_20/gamma/Assign0resnet_model/batch_normalization_20/gamma/read:02<resnet_model/batch_normalization_20/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_20/beta:0/resnet_model/batch_normalization_20/beta/Assign/resnet_model/batch_normalization_20/beta/read:02<resnet_model/batch_normalization_20/beta/Initializer/zeros:08
�
resnet_model/conv2d_23/kernel:0$resnet_model/conv2d_23/kernel/Assign$resnet_model/conv2d_23/kernel/read:02<resnet_model/conv2d_23/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_21/gamma:00resnet_model/batch_normalization_21/gamma/Assign0resnet_model/batch_normalization_21/gamma/read:02<resnet_model/batch_normalization_21/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_21/beta:0/resnet_model/batch_normalization_21/beta/Assign/resnet_model/batch_normalization_21/beta/read:02<resnet_model/batch_normalization_21/beta/Initializer/zeros:08
�
resnet_model/conv2d_24/kernel:0$resnet_model/conv2d_24/kernel/Assign$resnet_model/conv2d_24/kernel/read:02<resnet_model/conv2d_24/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_22/gamma:00resnet_model/batch_normalization_22/gamma/Assign0resnet_model/batch_normalization_22/gamma/read:02<resnet_model/batch_normalization_22/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_22/beta:0/resnet_model/batch_normalization_22/beta/Assign/resnet_model/batch_normalization_22/beta/read:02<resnet_model/batch_normalization_22/beta/Initializer/zeros:08
�
resnet_model/conv2d_25/kernel:0$resnet_model/conv2d_25/kernel/Assign$resnet_model/conv2d_25/kernel/read:02<resnet_model/conv2d_25/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_23/gamma:00resnet_model/batch_normalization_23/gamma/Assign0resnet_model/batch_normalization_23/gamma/read:02<resnet_model/batch_normalization_23/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_23/beta:0/resnet_model/batch_normalization_23/beta/Assign/resnet_model/batch_normalization_23/beta/read:02<resnet_model/batch_normalization_23/beta/Initializer/zeros:08
�
resnet_model/conv2d_26/kernel:0$resnet_model/conv2d_26/kernel/Assign$resnet_model/conv2d_26/kernel/read:02<resnet_model/conv2d_26/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_24/gamma:00resnet_model/batch_normalization_24/gamma/Assign0resnet_model/batch_normalization_24/gamma/read:02<resnet_model/batch_normalization_24/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_24/beta:0/resnet_model/batch_normalization_24/beta/Assign/resnet_model/batch_normalization_24/beta/read:02<resnet_model/batch_normalization_24/beta/Initializer/zeros:08
�
resnet_model/conv2d_27/kernel:0$resnet_model/conv2d_27/kernel/Assign$resnet_model/conv2d_27/kernel/read:02<resnet_model/conv2d_27/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_25/gamma:00resnet_model/batch_normalization_25/gamma/Assign0resnet_model/batch_normalization_25/gamma/read:02<resnet_model/batch_normalization_25/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_25/beta:0/resnet_model/batch_normalization_25/beta/Assign/resnet_model/batch_normalization_25/beta/read:02<resnet_model/batch_normalization_25/beta/Initializer/zeros:08
�
resnet_model/conv2d_28/kernel:0$resnet_model/conv2d_28/kernel/Assign$resnet_model/conv2d_28/kernel/read:02<resnet_model/conv2d_28/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_26/gamma:00resnet_model/batch_normalization_26/gamma/Assign0resnet_model/batch_normalization_26/gamma/read:02<resnet_model/batch_normalization_26/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_26/beta:0/resnet_model/batch_normalization_26/beta/Assign/resnet_model/batch_normalization_26/beta/read:02<resnet_model/batch_normalization_26/beta/Initializer/zeros:08
�
resnet_model/conv2d_29/kernel:0$resnet_model/conv2d_29/kernel/Assign$resnet_model/conv2d_29/kernel/read:02<resnet_model/conv2d_29/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_27/gamma:00resnet_model/batch_normalization_27/gamma/Assign0resnet_model/batch_normalization_27/gamma/read:02<resnet_model/batch_normalization_27/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_27/beta:0/resnet_model/batch_normalization_27/beta/Assign/resnet_model/batch_normalization_27/beta/read:02<resnet_model/batch_normalization_27/beta/Initializer/zeros:08
�
resnet_model/conv2d_30/kernel:0$resnet_model/conv2d_30/kernel/Assign$resnet_model/conv2d_30/kernel/read:02<resnet_model/conv2d_30/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_28/gamma:00resnet_model/batch_normalization_28/gamma/Assign0resnet_model/batch_normalization_28/gamma/read:02<resnet_model/batch_normalization_28/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_28/beta:0/resnet_model/batch_normalization_28/beta/Assign/resnet_model/batch_normalization_28/beta/read:02<resnet_model/batch_normalization_28/beta/Initializer/zeros:08
�
resnet_model/conv2d_31/kernel:0$resnet_model/conv2d_31/kernel/Assign$resnet_model/conv2d_31/kernel/read:02<resnet_model/conv2d_31/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_29/gamma:00resnet_model/batch_normalization_29/gamma/Assign0resnet_model/batch_normalization_29/gamma/read:02<resnet_model/batch_normalization_29/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_29/beta:0/resnet_model/batch_normalization_29/beta/Assign/resnet_model/batch_normalization_29/beta/read:02<resnet_model/batch_normalization_29/beta/Initializer/zeros:08
�
resnet_model/conv2d_32/kernel:0$resnet_model/conv2d_32/kernel/Assign$resnet_model/conv2d_32/kernel/read:02<resnet_model/conv2d_32/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_30/gamma:00resnet_model/batch_normalization_30/gamma/Assign0resnet_model/batch_normalization_30/gamma/read:02<resnet_model/batch_normalization_30/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_30/beta:0/resnet_model/batch_normalization_30/beta/Assign/resnet_model/batch_normalization_30/beta/read:02<resnet_model/batch_normalization_30/beta/Initializer/zeros:08
�
resnet_model/conv2d_33/kernel:0$resnet_model/conv2d_33/kernel/Assign$resnet_model/conv2d_33/kernel/read:02<resnet_model/conv2d_33/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_31/gamma:00resnet_model/batch_normalization_31/gamma/Assign0resnet_model/batch_normalization_31/gamma/read:02<resnet_model/batch_normalization_31/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_31/beta:0/resnet_model/batch_normalization_31/beta/Assign/resnet_model/batch_normalization_31/beta/read:02<resnet_model/batch_normalization_31/beta/Initializer/zeros:08
�
resnet_model/conv2d_34/kernel:0$resnet_model/conv2d_34/kernel/Assign$resnet_model/conv2d_34/kernel/read:02<resnet_model/conv2d_34/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_32/gamma:00resnet_model/batch_normalization_32/gamma/Assign0resnet_model/batch_normalization_32/gamma/read:02<resnet_model/batch_normalization_32/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_32/beta:0/resnet_model/batch_normalization_32/beta/Assign/resnet_model/batch_normalization_32/beta/read:02<resnet_model/batch_normalization_32/beta/Initializer/zeros:08
�
resnet_model/conv2d_35/kernel:0$resnet_model/conv2d_35/kernel/Assign$resnet_model/conv2d_35/kernel/read:02<resnet_model/conv2d_35/kernel/Initializer/truncated_normal:08
�
resnet_model/conv2d_36/kernel:0$resnet_model/conv2d_36/kernel/Assign$resnet_model/conv2d_36/kernel/read:02<resnet_model/conv2d_36/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_33/gamma:00resnet_model/batch_normalization_33/gamma/Assign0resnet_model/batch_normalization_33/gamma/read:02<resnet_model/batch_normalization_33/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_33/beta:0/resnet_model/batch_normalization_33/beta/Assign/resnet_model/batch_normalization_33/beta/read:02<resnet_model/batch_normalization_33/beta/Initializer/zeros:08
�
resnet_model/conv2d_37/kernel:0$resnet_model/conv2d_37/kernel/Assign$resnet_model/conv2d_37/kernel/read:02<resnet_model/conv2d_37/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_34/gamma:00resnet_model/batch_normalization_34/gamma/Assign0resnet_model/batch_normalization_34/gamma/read:02<resnet_model/batch_normalization_34/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_34/beta:0/resnet_model/batch_normalization_34/beta/Assign/resnet_model/batch_normalization_34/beta/read:02<resnet_model/batch_normalization_34/beta/Initializer/zeros:08
�
resnet_model/conv2d_38/kernel:0$resnet_model/conv2d_38/kernel/Assign$resnet_model/conv2d_38/kernel/read:02<resnet_model/conv2d_38/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_35/gamma:00resnet_model/batch_normalization_35/gamma/Assign0resnet_model/batch_normalization_35/gamma/read:02<resnet_model/batch_normalization_35/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_35/beta:0/resnet_model/batch_normalization_35/beta/Assign/resnet_model/batch_normalization_35/beta/read:02<resnet_model/batch_normalization_35/beta/Initializer/zeros:08
�
resnet_model/conv2d_39/kernel:0$resnet_model/conv2d_39/kernel/Assign$resnet_model/conv2d_39/kernel/read:02<resnet_model/conv2d_39/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_36/gamma:00resnet_model/batch_normalization_36/gamma/Assign0resnet_model/batch_normalization_36/gamma/read:02<resnet_model/batch_normalization_36/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_36/beta:0/resnet_model/batch_normalization_36/beta/Assign/resnet_model/batch_normalization_36/beta/read:02<resnet_model/batch_normalization_36/beta/Initializer/zeros:08
�
resnet_model/conv2d_40/kernel:0$resnet_model/conv2d_40/kernel/Assign$resnet_model/conv2d_40/kernel/read:02<resnet_model/conv2d_40/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_37/gamma:00resnet_model/batch_normalization_37/gamma/Assign0resnet_model/batch_normalization_37/gamma/read:02<resnet_model/batch_normalization_37/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_37/beta:0/resnet_model/batch_normalization_37/beta/Assign/resnet_model/batch_normalization_37/beta/read:02<resnet_model/batch_normalization_37/beta/Initializer/zeros:08
�
resnet_model/conv2d_41/kernel:0$resnet_model/conv2d_41/kernel/Assign$resnet_model/conv2d_41/kernel/read:02<resnet_model/conv2d_41/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_38/gamma:00resnet_model/batch_normalization_38/gamma/Assign0resnet_model/batch_normalization_38/gamma/read:02<resnet_model/batch_normalization_38/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_38/beta:0/resnet_model/batch_normalization_38/beta/Assign/resnet_model/batch_normalization_38/beta/read:02<resnet_model/batch_normalization_38/beta/Initializer/zeros:08
�
resnet_model/conv2d_42/kernel:0$resnet_model/conv2d_42/kernel/Assign$resnet_model/conv2d_42/kernel/read:02<resnet_model/conv2d_42/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_39/gamma:00resnet_model/batch_normalization_39/gamma/Assign0resnet_model/batch_normalization_39/gamma/read:02<resnet_model/batch_normalization_39/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_39/beta:0/resnet_model/batch_normalization_39/beta/Assign/resnet_model/batch_normalization_39/beta/read:02<resnet_model/batch_normalization_39/beta/Initializer/zeros:08
�
resnet_model/conv2d_43/kernel:0$resnet_model/conv2d_43/kernel/Assign$resnet_model/conv2d_43/kernel/read:02<resnet_model/conv2d_43/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_40/gamma:00resnet_model/batch_normalization_40/gamma/Assign0resnet_model/batch_normalization_40/gamma/read:02<resnet_model/batch_normalization_40/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_40/beta:0/resnet_model/batch_normalization_40/beta/Assign/resnet_model/batch_normalization_40/beta/read:02<resnet_model/batch_normalization_40/beta/Initializer/zeros:08
�
resnet_model/conv2d_44/kernel:0$resnet_model/conv2d_44/kernel/Assign$resnet_model/conv2d_44/kernel/read:02<resnet_model/conv2d_44/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_41/gamma:00resnet_model/batch_normalization_41/gamma/Assign0resnet_model/batch_normalization_41/gamma/read:02<resnet_model/batch_normalization_41/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_41/beta:0/resnet_model/batch_normalization_41/beta/Assign/resnet_model/batch_normalization_41/beta/read:02<resnet_model/batch_normalization_41/beta/Initializer/zeros:08
�
resnet_model/conv2d_45/kernel:0$resnet_model/conv2d_45/kernel/Assign$resnet_model/conv2d_45/kernel/read:02<resnet_model/conv2d_45/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_42/gamma:00resnet_model/batch_normalization_42/gamma/Assign0resnet_model/batch_normalization_42/gamma/read:02<resnet_model/batch_normalization_42/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_42/beta:0/resnet_model/batch_normalization_42/beta/Assign/resnet_model/batch_normalization_42/beta/read:02<resnet_model/batch_normalization_42/beta/Initializer/zeros:08
�
resnet_model/conv2d_46/kernel:0$resnet_model/conv2d_46/kernel/Assign$resnet_model/conv2d_46/kernel/read:02<resnet_model/conv2d_46/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_43/gamma:00resnet_model/batch_normalization_43/gamma/Assign0resnet_model/batch_normalization_43/gamma/read:02<resnet_model/batch_normalization_43/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_43/beta:0/resnet_model/batch_normalization_43/beta/Assign/resnet_model/batch_normalization_43/beta/read:02<resnet_model/batch_normalization_43/beta/Initializer/zeros:08
�
resnet_model/conv2d_47/kernel:0$resnet_model/conv2d_47/kernel/Assign$resnet_model/conv2d_47/kernel/read:02<resnet_model/conv2d_47/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_44/gamma:00resnet_model/batch_normalization_44/gamma/Assign0resnet_model/batch_normalization_44/gamma/read:02<resnet_model/batch_normalization_44/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_44/beta:0/resnet_model/batch_normalization_44/beta/Assign/resnet_model/batch_normalization_44/beta/read:02<resnet_model/batch_normalization_44/beta/Initializer/zeros:08
�
resnet_model/conv2d_48/kernel:0$resnet_model/conv2d_48/kernel/Assign$resnet_model/conv2d_48/kernel/read:02<resnet_model/conv2d_48/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_45/gamma:00resnet_model/batch_normalization_45/gamma/Assign0resnet_model/batch_normalization_45/gamma/read:02<resnet_model/batch_normalization_45/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_45/beta:0/resnet_model/batch_normalization_45/beta/Assign/resnet_model/batch_normalization_45/beta/read:02<resnet_model/batch_normalization_45/beta/Initializer/zeros:08
�
resnet_model/conv2d_49/kernel:0$resnet_model/conv2d_49/kernel/Assign$resnet_model/conv2d_49/kernel/read:02<resnet_model/conv2d_49/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_46/gamma:00resnet_model/batch_normalization_46/gamma/Assign0resnet_model/batch_normalization_46/gamma/read:02<resnet_model/batch_normalization_46/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_46/beta:0/resnet_model/batch_normalization_46/beta/Assign/resnet_model/batch_normalization_46/beta/read:02<resnet_model/batch_normalization_46/beta/Initializer/zeros:08
�
resnet_model/conv2d_50/kernel:0$resnet_model/conv2d_50/kernel/Assign$resnet_model/conv2d_50/kernel/read:02<resnet_model/conv2d_50/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_47/gamma:00resnet_model/batch_normalization_47/gamma/Assign0resnet_model/batch_normalization_47/gamma/read:02<resnet_model/batch_normalization_47/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_47/beta:0/resnet_model/batch_normalization_47/beta/Assign/resnet_model/batch_normalization_47/beta/read:02<resnet_model/batch_normalization_47/beta/Initializer/zeros:08
�
resnet_model/conv2d_51/kernel:0$resnet_model/conv2d_51/kernel/Assign$resnet_model/conv2d_51/kernel/read:02<resnet_model/conv2d_51/kernel/Initializer/truncated_normal:08
�
+resnet_model/batch_normalization_48/gamma:00resnet_model/batch_normalization_48/gamma/Assign0resnet_model/batch_normalization_48/gamma/read:02<resnet_model/batch_normalization_48/gamma/Initializer/ones:08
�
*resnet_model/batch_normalization_48/beta:0/resnet_model/batch_normalization_48/beta/Assign/resnet_model/batch_normalization_48/beta/read:02<resnet_model/batch_normalization_48/beta/Initializer/zeros:08
�
resnet_model/dense/kernel:0 resnet_model/dense/kernel/Assign resnet_model/dense/kernel/read:026resnet_model/dense/kernel/Initializer/random_uniform:08
�
resnet_model/dense/bias:0resnet_model/dense/bias/Assignresnet_model/dense/bias/read:02+resnet_model/dense/bias/Initializer/zeros:08"
	summaries


images:0*�
predict�
.
input%
input_tensor:0�@@
classes
ArgMax:0	�0
probabilities
softmax_tensor:0	�tensorflow/serving/predict*�
serving_default�
.
input%
input_tensor:0�@@
classes
ArgMax:0	�0
probabilities
softmax_tensor:0	�tensorflow/serving/predict