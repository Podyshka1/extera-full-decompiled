.class Lorg/telegram/ui/PhotoViewer$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private seekTo:I

.field private seekToRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private wasPlaying:Z


# direct methods
.method public static synthetic $r8$lambda$83tvJY_CSJYtv56vqcFEytC-vVk(Lorg/telegram/ui/PhotoViewer$29;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$29;->lambda$seekTo$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 6534
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$seekTo$0()V
    .locals 4

    .line 6598
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$29;->seekTo:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mseekVideoOrWebTo(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6599
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6600
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$29;->seekTo:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputneedCaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6601
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetneedCaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6602
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    :cond_0
    const/4 v0, 0x0

    .line 6605
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->seekToRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private seekTo(F)V
    .locals 4

    .line 6586
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoDuration(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$29;->seekTo:I

    .line 6587
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 6588
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$29;->seekTo:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mseekVideoOrWebTo(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6589
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6590
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$29;->seekTo:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputneedCaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6591
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetneedCaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 6592
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    :cond_0
    const/4 p1, 0x0

    .line 6595
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->seekToRunnable:Ljava/lang/Runnable;

    return-void

    .line 6596
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->seekToRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 6597
    new-instance p1, Lorg/telegram/ui/PhotoViewer$29$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoViewer$29$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$29;)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->seekToRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private updateAvatarStartTime(I)V
    .locals 4

    .line 6611
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_4

    .line 6615
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarStartProgress(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarStartProgress(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 6616
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVideoThumbVisible(Z)V

    if-ne p1, v1, :cond_2

    .line 6618
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoDuration(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputavatarStartTime(Lorg/telegram/ui/PhotoViewer;J)V

    goto :goto_0

    .line 6620
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoDuration(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputavatarStartTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6622
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptureFrameAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    :cond_3
    :goto_1
    return-void

    .line 6625
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getProgress()F

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputavatarStartProgress(Lorg/telegram/ui/PhotoViewer;F)V

    .line 6626
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoDuration(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarStartProgress(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputavatarStartTime(Lorg/telegram/ui/PhotoViewer;J)V

    return-void
.end method


# virtual methods
.method public didStartDragging(I)V
    .locals 2

    .line 6632
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    if-ne p1, v0, :cond_1

    .line 6633
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcancelVideoPlayRunnable(Lorg/telegram/ui/PhotoViewer;)V

    .line 6634
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6635
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcancelFlashAnimations(Lorg/telegram/ui/PhotoViewer;)V

    .line 6636
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptureFrameAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6638
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$misVideoPlaying(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$29;->wasPlaying:Z

    if-eqz p1, :cond_1

    .line 6639
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 6640
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mpauseVideoOrWeb(Lorg/telegram/ui/PhotoViewer;)V

    .line 6641
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public didStopDragging(I)V
    .locals 4

    .line 6648
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->seekToRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6649
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6650
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->seekToRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6652
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcancelVideoPlayRunnable(Lorg/telegram/ui/PhotoViewer;)V

    .line 6653
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetflashView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    if-ne p1, v0, :cond_1

    .line 6654
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcancelFlashAnimations(Lorg/telegram/ui/PhotoViewer;)V

    .line 6655
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarStartTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptureFrameAtTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6656
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptureFrameReadyAtTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    iget p1, p0, Lorg/telegram/ui/PhotoViewer$29;->seekTo:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 6657
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcaptureCurrentFrame(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    .line 6660
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$29;->wasPlaying:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 6661
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 6662
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mplayVideoOrWeb(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method public onLeftProgressChanged(F)V
    .locals 2

    .line 6542
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6545
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6546
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 6547
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 6548
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    const/4 v0, 0x1

    .line 6550
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer$29;->updateAvatarStartTime(I)V

    .line 6551
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$29;->seekTo(F)V

    .line 6552
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 6553
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 6554
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateVideoInfo(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method public onPlayProgressChanged(F)V
    .locals 2

    .line 6576
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6579
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 6580
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer$29;->updateAvatarStartTime(I)V

    .line 6582
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$29;->seekTo(F)V

    return-void
.end method

.method public onRightProgressChanged(F)V
    .locals 2

    .line 6559
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6562
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6563
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 6564
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 6565
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    const/4 v0, 0x2

    .line 6567
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer$29;->updateAvatarStartTime(I)V

    .line 6568
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$29;->seekTo(F)V

    .line 6569
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 6570
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 6571
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$29;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateVideoInfo(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method
