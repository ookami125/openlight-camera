.class public Landroid/support/constraint/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x3c

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    .line 191
    new-array v1, v0, [I

    fill-array-data v1, :array_240

    sput-object v1, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 195
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 259
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 260
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 261
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 262
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 263
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 264
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 283
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 304
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_240
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .registers 22

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 873
    array-length v0, v7

    const/4 v1, 0x2

    if-lt v0, v1, :cond_79

    if-eqz v8, :cond_18

    .line 876
    array-length v0, v8

    array-length v1, v7

    if-ne v0, v1, :cond_10

    goto :goto_18

    .line 877
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    if-eqz v8, :cond_25

    .line 880
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 882
    :cond_25
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v2, p7

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 883
    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v9, 0x1

    move v10, v9

    .line 884
    :goto_3c
    array-length v0, v7

    if-ge v10, v0, :cond_6a

    .line 885
    aget v0, v7, v10

    .line 886
    aget v1, v7, v10

    add-int/lit8 v11, v10, -0x1

    aget v3, v7, v11

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 887
    aget v1, v7, v11

    aget v3, v7, v10

    move/from16 v2, p9

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz v8, :cond_67

    .line 889
    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    :cond_67
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    .line 893
    :cond_6a
    array-length v0, v7

    sub-int/2addr v0, v9

    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p9

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    return-void

    .line 874
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;
    .registers 5

    .line 1899
    new-instance v0, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    .line 1900
    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1901
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/ConstraintSet;->populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 1902
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private get(I)Landroid/support/constraint/ConstraintSet$Constraint;
    .registers 6

    .line 1822
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1823
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    :cond_1b
    iget-object p0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/ConstraintSet$Constraint;

    return-object p0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .registers 4

    .line 1891
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 1893
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_b
    return p2
.end method

.method private populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .registers 8

    .line 1907
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_281

    .line 1909
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1948
    sget-object v2, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_255

    packed-switch v2, :pswitch_data_282

    const-string v2, "ConstraintSet"

    .line 2115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2115
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27d

    .line 2090
    :pswitch_42
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    goto/16 :goto_27d

    .line 2087
    :pswitch_4c
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    goto/16 :goto_27d

    .line 2084
    :pswitch_56
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    goto/16 :goto_27d

    .line 2081
    :pswitch_60
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    goto/16 :goto_27d

    .line 2078
    :pswitch_6a
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    goto/16 :goto_27d

    .line 2075
    :pswitch_74
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    goto/16 :goto_27d

    .line 2072
    :pswitch_7e
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    goto/16 :goto_27d

    .line 2069
    :pswitch_88
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    goto/16 :goto_27d

    .line 2066
    :pswitch_92
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    goto/16 :goto_27d

    :pswitch_9c
    const/4 v2, 0x1

    .line 2062
    iput-boolean v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 2063
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    goto/16 :goto_27d

    .line 2059
    :pswitch_a9
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    goto/16 :goto_27d

    .line 2099
    :pswitch_b3
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    goto/16 :goto_27d

    .line 2102
    :pswitch_bd
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    goto/16 :goto_27d

    .line 2093
    :pswitch_c7
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    goto/16 :goto_27d

    .line 2096
    :pswitch_d1
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    goto/16 :goto_27d

    .line 2105
    :pswitch_db
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    goto/16 :goto_27d

    .line 2028
    :pswitch_e5
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    goto/16 :goto_27d

    .line 1962
    :pswitch_ef
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    goto/16 :goto_27d

    .line 1965
    :pswitch_f9
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_27d

    .line 2043
    :pswitch_103
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto/16 :goto_27d

    .line 1998
    :pswitch_10d
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_27d

    .line 1995
    :pswitch_117
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_27d

    .line 2037
    :pswitch_121
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto/16 :goto_27d

    .line 1959
    :pswitch_12b
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto/16 :goto_27d

    .line 1956
    :pswitch_135
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto/16 :goto_27d

    .line 2034
    :pswitch_13f
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto/16 :goto_27d

    .line 1992
    :pswitch_149
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    goto/16 :goto_27d

    .line 1953
    :pswitch_153
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto/16 :goto_27d

    .line 1950
    :pswitch_15d
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    goto/16 :goto_27d

    .line 2031
    :pswitch_167
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    goto/16 :goto_27d

    .line 2049
    :pswitch_171
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    goto/16 :goto_27d

    .line 2055
    :pswitch_17b
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2056
    sget-object v1, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    aget v1, v1, v2

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    goto/16 :goto_27d

    .line 2052
    :pswitch_18d
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    goto/16 :goto_27d

    .line 2025
    :pswitch_197
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    goto/16 :goto_27d

    .line 1989
    :pswitch_1a1
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    goto/16 :goto_27d

    .line 1986
    :pswitch_1ab
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    goto/16 :goto_27d

    .line 1983
    :pswitch_1b5
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    goto/16 :goto_27d

    .line 2010
    :pswitch_1bf
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    goto/16 :goto_27d

    .line 2019
    :pswitch_1c9
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    goto/16 :goto_27d

    .line 2013
    :pswitch_1d3
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    goto/16 :goto_27d

    .line 2007
    :pswitch_1dd
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    goto/16 :goto_27d

    .line 2022
    :pswitch_1e7
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    goto/16 :goto_27d

    .line 2016
    :pswitch_1f1
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    goto/16 :goto_27d

    .line 2001
    :pswitch_1fb
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_27d

    .line 2004
    :pswitch_205
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    goto/16 :goto_27d

    .line 2040
    :pswitch_20f
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto :goto_27d

    .line 1980
    :pswitch_218
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    goto :goto_27d

    .line 1977
    :pswitch_221
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    goto :goto_27d

    .line 2108
    :pswitch_22a
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    goto :goto_27d

    .line 1968
    :pswitch_231
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    goto :goto_27d

    .line 1971
    :pswitch_23a
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    goto :goto_27d

    .line 2046
    :pswitch_243
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto :goto_27d

    .line 1974
    :pswitch_24c
    iget v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-static {p2, v1, v2}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_27d

    :cond_255
    const-string v2, "ConstraintSet"

    .line 2111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_281
    return-void

    :pswitch_data_282
    .packed-switch 0x1
        :pswitch_24c
        :pswitch_243
        :pswitch_23a
        :pswitch_231
        :pswitch_22a
        :pswitch_221
        :pswitch_218
        :pswitch_20f
        :pswitch_205
        :pswitch_1fb
        :pswitch_1f1
        :pswitch_1e7
        :pswitch_1dd
        :pswitch_1d3
        :pswitch_1c9
        :pswitch_1bf
        :pswitch_1b5
        :pswitch_1ab
        :pswitch_1a1
        :pswitch_197
        :pswitch_18d
        :pswitch_17b
        :pswitch_171
        :pswitch_167
        :pswitch_15d
        :pswitch_153
        :pswitch_149
        :pswitch_13f
        :pswitch_135
        :pswitch_12b
        :pswitch_121
        :pswitch_117
        :pswitch_10d
        :pswitch_103
        :pswitch_f9
        :pswitch_ef
        :pswitch_e5
        :pswitch_db
        :pswitch_d1
        :pswitch_c7
        :pswitch_bd
        :pswitch_b3
        :pswitch_a9
        :pswitch_9c
        :pswitch_92
        :pswitch_88
        :pswitch_7e
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
        :pswitch_4c
        :pswitch_42
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1c

    const-string p0, "undefined"

    return-object p0

    :pswitch_6
    const-string p0, "end"

    return-object p0

    :pswitch_9
    const-string p0, "start"

    return-object p0

    :pswitch_c
    const-string p0, "baseline"

    return-object p0

    :pswitch_f
    const-string p0, "bottom"

    return-object p0

    :pswitch_12
    const-string p0, "top"

    return-object p0

    :pswitch_15
    const-string p0, "right"

    return-object p0

    :pswitch_18
    const-string p0, "left"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(III)V
    .registers 12

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p2, :cond_6

    move v4, v7

    goto :goto_7

    :cond_6
    move v4, v6

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 1641
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x2

    if-nez p3, :cond_14

    move v4, v6

    goto :goto_15

    :cond_14
    move v4, v7

    :goto_15
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    .line 1642
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz p2, :cond_27

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    .line 1644
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_27
    if-eqz p3, :cond_32

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    .line 1647
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_32
    return-void
.end method

.method public addToHorizontalChainRTL(III)V
    .registers 12

    const/4 v6, 0x7

    const/4 v7, 0x6

    if-nez p2, :cond_6

    move v4, v7

    goto :goto_7

    :cond_6
    move v4, v6

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 1659
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x7

    if-nez p3, :cond_14

    move v4, v6

    goto :goto_15

    :cond_14
    move v4, v7

    :goto_15
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    .line 1660
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz p2, :cond_27

    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    .line 1662
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_27
    if-eqz p3, :cond_32

    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    .line 1665
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_32
    return-void
.end method

.method public addToVerticalChain(III)V
    .registers 18

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-nez p2, :cond_6

    move v4, v7

    goto :goto_7

    :cond_6
    move v4, v6

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move/from16 v3, p2

    .line 1677
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v10, 0x4

    if-nez p3, :cond_15

    move v12, v6

    goto :goto_16

    :cond_15
    move v12, v7

    :goto_16
    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v11, p3

    .line 1678
    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz p2, :cond_2a

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move v3, p1

    .line 1680
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_2a
    if-eqz p2, :cond_36

    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p3

    move v3, p1

    .line 1683
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_36
    return-void
.end method

.method public applyTo(Landroid/support/constraint/ConstraintLayout;)V
    .registers 2

    .line 640
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    const/4 p0, 0x0

    .line 641
    invoke-virtual {p1, p0}, Landroid/support/constraint/ConstraintLayout;->setConstraintSet(Landroid/support/constraint/ConstraintSet;)V

    return-void
.end method

.method applyToInternal(Landroid/support/constraint/ConstraintLayout;)V
    .registers 9

    .line 648
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 649
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_95

    .line 652
    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 653
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    .line 654
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 655
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 656
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 658
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 659
    invoke-virtual {v4, v5}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 660
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 662
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_91

    .line 663
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 664
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setRotationX(F)V

    .line 665
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setRotationY(F)V

    .line 666
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 667
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    .line 668
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 669
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 670
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 671
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 672
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_91

    .line 673
    iget v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 674
    iget-boolean v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v5, :cond_91

    .line 675
    iget v4, v4, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setElevation(F)V

    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 681
    :cond_95
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_99
    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 682
    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 683
    iget-boolean v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v3, :cond_99

    .line 684
    new-instance v3, Landroid/support/constraint/Guideline;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/constraint/Guideline;-><init>(Landroid/content/Context;)V

    .line 685
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/support/constraint/Guideline;->setId(I)V

    .line 686
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 687
    invoke-virtual {v2, v1}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 688
    invoke-virtual {p1, v3, v1}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_99

    :cond_cc
    return-void
.end method

.method public center(IIIIIIIF)V
    .registers 17

    move-object v6, p0

    move v4, p3

    move/from16 v7, p8

    if-ltz p4, :cond_8e

    if-ltz p7, :cond_86

    const/4 v0, 0x0

    cmpg-float v0, v7, v0

    if-lez v0, :cond_7e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v7, v0

    if-gtz v0, :cond_7e

    const/4 v0, 0x1

    if-eq v4, v0, :cond_5f

    const/4 v0, 0x2

    if-ne v4, v0, :cond_1a

    goto :goto_5f

    :cond_1a
    const/4 v0, 0x6

    if-eq v4, v0, :cond_40

    const/4 v0, 0x7

    if-ne v4, v0, :cond_21

    goto :goto_40

    :cond_21
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 732
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 733
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 734
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 735
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    goto :goto_7d

    :cond_40
    :goto_40
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 727
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x7

    move v3, p5

    move v4, p6

    move v5, p7

    .line 728
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 729
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 730
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    goto :goto_7d

    :cond_5f
    :goto_5f
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 722
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x2

    move v3, p5

    move v4, p6

    move v5, p7

    .line 723
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 724
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 725
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    :goto_7d
    return-void

    .line 718
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public centerHorizontally(II)V
    .registers 12

    if-nez p2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    .line 1122
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_1d

    :cond_10
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    .line 1124
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    :goto_1d
    return-void
.end method

.method public centerHorizontally(IIIIIIIF)V
    .registers 18

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 753
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x2

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 754
    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 755
    iget-object v0, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    move/from16 v1, p8

    .line 756
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .registers 12

    if-nez p2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    .line 1136
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_1d

    :cond_10
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    .line 1138
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    :goto_1d
    return-void
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .registers 18

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 773
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x7

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 774
    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 775
    iget-object v0, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    move/from16 v1, p8

    .line 776
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    return-void
.end method

.method public centerVertically(II)V
    .registers 12

    if-nez p2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    .line 1151
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_1d

    :cond_10
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    .line 1153
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    :goto_1d
    return-void
.end method

.method public centerVertically(IIIIIIIF)V
    .registers 18

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 793
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x4

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 794
    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 795
    iget-object v0, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    move/from16 v1, p8

    .line 796
    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    return-void
.end method

.method public clear(I)V
    .registers 2

    .line 1163
    iget-object p0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(II)V
    .registers 5

    .line 1173
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1174
    iget-object p0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 p1, -0x1

    packed-switch p2, :pswitch_data_5e

    .line 1217
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1211
    :pswitch_24
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1212
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1213
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1214
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    goto :goto_5c

    .line 1205
    :pswitch_2d
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1206
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1207
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1208
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    goto :goto_5c

    .line 1202
    :pswitch_36
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_5c

    .line 1195
    :pswitch_39
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1196
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1197
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1198
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    goto :goto_5c

    .line 1189
    :pswitch_42
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1190
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1191
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1192
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    goto :goto_5c

    .line 1183
    :pswitch_4b
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1184
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1185
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1186
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    goto :goto_5c

    .line 1177
    :pswitch_54
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1178
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1179
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1180
    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    :cond_5c
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_36
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .registers 4

    .line 580
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintLayout;)V
    .registers 11

    .line 601
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 602
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_a0

    .line 604
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 605
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 607
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 608
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 609
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_35
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 612
    # invokes: Landroid/support/constraint/ConstraintSet$Constraint;->fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$100(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 613
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 614
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_9c

    .line 615
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 616
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 617
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 618
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 619
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 620
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 621
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 622
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 623
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 624
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_9c

    .line 625
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 626
    iget-boolean v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v3, :cond_9c

    .line 627
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    iput v2, v5, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_a0
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintSet;)V
    .registers 6

    .line 589
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 590
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 591
    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintSet$Constraint;

    invoke-virtual {v3}, Landroid/support/constraint/ConstraintSet$Constraint;->clone()Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2d
    return-void
