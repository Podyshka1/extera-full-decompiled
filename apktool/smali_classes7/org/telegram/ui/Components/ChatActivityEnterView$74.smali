.class Lorg/telegram/ui/Components/ChatActivityEnterView$74;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$endAlpha:F

.field final synthetic val$endX:F

.field final synthetic val$isVisible:Z

.field final synthetic val$startAlpha:F

.field final synthetic val$startX:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;ZFFFF)V
    .locals 0

    .line 10983
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$isVisible:Z

    iput p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$startAlpha:F

    iput p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$startX:F

    iput p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$endAlpha:F

    iput p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$endX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 11020
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$isVisible:Z

    if-eqz p1, :cond_0

    .line 11021
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mcreateSenderSelectView(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 11023
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    if-eqz p1, :cond_2

    .line 11024
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$isVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11025
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$endAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 11026
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$endX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 11027
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 11029
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 11030
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmessageTextTranslationX(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 11031
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mupdateMessageTextParams(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 11032
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 11007
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$isVisible:Z

    if-nez p1, :cond_1

    .line 11008
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 11009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11011
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 11012
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmessageTextTranslationX(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 11013
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mupdateMessageTextParams(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 10986
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$isVisible:Z

    if-eqz p1, :cond_0

    .line 10987
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mcreateSenderSelectView(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 10988
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10991
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    if-eqz p1, :cond_1

    .line 10992
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$startAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10993
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->val$startX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 10994
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10996
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 10997
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmessageTextTranslationX(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 10998
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mupdateMessageTextParams(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 11000
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetbotCommandsMenuButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/bots/BotCommandsMenuView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetbotCommandsMenuButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/bots/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 11001
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$74;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimationParamsX(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method
