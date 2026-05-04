.class Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;I)V
    .locals 0

    .line 978
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$2;->val$to:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 981
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$2;->val$to:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    return-void
.end method
