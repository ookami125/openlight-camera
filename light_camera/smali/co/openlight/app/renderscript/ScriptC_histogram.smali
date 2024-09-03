.class public Lco/openlight/app/renderscript/ScriptC_histogram;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_histogram.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "histogram"

.field public static final const_BLUE_HISTOGRAM_START:S = 0x30s

.field public static final const_BRIGHTNESS_HISTOGRAM_START:S = 0x0s

.field public static final const_BRIGHTNESS_INDEX:S = 0x40s

.field public static final const_CLIP_HIGH:S = -0x5s

.field public static final const_CLIP_LOW:S = 0x4s

.field public static final const_GREEN_HISTOGRAM_START:S = 0x20s

.field public static final const_HALF_INTEGER_MAX:I = -0x80000000

.field public static final const_HEIGHT:I = 0x438

.field public static final const_HISTOGRAM_BITSHIFT:S = 0x4s

.field public static final const_HISTOGRAM_BUCKET_COUNT:S = 0x10s

.field public static final const_HISTOGRAM_BUFFER_SIZE:I = 0x100

.field public static final const_HISTOGRAM_FRAME_COUNT:S = 0x10s

.field public static final const_LOW_4_BITS:J = 0xfL

.field public static final const_MAX_GHOSTS:S = 0x10s

.field public static final const_RED_HISTOGRAM_START:S = 0x10s

.field public static final const_STRIPE_WIDTH:S = 0xas

.field public static final const_WIDTH:I = 0x780

.field private static final mExportForEachIdx_processFrame:I = 0x1

.field private static final mExportForEachIdx_subtractGhosts:I = 0x2

.field private static final mExportFuncIdx_update_statistics:I = 0x0

.field private static final mExportVarIdx_BLUE_HISTOGRAM_START:I = 0x10

.field private static final mExportVarIdx_BRIGHTNESS_HISTOGRAM_START:I = 0xd

.field private static final mExportVarIdx_BRIGHTNESS_INDEX:I = 0x11

.field private static final mExportVarIdx_CLIP_HIGH:I = 0x3

.field private static final mExportVarIdx_CLIP_LOW:I = 0x2

.field private static final mExportVarIdx_GREEN_HISTOGRAM_START:I = 0xf

.field private static final mExportVarIdx_HALF_INTEGER_MAX:I = 0x5

.field private static final mExportVarIdx_HEIGHT:I = 0x14

.field private static final mExportVarIdx_HISTOGRAM_BITSHIFT:I = 0x9

.field private static final mExportVarIdx_HISTOGRAM_BUCKET_COUNT:I = 0xa

.field private static final mExportVarIdx_HISTOGRAM_BUFFER_SIZE:I = 0xc

.field private static final mExportVarIdx_HISTOGRAM_FRAME_COUNT:I = 0xb

.field private static final mExportVarIdx_LOW_4_BITS:I = 0x12

.field private static final mExportVarIdx_MAX_GHOSTS:I = 0x15

.field private static final mExportVarIdx_PIXEL_BLACK:I = 0x6

.field private static final mExportVarIdx_PIXEL_WHITE:I = 0x7

.field private static final mExportVarIdx_RED_HISTOGRAM_START:I = 0xe

.field private static final mExportVarIdx_STRIPE_WIDTH:I = 0x4

.field private static final mExportVarIdx_WIDTH:I = 0x13

.field private static final mExportVarIdx_ghostIndex:I = 0x17

.field private static final mExportVarIdx_ghostsToSubtract:I = 0x19

.field private static final mExportVarIdx_hasGhosts:I = 0x16

.field private static final mExportVarIdx_inputFrame:I = 0x0

.field private static final mExportVarIdx_statistics:I = 0x1

.field private static final mExportVarIdx_subtractCurrentGhost:I = 0x18

.field private static final mExportVarIdx_zebraIsEnabled:I = 0x8


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __I8:Landroid/renderscript/Element;

.field private __U32:Landroid/renderscript/Element;

