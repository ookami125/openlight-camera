.class public Lopenlight/co/camera/ScriptC_contrast;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_contrast.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "contrast"

.field private static final mExportForEachIdx_contrast:I = 0x1

.field private static final mExportFuncIdx_setContrast:I


# instance fields
.field private __U8_4:Landroid/renderscript/Element;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 5

    const-string v0, "contrast"

    .line 39
    invoke-static {}, Lopenlight/co/camera/contrastBitCode;->getBitCode32()[B

    move-result-object v1

    .line 40
    invoke-static {}, Lopenlight/co/camera/contrastBitCode;->getBitCode64()[B

    move-result-object v2

    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/ScriptC_contrast;->__U8_4:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_contrast(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, p2, v0}, Lopenlight/co/camera/ScriptC_contrast;->forEach_contrast(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_contrast(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 12

    .line 57
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/camera/ScriptC_contrast;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 61
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/camera/ScriptC_contrast;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 65
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 66
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_6e

    .line 68
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_6e

    .line 69
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_6e

    .line 70
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_6e

    .line 71
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_6e

    .line 72
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_6e

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 76
    invoke-virtual/range {v2 .. v7}, Lopenlight/co/camera/ScriptC_contrast;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void

    .line 73
    :cond_6e
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_76
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Type mismatch with U8_4!"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_7e
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Type mismatch with U8_4!"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInvokeID_setContrast()Landroid/renderscript/Script$InvokeID;
    .registers 2

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lopenlight/co/camera/ScriptC_contrast;->createInvokeID(I)Landroid/renderscript/Script$InvokeID;

    move-result-object p0

    return-object p0
.end method

.method public getKernelID_contrast()Landroid/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 48
    invoke-virtual {p0, v1, v2, v0, v0}, Lopenlight/co/camera/ScriptC_contrast;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object p0

    return-object p0
.end method

.method public invoke_setContrast(F)V
    .registers 4

    .line 85
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/ScriptC_contrast;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method
