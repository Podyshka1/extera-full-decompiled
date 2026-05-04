.class Lorg/telegram/ui/Gifts/GiftSheet$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/GiftSheet;

.field final synthetic val$drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$11;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$11;->val$drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$11;->val$drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$11;->val$drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method
