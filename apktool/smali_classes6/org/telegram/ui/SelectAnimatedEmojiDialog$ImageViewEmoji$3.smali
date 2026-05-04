.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelectedWithScale(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 0

    .line 3393
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 3396
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3397
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fputpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V

    .line 3398
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 3399
    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fputshouldSelected(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Z)V

    .line 3400
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    return-void
.end method
