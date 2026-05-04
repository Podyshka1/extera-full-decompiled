.class Lorg/telegram/messenger/MediaController$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$destroyAtEnd:Z

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$playCount:[I

.field final synthetic val$tag:I


# direct methods
.method public static synthetic $r8$lambda$0YHtEUo5zCE8ATVeFVJxq4ILBpc(Lorg/telegram/messenger/MediaController$9;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$9;->lambda$onSurfaceDestroyed$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/messenger/MessageObject;[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3663
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    iput p2, p0, Lorg/telegram/messenger/MediaController$9;->val$tag:I

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$9;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$9;->val$playCount:[I

    iput-boolean p5, p0, Lorg/telegram/messenger/MediaController$9;->val$destroyAtEnd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSurfaceDestroyed$0()V
    .locals 2

    .line 3732
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 3674
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 3

    .line 3694
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3695
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputisDrawingWasReady(Lorg/telegram/messenger/MediaController;Z)V

    .line 3696
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 3697
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentTextureViewContainer(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3702
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3703
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onRenderedFirstFrame(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public bridge synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public bridge synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 8

    .line 3666
    iget v0, p0, Lorg/telegram/messenger/MediaController$9;->val$tag:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetplayerNum(Lorg/telegram/messenger/MediaController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3669
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$9;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->val$playCount:[I

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController$9;->val$destroyAtEnd:Z

    move v6, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->-$$Nest$mupdateVideoState(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;[IZZI)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5

    .line 3709
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3712
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipSwitchingState(Lorg/telegram/messenger/MediaController;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5

    .line 3713
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3714
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetisDrawingWasReady(Lorg/telegram/messenger/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3715
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 3717
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3718
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentTextureViewContainer(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3720
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentTextureView(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 3721
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentTextureView(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3723
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentTextureView(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 3725
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1, v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputpipSwitchingState(Lorg/telegram/messenger/MediaController;I)V

    return v3

    .line 3727
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipSwitchingState(Lorg/telegram/messenger/MediaController;)I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 3728
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetbaseActivity(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3729
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipRoundVideoView(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3731
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v2, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    invoke-static {v0, v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputpipRoundVideoView(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/PipRoundVideoView;)V

    .line 3732
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipRoundVideoView(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetbaseActivity(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/MediaController$9$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController$9;)V

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3734
    :catch_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputpipRoundVideoView(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/PipRoundVideoView;)V

    .line 3737
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipRoundVideoView(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3738
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipRoundVideoView(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_7

    .line 3739
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipRoundVideoView(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3741
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetpipRoundVideoView(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 3744
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1, v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputpipSwitchingState(Lorg/telegram/messenger/MediaController;I)V

    return v3

    .line 3746
    :cond_9
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isInjectingVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3747
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoViewer;->injectVideoPlayerSurface(Landroid/graphics/SurfaceTexture;)V

    return v3

    :cond_a
    return v1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2

    .line 3679
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, p3}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputcurrentAspectRatioFrameLayoutRotation(Lorg/telegram/messenger/MediaController;I)V

    const/16 v0, 0x5a

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    move p2, p1

    move p1, v1

    .line 3685
    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, p2

    mul-float/2addr p2, p4

    int-to-float p1, p1

    div-float p1, p2, p1

    :goto_1
    invoke-static {p3, p1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputcurrentAspectRatioFrameLayoutRatio(Lorg/telegram/messenger/MediaController;F)V

    .line 3687
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3688
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayout(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayoutRatio(Lorg/telegram/messenger/MediaController;)F

    move-result p2

    iget-object p3, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p3}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetcurrentAspectRatioFrameLayoutRotation(Lorg/telegram/messenger/MediaController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    :cond_3
    return-void
.end method
