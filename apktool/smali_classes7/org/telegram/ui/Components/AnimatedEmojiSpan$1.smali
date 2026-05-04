.class Lorg/telegram/ui/Components/AnimatedEmojiSpan$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getExtraScale()F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->-$$Nest$fputscaleAnimator(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x0

    .line 116
    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->-$$Nest$sfputlockPositionChanging(Z)V

    return-void
.end method
