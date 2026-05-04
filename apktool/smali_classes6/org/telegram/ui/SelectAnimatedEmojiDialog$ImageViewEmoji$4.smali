.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$4;
.super Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createPremiumLockView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Landroid/content/Context;I)V
    .locals 0

    .line 3544
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 3547
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 3548
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3549
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
