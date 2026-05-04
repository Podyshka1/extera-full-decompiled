.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->startMonitoring-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Ljava/lang/String;)V
    .locals 7

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getBackgroundDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getCameraPipeJob$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Lkotlinx/coroutines/Job;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 169
    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getListeners$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 163
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public awaitAvailableCamera(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 181
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 182
    invoke-static {p3, v3, p3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 183
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1;

    invoke-direct {v4, v2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;->label:I

    invoke-static {p1, p2, v4, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 185
    :goto_2
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 190
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