.field private __U8:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I8:Landroid/renderscript/FieldPacker;

.field private __rs_fp_U32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_U8:Landroid/renderscript/FieldPacker;

.field private __rs_fp_U8_4:Landroid/renderscript/FieldPacker;

.field private mExportVar_BLUE_HISTOGRAM_START:S

.field private mExportVar_BRIGHTNESS_HISTOGRAM_START:S

.field private mExportVar_BRIGHTNESS_INDEX:S

.field private mExportVar_CLIP_HIGH:S

.field private mExportVar_CLIP_LOW:S

.field private mExportVar_GREEN_HISTOGRAM_START:S

.field private mExportVar_HALF_INTEGER_MAX:I

.field private mExportVar_HEIGHT:I

.field private mExportVar_HISTOGRAM_BITSHIFT:S

.field private mExportVar_HISTOGRAM_BUCKET_COUNT:S

.field private mExportVar_HISTOGRAM_BUFFER_SIZE:I

.field private mExportVar_HISTOGRAM_FRAME_COUNT:S

.field private mExportVar_LOW_4_BITS:J

.field private mExportVar_MAX_GHOSTS:S

.field private mExportVar_PIXEL_BLACK:Landroid/renderscript/Short4;

.field private mExportVar_PIXEL_WHITE:Landroid/renderscript/Short4;

.field private mExportVar_RED_HISTOGRAM_START:S

.field private mExportVar_STRIPE_WIDTH:S

.field private mExportVar_WIDTH:I

.field private mExportVar_ghostIndex:S

.field private mExportVar_ghostsToSubtract:J

.field private mExportVar_hasGhosts:S

.field private mExportVar_inputFrame:Landroid/renderscript/Allocation;

.field private mExportVar_statistics:Landroid/renderscript/Allocation;

.field private mExportVar_subtractCurrentGhost:B

