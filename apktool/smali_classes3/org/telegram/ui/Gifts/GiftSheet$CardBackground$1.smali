.class Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;
.super Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;Landroid/view/View;I)V
    .locals 0

    .line 2487
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .line 2490
    invoke-super {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    .line 2491
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2492
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
