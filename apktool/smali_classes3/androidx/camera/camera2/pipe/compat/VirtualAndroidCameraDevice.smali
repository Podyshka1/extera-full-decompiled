.class public final Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# instance fields
.field private final androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

.field private disconnected:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)V
    .locals 1

    const-string v0, "androidCameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 557
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    .line 677
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 679
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 679
    const-string v1, "createCaptureRequest failed: Virtual device disconnected"

    .line 71
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 682
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :goto_1
    monitor-exit v0

    return-object p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 668
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 668
    const-string v2, "createCaptureSession failed: Virtual device disconnected"

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 669
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getStateCallback()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p1, 0x0

    goto :goto_1

    .line 672
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    const-string v0, "outputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 570
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 570
    const-string v1, "createCaptureSession failed: Virtual device disconnected"

    .line 71
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 571
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p1, 0x0

    goto :goto_1

    .line 574
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    const-string v0, "outputConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 616
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 617
    const-string v1, "createCaptureSessionByOutputConfigurations failed: Virtual device disconnected"

    .line 71
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 619
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p1, 0x0

    goto :goto_1

    .line 622
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    const-string v0, "outputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 599
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 600
    const-string v1, "createConstrainedHighSpeedCaptureSession failed: Virtual device disconnected"

    .line 71
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 602
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p1, 0x0

    goto :goto_1

    .line 605
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 656
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 656
    const-string v2, "createExtensionSession failed: Virtual device disconnected"

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 657
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getExtensionStateCallback()Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p1, 0x0

    goto :goto_1

    .line 660
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    const-string v0, "inputResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 689
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 689
    const-string v1, "createReprocessCaptureRequest failed: Virtual device disconnected"

    .line 71
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 692
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :goto_1
    monitor-exit v0

    return-object p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 585
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 585
    const-string p2, "createReprocessableCaptureSession failed: Virtual device disconnected"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 586
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p1, 0x0

    goto :goto_1

    .line 589
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    const-string v0, "inputConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 637
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 638
    const-string p2, "createReprocessableCaptureSessionByConfigurations failed: Virtual device disconnected"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 641
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p1, 0x0

    goto :goto_1

    .line 644
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final disconnect$camera_camera2_pipe()V
    .locals 2

    .line 702
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

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

.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCameraAudioRestrictionUpdated-LwUUkyU(I)V
    .locals 1

    .line 711
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onCameraAudioRestrictionUpdated-LwUUkyU(I)V

    return-void
.end method

.method public onDeviceClosed()V
    .locals 1

    .line 698
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onDeviceClosed()V

    return-void
.end method

.method public onDeviceClosing()V
    .locals 1

    .line 696
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onDeviceClosing()V

    return-void
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
