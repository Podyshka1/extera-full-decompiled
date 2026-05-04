.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;


# instance fields
.field private final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

.field private final cameraAvailabilityMonitor:Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

.field private final cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

.field private final devicePolicyManager:Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 1

    const-string v0, "cameraStateOpener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraAvailabilityMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devicePolicyManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioRestrictionController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    .line 402
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 403
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraAvailabilityMonitor:Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;

    .line 404
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 405
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->devicePolicyManager:Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    .line 406
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    .line 407
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 408
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-void
.end method

.method public static final synthetic access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;)Landroidx/camera/camera2/pipe/core/TimeSource;
    .locals 0

    .line 397
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    return-object p0
.end method


# virtual methods
.method public cancelOpen()V
    .locals 1

    .line 515
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cancelOpen$camera_camera2_pipe()V

    return-void
.end method

.method public openAndAwaitCameraWithRetry-0r8Bogc(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2DeviceCloser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#openAndAwaitCameraWithRetry("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getBlockingDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2;-><init>(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    return-object p1
.end method

.method public openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    iget v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    invoke-direct {v3, v1, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;-><init>(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 410
    iget v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    const/4 v6, 0x2

    const-string v7, "CXCP"

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v6, :cond_3

    if-ne v5, v8, :cond_2

    iget-wide v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/AutoCloseable;

    iget-object v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    iget-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    check-cast v14, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v2

    move v2, v8

    move-object v8, v7

    :cond_1
    move-object v7, v14

    move-wide/from16 v29, v10

    move-object v10, v0

    move-object v0, v12

    move-object v11, v15

    move-wide/from16 v14, v29

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    :goto_1
    move-object v2, v0

    goto/16 :goto_a

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/AutoCloseable;

    iget-object v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    iget-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    check-cast v14, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_4
    iget-wide v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    check-cast v12, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 415
    sget-object v2, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v2, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v2}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v10

    .line 416
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 418
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraAvailabilityMonitor:Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;

    iput-object v0, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    iput-wide v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iput v9, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    invoke-interface {v5, v0, v3}, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;->startMonitoring-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object/from16 v29, v13

    move-object v13, v0

    move-object v0, v2

    move-object v2, v5

    move-object/from16 v5, v29

    .line 410
    :goto_2
    check-cast v2, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object v14, v2

    check-cast v14, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;

    move-object v15, v12

    move-wide/from16 v29, v10

    move-object v11, v13

    move-object v10, v14

    move-wide/from16 v13, v29

    .line 420
    :goto_3
    iget v12, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v12, v9

    iput v12, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 423
    iget-object v8, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    .line 428
    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    .line 423
    iput-object v11, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    iput-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    iput-wide v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iput v6, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    move-object/from16 v17, v3

    move-object/from16 v16, v9

    move-object v3, v10

    move-object v10, v8

    invoke-virtual/range {v10 .. v17}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v4, :cond_7

    goto/16 :goto_8

    :cond_7
    move-object v12, v15

    move-object v15, v11

    move-wide v10, v13

    move-object v14, v12

    move-object v12, v0

    move-object v0, v3

    move-object v13, v5

    move-object/from16 v3, v17

    move-object v5, v2

    move-object v2, v8

    .line 410
    :goto_4
    :try_start_3
    check-cast v2, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    .line 430
    sget-object v8, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v8, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v8}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 29
    invoke-static {v8, v9}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v21

    .line 432
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 418
    invoke-static {v5, v9}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 436
    :cond_8
    :try_start_4
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v8

    if-nez v8, :cond_a

    .line 440
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 441
    const-string v0, "Camera open failed without an error. The CameraGraph may have been stopped or closed. Abandoning the camera open attempt."

    .line 71
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 418
    :cond_9
    invoke-static {v5, v9}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 448
    :cond_a
    :try_start_5
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v13, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    .line 450
    sget-object v18, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    .line 451
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v19

    .line 452
    iget v8, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 454
    iget-object v6, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->devicePolicyManager:Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;->getCamerasDisabled()Z

    move-result v23

    .line 456
    iget-object v6, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->getCameraOpenRetryMaxTimeoutNs-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v6

    move-object/from16 v25, v6

    :goto_5
    move/from16 v20, v8

    goto :goto_6

    :cond_b
    move-object/from16 v25, v9

    goto :goto_5

    .line 450
    :goto_6
    invoke-virtual/range {v18 .. v25}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->shouldRetry-rbpwgO0$camera_camera2_pipe(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z

    move-result v6

    move-object/from16 v28, v18

    move-wide/from16 v26, v21

    move/from16 v8, v24

    if-eqz v6, :cond_c

    .line 461
    iget v9, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 p2, v2

    const/4 v2, 0x1

    if-le v9, v2, :cond_d

    goto :goto_7

    :cond_c
    move-object/from16 p2, v2

    .line 462
    :goto_7
    iget-object v2, v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v9

    invoke-interface {v2, v15, v9, v6}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_d
    if-nez v6, :cond_f

    .line 465
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attempts and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object v2

    .line 70
    invoke-interface {v2}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "f ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    long-to-double v2, v2

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v3, v8

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v2, ". Last error was "

    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v2

    .line 466
    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    const/4 v3, 0x0

    .line 418
    invoke-static {v5, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p2

    :cond_f
    const/4 v6, 0x1

    .line 480
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v2

    move-object/from16 v9, v28

    invoke-virtual {v9, v8, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(ZI)Z

    move-result v2

    move-object v8, v7

    move-wide/from16 v6, v26

    .line 478
    invoke-virtual {v9, v6, v7, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->getRetryDelayMs-t8DbYm4$camera_camera2_pipe(JZ)J

    move-result-wide v6

    .line 476
    iput-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    iput-wide v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    const/4 v2, 0x3

    iput v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    invoke-interface {v0, v6, v7, v3}, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;->awaitAvailableCamera(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_1

    :goto_8
    return-object v4

    :goto_9
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_10

    .line 484
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout expired, retrying camera open for camera "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_10
    move-object v6, v8

    move v8, v2

    move-object v2, v5

    move-object v5, v13

    move-wide v13, v14

    move-object v15, v7

    move-object v7, v6

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v2

    goto/16 :goto_1

    .line 431
    :goto_a
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v5, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method
