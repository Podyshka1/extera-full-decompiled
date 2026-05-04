.class Lorg/telegram/ui/Components/HashtagHistoryView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HashtagHistoryView;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HashtagHistoryView;Z)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagHistoryView;->-$$Nest$fgetanimation(Lorg/telegram/ui/Components/HashtagHistoryView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/HashtagHistoryView;->-$$Nest$fputanimation(Lorg/telegram/ui/Components/HashtagHistoryView;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagHistoryView;->-$$Nest$fgetanimation(Lorg/telegram/ui/Components/HashtagHistoryView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/HashtagHistoryView;->-$$Nest$fputanimation(Lorg/telegram/ui/Components/HashtagHistoryView;Landroid/animation/AnimatorSet;)V

    .line 104
    iget-boolean p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->val$show:Z

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView$2;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
