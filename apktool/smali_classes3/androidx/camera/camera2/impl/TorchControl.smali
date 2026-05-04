.class public final Landroidx/camera/camera2/impl/TorchControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/TorchControl$TorchMode;
    }
.end annotation


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final _torchState:Landroidx/lifecycle/MutableLiveData;

.field private final _torchStrength:Landroidx/lifecycle/MutableLiveData;

.field private _updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferred;

.field private _updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferred;

.field private final defaultTorchStrength:I

.field private final hasFlashUnit:Z

.field private final isTorchStrengthSupported:Z

.field private final maxTorchStrength:I

.field private final state3AControl:Landroidx/camera/camera2/impl/State3AControl;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;


# direct methods
.method public static synthetic $r8$lambda$WpwW2OEsOoPvgaaFVKL9Qn3v_s4(Landroidx/camera/camera2/impl/TorchControl;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync$lambda$0(Landroidx/camera/camera2/impl/TorchControl;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zWFTHKLjGUB-SQony1A4xNaMs1M(Landroidx/camera/camera2/pipe/Result3A;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync_Oup_wC0$lambda$1$3(Landroidx/camera/camera2/pipe/Result3A;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state3AControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    .line 49
    iput-object p3, p0, Landroidx/camera/camera2/impl/TorchControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-static {p1, v0, p2, p3}, Landroidx/camera/camera2/compat/workaround/FlashAvailabilityCheckerKt;->isFlashAvailable$default(Landroidx/camera/camera2/impl/CameraProperties;ZILjava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/camera/camera2/impl/TorchControl;->hasFlashUnit:Z

    .line 82
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    .line 86
    sget-object p2, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsTorchStrength(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/camera/camera2/impl/TorchControl;->isTorchStrengthSupported:Z

    .line 88
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p3

    iput p3, p0, Landroidx/camera/camera2/impl/TorchControl;->defaultTorchStrength:I

    .line 90
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/impl/TorchControl;->maxTorchStrength:I

    .line 92
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchStrength:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getState3AControl$p(Landroidx/camera/camera2/impl/TorchControl;)Landroidx/camera/camera2/impl/State3AControl;
    .locals 0

    .line 43
    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    return-object p0
.end method

.method private final createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 269
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object p1
.end method

.method private final isFlashUnitOn-RaJ5uN0(I)Z
    .locals 1

    .line 289
    sget-object v0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->equals-impl0(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V
    .locals 1

    .line 281
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 284
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 109
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync(ZZZ)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 118
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method private static final setTorchAsync_Oup_wC0$lambda$1$3(Landroidx/camera/camera2/pipe/Result3A;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final stopRunningTaskInternal()V
    .locals 0

    .line 250
    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStateTask()V

    .line 251
    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStrengthTask()V

    return-void
.end method

.method private final stopTorchStateTask()V
    .locals 3

    .line 255
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_0

    .line 256
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new enableTorch being set"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    :cond_0
    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method private final stopTorchStrengthTask()V
    .locals 3

    .line 262
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new torch strength being set"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    :cond_0
    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method private final updateTorchState-RaJ5uN0(I)V
    .locals 1

    .line 273
    invoke-static {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->box-impl(I)Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    .line 275
    sget-object v0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getON-IRs_-R8()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->equals-impl0(II)Z

    move-result p1

    .line 277
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/impl/TorchControl;->setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V

    return-void
.end method

.method private final updateTorchStrengthLevelAsync(I)Lkotlinx/coroutines/Deferred;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 218
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_2

    .line 221
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/TorchControl;->isTorchStrengthSupported:Z

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v1, :cond_0

    .line 224
    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStrengthTask()V

    .line 227
    :cond_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 228
    new-instance v1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/impl/TorchControl;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 230
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 231
    invoke-static {v3, p1}, Landroidx/camera/camera2/compat/Api35Compat;->setFlashStrengthLevel(Ljava/util/Map;I)V

    .line 232
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$-CC;->setParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 235
    :cond_1
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {p1, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    return-object v0

    .line 240
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 241
    const-string v1, "Configuring torch strength is not supported on the device."

    .line 240
    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method private static final updateTorchStrengthLevelAsync$lambda$0(Landroidx/camera/camera2/impl/TorchControl;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    const/4 p1, 0x0

    .line 228
    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferred;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object v0
.end method

.method public final getTorchStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTorchStrengthLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchStrength:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public reset()V
    .locals 7

    .line 71
    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopRunningTaskInternal()V

    .line 72
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchState-RaJ5uN0(I)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 74
    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    const/4 v0, 0x0

    .line 75
    iput-object v0, v1, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    return-void

    :cond_0
    move-object v1, p0

    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 7

    .line 56
    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 58
    iget-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 59
    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    :cond_2
    return-void
.end method

.method public final setTorchAsync(ZZZ)Lkotlinx/coroutines/Deferred;
    .locals 0

    if-eqz p1, :cond_0

    .line 114
    sget-object p1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getON-IRs_-R8()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result p1

    .line 115
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public final setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lkotlinx/coroutines/Deferred;
    .locals 5

    .line 123
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TorchControl#setTorchAsync: torch mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 125
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    if-nez p3, :cond_1

    .line 127
    iget-boolean p3, p0, Landroidx/camera/camera2/impl/TorchControl;->hasFlashUnit:Z

    if-nez p3, :cond_1

    .line 128
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No flash unit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 132
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchState-RaJ5uN0(I)V

    if-eqz p2, :cond_2

    .line 135
    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStateTask()V

    goto :goto_0

    .line 138
    :cond_2
    iget-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p2, :cond_3

    .line 139
    invoke-static {v3, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;)V

    .line 143
    :cond_3
    :goto_0
    iput-object v3, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 148
    iget-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    .line 149
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->isFlashUnitOn-RaJ5uN0(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 148
    :cond_4
    invoke-virtual {p2, v1}, Landroidx/camera/camera2/impl/State3AControl;->setPreferredAeModeAsync(Ljava/lang/Integer;)Lkotlinx/coroutines/Deferred;

    .line 152
    sget-object p2, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/State3AControl;->getFinalSupportedAeMode()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result p2

    goto :goto_1

    .line 119
    :cond_5
    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TorchControl#setTorchAsync: Failed to convert ae mode of value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {p0}, Landroidx/camera/camera2/impl/TorchControl;->access$getState3AControl$p(Landroidx/camera/camera2/impl/TorchControl;)Landroidx/camera/camera2/impl/State3AControl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/State3AControl;->getFinalSupportedAeMode()I

    move-result v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v2, " with AeMode.fromIntOrNull, fallback to AeMode.ON"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_6
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result p2

    .line 163
    :goto_1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->isFlashUnitOn-RaJ5uN0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 164
    sget-object p2, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getON-IRs_-R8()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 167
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStrengthLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync(I)Lkotlinx/coroutines/Deferred;

    goto :goto_2

    .line 170
    :cond_7
    iget p1, p0, Landroidx/camera/camera2/impl/TorchControl;->defaultTorchStrength:I

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync(I)Lkotlinx/coroutines/Deferred;

    .line 173
    :cond_8
    :goto_2
    invoke-interface {p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOnAsync()Lkotlinx/coroutines/Deferred;

    move-result-object p1

    goto :goto_3

    .line 174
    :cond_9
    invoke-interface {p3, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 175
    :goto_3
    new-instance p2, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v3, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/jvm/functions/Function1;)V

    return-object v3

    .line 184
    :cond_a
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p2, "Camera is not active."

    invoke-direct {p1, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, v3, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    return-object v3
.end method
