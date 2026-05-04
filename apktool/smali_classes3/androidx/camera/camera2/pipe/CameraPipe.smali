.class public interface abstract Landroidx/camera/camera2/pipe/CameraPipe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;,
        Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;,
        Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;,
        Landroidx/camera/camera2/pipe/CameraPipe$Companion;,
        Landroidx/camera/camera2/pipe/CameraPipe$Config;,
        Landroidx/camera/camera2/pipe/CameraPipe$Flags;,
        Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraPipe$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraPipe$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/CameraPipe;->Companion:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    return-void
.end method


# virtual methods
.method public abstract cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
.end method

.method public abstract cameras()Landroidx/camera/camera2/pipe/CameraDevices;
.end method

.method public abstract createCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
.end method

.method public abstract createCameraGraphs(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;)Ljava/util/List;
.end method

.method public abstract isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract shutdown()V
.end method
