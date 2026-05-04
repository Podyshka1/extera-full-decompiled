.class public final Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;
.super Landroidx/camera/core/impl/AbstractCameraPresenceSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private flowCollectionJob:Lkotlinx/coroutines/Job;

.field private final idFlow:Lkotlinx/coroutines/flow/Flow;

.field private final isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$pNibnT2Ln7rKug19LH2UnicKFAs(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->fetchData$lambda$0(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->Companion:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Landroid/content/Context;)V
    .locals 1

    const-string v0, "idFlow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialCameraIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p3}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;-><init>(Ljava/util/List;)V

    .line 43
    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->idFlow:Lkotlinx/coroutines/flow/Flow;

    .line 44
    iput-object p2, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    const-string p1, "camera"

    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public static final synthetic access$getCameraManager$p(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static final synthetic access$isMonitoring$p(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$updateData(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->updateData(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$updateError(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/lang/Throwable;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->updateError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final fetchData$lambda$0(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 7

    const-string v0, "completer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 143
    const-string p0, "FetchData for PipeCameraPresence0"

    return-object p0
.end method


# virtual methods
.method public fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 116
    new-instance v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "getFuture(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected startMonitoring()V
    .locals 4

    .line 54
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "PipePresenceSrc"

    if-nez v0, :cond_0

    .line 55
    const-string v0, "Monitoring is already active. Ignoring redundant start call."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    const-string v0, "Starting to collect camera ID flow."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 61
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 64
    iget-object v2, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->idFlow:Lkotlinx/coroutines/flow/Flow;

    .line 105
    new-instance v3, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1;

    invoke-direct {v3, v2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 79
    new-instance v2, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;

    invoke-direct {v2, p0, v0, v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v2}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 93
    new-instance v2, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;

    invoke-direct {v2, p0, v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 101
    iget-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 63
    iput-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public stopMonitoring()V
    .locals 3

    .line 105
    const-string v0, "PipePresenceSrc"

    const-string v1, "Stopping camera ID flow collection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 112
    :cond_1
    iput-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lkotlinx/coroutines/Job;

    return-void
.end method
