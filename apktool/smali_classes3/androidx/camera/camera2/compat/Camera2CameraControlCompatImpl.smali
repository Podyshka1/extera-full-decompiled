.class public final Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/Camera2CameraControlCompat;


# instance fields
.field private configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

.field private final lock:Ljava/lang/Object;

.field private pendingSignal:Lkotlinx/coroutines/CompletableDeferred;

.field private updateSignal:Lkotlinx/coroutines/CompletableDeferred;

.field private final updateSignalLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-void
.end method

.method private final cancelSignal(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 147
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {v0, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object p1
.end method

.method static synthetic cancelSignal$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 146
    const-string p2, "Camera2CameraControl was updated with new options."

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRequestOption(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V
    .locals 6

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->listOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/Config$Option;

    .line 81
    const-string v3, "null cannot be cast to non-null type androidx.camera.core.impl.Config.Option<kotlin.Any>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v3

    .line 84
    sget-object v4, Landroidx/camera/core/impl/Config$OptionPriority;->ALWAYS_OVERRIDE:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 85
    invoke-virtual {p1, v2}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v5

    .line 82
    invoke-interface {v3, v2, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 88
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lkotlinx/coroutines/Deferred;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 113
    iget-object v3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    .line 114
    iget-object v3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 118
    :try_start_1
    iget-object p2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p2, :cond_1

    invoke-static {p0, p2, v0, v1, v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 121
    :cond_0
    iget-object p2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p2, :cond_1

    .line 122
    invoke-static {v2, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;)V

    .line 126
    :cond_1
    :goto_0
    iput-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 129
    const-string p2, "Camera2CameraControl.tag"

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 127
    invoke-interface {p1, v4, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lkotlinx/coroutines/Deferred;

    goto :goto_1

    .line 137
    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p1, :cond_3

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    .line 138
    :cond_3
    iput-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lkotlinx/coroutines/CompletableDeferred;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :goto_1
    monitor-exit v3

    return-object v2

    :goto_2
    monitor-exit v3

    throw p1

    :catchall_1
    move-exception p1

    .line 113
    monitor-exit v3

    throw p1
.end method

.method public cancelCurrentTask()V
    .locals 4

    .line 99
    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 101
    iput-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 102
    const-string v3, "The camera control has became inactive."

    invoke-direct {p0, v1, v3}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)Lkotlinx/coroutines/CompletableDeferred;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 103
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v1, :cond_1

    .line 104
    iput-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 105
    const-string v2, "The camera control has became inactive."

    invoke-direct {p0, v1, v2}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)Lkotlinx/coroutines/CompletableDeferred;

    .line 106
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public clearRequestOption()V
    .locals 2

    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRequestOption()Landroidx/camera/camera2/interop/CaptureRequestOptions;
    .locals 3

    .line 92
    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->Companion:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public synthetic onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onAborted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public synthetic onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public synthetic onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method

.method public synthetic onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onCaptureProgress(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 1

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "result"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    monitor-enter p2

    .line 156
    :try_start_0
    iget-object p3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p3, :cond_0

    .line 157
    const-string p4, "Camera2CameraControl.tag"

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p4, v0}, Landroidx/camera/camera2/impl/ComboRequestListenerKt;->containsTag(Landroidx/camera/camera2/pipe/RequestMetadata;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 159
    invoke-interface {p3, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 160
    iput-object p1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 163
    iget-object p3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p3, :cond_0

    .line 164
    invoke-interface {p3, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 165
    iput-object p1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lkotlinx/coroutines/CompletableDeferred;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 169
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2

    throw p1
.end method

.method public synthetic onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method public synthetic onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public synthetic onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public synthetic onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceAborted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method public synthetic onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCreated(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public synthetic onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method
