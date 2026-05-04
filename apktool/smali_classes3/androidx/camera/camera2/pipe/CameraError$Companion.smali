.class public final Landroidx/camera/camera2/pipe/CameraError$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;-><init>()V

    return-void
.end method

.method private final isDoNotDisturbException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 192
    instance-of v0, p1, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 194
    :cond_0
    check-cast p1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 195
    :goto_1
    const-string v0, "_enableShutterSound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final from-PVuDhNw$camera_camera2_pipe(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_SERVICE-v7Vf74A()I

    move-result p1

    return p1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected StateCallback error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DEVICE-v7Vf74A()I

    move-result p1

    return p1

    .line 163
    :cond_2
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISABLED-v7Vf74A()I

    move-result p1

    return p1

    .line 162
    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result p1

    return p1

    .line 161
    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result p1

    return p1
.end method

.method public final from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 154
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected CameraAccessException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNKNOWN_EXCEPTION-v7Vf74A()I

    move-result p1

    return p1

    .line 152
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result p1

    return p1

    .line 151
    :cond_2
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result p1

    return p1

    .line 150
    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNDETERMINED-v7Vf74A()I

    move-result p1

    return p1

    .line 149
    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result p1

    return p1

    .line 148
    :cond_5
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISABLED-v7Vf74A()I

    move-result p1

    return p1
.end method

.method public final from-PVuDhNw$camera_camera2_pipe(Ljava/lang/Throwable;)I
    .locals 2

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p1

    return p1

    .line 134
    :cond_0
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A()I

    move-result p1

    return p1

    .line 135
    :cond_1
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_SECURITY_EXCEPTION-v7Vf74A()I

    move-result p1

    return p1

    .line 137
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->shouldHandleDoNotDisturbException$camera_camera2_pipe(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A()I

    move-result p1

    return p1

    .line 140
    :cond_3
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected throwable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNKNOWN_EXCEPTION-v7Vf74A()I

    move-result p1

    return p1
.end method

.method public final getERROR_CAMERA_DEVICE-v7Vf74A()I
    .locals 1

    .line 78
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_DEVICE$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_CAMERA_DISABLED-v7Vf74A()I
    .locals 1

    .line 71
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_DISABLED$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_CAMERA_DISCONNECTED-v7Vf74A()I
    .locals 1

    .line 95
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_DISCONNECTED$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_CAMERA_IN_USE-v7Vf74A()I
    .locals 1

    .line 56
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_IN_USE$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I
    .locals 1

    .line 64
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_LIMIT_EXCEEDED$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_CAMERA_OPENER-v7Vf74A()I
    .locals 1

    .line 127
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_OPENER$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A()I
    .locals 1

    .line 129
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_OPEN_TIMEOUT$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_CAMERA_SERVICE-v7Vf74A()I
    .locals 1

    .line 87
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_CAMERA_SERVICE$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A()I
    .locals 1

    .line 114
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_DO_NOT_DISTURB_ENABLED$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_GRAPH_CONFIG-v7Vf74A()I
    .locals 1

    .line 107
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_GRAPH_CONFIG$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A()I
    .locals 1

    .line 98
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_ILLEGAL_ARGUMENT_EXCEPTION$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_SECURITY_EXCEPTION-v7Vf74A()I
    .locals 1

    .line 101
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_SECURITY_EXCEPTION$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_UNDETERMINED-v7Vf74A()I
    .locals 1

    .line 49
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_UNDETERMINED$cp()I

    move-result v0

    return v0
.end method

.method public final getERROR_UNKNOWN_EXCEPTION-v7Vf74A()I
    .locals 1

    .line 121
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraError;->access$getERROR_UNKNOWN_EXCEPTION$cp()I

    move-result v0

    return v0
.end method

.method public final shouldHandleDoNotDisturbException$camera_camera2_pipe(Ljava/lang/Throwable;)Z
    .locals 2

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->isDoNotDisturbException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
