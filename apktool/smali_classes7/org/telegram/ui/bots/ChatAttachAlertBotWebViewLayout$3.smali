.class Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$3;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$3;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->-$$Nest$fgetprogressView(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
