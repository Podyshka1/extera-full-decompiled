.class public final Landroidx/camera/camera2/impl/LowLightBoostControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# instance fields
.field private final _lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private _updateSignal:Lkotlinx/coroutines/CompletableDeferred;

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private checkFrameRateJob:Lkotlinx/coroutines/Deferred;

.field private final comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

.field private isLowLightBoostOn:Z

.field private final isLowLightBoostSupported:Z

.field private final lowLightBoostStateAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final state3AControl:Landroidx/camera/camera2/impl/State3AControl;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V
    .locals 2

    const-string/jumbo v0, "state3AControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comboRequestListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 56
    iput-object p2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    .line 57
    iput-object p3, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 58
    iput-object p4, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 83
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostSupported:Z

    .line 87
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->lowLightBoostStateAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p2, :cond_1

    .line 100
    new-instance p1, Landroidx/camera/camera2/impl/LowLightBoostControl$1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/LowLightBoostControl$1;-><init>(Landroidx/camera/camera2/impl/LowLightBoostControl;)V

    .line 125
    invoke-virtual {p3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroidx/camera/camera2/impl/ComboRequestListener;->addListener(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$createFailureResult(Landroidx/camera/camera2/impl/LowLightBoostControl;Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSessionConfig(Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->getSessionConfig(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getState3AControl$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/camera/camera2/impl/State3AControl;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    return-object p0
.end method

.method public static final synthetic access$get_lowLightBoostState$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_requestControl$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public static final synthetic access$get_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$isLowLightBoostOn$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostOn:Z

    return p0
.end method

.method public static final synthetic access$setLiveDataValue(Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/lifecycle/MutableLiveData;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V

    return-void
.end method

.method public static final synthetic access$setLowLightBoostOn$p(Landroidx/camera/camera2/impl/LowLightBoostControl;Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostOn:Z

    return-void
.end method

.method public static final synthetic access$set_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    .line 51
    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public static final synthetic access$stopRunningTaskInternal(Landroidx/camera/camera2/impl/LowLightBoostControl;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->stopRunningTaskInternal()V

    return-void
.end method

.method private final createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 235
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object p1
.end method

.method private final getSessionConfig(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;
    .locals 2

    .line 142
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    .line 142
    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->lowLightBoostStateAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 240
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic setLowLightBoostAsync$default(Landroidx/camera/camera2/impl/LowLightBoostControl;ZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 150
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync(ZZ)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method private final stopRunningTaskInternal()V
    .locals 3

    .line 228
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_0

    .line 229
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new enableLowLightBoost being set"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    :cond_0
    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final getCheckFrameRateJob$camera_camera2()Lkotlinx/coroutines/Deferred;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->checkFrameRateJob:Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public final getLowLightBoostStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object v0
.end method

.method public final onSessionConfigChanged(Ljava/util/List;)V
    .locals 7

    const-string/jumbo v0, "useCases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->checkFrameRateJob:Lkotlinx/coroutines/Deferred;

    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;-><init>(Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 134
    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->checkFrameRateJob:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public reset()V
    .locals 3

    .line 79
    invoke-direct {p0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->stopRunningTaskInternal()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-static {p0, v2, v2, v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync$default(Landroidx/camera/camera2/impl/LowLightBoostControl;ZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public final setLowLightBoostAsync(ZZ)Lkotlinx/coroutines/Deferred;
    .locals 12

    .line 154
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LowLightBoostControl#setLowLightBoostAsync: lowLightBoost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    .line 160
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostSupported:Z

    if-nez v0, :cond_1

    .line 162
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Low Light Boost is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v5, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->createFailureResult(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1

    .line 166
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 194
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;

    const/4 v3, 0x0

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/LowLightBoostControl;Lkotlinx/coroutines/CompletableDeferred;ZZ)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    move-object v9, v2

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v5
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1

    .line 65
    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 67
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync(ZZ)Lkotlinx/coroutines/Deferred;

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V

    :cond_1
    return-void
.end method
