.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1284
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fputisAnimatePopupClosing(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)V

    .line 1285
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 1286
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiView()V

    return-void
.end method