.end method

.method public connect(IIII)V
    .registers 12

    .line 1021
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1022
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, -0x1

    packed-switch p2, :pswitch_data_1aa

    .line 1109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " unknown"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_58
    if-ne p4, v1, :cond_60

    .line 1099
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1100
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_188

    :cond_60
    if-ne p4, v2, :cond_68

    .line 1102
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1103
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_188

    .line 1105
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_88
    if-ne p4, v2, :cond_90

    .line 1088
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1089
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_188

    :cond_90
    if-ne p4, v1, :cond_98

    .line 1091
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1092
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_188

    .line 1094
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b8
    const/4 p2, 0x5

    if-ne p4, p2, :cond_c7

    .line 1077
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1078
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1079
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1080
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1081
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_188

    .line 1083
    :cond_c7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e7
    if-ne p4, v3, :cond_f1

    .line 1064
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1065
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1066
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_188

    :cond_f1
    if-ne p4, v4, :cond_fb

    .line 1068
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1069
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1070
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_188

    .line 1072
    :cond_fb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11b
    if-ne p4, v4, :cond_124

    .line 1051
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1052
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1053
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_188

    :cond_124
    if-ne p4, v3, :cond_12d

    .line 1055
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1056
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1057
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_188

    .line 1059
    :cond_12d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14d
    if-ne p4, v5, :cond_154

    .line 1039
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1040
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_188

    :cond_154
    if-ne p4, v0, :cond_15b

    .line 1043
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1044
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_188

    .line 1046
    :cond_15b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_17b
    if-ne p4, v5, :cond_182

    .line 1028
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1029
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_188

    :cond_182
    if-ne p4, v0, :cond_189

    .line 1031
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1032
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    :goto_188
    return-void

    .line 1034
    :cond_189
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_14d
        :pswitch_11b
        :pswitch_e7
        :pswitch_b8
        :pswitch_88
        :pswitch_58
    .end packed-switch
