.class Lorg/telegram/ui/Components/ChatActivityEnterView$82;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$show:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V
    .locals 0

    .line 12566
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->val$show:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 12569
    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->val$show:I

    if-nez p1, :cond_0

    .line 12570
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputemojiPadding(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 12572
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputpanelAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)V

    .line 12573
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetbotKeyboardView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/bots/BotKeyboardView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 12574
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetbotKeyboardView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/bots/BotKeyboardView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12575
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 12576
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12577
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->bottomPanelTranslationYChanged(F)V

    .line 12579
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$82;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