.field private mExportVar_zebraIsEnabled:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 7

    const-string v0, "histogram"

    .line 39
    invoke-static {}, Lco/openlight/app/renderscript/histogramBitCode;->getBitCode32()[B

    move-result-object v1

    .line 40
    invoke-static {}, Lco/openlight/app/renderscript/histogramBitCode;->getBitCode64()[B

    move-result-object v2

    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__ALLOCATION:Landroid/renderscript/Element;

    const/4 v0, 0x4

    .line 42
    iput-short v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_CLIP_LOW:S

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__U8:Landroid/renderscript/Element;

    const/4 v1, -0x5

    .line 44
    iput-short v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_CLIP_HIGH:S

    const/16 v1, 0xa

    .line 45
    iput-short v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_STRIPE_WIDTH:S

    const/high16 v1, -0x80000000

    .line 46
    iput v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HALF_INTEGER_MAX:I

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__I32:Landroid/renderscript/Element;

    .line 48
    new-instance v1, Landroid/renderscript/Short4;

    invoke-direct {v1}, Landroid/renderscript/Short4;-><init>()V

    iput-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_BLACK:Landroid/renderscript/Short4;

    .line 49
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_BLACK:Landroid/renderscript/Short4;

    const/4 v2, 0x0

    iput-short v2, v1, Landroid/renderscript/Short4;->x:S

    .line 50
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_BLACK:Landroid/renderscript/Short4;

    iput-short v2, v1, Landroid/renderscript/Short4;->y:S

    .line 51
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_BLACK:Landroid/renderscript/Short4;

    iput-short v2, v1, Landroid/renderscript/Short4;->z:S

    .line 52
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_BLACK:Landroid/renderscript/Short4;

    const/4 v3, -0x1

    iput-short v3, v1, Landroid/renderscript/Short4;->w:S

    .line 53
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__U8_4:Landroid/renderscript/Element;

    .line 54
    new-instance v1, Landroid/renderscript/Short4;

    invoke-direct {v1}, Landroid/renderscript/Short4;-><init>()V

    iput-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_WHITE:Landroid/renderscript/Short4;

    .line 55
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_WHITE:Landroid/renderscript/Short4;

    iput-short v3, v1, Landroid/renderscript/Short4;->x:S

    .line 56
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_WHITE:Landroid/renderscript/Short4;

    iput-short v3, v1, Landroid/renderscript/Short4;->y:S

    .line 57
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_WHITE:Landroid/renderscript/Short4;

    iput-short v3, v1, Landroid/renderscript/Short4;->z:S

    .line 58
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_WHITE:Landroid/renderscript/Short4;

    iput-short v3, v1, Landroid/renderscript/Short4;->w:S

    .line 59
    iput v2, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_zebraIsEnabled:I

    .line 60
    iput-short v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_BITSHIFT:S

    const/16 v0, 0x10

    .line 61
    iput-short v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_BUCKET_COUNT:S

    .line 62
    iput-short v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_FRAME_COUNT:S

    const/16 v1, 0x100

    .line 63
    iput v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_BUFFER_SIZE:I

    .line 64
    iput-short v2, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_BRIGHTNESS_HISTOGRAM_START:S

    .line 65
    iput-short v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_RED_HISTOGRAM_START:S

    const/16 v1, 0x20

    .line 66
    iput-short v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_GREEN_HISTOGRAM_START:S

    const/16 v1, 0x30

    .line 67
    iput-short v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_BLUE_HISTOGRAM_START:S

    const/16 v1, 0x40

    .line 68
    iput-short v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_BRIGHTNESS_INDEX:S

    const-wide/16 v3, 0xf

    .line 69
    iput-wide v3, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_LOW_4_BITS:J

    .line 70
    invoke-static {p1}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    iput-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__U32:Landroid/renderscript/Element;

    const/16 v1, 0x780

    .line 71
    iput v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_WIDTH:I

    const/16 v1, 0x438

    .line 72
    iput v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HEIGHT:I

    .line 73
    iput-short v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_MAX_GHOSTS:S

    .line 74
    iput-short v2, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_hasGhosts:S

    .line 75
    iput-short v2, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_ghostIndex:S

    const/4 v0, 0x1

    .line 76
    iput-byte v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_subtractCurrentGhost:B

    .line 77
    invoke-static {p1}, Landroid/renderscript/Element;->I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__I8:Landroid/renderscript/Element;

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_ghostsToSubtract:J

    return-void
.end method


# virtual methods
.method public forEach_processFrame(Landroid/renderscript/Allocation;)V
    .registers 3

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, p1, v0}, Lco/openlight/app/renderscript/ScriptC_histogram;->forEach_processFrame(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_processFrame(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 10

    .line 441
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 444
    move-object v3, v0

    check-cast v3, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lco/openlight/app/renderscript/ScriptC_histogram;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 442
    :cond_1d
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Type mismatch with U8_4!"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forEach_subtractGhosts(Landroid/renderscript/Allocation;)V
    .registers 3

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, v0}, Lco/openlight/app/renderscript/ScriptC_histogram;->forEach_subtractGhosts(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_subtractGhosts(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 10

    .line 458
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 461
    move-object v3, v0

    check-cast v3, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lco/openlight/app/renderscript/ScriptC_histogram;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 459
    :cond_1d
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Type mismatch with U8_4!"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFieldID_BLUE_HISTOGRAM_START()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_BRIGHTNESS_HISTOGRAM_START()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_BRIGHTNESS_INDEX()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_CLIP_HIGH()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_CLIP_LOW()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_GREEN_HISTOGRAM_START()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_HALF_INTEGER_MAX()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_HEIGHT()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_HISTOGRAM_BITSHIFT()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_HISTOGRAM_BUCKET_COUNT()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_HISTOGRAM_BUFFER_SIZE()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_HISTOGRAM_FRAME_COUNT()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_LOW_4_BITS()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x12

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_MAX_GHOSTS()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_PIXEL_BLACK()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_PIXEL_WHITE()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_RED_HISTOGRAM_START()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_STRIPE_WIDTH()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_WIDTH()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_ghostIndex()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_ghostsToSubtract()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_hasGhosts()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_inputFrame()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_statistics()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_subtractCurrentGhost()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getFieldID_zebraIsEnabled()Landroid/renderscript/Script$FieldID;
    .registers 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p0

    return-object p0
.end method

.method public getInvokeID_update_statistics()Landroid/renderscript/Script$InvokeID;
    .registers 2

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, v0}, Lco/openlight/app/renderscript/ScriptC_histogram;->createInvokeID(I)Landroid/renderscript/Script$InvokeID;

    move-result-object p0

    return-object p0
.end method

.method public getKernelID_processFrame()Landroid/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3a

    .line 432
    invoke-virtual {p0, v1, v2, v0, v0}, Lco/openlight/app/renderscript/ScriptC_histogram;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object p0

    return-object p0
.end method

.method public getKernelID_subtractGhosts()Landroid/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x3a

    .line 449
    invoke-virtual {p0, v1, v2, v0, v0}, Lco/openlight/app/renderscript/ScriptC_histogram;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object p0

    return-object p0
.end method

.method public get_BLUE_HISTOGRAM_START()S
    .registers 1

    .line 283
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_BLUE_HISTOGRAM_START:S

    return p0
.end method

.method public get_BRIGHTNESS_HISTOGRAM_START()S
    .registers 1

    .line 250
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_BRIGHTNESS_HISTOGRAM_START:S

    return p0
.end method

.method public get_BRIGHTNESS_INDEX()S
    .registers 1

    .line 294
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_BRIGHTNESS_INDEX:S

    return p0
.end method

.method public get_CLIP_HIGH()S
    .registers 1

    .line 138
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_CLIP_HIGH:S

    return p0
.end method

.method public get_CLIP_LOW()S
    .registers 1

    .line 127
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_CLIP_LOW:S

    return p0
.end method

.method public get_GREEN_HISTOGRAM_START()S
    .registers 1

    .line 272
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_GREEN_HISTOGRAM_START:S

    return p0
.end method

.method public get_HALF_INTEGER_MAX()I
    .registers 1

    .line 160
    iget p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HALF_INTEGER_MAX:I

    return p0
.end method

.method public get_HEIGHT()I
    .registers 1

    .line 327
    iget p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HEIGHT:I

    return p0
.end method

.method public get_HISTOGRAM_BITSHIFT()S
    .registers 1

    .line 206
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_BITSHIFT:S

    return p0
.end method

.method public get_HISTOGRAM_BUCKET_COUNT()S
    .registers 1

    .line 217
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_BUCKET_COUNT:S

    return p0
.end method

.method public get_HISTOGRAM_BUFFER_SIZE()I
    .registers 1

    .line 239
    iget p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_BUFFER_SIZE:I

    return p0
.end method

.method public get_HISTOGRAM_FRAME_COUNT()S
    .registers 1

    .line 228
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_HISTOGRAM_FRAME_COUNT:S

    return p0
.end method

.method public get_LOW_4_BITS()J
    .registers 3

    .line 305
    iget-wide v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_LOW_4_BITS:J

    return-wide v0
.end method

.method public get_MAX_GHOSTS()S
    .registers 1

    .line 338
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_MAX_GHOSTS:S

    return p0
.end method

.method public get_PIXEL_BLACK()Landroid/renderscript/Short4;
    .registers 1

    .line 170
    iget-object p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_BLACK:Landroid/renderscript/Short4;

    return-object p0
.end method

.method public get_PIXEL_WHITE()Landroid/renderscript/Short4;
    .registers 1

    .line 180
    iget-object p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_PIXEL_WHITE:Landroid/renderscript/Short4;

    return-object p0
.end method

.method public get_RED_HISTOGRAM_START()S
    .registers 1

    .line 261
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_RED_HISTOGRAM_START:S

    return p0
.end method

.method public get_STRIPE_WIDTH()S
    .registers 1

    .line 149
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_STRIPE_WIDTH:S

    return p0
.end method

.method public get_WIDTH()I
    .registers 1

    .line 316
    iget p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_WIDTH:I

    return p0
.end method

.method public get_ghostIndex()S
    .registers 1

    .line 380
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_ghostIndex:S

    return p0
.end method

.method public get_ghostsToSubtract()J
    .registers 3

    .line 422
    iget-wide v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_ghostsToSubtract:J

    return-wide v0
.end method

.method public get_hasGhosts()S
    .registers 1

    .line 359
    iget-short p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_hasGhosts:S

    return p0
.end method

.method public get_inputFrame()Landroid/renderscript/Allocation;
    .registers 1

    .line 101
    iget-object p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_inputFrame:Landroid/renderscript/Allocation;

    return-object p0
.end method

.method public get_statistics()Landroid/renderscript/Allocation;
    .registers 1

    .line 116
    iget-object p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_statistics:Landroid/renderscript/Allocation;

    return-object p0
.end method

.method public get_subtractCurrentGhost()B
    .registers 1

    .line 401
    iget-byte p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_subtractCurrentGhost:B

    return p0
.end method

.method public get_zebraIsEnabled()I
    .registers 1

    .line 195
    iget p0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_zebraIsEnabled:I

    return p0
.end method

.method public invoke_update_statistics()V
    .registers 2

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lco/openlight/app/renderscript/ScriptC_histogram;->invoke(I)V

    return-void
.end method

.method public declared-synchronized set_ghostIndex(S)V
    .registers 4

    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_b

    .line 370
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    goto :goto_13

    .line 372
    :cond_b
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    .line 374
    :goto_13
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    const/16 v0, 0x17

    .line 375
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 376
    iput-short p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_ghostIndex:S
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 377
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    .line 368
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_ghostsToSubtract(J)V
    .registers 5

    monitor-enter p0

    .line 411
    :try_start_1
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_b

    .line 412
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    goto :goto_13

    .line 414
    :cond_b
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    .line 416
    :goto_13
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    const/16 v0, 0x19

    .line 417
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 418
    iput-wide p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_ghostsToSubtract:J
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 419
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    .line 410
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_hasGhosts(S)V
    .registers 4

    monitor-enter p0

    .line 348
    :try_start_1
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_b

    .line 349
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    goto :goto_13

    .line 351
    :cond_b
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    .line 353
    :goto_13
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    const/16 v0, 0x16

    .line 354
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_U8:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 355
    iput-short p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_hasGhosts:S
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 356
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    .line 347
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_inputFrame(Landroid/renderscript/Allocation;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 96
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lco/openlight/app/renderscript/ScriptC_histogram;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 97
    iput-object p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_inputFrame:Landroid/renderscript/Allocation;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 98
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_statistics(Landroid/renderscript/Allocation;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 111
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lco/openlight/app/renderscript/ScriptC_histogram;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 112
    iput-object p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_statistics:Landroid/renderscript/Allocation;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 113
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_subtractCurrentGhost(B)V
    .registers 4

    monitor-enter p0

    .line 390
    :try_start_1
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_I8:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_b

    .line 391
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_I8:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    goto :goto_13

    .line 393
    :cond_b
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_I8:Landroid/renderscript/FieldPacker;

    .line 395
    :goto_13
    iget-object v0, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_I8:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    const/16 v0, 0x18

    .line 396
    iget-object v1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->__rs_fp_I8:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lco/openlight/app/renderscript/ScriptC_histogram;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 397
    iput-byte p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_subtractCurrentGhost:B
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 398
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    .line 389
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_zebraIsEnabled(I)V
    .registers 3

    monitor-enter p0

    const/16 v0, 0x8

    .line 190
    :try_start_3
    invoke-virtual {p0, v0, p1}, Lco/openlight/app/renderscript/ScriptC_histogram;->setVar(II)V

    .line 191
    iput p1, p0, Lco/openlight/app/renderscript/ScriptC_histogram;->mExportVar_zebraIsEnabled:I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 192
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1
.end method