.end method

.method public connect(IIIII)V
    .registers 13

    .line 908
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 909
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, -0x1

    packed-switch p2, :pswitch_data_1b2

    .line 1007
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " unknown"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_58
    if-ne p4, v1, :cond_5f

    .line 996
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 997
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto :goto_65

    :cond_5f
    if-ne p4, v2, :cond_69

    .line 999
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1000
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1004
    :goto_65
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto/16 :goto_191

    .line 1002
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_89
    if-ne p4, v2, :cond_90

    .line 984
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 985
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto :goto_96

    :cond_90
    if-ne p4, v1, :cond_9a

    .line 987
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 988
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 992
    :goto_96
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto/16 :goto_191

    .line 990
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_ba
    const/4 p2, 0x5

    if-ne p4, p2, :cond_c9

    .line 973
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 974
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 975
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 976
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 977
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_191

    .line 979
    :cond_c9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e9
    if-ne p4, v3, :cond_f2

    .line 957
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 958
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 959
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_fa

    :cond_f2
    if-ne p4, v4, :cond_fe

    .line 962
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 963
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 964
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 969
    :goto_fa
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto/16 :goto_191

    .line 967
    :cond_fe
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11e
    if-ne p4, v4, :cond_127

    .line 942
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 943
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 944
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_12f

    :cond_127
    if-ne p4, v3, :cond_132

    .line 946
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 947
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 948
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 953
    :goto_12f
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto :goto_191

    .line 951
    :cond_132
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_152
    if-ne p4, v5, :cond_159

    .line 928
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 929
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_15f

    :cond_159
    if-ne p4, v0, :cond_162

    .line 932
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 933
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 938
    :goto_15f
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto :goto_191

    .line 936
    :cond_162
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_182
    if-ne p4, v5, :cond_189

    .line 915
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 916
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_18f

    :cond_189
    if-ne p4, v0, :cond_192

    .line 918
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 919
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 924
    :goto_18f
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    :goto_191
    return-void

    .line 922
    :cond_192
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " undefined"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_182
        :pswitch_152
        :pswitch_11e
        :pswitch_e9
        :pswitch_ba
        :pswitch_89
        :pswitch_58
    .end packed-switch
