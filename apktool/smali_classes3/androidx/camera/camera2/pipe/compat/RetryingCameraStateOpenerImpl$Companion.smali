.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;-><init>()V

    return-void
.end method

.method private final min-L1EDjxI(JLandroidx/camera/camera2/pipe/core/DurationNs;)J
    .locals 2

    if-nez p3, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-wide p1

    .line 660
    :cond_1
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final getRetryDelayMs-t8DbYm4$camera_camera2_pipe(JZ)J
    .locals 4

    const-wide/16 v0, 0x1f4

    if-nez p3, :cond_0

    return-wide v0

    .line 644
    :cond_0
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getActiveResumeCameraRetryThresholds$p()[Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object p3

    const/4 v2, 0x0

    aget-object p3, p3, v2

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p3

    if-gez p3, :cond_1

    return-wide v0

    .line 646
    :cond_1
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getActiveResumeCameraRetryThresholds$p()[Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object p3

    const/4 v0, 0x1

    aget-object p3, p3, v0

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p1

    if-gez p1, :cond_2

    const-wide/16 p1, 0x7d0

    return-wide p1

    :cond_2
    const-wide/16 p1, 0xfa0

    return-wide p1
.end method

.method public final getRetryTimeoutNs-om-7c1s$camera_camera2_pipe(ZLandroidx/camera/camera2/pipe/core/DurationNs;)J
    .locals 2

    if-nez p1, :cond_0

    .line 635
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getDefaultCameraRetryTimeoutNs$p()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->min-L1EDjxI(JLandroidx/camera/camera2/pipe/core/DurationNs;)J

    move-result-wide p1

    return-wide p1

    .line 637
    :cond_0
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getActiveResumeCameraRetryTimeoutNs$p()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->min-L1EDjxI(JLandroidx/camera/camera2/pipe/core/DurationNs;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(ZI)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 625
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-gt v0, p1, :cond_1

    const/16 v0, 0x21

    if-ge p1, v0, :cond_1

    .line 626
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldRetry-rbpwgO0$camera_camera2_pipe(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z
    .locals 2

    .line 527
    invoke-virtual {p0, p6, p1}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(ZI)Z

    move-result p6

    .line 528
    const-string v0, "CXCP"

    if-eqz p6, :cond_0

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const-string/jumbo v1, "shouldRetry: Active resume mode is activated"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    invoke-virtual {p0, p6, p7}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->getRetryTimeoutNs-om-7c1s$camera_camera2_pipe(ZLandroidx/camera/camera2/pipe/core/DurationNs;)J

    move-result-wide p6

    invoke-static {p3, p4, p6, p7}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p3

    const/4 p4, 0x0

    if-lez p3, :cond_1

    return p4

    .line 533
    :cond_1
    sget-object p3, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNDETERMINED-v7Vf74A()I

    move-result p6

    invoke-static {p1, p6}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p6

    const/4 p7, 0x1

    if-eqz p6, :cond_3

    if-gt p2, p7, :cond_2

    return p7

    :cond_2
    return p4

    .line 546
    :cond_3
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result p6

    invoke-static {p1, p6}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p6

    if-eqz p6, :cond_6

    .line 558
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-ge p1, p3, :cond_5

    if-gt p2, p7, :cond_4

    return p7

    :cond_4
    return p4

    :cond_5
    return p7

    .line 564
    :cond_6
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result p6

    invoke-static {p1, p6}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p6

    if-eqz p6, :cond_7

    return p7

    .line 565
    :cond_7
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISABLED-v7Vf74A()I

    move-result p6

    invoke-static {p1, p6}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p6

    if-eqz p6, :cond_a

    if-eqz p5, :cond_9

    if-gt p2, p7, :cond_8

    return p7

    :cond_8
    return p4

    :cond_9
    return p7

    .line 585
    :cond_a
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DEVICE-v7Vf74A()I

    move-result p5

    invoke-static {p1, p5}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_b

    return p7

    .line 586
    :cond_b
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_SERVICE-v7Vf74A()I

    move-result p5

    invoke-static {p1, p5}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_c

    return p7

    .line 587
    :cond_c
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result p5

    invoke-static {p1, p5}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_d

    return p7

    .line 588
    :cond_d
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A()I

    move-result p5

    invoke-static {p1, p5}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_e

    return p7

    .line 589
    :cond_e
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_SECURITY_EXCEPTION-v7Vf74A()I

    move-result p5

    invoke-static {p1, p5}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_10

    if-gt p2, p7, :cond_f

    return p7

    :cond_f
    return p4

    .line 590
    :cond_10
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A()I

    move-result p5

    invoke-static {p1, p5}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_11

    return p4

    .line 599
    :cond_11
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNKNOWN_EXCEPTION-v7Vf74A()I

    move-result p3

    invoke-static {p1, p3}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_13

    if-gt p2, p7, :cond_12

    return p7

    :cond_12
    return p4

    .line 614
    :cond_13
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected CameraError: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return p4
.end method
