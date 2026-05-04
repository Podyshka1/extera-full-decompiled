.class Lorg/telegram/ui/PhotoViewer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$sUC-htGKJ8AsSbaJF-AxwngvVdQ(Ljava/lang/String;F)V
    .locals 3

    .line 1614
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1615
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 1526
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1530
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1532
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCurrentVideoPosition(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v3

    long-to-float v0, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetVideoDuration(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v0, v3

    .line 1533
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetshownControlsByEnd(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBarWasShownBeforeByEnd(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1536
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinPreview(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1537
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_5

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetVideoDuration(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1540
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcancelVideoPlayRunnable(Lorg/telegram/ui/PhotoViewer;)V

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    .line 1545
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mpauseVideoOrWeb(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_2

    .line 1543
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mplayVideoOrWeb(Lorg/telegram/ui/PhotoViewer;)V

    .line 1547
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 1549
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    goto :goto_3

    .line 1551
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 1554
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateVideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)V

    goto/16 :goto_8

    .line 1557
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCurrentVideoPosition(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v3

    long-to-float v0, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetVideoDuration(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v0, v3

    .line 1558
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetshownControlsByEnd(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBarWasShownBeforeByEnd(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-nez v3, :cond_9

    move v0, v2

    .line 1562
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentVideoFinishedLoading(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_a

    move v3, v5

    goto/16 :goto_6

    .line 1565
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1566
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastBufferedPositionCheck(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v8

    sub-long v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    cmp-long v3, v8, v10

    if-ltz v3, :cond_e

    .line 1567
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1568
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getBufferedPosition()F

    move-result v3

    goto :goto_5

    .line 1570
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisStreaming(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetseekToProgressPending(Lorg/telegram/ui/PhotoViewer;)F

    move-result v8

    cmpl-float v8, v8, v2

    if-eqz v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetseekToProgressPending(Lorg/telegram/ui/PhotoViewer;)F

    move-result v8

    goto :goto_4

    :cond_c
    move v8, v0

    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileNames(Lorg/telegram/ui/PhotoViewer;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result v3

    goto :goto_5

    :cond_d
    move v3, v5

    .line 1572
    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8, v6, v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputlastBufferedPositionCheck(Lorg/telegram/ui/PhotoViewer;J)V

    goto :goto_6

    :cond_e
    move v3, v4

    .line 1577
    :goto_6
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinPreview(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_12

    .line 1578
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_f

    .line 1579
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 1580
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mpauseVideoOrWeb(Lorg/telegram/ui/PhotoViewer;)V

    .line 1581
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 1582
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetVideoDuration(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mseekVideoOrWebTo(Lorg/telegram/ui/PhotoViewer;J)V

    .line 1583
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_7

    .line 1585
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_10

    move v0, v2

    .line 1589
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v0, v1

    cmpl-float v1, v0, v5

    if-lez v1, :cond_11

    move v0, v5

    .line 1593
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    goto :goto_7

    .line 1596
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetseekToProgressPending(Lorg/telegram/ui/PhotoViewer;)F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_14

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v6, v5, Lorg/telegram/ui/PhotoViewer;->longVideoPlayerRewinder:Lorg/telegram/messenger/video/OldVideoPlayerRewinder;

    iget v7, v6, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    if-eqz v7, :cond_13

    iget-boolean v6, v6, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindByBackSeek:Z

    if-nez v6, :cond_14

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerRewinder(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    if-nez v5, :cond_14

    .line 1597
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(FZ)V

    :cond_14
    cmpl-float v1, v3, v4

    if-eqz v1, :cond_15

    .line 1600
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setBufferedProgress(F)V

    .line 1601
    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->setBufferedProgress(F)V

    .line 1604
    :cond_15
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbarView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1605
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetshouldSavePositionForCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_17

    .line 1607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastSaveTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_17

    .line 1608
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetshouldSavePositionForCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/String;

    move-result-object v1

    .line 1609
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputlastSaveTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 1610
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1611
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MessageObject;->cachedSavedTimestamp:Ljava/lang/Float;

    .line 1613
    :cond_16
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$6$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/PhotoViewer$6$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1619
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateVideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)V

    .line 1636
    :cond_18
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$FirstFrameView;->-$$Nest$mupdateAlpha(Lorg/telegram/ui/PhotoViewer$FirstFrameView;)V

    .line 1639
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisPlaying(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$6;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetupdateProgressRunnable(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x11

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1a
    return-void
.end method
