.class public final synthetic Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder$SetupVideoTask;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic f$2:Landroidx/camera/core/impl/Timebase;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/Recorder$SetupVideoTask;

    iput-object p2, p0, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;->f$2:Landroidx/camera/core/impl/Timebase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/Recorder$SetupVideoTask;

    iget-object v1, p0, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;->f$2:Landroidx/camera/core/impl/Timebase;

    invoke-static {v0, v1, v2}, Landroidx/camera/video/Recorder$SetupVideoTask;->$r8$lambda$w-czg8Yls85xyXF3E2b7y2H0JVo(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method
