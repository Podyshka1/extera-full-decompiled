.class Lorg/telegram/ui/PhotoViewer$56;
.super Lorg/telegram/ui/Components/VideoPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/util/ArrayList;Landroid/net/Uri;ZZLorg/telegram/messenger/MediaController$SavedFilterState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 10741
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderedFirstFrame()V
    .locals 2

    .line 10777
    invoke-super {p0}, Lorg/telegram/ui/Components/VideoPlayer;->onRenderedFirstFrame()V

    .line 10778
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputfirstFrameRendered(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 10779
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetusedSurfaceView(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10780
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10782
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateQualityItems(Lorg/telegram/ui/PhotoViewer;)V

    .line 10783
    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 10784
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetignorePlayerUpdate(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10785
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/ui/CastSync;->syncPosition(J)V

    .line 10786
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getPlaybackSpeed()F

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/CastSync;->setSpeed(F)V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 4

    .line 10754
    invoke-super {p0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 10755
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10756
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mplayOrStopAnimatedStickers(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 10758
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetignorePlayerUpdate(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10759
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CastSync;->syncPosition(J)V

    .line 10760
    invoke-static {v1}, Lorg/telegram/ui/CastSync;->setPlaying(Z)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 4

    .line 10744
    invoke-super {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 10745
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mplayOrStopAnimatedStickers(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 10746
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetignorePlayerUpdate(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10747
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CastSync;->syncPosition(J)V

    .line 10748
    invoke-static {v1}, Lorg/telegram/ui/CastSync;->setPlaying(Z)V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 10766
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 10767
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10768
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mseekAnimatedStickersTo(Lorg/telegram/ui/PhotoViewer;J)V

    .line 10770
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetignorePlayerUpdate(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10771
    invoke-static {p1, p2}, Lorg/telegram/ui/CastSync;->syncPosition(J)V

    :cond_1
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 10792
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 10793
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetignorePlayerUpdate(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10794
    invoke-static {p1}, Lorg/telegram/ui/CastSync;->setSpeed(F)V

    :cond_0
    return-void
.end method
