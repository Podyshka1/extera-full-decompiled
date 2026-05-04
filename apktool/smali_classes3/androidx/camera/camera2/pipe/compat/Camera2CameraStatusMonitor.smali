.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;


# instance fields
.field private final _cameraAvailability:Lkotlinx/coroutines/flow/MutableStateFlow;

.field private final _cameraPriorities:Lkotlinx/coroutines/flow/MutableSharedFlow;

.field private final cameraAvailability:Lkotlinx/coroutines/flow/StateFlow;

.field private final cameraId:Ljava/lang/String;

.field private final cameraPriorities:Lkotlinx/coroutines/flow/SharedFlow;

.field private final cameraStatus:Lkotlinx/coroutines/flow/Flow;

.field private final cameraStatusJob:Lkotlinx/coroutines/Job;

.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final manager:Landroid/hardware/camera2/CameraManager;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lkotlinx/coroutines/Job;)V
    .locals 6

    const-string v0, "cameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeJob"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 48
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraId:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->manager:Landroid/hardware/camera2/CameraManager;

    .line 54
    invoke-static {p4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    .line 55
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance p3, Lkotlinx/coroutines/CoroutineName;

    const-string p4, "CXCP-CameraStatusMonitor"

    invoke-direct {p3, p4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 54
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 60
    sget-object p2, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$Unknown;->INSTANCE:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$Unknown;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraAvailability:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 61
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraAvailability:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p2, 0x7

    const/4 p3, 0x0

    .line 63
    invoke-static {p1, p1, p3, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraPriorities:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 64
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraPriorities:Lkotlinx/coroutines/flow/SharedFlow;

    .line 66
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatusFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatus:Lkotlinx/coroutines/flow/Flow;

    .line 68
    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1;

    invoke-direct {v3, p0, p3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatusJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static final synthetic access$getCameraId$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCameraStatus$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatus:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public static final synthetic access$getManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->manager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method

.method public static final synthetic access$get_cameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraAvailability:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_cameraPriorities$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraPriorities:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method private final cameraStatusFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 78
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 118
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatusJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCameraAvailability()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraAvailability:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getCameraPriorities()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraPriorities:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method
