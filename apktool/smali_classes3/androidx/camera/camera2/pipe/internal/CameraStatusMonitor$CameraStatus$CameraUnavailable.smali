.class public final Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;
.super Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraUnavailable"
.end annotation


# instance fields
.field private final cameraId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;->cameraId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraUnavailable(camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;->cameraId:Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
