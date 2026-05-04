.class public final Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;


# instance fields
.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/StrictMode;)V
    .locals 1

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quirks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strictMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 64
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 65
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 66
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 67
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    return-void
.end method


# virtual methods
.method public create(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;
    .locals 11

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamToSurfaceMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToSurfaceMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 77
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 78
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getDefaultTemplate-fGx8uWA()I

    move-result v4

    .line 81
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 82
    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 83
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Z

    move-result v9

    const/4 v10, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 75
    invoke-direct/range {v1 .. v10}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
