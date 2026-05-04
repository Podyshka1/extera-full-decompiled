.class public final Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;


# instance fields
.field private final cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

.field private final cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

.field private final hasUwCameraUnderexposedFlashCaptureQuirk$delegate:Lkotlin/Lazy;

.field private final intrinsicZoomCalculator:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;


# direct methods
.method public static synthetic $r8$lambda$l-JwfugR0JrcGF_aZNdHv-ivxig(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->hasUwCameraUnderexposedFlashCaptureQuirk_delegate$lambda$0(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/pipe/CameraDevices;Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;)V
    .locals 1

    const-string v0, "cameraQuirks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraDevices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intrinsicZoomCalculator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 81
    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    .line 82
    iput-object p3, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->intrinsicZoomCalculator:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

    .line 84
    new-instance p1, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->hasUwCameraUnderexposedFlashCaptureQuirk$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getHasUwCameraUnderexposedFlashCaptureQuirk(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;)Z
    .locals 0

    .line 79
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->getHasUwCameraUnderexposedFlashCaptureQuirk()Z

    move-result p0

    return p0
.end method

.method private final getHasUwCameraUnderexposedFlashCaptureQuirk()Z
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->hasUwCameraUnderexposedFlashCaptureQuirk$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final hasUwCameraUnderexposedFlashCaptureQuirk_delegate$lambda$0(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;)Z
    .locals 1

    .line 85
    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p0

    const-class v0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private final isUltraWideCamera(Landroidx/camera/camera2/pipe/FrameMetadata;)Ljava/lang/Boolean;
    .locals 5

    .line 129
    invoke-static {}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    const-string v1, "LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "CXCP"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 131
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    const-string p1, "isUltraWideCamera: could not get active physical camera ID to identify if it\'s ultra wide camera."

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .line 139
    :cond_1
    iget-object v2, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v4, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitCameraMetadata-FpsL5FU$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v2

    if-nez v2, :cond_3

    .line 141
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUltraWideCamera: failed to get CameraMetadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    .line 146
    :cond_3
    iget-object v3, p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->intrinsicZoomCalculator:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

    invoke-interface {v3, v2}, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;->calculateIntrinsicZoomRatio(Landroidx/camera/camera2/pipe/CameraMetadata;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 152
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUltraWideCamera: cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", intrinsicZoomRatio = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v1, p1

    if-gez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 156
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 148
    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 148
    const-string p1, "isUltraWideCamera: could not calculate intrinsic zoom ratio."

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v1
.end method


# virtual methods
.method public shouldDisableAePrecapture()Z
    .locals 1

    .line 160
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->getHasUwCameraUnderexposedFlashCaptureQuirk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldUseTorchAsFlash(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;

    iget v1, v0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;-><init>(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 88
    iget v2, v0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;->label:I

    const-string v3, "CXCP"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUseTorchAsFlash: hasUwCameraUnderexposedFlashCaptureQuirk = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->access$getHasUwCameraUnderexposedFlashCaptureQuirk(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;)Z

    move-result v5

    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->getHasUwCameraUnderexposedFlashCaptureQuirk()Z

    move-result v2

    if-nez v2, :cond_4

    .line 99
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 105
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v2, v5, :cond_6

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 107
    const-string/jumbo p1, "shouldUseTorchAsFlash: API level is too low to know if it\'s ultra wide camera, defaulting to workaround for safety."

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_5
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 113
    :cond_6
    iput v4, v0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl$shouldUseTorchAsFlash$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    .line 88
    :cond_7
    :goto_1
    check-cast p2, Landroidx/camera/camera2/pipe/FrameMetadata;

    if-nez p2, :cond_9

    .line 116
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 117
    const-string/jumbo p1, "shouldUseTorchAsFlash: frameMetadata is null, defaulting to workaround for safety."

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_8
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 123
    :cond_9
    invoke-direct {p0, p2}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->isUltraWideCamera(Landroidx/camera/camera2/pipe/FrameMetadata;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_a
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
