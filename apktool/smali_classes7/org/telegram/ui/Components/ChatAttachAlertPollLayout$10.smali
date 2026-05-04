.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->animateEmojiViewTranslationY(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field final synthetic val$toY:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;F)V
    .locals 0

    .line 1451
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iput p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;->val$toY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1454
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;->val$toY:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method
