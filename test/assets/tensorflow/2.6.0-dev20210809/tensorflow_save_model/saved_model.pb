Ž
ŰŽ
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12b'v1.13.0-rc2-5-g6612da8'Ë
J
inputPlaceholder*
shape:*
dtype0*
_output_shapes
:
P
PlaceholderPlaceholder*
dtype0*
_output_shapes
:*
shape:
Y
weight/initial_valueConst*
valueB
 *mRż*
dtype0*
_output_shapes
: 
j
weight
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 

weight/AssignAssignweightweight/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@weight
[
weight/readIdentityweight*
T0*
_class
loc:@weight*
_output_shapes
: 
W
bias/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *^{?
h
bias
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 

bias/AssignAssignbiasbias/initial_value*
use_locking(*
T0*
_class
	loc:@bias*
validate_shape(*
_output_shapes
: 
U
	bias/readIdentitybias*
T0*
_class
	loc:@bias*
_output_shapes
: 
A
MulMulinputweight/read*
_output_shapes
:*
T0
@
outputAddMul	bias/read*
_output_shapes
:*
T0
B
subSuboutputPlaceholder*
T0*
_output_shapes
:
J
Pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
9
PowPowsubPow/y*
T0*
_output_shapes
:
2
RankRankPow*
_output_shapes
: *
T0
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
T
SumSumPowrange*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
N
	truediv/yConst*
dtype0*
_output_shapes
: *
valueB
 *  B
C
truedivRealDivSum	truediv/y*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
_
gradients/truediv_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
a
gradients/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ŕ
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
e
gradients/truediv_grad/RealDivRealDivgradients/Fill	truediv/y*
T0*
_output_shapes
: 
­
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
G
gradients/truediv_grad/NegNegSum*
T0*
_output_shapes
: 
s
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Neg	truediv/y*
_output_shapes
: *
T0
y
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1	truediv/y*
T0*
_output_shapes
: 
t
gradients/truediv_grad/mulMulgradients/Fill gradients/truediv_grad/RealDiv_2*
T0*
_output_shapes
: 
­
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Ů
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
_output_shapes
: 
ß
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
_output_shapes
: *
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
d
gradients/Sum_grad/ShapeShapePow*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
out_type0

gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
_output_shapes
: *
T0*
out_type0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
Ž
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
T0*
out_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:

gradients/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/range/deltaConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ř
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/Fill/valueConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ç
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ú
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape
Ŕ
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
Š
gradients/Sum_grad/ReshapeReshape/gradients/truediv_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
_output_shapes
:*

Tmultiples0*
T0
d
gradients/Pow_grad/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/Pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
´
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
`
gradients/Pow_grad/mulMulgradients/Sum_grad/TilePow/y*
T0*
_output_shapes
:
]
gradients/Pow_grad/sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
_output_shapes
: *
T0
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0*
_output_shapes
:
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0*
_output_shapes
:
Ą
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
Tshape0*
_output_shapes
:
a
gradients/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0*
_output_shapes
:
n
"gradients/Pow_grad/ones_like/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
"gradients/Pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ą
gradients/Pow_grad/ones_likeFill"gradients/Pow_grad/ones_like/Shape"gradients/Pow_grad/ones_like/Const*
T0*

index_type0*
_output_shapes
:

gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatersubgradients/Pow_grad/ones_like*
T0*
_output_shapes
:
[
gradients/Pow_grad/LogLoggradients/Pow_grad/Select*
T0*
_output_shapes
:
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0*
_output_shapes
:

gradients/Pow_grad/Select_1Selectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0*
_output_shapes
:
`
gradients/Pow_grad/mul_2Mulgradients/Sum_grad/TilePow*
T0*
_output_shapes
:
y
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select_1*
T0*
_output_shapes
:
Ľ
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
Ë
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape*
_output_shapes
:
Ď
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
_output_shapes
: *
T0*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1
g
gradients/sub_grad/ShapeShapeoutput*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
gradients/sub_grad/Shape_1ShapePlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
out_type0
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
¸
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ë
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:
Ń
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:
g
gradients/output_grad/ShapeShapeMul*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
gradients/output_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
˝
+gradients/output_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/output_grad/Shapegradients/output_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ş
gradients/output_grad/SumSum+gradients/sub_grad/tuple/control_dependency+gradients/output_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/output_grad/ReshapeReshapegradients/output_grad/Sumgradients/output_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ž
gradients/output_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency-gradients/output_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/output_grad/Reshape_1Reshapegradients/output_grad/Sum_1gradients/output_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
p
&gradients/output_grad/tuple/group_depsNoOp^gradients/output_grad/Reshape ^gradients/output_grad/Reshape_1
×
.gradients/output_grad/tuple/control_dependencyIdentitygradients/output_grad/Reshape'^gradients/output_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/output_grad/Reshape*
_output_shapes
:
Ű
0gradients/output_grad/tuple/control_dependency_1Identitygradients/output_grad/Reshape_1'^gradients/output_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/output_grad/Reshape_1*
_output_shapes
: 
f
gradients/Mul_grad/ShapeShapeinput*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/Mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
´
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
}
gradients/Mul_grad/MulMul.gradients/output_grad/tuple/control_dependencyweight/read*
T0*
_output_shapes
:

gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0
y
gradients/Mul_grad/Mul_1Mulinput.gradients/output_grad/tuple/control_dependency*
T0*
_output_shapes
:
Ľ
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
Ë
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape*
_output_shapes
:
Ď
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
_output_shapes
: 
b
GradientDescent/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *
×#<
ď
2GradientDescent/update_weight/ApplyGradientDescentApplyGradientDescentweightGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight*
_output_shapes
: 
ě
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate0gradients/output_grad/tuple/control_dependency_1*
T0*
_class
	loc:@bias*
_output_shapes
: *
use_locking( 

GradientDescentNoOp1^GradientDescent/update_bias/ApplyGradientDescent3^GradientDescent/update_weight/ApplyGradientDescent
*
initNoOp^bias/Assign^weight/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_59dbd135f5ad44149d52e3d4e2c5ba81/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
|
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*!
valueBBbiasBweight
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbiasweight"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*!
valueBBbiasBweight
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
¤
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes

::

save/AssignAssignbiassave/RestoreV2*
use_locking(*
T0*
_class
	loc:@bias*
validate_shape(*
_output_shapes
: 

save/Assign_1Assignweightsave/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@weight
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

GradientDescent"
	variables
B
weight:0weight/Assignweight/read:02weight/initial_value:08
:
bias:0bias/Assignbias/read:02bias/initial_value:08"
trainable_variables
B
weight:0weight/Assignweight/read:02weight/initial_value:08
:
bias:0bias/Assignbias/read:02bias/initial_value:08*]
predictR

input
input:0
output
output:0tensorflow/serving/predict