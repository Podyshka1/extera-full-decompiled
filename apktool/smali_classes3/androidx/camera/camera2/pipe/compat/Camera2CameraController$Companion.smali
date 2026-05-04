.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldRestart-X9Wt83s$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraController$ControllerState;Landroidx/camera/camera2/pipe/CameraError;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Landroidx/camera/camera2/pipe/core/TimestampNs;J)Z
    .locals 4

    const-string v0, "controllerState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraAvailability"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    instance-of p3, p3, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 471
    sget-object p3, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISABLED-v7Vf74A()I

    move-result p3

    if-nez p2, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v2

    invoke-static {v2, p3}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p3

    :goto_0
    if-nez p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    if-nez p4, :cond_3

    :cond_2
    move p4, v1

    goto :goto_2

    .line 480
    :cond_3
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v2

    sub-long/2addr p5, v2

    .line 29
    invoke-static {p5, p6}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide p4

    .line 480
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getPRIORITIES_CHANGED_THRESHOLD_NS$cp()J

    move-result-wide v2

    invoke-static {p4, p5, v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p4

    if-gtz p4, :cond_2

    move p4, v0

    .line 483
    :goto_2
    sget-object p5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    if-nez p3, :cond_6

    if-eqz p4, :cond_4

    goto :goto_4

    .line 487
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-gt p2, p1, :cond_5

    const/16 p2, 0x21

    if-ge p1, p2, :cond_5

    move p1, v0

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-eqz p1, :cond_a

    .line 492
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "CXCP"

    .line 492
    const-string p2, "Quirk for multi-resume activated: Kicking off restart."

    .line 50
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return v0

    .line 495
    :cond_7
    sget-object p4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    .line 501
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p3

    if-nez p2, :cond_8

    move p3, v1

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p4

    invoke-static {p4, p3}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p3

    :goto_5
    if-nez p3, :cond_a

    .line 502
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_SECURITY_EXCEPTION-v7Vf74A()I

    move-result p1

    if-nez p2, :cond_9

    move p1, v1

    goto :goto_6

    :cond_9
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p2

    invoke-static {p2, p1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p1

    :goto_6
    if-nez p1, :cond_a

    return v0

    :cond_a
    return v1
.end method
