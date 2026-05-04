.class Lorg/telegram/ui/PhotoViewer$3;
.super Lorg/telegram/messenger/video/OldVideoPlayerRewinder;
.source "SourceFile"


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
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRewindCanceled()V
    .locals 9

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$monTouchEvent(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    .line 1187
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->onRewindCanceled()V

    return-void
.end method

.method protected onRewindStart(Z)V
    .locals 2

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setOneShootAnimation(Z)V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setLeftSide(Z)V

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1208
    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->onRewindStart(Z)V

    return-void
.end method

.method protected updateRewindProgressUi(JFZ)V
    .locals 3

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setTime(J)V

    if-eqz p4, :cond_0

    .line 1194
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbarView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1198
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->onUpdateRewindProgressUi(JFZ)V

    return-void
.end method
