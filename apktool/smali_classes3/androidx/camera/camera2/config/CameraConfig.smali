.class public final Landroidx/camera/camera2/config/CameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Landroidx/camera/camera2/config/CameraConfig;->cameraId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/config/CameraConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/camera/camera2/config/CameraConfig;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public final provideCameraConfig()Landroidx/camera/camera2/config/CameraConfig;
    .locals 0

    return-object p0
.end method