.end method

.method public constrainDefaultHeight(II)V
    .registers 3

    .line 1565
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    return-void
.end method

.method public constrainDefaultWidth(II)V
    .registers 3

    .line 1576
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    return-void
.end method

.method public constrainHeight(II)V
    .registers 3

    .line 1498
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    return-void
.end method

.method public constrainMaxHeight(II)V
    .registers 3

    .line 1520
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    return-void
.end method

.method public constrainMaxWidth(II)V
    .registers 3

    .line 1531
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    return-void
.end method

.method public constrainMinHeight(II)V
    .registers 3

    .line 1542
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    return-void
.end method

.method public constrainMinWidth(II)V
    .registers 3

    .line 1553
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    return-void
.end method

.method public constrainWidth(II)V
    .registers 3

    .line 1509
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    return-void
.end method

.method public create(II)V
    .registers 3

    .line 1779
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    const/4 p1, 0x1

    .line 1780
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 1781
    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .registers 18

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 850
    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .registers 18

    const/4 v8, 0x6

    const/4 v9, 0x7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 867
    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .registers 20

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 813
    array-length v0, v7

    const/4 v1, 0x2

    if-lt v0, v1, :cond_73

    if-eqz v8, :cond_18

    .line 816
    array-length v0, v8

    array-length v1, v7

    if-ne v0, v1, :cond_10

    goto :goto_18

    .line 817
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    if-eqz v8, :cond_25

    .line 820
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 822
    :cond_25
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v2, p7

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 824
    aget v1, v7, v0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v9, 0x1

    move v10, v9

    .line 825
    :goto_3b
    array-length v0, v7

    if-ge v10, v0, :cond_65

    .line 826
    aget v0, v7, v10

    .line 827
    aget v1, v7, v10

    const/4 v2, 0x3

    add-int/lit8 v11, v10, -0x1

    aget v3, v7, v11

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 828
    aget v1, v7, v11

    const/4 v2, 0x4

    aget v3, v7, v10

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    if-eqz v8, :cond_62

    .line 830
    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    :cond_62
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 833
    :cond_65
    array-length v0, v7

    sub-int/2addr v0, v9

    aget v1, v7, v0

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    return-void

    .line 814
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplyElevation(I)Z
    .registers 2

    .line 1349
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iget-boolean p0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return p0
.end method

