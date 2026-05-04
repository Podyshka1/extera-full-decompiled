.class Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;


# instance fields
.field private final mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetup(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    return-void
.end method

.method public static getBuildTimeEpochMillis()J
    .locals 4

    .line 70
    const-string v0, "ro.build.date.utc"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat$SupportQueryResult;
    .locals 4

    .line 54
    new-instance v0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat$SupportQueryResult;

    .line 55
    iget-object v1, p0, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 58
    :goto_0
    invoke-static {}, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;->getBuildTimeEpochMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat$SupportQueryResult;-><init>(IIJ)V

    return-object v0
.end method
