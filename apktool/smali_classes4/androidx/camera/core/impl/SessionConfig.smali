.class public final Landroidx/camera/core/impl/SessionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/SessionConfig$OutputConfig;,
        Landroidx/camera/core/impl/SessionConfig$ErrorListener;,
        Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;,
        Landroidx/camera/core/impl/SessionConfig$Builder;,
        Landroidx/camera/core/impl/SessionConfig$BaseBuilder;,
        Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;,
        Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;,
        Landroidx/camera/core/impl/SessionConfig$SessionError;
    }
.end annotation


# static fields
.field private static final SUPPORTED_TEMPLATE_PRIORITY:Ljava/util/List;


# instance fields
.field private final mDeviceStateCallbacks:Ljava/util/List;

.field private final mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

.field private mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

.field private final mOutputConfigs:Ljava/util/List;

.field private final mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

.field private final mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

.field private final mSessionStateCallbacks:Ljava/util/List;

.field private final mSessionType:I

.field private final mSingleCameraCaptureCallbacks:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    .line 65
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/SessionConfig;->SUPPORTED_TEMPLATE_PRIORITY:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/impl/CaptureConfig;Landroidx/camera/core/impl/SessionConfig$ErrorListener;Landroid/hardware/camera2/params/InputConfiguration;ILandroidx/camera/core/impl/SessionConfig$OutputConfig;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig;->mOutputConfigs:Ljava/util/List;

    .line 242
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig;->mDeviceStateCallbacks:Ljava/util/List;

    .line 243
    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig;->mSessionStateCallbacks:Ljava/util/List;

    .line 245
    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    .line 246
    iput-object p6, p0, Landroidx/camera/core/impl/SessionConfig;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 247
    iput-object p5, p0, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 248
    iput-object p7, p0, Landroidx/camera/core/impl/SessionConfig;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 249
    iput p8, p0, Landroidx/camera/core/impl/SessionConfig;->mSessionType:I

    .line 250
    iput-object p9, p0, Landroidx/camera/core/impl/SessionConfig;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    return-void
.end method

.method static synthetic access$000(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig$OutputConfig;
    .locals 0

    .line 56
    iget-object p0, p0, Landroidx/camera/core/impl/SessionConfig;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    return-object p0
.end method

.method public static defaultEmptySessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .locals 10

    .line 255
    new-instance v0, Landroidx/camera/core/impl/SessionConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 260
    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/impl/SessionConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/impl/CaptureConfig;Landroidx/camera/core/impl/SessionConfig$ErrorListener;Landroid/hardware/camera2/params/InputConfiguration;ILandroidx/camera/core/impl/SessionConfig$OutputConfig;)V

    return-object v0
.end method

.method public static getHigherPriorityTemplateType(II)I
    .locals 3

    .line 343
    sget-object v0, Landroidx/camera/core/impl/SessionConfig;->SUPPORTED_TEMPLATE_PRIORITY:Ljava/util/List;

    .line 342
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lt v1, v0, :cond_0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getDeviceStateCallbacks()Ljava/util/List;
    .locals 1

    .line 313
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mDeviceStateCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getErrorListener()Landroidx/camera/core/impl/SessionConfig$ErrorListener;
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    return-object v0
.end method

.method public getExpectedFrameRateRange()Landroid/util/Range;
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationOptions()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v0

    return-object v0
.end method

.method public getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    return-object v0
.end method

.method public getOutputConfigs()Ljava/util/List;
    .locals 1

    .line 288
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mOutputConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getPostviewOutputConfig()Landroidx/camera/core/impl/SessionConfig$OutputConfig;
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    return-object v0
.end method

.method public getRepeatingCameraCaptureCallbacks()Ljava/util/List;
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;
    .locals 1

    .line 337
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    return-object v0
.end method

.method public getSessionStateCallbacks()Ljava/util/List;
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mSessionStateCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    .line 304
    iget v0, p0, Landroidx/camera/core/impl/SessionConfig;->mSessionType:I

    return v0
.end method

.method public getSingleCameraCaptureCallbacks()Ljava/util/List;
    .locals 1

    .line 333
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getSurfaces()Ljava/util/List;
    .locals 4

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig;->mOutputConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 279
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSharedSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    .line 281
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v0

    return v0
.end method
