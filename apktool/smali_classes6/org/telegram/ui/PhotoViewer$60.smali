.class Lorg/telegram/ui/PhotoViewer$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createCropView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$yeNdFBU5yzNq9B6npywhJfOd_ac(Lorg/telegram/ui/PhotoViewer$60;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$60;->lambda$onVideoThumbClick$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 12090
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onVideoThumbClick$0()V
    .locals 2

    .line 12119
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 12120
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12121
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 12123
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoPlayRunnable(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getVideoThumbX()I
    .locals 3

    const/high16 v0, 0x41800000    # 16.0f

    .line 12139
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarStartProgress(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public mirror()Z
    .locals 1

    .line 12134
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcropMirror(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .line 12093
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateResetButtonVisibility(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method

.method public onTapUp()V
    .locals 2

    .line 12103
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12104
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 12105
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mtoggleVideoPlayer(Lorg/telegram/ui/PhotoViewer;)V

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 1

    .line 12098
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onVideoThumbClick()V
    .locals 4

    .line 12111
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12114
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarStartProgress(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 12115
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 12116
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarStartProgress(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 12117
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcancelVideoPlayRunnable(Lorg/telegram/ui/PhotoViewer;)V

    .line 12118
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$60$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$60$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$60;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoPlayRunnable(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x35c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public rotate()Z
    .locals 2

    .line 12129
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcropRotate(Lorg/telegram/ui/PhotoViewer;F)Z

    move-result v0

    return v0
.end method
