.class public final synthetic Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic f$2:Landroidx/camera/core/impl/Timebase;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$1:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$2:Landroidx/camera/core/impl/Timebase;

    iput-boolean p4, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$1:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$2:Landroidx/camera/core/impl/Timebase;

    iget-boolean v3, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/camera/video/Recorder;->$r8$lambda$5TETc2PryyHgoF654O3TRg5ynJU(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method
