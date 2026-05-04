.class Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->animateCounterBounce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)V
    .locals 0

    .line 1882
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1885
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->-$$Nest$fgetcounterView(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1886
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->-$$Nest$fgetcounterView(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1887
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->-$$Nest$fgetcounterView(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
