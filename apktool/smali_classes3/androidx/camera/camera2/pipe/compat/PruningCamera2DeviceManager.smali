.class public final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;,
        Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;,
        Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;
    }
.end annotation


# instance fields
.field private final activeCameras:Ljava/util/Set;

.field private final camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

.field private final camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field private final pendingRequestOpens:Ljava/util/List;

.field private final permissions:Landroidx/camera/camera2/pipe/core/Permissions;

.field private final queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

.field private final retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public static synthetic $r8$lambda$-mG8_AgNMPKBsIwSXjNb-j0kE9U(Landroidx/camera/camera2/pipe/compat/CameraRequest;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->prune$lambda$6(Landroidx/camera/camera2/pipe/compat/CameraRequest;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZIVIARpnftt9kWIyXK-VcZYQevM(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->prune$lambda$2$0(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vP9kzpFdONuWMUT974T0jXAWwcs(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->openCameraWithRetry_zDSwpeU$lambda$1(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingCameraStateOpener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2DeviceCloser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2ErrorProcessor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->permissions:Landroidx/camera/camera2/pipe/core/Permissions;

    .line 182
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    .line 183
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    .line 184
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 185
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 187
    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/core/Threads;->getCameraPipeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 190
    sget-object p2, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->Companion:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$1;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$1;-><init>(Ljava/lang/Object;)V

    new-instance v4, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$2;

    const/4 p3, 0x0

    invoke-direct {v4, p0, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$2;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;-><init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;->processIn(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlinx/coroutines/CoroutineScope;)Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    .line 191
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    .line 203
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$connectPendingRequestOpens(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->connectPendingRequestOpens(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openCameraWithRetry-zDSwpeU(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$process(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/CameraRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->process(Landroidx/camera/camera2/pipe/compat/CameraRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestClose(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestClose;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestCloseById(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestCloseById;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestOpen(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$retrieveActiveCamera-RzXb1QE(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final connectPendingRequestOpens(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 595
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 597
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 597
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 865
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 598
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 599
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-result-object p2

    .line 603
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 604
    check-cast v4, Ljava/lang/Iterable;

    .line 1740
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    .line 1741
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v5

    .line 604
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    .line 1761
    invoke-static {v6}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1762
    :cond_6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 604
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v4

    .line 607
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p2

    .line 608
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getToken()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v5

    .line 606
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    invoke-virtual {v4, p2, v5, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    .line 610
    :cond_a
    :goto_5
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 612
    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final disconnectPendingRequestOpens(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 617
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 618
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getToken()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    .line 619
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final onRemoved(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V
    .locals 2

    .line 360
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz v0, :cond_0

    .line 361
    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroidx/camera/camera2/pipe/compat/VirtualCamera$-CC;->disconnect-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/VirtualCamera;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p5, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    invoke-direct {v0, p0, p5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 568
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 574
    sget-object p5, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 574
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with retries..."

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 50
    const-string v2, "CXCP"

    invoke-static {v2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_3
    iget-object p5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    .line 578
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    .line 576
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    invoke-interface {p5, p1, v2, p3, v0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    .line 568
    :cond_4
    :goto_1
    check-cast p5, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    .line 581
    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p3

    if-nez p3, :cond_5

    .line 582
    new-instance p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 584
    :cond_5
    new-instance p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    .line 586
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 587
    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p5

    .line 588
    check-cast p2, Ljava/util/Collection;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 590
    new-instance p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;)V

    .line 586
    invoke-direct {v0, p5, p1, p4, p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    .line 584
    invoke-direct {p3, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    return-object p3
.end method

.method private static final openCameraWithRetry_zDSwpeU$lambda$1(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lkotlin/Unit;
    .locals 1

    const-string v0, "activeCamera"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RequestClose;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final process(Landroidx/camera/camera2/pipe/compat/CameraRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 367
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 368
    :cond_1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 369
    :cond_3
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v0, :cond_5

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 370
    :cond_5
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_6

    return-object p1

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 366
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 454
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    .line 456
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PruningCamera2DeviceManager#processRequestClose("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    const-string v2, "CXCP"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 459
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 466
    :cond_5
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 466
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 865
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 465
    :cond_7
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    invoke-direct {p0, v2, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_3

    .line 468
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 469
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    :goto_3
    return-object v1

    .line 470
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 490
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 491
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "CXCP"

    .line 491
    const-string v2, "PruningCamera2DeviceManager#processRequestCloseAll()"

    .line 59
    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    .line 494
    :cond_5
    :goto_1
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 495
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    goto :goto_2

    .line 497
    :cond_6
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 498
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_4
    return-object v1

    .line 500
    :cond_8
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 501
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private final processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 472
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    .line 474
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PruningCamera2DeviceManager#processRequestCloseById("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    const-string v5, "CXCP"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_4
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 774
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 479
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 865
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 478
    :cond_6
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    invoke-direct {p0, v5, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, p1

    move-object p1, p2

    .line 481
    :goto_2
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    .line 295
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 481
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_9
    move-object v4, v5

    :goto_3
    check-cast v4, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    if-eqz v4, :cond_b

    .line 483
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 485
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    invoke-virtual {v4, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    move-object p1, v2

    :goto_5
    move-object v2, p1

    .line 487
    :cond_b
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private final processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 374
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    const-string v3, "CXCP"

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_9

    :pswitch_4
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    .line 376
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PruningCamera2DeviceManager#processRequestOpen("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 380
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    .line 774
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 380
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 865
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    invoke-static {p2, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 384
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    .line 774
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 384
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getAllCameraIds$camera_camera2_pipe()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 865
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v5, v6

    .line 388
    :cond_6
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 390
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p2, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 392
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 774
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 392
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 865
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 391
    :cond_8
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-direct {p0, v6, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto/16 :goto_10

    :cond_9
    move-object v9, v5

    move-object v5, p1

    move-object p1, v9

    .line 394
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 395
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    goto :goto_5

    .line 397
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 398
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    goto/16 :goto_10

    :cond_c
    :goto_7
    move-object p1, v2

    goto :goto_8

    :cond_d
    move-object v5, p1

    goto :goto_7

    .line 403
    :goto_8
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->setActiveVirtualCamera-0r8Bogc$camera_camera2_pipe(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)V

    .line 404
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    const/4 p2, 0x3

    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-direct {p0, p1, v5, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    goto/16 :goto_10

    :cond_e
    move-object v2, v0

    move-object v0, p2

    move-object p2, p1

    move-object p1, v5

    .line 374
    :goto_9
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;

    .line 405
    instance-of v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    if-eqz v5, :cond_11

    .line 406
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    const-string v1, "Failed to retrieve active camera for "

    if-eqz p1, :cond_f

    .line 407
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Last camera error was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p2

    .line 408
    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 412
    :cond_f
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Camera might have been closed during opening."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_10
    :goto_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 419
    :cond_11
    instance-of p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    const-string v3, "Check failed."

    if-eqz p2, :cond_1d

    .line 420
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p2

    .line 421
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->getToken()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    .line 424
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 429
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 1740
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_12

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_d

    .line 1741
    :cond_12
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v6

    .line 430
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .line 1761
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_13

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_c

    .line 1762
    :cond_13
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 430
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_b

    .line 441
    :cond_15
    :goto_c
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-direct {v2, p1, p2, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;-><init>(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 435
    :cond_16
    :goto_d
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result v5

    if-nez v5, :cond_19

    .line 436
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v3

    iput-object p1, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-virtual {p2, v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_17

    goto :goto_10

    :cond_17
    move-object v0, v2

    .line 437
    :goto_e
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x5

    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->connectPendingRequestOpens(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_18

    goto :goto_10

    .line 452
    :cond_18
    :goto_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 435
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :cond_1a
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 445
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p1

    iput-object v4, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-virtual {p2, p1, v0, v2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1b

    :goto_10
    return-object v1

    .line 452
    :cond_1b
    :goto_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 449
    :cond_1c
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    .line 452
    :goto_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 419
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final prune$lambda$2$0(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 292
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private static final prune$lambda$6(Landroidx/camera/camera2/pipe/compat/CameraRequest;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 352
    check-cast p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private final removeIndices(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 3

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 638
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 504
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v7, v6

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 510
    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v7, p1

    move-object p1, p2

    move-object p2, p3

    move-object v11, v0

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 511
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->acquire()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 525
    :cond_5
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 526
    iput-object v7, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    iput-object p1, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    iput-object p2, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/lang/Object;

    iput-object p3, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Ljava/lang/Object;

    iput v4, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    invoke-virtual {p3, v11}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    move-object v6, p0

    goto :goto_4

    :cond_6
    move-object v2, p1

    move-object p1, p3

    .line 527
    :goto_2
    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_1

    :cond_7
    move-object p3, v5

    move-object v0, p3

    :goto_3
    if-nez p3, :cond_f

    .line 535
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v8

    .line 536
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    .line 537
    iget-object v10, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 533
    iput-object v7, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    iput-object p1, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    iput-object v5, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/lang/Object;

    iput-object v5, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Ljava/lang/Object;

    iput v3, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    move-object p2, v7

    .line 504
    :goto_5
    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;

    .line 540
    instance-of v0, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    const-string v1, "PruningCameraDeviceManager: Failed to open "

    const-string v2, "CXCP"

    if-eqz v0, :cond_c

    .line 541
    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p3

    .line 544
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->acquire()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 546
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PruningCameraDeviceManager: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " opened successfully"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_9
    iget-object p1, v6, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 549
    :cond_a
    sget-object p3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 550
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Camera may have been closed (possibly due to an error) immediately after opening"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_b
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 555
    new-instance p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    invoke-direct {p1, v5, v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 558
    :cond_c
    instance-of v0, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    if-eqz v0, :cond_e

    .line 559
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_d
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p1

    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 561
    new-instance p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p2

    invoke-direct {p1, p2, v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 539
    :cond_e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_f
    move-object v6, p0

    .line 565
    :goto_6
    new-instance p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    if-eqz v0, :cond_10

    invoke-direct {p1, p3, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V

    return-object p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close-EfqyGwQ(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 246
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera close by ID request failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v1, "CXCP"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 250
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1
.end method

.method public closeAll(Z)Lkotlinx/coroutines/Deferred;
    .locals 2

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->cancelOpen()V

    .line 257
    :cond_0
    new-instance p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-direct {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;-><init>()V

    .line 258
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CXCP"

    .line 259
    const-string v1, "Camera close all request failed!"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1
.end method

.method public open-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLkotlin/jvm/functions/Function1;)Landroidx/camera/camera2/pipe/compat/VirtualCamera;
    .locals 8

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedCameraIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isForegroundObserver"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v2, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x0

    invoke-direct {v2, p1, p3, v0, v7}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 214
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    .line 215
    new-instance v1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/pipe/compat/RequestOpen;-><init>(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLkotlin/jvm/functions/Function1;)V

    .line 214
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 221
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Camera open request failed for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    new-instance p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 224
    sget-object p2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPENER-v7Vf74A()I

    move-result p2

    const/4 p3, 0x0

    .line 223
    invoke-direct {p1, p2, p3, v7}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 222
    invoke-interface {v4, p1}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    return-object v7

    :cond_1
    return-object v2
.end method

.method public final prune$camera_camera2_pipe(Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "requests"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 774
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 268
    instance-of v5, v5, Landroidx/camera/camera2/pipe/compat/RequestClose;

    if-eqz v5, :cond_0

    .line 865
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 271
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 272
    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 388
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 389
    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 276
    instance-of v3, v3, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    if-eqz v3, :cond_3

    .line 391
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    if-lez v2, :cond_8

    .line 278
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.camera.camera2.pipe.compat.RequestCloseAll"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    move v6, v4

    :goto_3
    if-ge v6, v2, :cond_8

    .line 280
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 286
    instance-of v8, v7, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v8, :cond_5

    move-object v8, v7

    check-cast v8, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v8

    goto :goto_4

    .line 287
    :cond_5
    instance-of v8, v7, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v8

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_7

    .line 291
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v9

    new-instance v10, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-interface {v9, v10}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 296
    :cond_7
    invoke-direct {v0, v7}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->onRemoved(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 301
    :cond_8
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 302
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 305
    instance-of v9, v8, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz v9, :cond_10

    .line 314
    move-object v9, v8

    check-cast v9, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v11

    .line 315
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-static {v11}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    .line 627
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    move v14, v7

    :goto_6
    if-ge v14, v13, :cond_f

    .line 628
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 319
    instance-of v3, v15, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v3, :cond_9

    check-cast v15, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_9

    .line 320
    :cond_9
    instance-of v3, v15, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz v3, :cond_d

    .line 326
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result v3

    if-nez v3, :cond_b

    move-object v3, v15

    check-cast v3, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    move v3, v4

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v3, 0x1

    .line 327
    :goto_8
    check-cast v15, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v10

    invoke-static {v15, v10}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    if-eqz v3, :cond_d

    .line 330
    invoke-static {v11, v4}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    const/4 v3, 0x1

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_e

    .line 629
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    goto :goto_c

    .line 336
    :cond_10
    instance-of v3, v8, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v3, :cond_f

    .line 627
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v7

    :goto_a
    if-ge v4, v3, :cond_f

    .line 628
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 340
    instance-of v10, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v10, :cond_11

    check-cast v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    move-object v10, v8

    check-cast v10, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_12

    .line 629
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :goto_c
    if-eqz v3, :cond_14

    .line 345
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 346
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is pruned by "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    const-string v9, "CXCP"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    instance-of v4, v8, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v4, :cond_14

    instance-of v4, v3, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v4, :cond_14

    .line 352
    check-cast v3, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    new-instance v4, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_14
    move v6, v7

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 356
    :cond_15
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->removeIndices(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 356
    invoke-direct {v0, v2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->onRemoved(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V

    goto :goto_d

    :cond_16
    return-void
.end method
