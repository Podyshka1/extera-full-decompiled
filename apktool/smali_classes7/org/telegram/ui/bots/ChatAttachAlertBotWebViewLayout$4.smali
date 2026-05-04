.class Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onPanTransitionStart(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

.field final synthetic val$toY:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;I)V
    .locals 0

    .line 396
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    iput p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;->val$toY:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->-$$Nest$fgetwebViewContainer(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->-$$Nest$fgetwebViewContainer(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;->val$toY:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setScrollY(I)V

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->-$$Nest$fgetwebViewScrollAnimator(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->-$$Nest$fputwebViewScrollAnimator(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void
.end method
