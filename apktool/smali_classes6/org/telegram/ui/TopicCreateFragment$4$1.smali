.class Lorg/telegram/ui/TopicCreateFragment$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicCreateFragment$4;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TopicCreateFragment$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicCreateFragment$4;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$4$1;->this$1:Lorg/telegram/ui/TopicCreateFragment$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 408
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$4$1;->this$1:Lorg/telegram/ui/TopicCreateFragment$4;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/TopicCreateFragment$4;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
