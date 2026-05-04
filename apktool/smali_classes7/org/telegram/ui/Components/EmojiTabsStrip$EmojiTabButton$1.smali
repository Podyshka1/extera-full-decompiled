.class Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Document;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiTabsStrip;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;->val$this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 855
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLockImageReceiver()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 864
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method
