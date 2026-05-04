.class Lorg/telegram/ui/Cells/PollEditTextCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 0

    .line 471
    iput-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$2;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell$2;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 479
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$2;->val$visible:Z

    if-nez p1, :cond_0

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$2;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->-$$Nest$fgetemojiButton(Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 482
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$2;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->-$$Nest$fgetemojiButton(Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$2;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->-$$Nest$fgetemojiButton(Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell$2;->this$0:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->-$$Nest$fgetemojiButton(Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
