.class public final Landroidx/camera/camera2/pipe/compat/VirtualCameraState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/VirtualCamera;


# instance fields
.field private _lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

.field private final _stateFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

.field private final _states:Lkotlinx/coroutines/flow/Flow;

.field private final cameraId:Ljava/lang/String;

.field private closed:Z

.field private currentVirtualAndroidCamera:Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

.field private final debugId:I

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private job:Lkotlinx/coroutines/Job;

.field private final lock:Ljava/lang/Object;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private wakelockToken:Landroidx/camera/camera2/pipe/core/Token;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 123
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 125
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->getVirtualCameraDebugIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->debugId:I

    .line 126
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x4

    const/4 p3, 0x1

    const/4 v0, 0x3

    .line 134
    invoke-static {p3, v0, p1, p2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_stateFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 135
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_states:Lkotlinx/coroutines/flow/Flow;

    .line 137
    sget-object p2, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 150
    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$emitState(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/compat/CameraState;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V

    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)Ljava/lang/Object;
    .locals 0

    .line 120
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setCurrentVirtualAndroidCamera$p(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;)V
    .locals 0

    .line 120
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->currentVirtualAndroidCamera:Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

    return-void
.end method

.method private final emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V
    .locals 2

    .line 233
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 234
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_stateFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to emit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final connect$camera_camera2_pipe(Lkotlinx/coroutines/flow/Flow;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 154
    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    monitor-enter p3

    .line 155
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->closed:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 156
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 157
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p3

    return-object p1

    .line 176
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, v1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 175
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->job:Lkotlinx/coroutines/Job;

    .line 198
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->wakelockToken:Landroidx/camera/camera2/pipe/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit p3

    .line 200
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 154
    :goto_1
    monitor-exit p3

    throw p1
.end method

.method public disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V
    .locals 14

    .line 203
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 203
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 207
    :try_start_1
    iput-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->closed:Z

    .line 209
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CXCP"

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 211
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->currentVirtualAndroidCamera:Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnect$camera_camera2_pipe()V

    .line 212
    :cond_2
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->job:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {v2, v3, v0, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 213
    :cond_3
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->wakelockToken:Landroidx/camera/camera2/pipe/core/Token;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    .line 216
    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getValue()Landroidx/camera/camera2/pipe/compat/CameraState;

    move-result-object v2

    instance-of v2, v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    if-nez v2, :cond_6

    .line 217
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

    instance-of v2, v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    if-nez v2, :cond_5

    .line 218
    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-direct {v2, v3, v0, v3}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V

    .line 221
    :cond_5
    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 222
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 223
    sget-object v4, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, p1

    .line 221
    invoke-direct/range {v2 .. v13}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    invoke-direct {p0, v2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V

    .line 228
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p1
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object v0
.end method

.method public getState()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_states:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getValue()Landroidx/camera/camera2/pipe/compat/CameraState;
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualCamera-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