.method public load(Landroid/content/Context;I)V
    .registers 7

    .line 1855
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1856
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 1861
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_c
    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    if-eqz v0, :cond_37

    packed-switch v0, :pswitch_data_4a

    goto :goto_3a

    .line 1869
    :pswitch_15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1870
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/support/constraint/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v2

    const-string v3, "Guideline"

    .line 1871
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1872
    iput-boolean v1, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 1874
    :cond_2b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v1, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 1866
    :cond_37
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1863
    :goto_3a
    :pswitch_3a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_3e} :catch_44
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3e} :catch_3f

    goto :goto_c

    :catch_3f
    move-exception p0

    .line 1886
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    :catch_44
    move-exception p0

    .line 1884
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_48
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_15
        :pswitch_3a
    .end packed-switch
.end method

.method public removeFromHorizontalChain(I)V
    .registers 10

    .line 1727
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1728
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1729
    iget v6, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1730
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    const/4 v1, -0x1

    if-ne v6, v1, :cond_6a

    if-eq v7, v1, :cond_22

    goto :goto_6a

    .line 1749
    :cond_22
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1750
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    if-ne v2, v1, :cond_2a

    if-eq v7, v1, :cond_61

    :cond_2a
    if-eq v2, v1, :cond_40

    if-eq v7, v1, :cond_40

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v7

    .line 1754
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x6

    const/4 v4, 0x7

    move v1, v7

    move v3, v6

    .line 1755
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_61

    :cond_40
    if-ne v6, v1, :cond_44

    if-eq v7, v1, :cond_61

    .line 1757
    :cond_44
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v2, v1, :cond_53

    const/4 v2, 0x7

    .line 1759
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_61

    .line 1760
    :cond_53
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v2, v1, :cond_61

    const/4 v2, 0x6

    .line 1762
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_61
    :goto_61
    const/4 v0, 0x6

    .line 1766
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    const/4 v0, 0x7

    .line 1767
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    goto :goto_a8

    :cond_6a
    :goto_6a
    if-eq v6, v1, :cond_7f

    if-eq v7, v1, :cond_7f

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    move v3, v7

    .line 1734
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    move v1, v7

    move v3, v6

    .line 1735
    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_a0

    :cond_7f
    if-ne v6, v1, :cond_83

    if-eq v7, v1, :cond_a0

    .line 1737
    :cond_83
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v2, v1, :cond_92

    const/4 v2, 0x2

    .line 1739
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_a0

    .line 1740
    :cond_92
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v2, v1, :cond_a0

    const/4 v2, 0x1

    .line 1742
    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_a0
    :goto_a0
    const/4 v0, 0x1

    .line 1745
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    const/4 v0, 0x2

    .line 1746
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public removeFromVerticalChain(I)V
    .registers 11

    .line 1695
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1696
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1697
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1698
    iget v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    const/4 v1, -0x1

    if-ne v7, v1, :cond_21

    if-eq v8, v1, :cond_57

    :cond_21
    if-eq v7, v1, :cond_36

    if-eq v8, v1, :cond_36

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move v4, v8

    .line 1702
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x3

    const/4 v5, 0x4

    move v2, v8

    move v4, v7

    .line 1703
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_57

    :cond_36
    if-ne v7, v1, :cond_3a

    if-eq v8, v1, :cond_57

    .line 1705
    :cond_3a
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    if-eq v2, v1, :cond_49

    const/4 v3, 0x4

    .line 1707
    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_57

    .line 1708
    :cond_49
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    if-eq v2, v1, :cond_57

    const/4 v3, 0x3

    .line 1710
    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    :cond_57
    :goto_57
    const/4 v0, 0x3

    .line 1715
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    const/4 v0, 0x4

    .line 1716
    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    return-void
