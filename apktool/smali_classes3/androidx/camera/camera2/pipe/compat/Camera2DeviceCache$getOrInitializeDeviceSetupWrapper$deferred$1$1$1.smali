.class final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getOrInitializeDeviceSetupWrapper-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cameraId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, "Failed to execute call: Unexpected exception: "

    const-string v1, "Failed to execute call: Camera may be closed"

    const-string v2, "Failed to execute call: Camera encountered an error: "

    const-string v3, "CXCP"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 150
    iget v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->label:I

    if-nez v4, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 153
    :try_start_0
    invoke-static {v5}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->access$getCameraManager$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSetupSupported(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v5

    .line 57
    instance-of v6, v5, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v6, :cond_2

    .line 58
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v6, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v5, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v6, v5}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v5

    .line 59
    invoke-interface {v4, p1, v5, v8}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    move-object p1, v9

    goto :goto_2

    .line 69
    :cond_2
    instance-of v6, v5, Ljava/lang/IllegalArgumentException;

    if-nez v6, :cond_5

    .line 70
    instance-of v6, v5, Ljava/lang/SecurityException;

    if-nez v6, :cond_5

    .line 71
    instance-of v6, v5, Ljava/lang/UnsupportedOperationException;

    if-nez v6, :cond_5

    .line 72
    instance-of v6, v5, Ljava/lang/NullPointerException;

    if-eqz v6, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of p1, v5, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_4

    .line 82
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v5

    .line 73
    :cond_5
    :goto_1
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v5, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v5

    .line 74
    invoke-interface {v4, p1, v5, v7}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 156
    :goto_2
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return-object v9

    .line 159
    :cond_7
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initializing CameraDeviceSetup for "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_8
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    .line 161
    :try_start_1
    invoke-static {v5}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->access$getCameraManager$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetup(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v5

    .line 57
    instance-of v6, v5, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v6, :cond_b

    .line 58
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_9
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v5, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0, v5}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v4, p1, v0, v8}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_a
    :goto_3
    move-object p1, v9

    goto :goto_5

    .line 69
    :cond_b
    instance-of v2, v5, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_e

    .line 70
    instance-of v2, v5, Ljava/lang/SecurityException;

    if-nez v2, :cond_e

    .line 71
    instance-of v2, v5, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_e

    .line 72
    instance-of v2, v5, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_c

    goto :goto_4

    .line 81
    :cond_c
    instance-of p1, v5, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_d

    .line 82
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    :cond_d
    throw v5

    .line 73
    :cond_e
    :goto_4
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_f
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    .line 74
    invoke-interface {v4, p1, v0, v7}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_3

    :goto_5
    if-eqz p1, :cond_10

    .line 160
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 164
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v1

    invoke-direct {v2, p1, v0, v1, v9}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;-><init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v2

    :cond_10
    return-object v9

    .line 150
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
