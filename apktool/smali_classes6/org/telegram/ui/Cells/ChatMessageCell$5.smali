.class Lorg/telegram/ui/Cells/ChatMessageCell$5;
.super Lorg/telegram/messenger/video/OldVideoPlayerRewinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->onLongPress()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 11264
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRewindCanceled()V
    .locals 9

    .line 11267
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11268
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    return-void
.end method

.method protected onRewindStart(Z)V
    .locals 2

    .line 11282
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell$5$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ChatMessageCell$5$1;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$5;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setDelegate(Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;)V

    .line 11293
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setOneShootAnimation(Z)V

    .line 11294
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setLeftSide(Z)V

    .line 11295
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    .line 11296
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method protected updateRewindProgressUi(JFZ)V
    .locals 1

    .line 11273
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setTime(J)V

    if-eqz p4, :cond_0

    .line 11275
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iput p3, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 11276
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->updatePlayingMessageProgress()V

    :cond_0
    return-void
.end method
