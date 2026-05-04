.class public final Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/CapturePipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

.field private static final isEnabled:Z


# instance fields
.field private final capturePipelineImpl$delegate:Lkotlin/Lazy;

.field private final capturePipelineImplProvider:Ljavax/inject/Provider;

.field private final isLegacyDevice$delegate:Lkotlin/Lazy;

.field private template:I

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;


# direct methods
.method public static synthetic $r8$lambda$3Ap0d8vE-z_oSobKLaOR3wveA1s(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImpl_delegate$lambda$0(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$irDySwcMGzQfb0BZOlN7Zg_pOLE(Landroidx/camera/camera2/impl/CameraProperties;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice_delegate$lambda$0(Landroidx/camera/camera2/impl/CameraProperties;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->Companion:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

    .line 128
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capturePipelineImplProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "torchControl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImplProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 58
    iput-object p4, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    .line 60
    new-instance p2, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/CameraProperties;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImpl$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 104
    iput p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->template:I

    return-void
.end method

.method public static final synthetic access$getTorchControl$p(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/TorchControl;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    return-object p0
.end method

.method public static final synthetic access$isEnabled$cp()Z
    .locals 1

    .line 51
    sget-boolean v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isEnabled:Z

    return v0
.end method

.method private static final capturePipelineImpl_delegate$lambda$0(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImplProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    return-object p0
.end method

.method private final getCapturePipelineImpl()Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImpl$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    return-object v0
.end method

.method private final isCorrectionRequired-0UCm73U(Ljava/util/List;I)Z
    .locals 3

    .line 118
    check-cast p1, Ljava/lang/Iterable;

    .line 1761
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CaptureConfig;

    .line 119
    sget-object v1, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice()Z

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;->getStillCaptureTemplate-CMLptTo$camera_camera2(Landroidx/camera/core/impl/CaptureConfig;IZ)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 121
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isTorchOn()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isLegacyDevice()Z
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final isLegacyDevice_delegate$lambda$0(Landroidx/camera/camera2/impl/CameraProperties;)Z
    .locals 1

    .line 60
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-interface {p0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method private final isTorchOn()Z
    .locals 2

    .line 124
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public setTemplate(I)V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->getCapturePipelineImpl()Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->setTemplate(I)V

    .line 107
    iput p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->template:I

    return-void
.end method

.method public submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    move-object/from16 v0, p7

    instance-of v1, v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;

    iget v2, v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;

    invoke-direct {v1, p0, v0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;-><init>(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 63
    iget v2, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean v1, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->Z$0:Z

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    invoke-direct/range {p0 .. p2}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isCorrectionRequired-0UCm73U(Ljava/util/List;I)Z

    move-result v0

    .line 75
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->getCapturePipelineImpl()Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object v2

    iput-boolean v0, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->Z$0:Z

    iput v3, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move v1, v0

    move-object v0, v2

    .line 63
    :goto_2
    check-cast v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 85
    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;-><init>(Ljava/util/List;Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object p1, v1

    move-object p4, v2

    move p5, v3

    move-object/from16 p6, v4

    move-object p2, v5

    move-object p3, v6

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4
    return-object v0
.end method
