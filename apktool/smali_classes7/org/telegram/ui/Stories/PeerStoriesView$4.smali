.class Lorg/telegram/ui/Stories/PeerStoriesView$4;
.super Lorg/telegram/ui/Stories/HwFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field drawOverlayed:Z

.field final loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field final loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field final loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

.field final progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

.field final progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

.field splitDrawing:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$YMbgCUMQfj0WoJMGWVfs9nBVSr8(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->lambda$drawLines$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/HwFrameLayout;-><init>(Landroid/content/Context;)V

    .line 564
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 p3, 0x96

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 565
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 566
    new-instance p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 p2, 0x66

    const/16 p3, 0xf0

    const/16 p4, 0x20

    invoke-direct {p1, p4, p2, p3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>(III)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 567
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 568
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p3, 0x1f4

    .line 570
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    const-wide/16 p3, 0x64

    .line 571
    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v5, p0

    .line 790
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v0, :cond_2

    .line 791
    :cond_1
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->checkSendView()V

    .line 795
    :cond_2
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mgetHideInterfaceAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v0

    .line 796
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    .line 797
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_3

    .line 798
    iget-wide v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getPlaybackProgress(J)F

    move-result v1

    .line 799
    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 800
    iget-object v2, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v3, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 801
    iget-object v2, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shine()V

    goto :goto_0

    :cond_3
    move v1, v8

    .line 804
    :cond_4
    :goto_0
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    :goto_1
    move v13, v1

    goto/16 :goto_2

    .line 805
    :cond_5
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpaused(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    const v2, 0x461c4000    # 10000.0f

    if-nez v1, :cond_8

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v3, :cond_8

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisUploading(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisEditing(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisFailed(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 807
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlastDrawTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-eqz v1, :cond_7

    .line 808
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 809
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    cmp-long v1, v9, v11

    if-gtz v1, :cond_6

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlastDrawTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    sub-long v9, v3, v9

    cmp-long v1, v9, v11

    if-lez v1, :cond_6

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 810
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shine()V

    .line 812
    :cond_6
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    iget-object v6, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlastDrawTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v11

    sub-long v11, v3, v11

    add-long/2addr v9, v11

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    .line 815
    :cond_7
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputlastDrawTime(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    .line 816
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 817
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    goto/16 :goto_1

    .line 819
    :cond_8
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    goto/16 :goto_1

    .line 823
    :goto_2
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_9

    iget v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_9

    move/from16 v19, v2

    goto :goto_3

    :cond_9
    move/from16 v19, v13

    .line 827
    :goto_3
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetswitchEventSent(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    const/4 v9, 0x1

    if-nez v1, :cond_b

    cmpl-float v1, v13, v7

    if-nez v1, :cond_b

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisLongPressed(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 828
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputswitchEventSent(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 829
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 843
    :cond_b
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_d

    iget v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    .line 844
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryPositionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;

    move-result-object v1

    if-nez v1, :cond_c

    .line 845
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v2, Lorg/telegram/ui/Stories/StoryPositionView;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/StoryPositionView;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputstoryPositionView(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryPositionView;)V

    .line 847
    :cond_c
    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryPositionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;

    move-result-object v1

    iget-object v2, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    mul-float/2addr v0, v2

    iget-object v2, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetoutT(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    sub-float v2, v7, v2

    mul-float/2addr v2, v0

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlistPosition(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v4

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    move-object v0, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoryPositionView;->draw(Landroid/graphics/Canvas;FIILandroid/widget/FrameLayout;Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V

    .line 850
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41000000    # 8.0f

    .line 851
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetoutT(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 852
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v17, v9

    goto :goto_4

    :cond_e
    move/from16 v17, v1

    .line 853
    :goto_4
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisLongPressed(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-eqz v0, :cond_f

    move/from16 v18, v9

    goto :goto_5

    :cond_f
    move/from16 v18, v1

    .line 854
    :goto_5
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlinesAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    iget-object v2, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisLongPressed(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v18, :cond_10

    goto :goto_6

    :cond_10
    move v9, v1

    :cond_11
    :goto_6
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v15

    .line 855
    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryLines(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryLinesDrawable;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlinesPosition(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v12

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlinesCount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v14

    iget-object v0, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v0

    iget-object v1, v5, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetoutT(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    sub-float/2addr v7, v1

    mul-float v16, v0, v7

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/ui/Stories/StoryLinesDrawable;->draw(Landroid/graphics/Canvas;IIFIFFZZF)V

    .line 856
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private synthetic lambda$drawLines$0()V
    .locals 3

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_3

    .line 831
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisUploading(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisEditing(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisFailed(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->shouldSwitchToNext()V

    return-void

    .line 832
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->loopBack()V

    return-void

    .line 835
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 579
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v9, 0x1

    if-nez v3, :cond_0

    .line 580
    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 583
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, -0x1

    const/high16 v8, -0x1000000

    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v3, :cond_15

    .line 584
    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-nez v3, :cond_1

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasSelectedForScale()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightScaleAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    .line 587
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 588
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/PinchToZoomHelper;->applyTransform(Landroid/graphics/Canvas;)V

    .line 589
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v6, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-boolean v7, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-nez v7, :cond_3

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v3, :cond_8

    .line 591
    :cond_3
    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v2

    if-nez v2, :cond_4

    .line 592
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v2, v12, v12, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 593
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 595
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v2, v13, v13, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 596
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 597
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v3, :cond_c

    .line 598
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v4, :cond_5

    iget-object v4, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-boolean v3, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->stubAvailable:Z

    if-eqz v3, :cond_5

    .line 599
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v3, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v4, v4, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 601
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 602
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 603
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v3, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 604
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 606
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_6

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetblurredBackgroundSourceRenderNodeWithSaturation(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetblurredBackgroundSourceRenderNodeWithSaturation(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    .line 608
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->isRecordingCanvas(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v9

    goto :goto_0

    :cond_6
    move v2, v12

    .line 610
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetallowDrawSurface(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    .line 611
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_9

    .line 618
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    .line 620
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->skipped:Z

    if-eqz v3, :cond_a

    .line 621
    invoke-static {v8, v5, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 623
    :cond_a
    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v2

    if-nez v2, :cond_b

    .line 624
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v2, v12, v12, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 625
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 627
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v2, v13, v13, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 628
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 631
    :cond_c
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 632
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageChanged(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 633
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v13, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 634
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v13, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 637
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 638
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v3, :cond_f

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-nez v2, :cond_e

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/LivePlayer;->isEmptyStream()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_2
    move v2, v9

    goto :goto_3

    :cond_f
    move v2, v12

    goto :goto_3

    .line 639
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 640
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v3, :cond_f

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v4, :cond_f

    iget v3, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_e

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->isBuffering()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-boolean v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v2, :cond_f

    goto :goto_2

    .line 642
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    .line 644
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v5, :cond_12

    if-nez v2, :cond_12

    iget-object v2, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v2, :cond_12

    move v2, v11

    goto :goto_4

    :cond_12
    move v2, v13

    :goto_4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 645
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    cmpl-float v3, v3, v11

    if-nez v3, :cond_13

    move v3, v11

    goto :goto_5

    :cond_13
    move v3, v13

    :goto_5
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 647
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v2, v13

    if-lez v2, :cond_14

    .line 648
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 649
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setAlpha(I)V

    .line 650
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 651
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const v4, 0x3fa66666    # 1.3f

    iput v4, v3, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const/high16 v4, 0x41200000    # 10.0f

    .line 652
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v2, v4, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 654
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2, v12}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputimageChanged(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    goto :goto_6

    .line 656
    :cond_15
    invoke-static {v8, v5, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 658
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v13

    if-lez v2, :cond_17

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v11

    if-nez v2, :cond_16

    .line 660
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    goto :goto_7

    .line 662
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v10

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 664
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 665
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 668
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlastNoThumb(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 669
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputlastNoThumb(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 670
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 672
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mgetHideInterfaceAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    .line 674
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgettopOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 675
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgettopOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 677
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v4, :cond_19

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetBIG_SCREEN(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_28

    .line 678
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_24

    const/high16 v3, 0x42900000    # 72.0f

    .line 679
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 680
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryCaptionView;->getTextTop()F

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 682
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f266666    # 0.65f

    mul-float/2addr v6, v7

    .line 683
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mhideCaptionWithInterface(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v7

    int-to-float v14, v4

    sub-float v14, v6, v14

    const/high16 v15, 0x42700000    # 60.0f

    move/from16 v16, v5

    .line 684
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v14, v5

    cmpl-float v5, v14, v13

    if-lez v5, :cond_1a

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->isTouched()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->hasScroll()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 685
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->getMaxTop()F

    move-result v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v5, v14

    float-to-int v5, v5

    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v14}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v5, v14

    int-to-float v5, v5

    sub-float/2addr v6, v5

    .line 686
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    cmpl-float v5, v6, v13

    if-lez v5, :cond_1c

    .line 687
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v9, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    goto :goto_8

    .line 689
    :cond_1a
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v14, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    if-eqz v14, :cond_1b

    .line 690
    iput-boolean v12, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 691
    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->getMaxTop()F

    move-result v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v5, v14

    float-to-int v5, v5

    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v14}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v5, v14

    int-to-float v5, v5

    sub-float/2addr v6, v5

    .line 692
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    cmpl-float v5, v6, v13

    if-lez v5, :cond_1c

    .line 693
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v9, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    goto :goto_8

    .line 695
    :cond_1b
    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v5

    cmpl-float v5, v5, v13

    if-nez v5, :cond_1c

    .line 696
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v12, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    :cond_1c
    :goto_8
    if-eqz v7, :cond_1d

    goto :goto_9

    :cond_1d
    move v2, v11

    .line 699
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    if-eqz v6, :cond_1e

    move v6, v11

    goto :goto_a

    :cond_1e
    move v6, v13

    :goto_a
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v14

    cmpl-float v15, v14, v13

    if-lez v15, :cond_1f

    .line 701
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 702
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    .line 703
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 704
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 705
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawLines(Landroid/graphics/Canvas;)V

    .line 706
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetgradientBackgroundPaint(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v5

    const/high16 v6, 0x43190000    # 153.0f

    mul-float/2addr v6, v14

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v8, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 707
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetgradientBackgroundPaint(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_1f
    cmpg-float v5, v14, v11

    if-gez v5, :cond_20

    .line 709
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 710
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 711
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetgradientBackgroundPaint(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v5

    sub-float v6, v11, v14

    const v7, 0x430107ae    # 129.03f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-static {v8, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 712
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetbottomOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    mul-float/2addr v6, v10

    mul-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 713
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetbottomOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2, v12, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 714
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetbottomOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, v3

    .line 715
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetgradientBackgroundPaint(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_20
    if-lez v15, :cond_22

    .line 718
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v13

    if-lez v1, :cond_22

    .line 719
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw(Z)V

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_21

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v10

    float-to-int v6, v1

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_b

    :cond_21
    move-object/from16 v1, p1

    .line 723
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 725
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 726
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->draw(Landroid/graphics/Canvas;)V

    .line 727
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_22
    move-object/from16 v1, p1

    .line 729
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    if-lez v15, :cond_23

    move v3, v9

    goto :goto_d

    :cond_23
    move v3, v12

    :goto_d
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw(Z)V

    if-lez v15, :cond_29

    .line 731
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 732
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    .line 733
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 734
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    goto :goto_10

    .line 736
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 737
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetBIG_SCREEN(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/high16 v3, 0x42600000    # 56.0f

    :goto_e
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_f

    :cond_25
    const/high16 v3, 0x42dc0000    # 110.0f

    goto :goto_e

    .line 738
    :goto_f
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v5, :cond_26

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetBIG_SCREEN(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v4

    if-nez v4, :cond_27

    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_27

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 741
    :cond_27
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetbottomOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v12, v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 743
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetbottomOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 744
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetbottomOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_28
    move v14, v13

    .line 747
    :cond_29
    :goto_10
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetviewsThumbAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetviewsThumbImageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 748
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetviewsThumbImageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetviewsThumbAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetviewsThumbScale(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->draw(Landroid/graphics/Canvas;FFIIII)V

    move-object v1, v2

    .line 751
    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_11

    :cond_2b
    move v11, v13

    :goto_11
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 753
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v3, :cond_2f

    .line 754
    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    if-nez v3, :cond_2c

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView;->isTouched()Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    move v2, v9

    goto :goto_12

    :cond_2d
    move v2, v12

    .line 755
    :goto_12
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v4

    cmpl-float v4, v4, v13

    if-lez v4, :cond_2e

    goto :goto_13

    :cond_2e
    move v9, v12

    :goto_13
    invoke-static {v3, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputisCaptionPartVisible(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 756
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaption(Z)V

    .line 757
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    invoke-interface {v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaptionPartVisible(Z)V

    :cond_2f
    cmpg-float v2, v14, v13

    if-gtz v2, :cond_30

    .line 760
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 761
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawLines(Landroid/graphics/Canvas;)V

    .line 764
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetemojiAnimationsOverlay(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 765
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetemojiAnimationsOverlay(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->draw(Landroid/graphics/Canvas;)V

    :cond_31
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->isEmptyStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 924
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    .line 774
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    if-eqz v0, :cond_3

    .line 775
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 776
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    if-eqz v0, :cond_1

    .line 777
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_1
    return v1

    .line 782
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 785
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 861
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetemojiAnimationsOverlay(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAttachedToWindow()V

    .line 863
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 896
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetemojiAnimationsOverlay(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onDetachedFromWindow()V

    .line 898
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 900
    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setBulletinIsVisible(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmuteIconContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 907
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mdrawLinesAsCounter(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    .line 908
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/high16 v1, 0x425c0000    # 55.0f

    .line 909
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42280000    # 42.0f

    .line 911
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/high16 v1, 0x41700000    # 15.0f

    .line 912
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 914
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
