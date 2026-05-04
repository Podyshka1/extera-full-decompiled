.class Lorg/telegram/ui/Components/ChatActivityEnterView$55;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 7271
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 7274
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 7275
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7277
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    if-eqz p1, :cond_1

    .line 7278
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7292
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 7293
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 7294
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mhideRecordedAudioPanelInternal(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 7295
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7296
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setSendButtonInvisible()V

    :cond_2
    return-void
.end method
