.class public final synthetic Landroidx/camera/video/Recorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;

.field public final synthetic f$1:Landroidx/camera/video/VideoOutput$SourceState;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/video/VideoOutput$SourceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/video/VideoOutput$SourceState;

    invoke-static {v0, v1}, Landroidx/camera/video/Recorder;->$r8$lambda$QnBUBeAhjUEZDIXnsFvH4_DASJU(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void
.end method
