.class Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;
.super Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
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
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EmojiTabsStrip;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iput-object p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;->val$this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 879
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 882
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 887
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 890
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->invalidate(IIII)V

    return-void
.end method
