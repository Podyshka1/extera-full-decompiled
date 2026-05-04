.class Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;)V
    .locals 0

    .line 1530
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;->this$0:Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1533
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;->this$0:Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingAnimation:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1538
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;->this$0:Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingAnimation:Z

    .line 1539
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_0

    .line 1540
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;->this$0:Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
