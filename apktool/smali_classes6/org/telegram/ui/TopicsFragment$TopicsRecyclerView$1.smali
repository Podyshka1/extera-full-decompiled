.class Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;)V
    .locals 0

    .line 1902
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView$1;->this$1:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1905
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1906
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView$1;->this$1:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    return-void
.end method