.end method

.method public setAlpha(IF)V
    .registers 3

    .line 1340
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    return-void
.end method

.method public setApplyElevation(IZ)V
    .registers 3

    .line 1360
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput-boolean p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .registers 3

    .line 1320
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput-object p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    return-void
.end method

.method public setElevation(IF)V
    .registers 4

    .line 1370
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 1371
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return-void
.end method

.method public setGoneMargin(III)V
    .registers 4

    .line 1265
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    packed-switch p2, :pswitch_data_2a

    .line 1288
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1285
    :pswitch_f
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    goto :goto_28

    .line 1282
    :pswitch_12
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    goto :goto_28

    .line 1280
    :pswitch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseline does not support margins"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1277
    :pswitch_1d
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    goto :goto_28

    .line 1274
    :pswitch_20
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    goto :goto_28

    .line 1271
    :pswitch_23
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    goto :goto_28

    .line 1268
    :pswitch_26
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .registers 4

    .line 1791
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1792
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1793
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    return-void
.end method

.method public setGuidelineEnd(II)V
    .registers 4

    .line 1804
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1805
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1806
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    return-void
.end method

.method public setGuidelinePercent(IF)V
    .registers 4

    .line 1816
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1817
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1818
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    return-void
.end method

.method public setHorizontalBias(IF)V
    .registers 3

    .line 1299
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .registers 3

    .line 1614
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    return-void
.end method

