.class public final synthetic Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoCapture;

.field public final synthetic f$1:Landroidx/camera/core/processing/SurfaceEdge;

.field public final synthetic f$2:Landroidx/camera/core/impl/CameraInternal;

.field public final synthetic f$3:Landroidx/camera/video/impl/VideoCaptureConfig;

.field public final synthetic f$4:Landroidx/camera/core/impl/Timebase;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/video/VideoCapture;

    iput-object p2, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/processing/SurfaceEdge;

    iput-object p3, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$2:Landroidx/camera/core/impl/CameraInternal;

    iput-object p4, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$3:Landroidx/camera/video/impl/VideoCaptureConfig;

    iput-object p5, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$4:Landroidx/camera/core/impl/Timebase;

    iput-boolean p6, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/video/VideoCapture;

    iget-object v1, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v2, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$2:Landroidx/camera/core/impl/CameraInternal;

    iget-object v3, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$3:Landroidx/camera/video/impl/VideoCaptureConfig;

    iget-object v4, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$4:Landroidx/camera/core/impl/Timebase;

    iget-boolean v5, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda1;->f$5:Z

    invoke-static/range {v0 .. v5}, Landroidx/camera/video/VideoCapture;->$r8$lambda$3KNuUrN9qaxvsQVqMww6UO9FNHI(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method
