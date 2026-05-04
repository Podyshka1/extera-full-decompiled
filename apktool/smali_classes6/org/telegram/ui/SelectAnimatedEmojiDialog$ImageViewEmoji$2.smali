.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->unselectWithScale()V
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

    .line 3367
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3370
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3371
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
