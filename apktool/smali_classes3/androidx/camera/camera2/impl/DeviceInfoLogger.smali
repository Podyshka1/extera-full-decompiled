.class public final Landroidx/camera/camera2/impl/DeviceInfoLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/impl/DeviceInfoLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/impl/DeviceInfoLogger;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/DeviceInfoLogger;-><init>()V

    sput-object v0, Landroidx/camera/camera2/impl/DeviceInfoLogger;->INSTANCE:Landroidx/camera/camera2/impl/DeviceInfoLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final logDeviceLevel(Landroidx/camera/camera2/impl/CameraProperties;)V
    .locals 3

    .line 33
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    .line 34
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 33
    invoke-interface {p1, v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 41
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY"

    goto :goto_5

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 43
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_EXTERNAL"

    goto :goto_5

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    .line 44
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 45
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED"

    goto :goto_5

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    .line 46
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 47
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_FULL"

    goto :goto_5

    :cond_7
    :goto_3
    if-nez p1, :cond_8

    goto :goto_4

    .line 48
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 49
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_3"

    goto :goto_5

    .line 50
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    :goto_5
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 102
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 103
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method


# virtual methods
.method public final logDeviceInfo(Landroidx/camera/camera2/impl/CameraProperties;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/DeviceInfoLogger;->logDeviceLevel(Landroidx/camera/camera2/impl/CameraProperties;)V

    return-void
.end method