.method public setHorizontalWeight(IF)V
    .registers 3

    .line 1588
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    return-void
.end method

.method public setMargin(III)V
    .registers 4

    .line 1230
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    packed-switch p2, :pswitch_data_2a

    .line 1253
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1250
    :pswitch_f
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto :goto_28

    .line 1247
    :pswitch_12
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto :goto_28

    .line 1245
    :pswitch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseline does not support margins"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1242
    :pswitch_1d
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto :goto_28

    .line 1239
    :pswitch_20
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto :goto_28

    .line 1236
    :pswitch_23
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto :goto_28

    .line 1233
    :pswitch_26
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public setRotationX(IF)V
    .registers 3

    .line 1381
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    return-void
.end method

.method public setRotationY(IF)V
    .registers 3

    .line 1391
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    return-void
.end method

.method public setScaleX(IF)V
    .registers 3

    .line 1401
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    return-void
.end method

.method public setScaleY(IF)V
    .registers 3

    .line 1411
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    return-void
.end method

.method public setTransformPivot(IFF)V
    .registers 4

    .line 1442
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    .line 1443
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1444
    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    return-void
.end method

.method public setTransformPivotX(IF)V
    .registers 3

    .line 1421
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    return-void
.end method

.method public setTransformPivotY(IF)V
    .registers 3

    .line 1431
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    return-void
.end method

.method public setTranslation(IFF)V
    .registers 4

    .line 1475
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    .line 1476
    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1477
    iput p3, p0, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    return-void
.end method

.method public setTranslationX(IF)V
    .registers 3

    .line 1454
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    return-void
.end method

.method public setTranslationY(IF)V
    .registers 3

    .line 1464
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    return-void
.end method

.method public setTranslationZ(IF)V
    .registers 3

    .line 1487
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    return-void
.end method

.method public setVerticalBias(IF)V
    .registers 3

    .line 1309
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    return-void
.end method

.method public setVerticalChainStyle(II)V
    .registers 3

    .line 1630
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    return-void
.end method

.method public setVerticalWeight(IF)V
    .registers 3

    .line 1599
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    return-void
.end method

.method public setVisibility(II)V
    .registers 3

    .line 1330
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p0

    iput p2, p0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    return-void
.end method
