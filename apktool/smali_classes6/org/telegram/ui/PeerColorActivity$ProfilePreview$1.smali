.class Lorg/telegram/ui/PeerColorActivity$ProfilePreview$1;
.super Lorg/telegram/ui/ActionBar/SimpleTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$ProfilePreview;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$ProfilePreview;Landroid/content/Context;)V
    .locals 0

    .line 3096
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ProfilePreview$1;->this$0:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 3099
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onAttachedToWindow()V

    .line 3100
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ProfilePreview$1;->this$0:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->-$$Nest$fgetstatusEmoji(Lorg/telegram/ui/PeerColorActivity$ProfilePreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 3105
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onDetachedFromWindow()V

    .line 3106
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ProfilePreview$1;->this$0:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->-$$Nest$fgetstatusEmoji(Lorg/telegram/ui/PeerColorActivity$ProfilePreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method
