.class Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V
    .locals 0

    .line 2058
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;->this$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 2061
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;->this$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2063
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;->this$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iget-object v0, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 2064
    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput v1, p1, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v2, 0x1

    .line 2066
    iput-boolean v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 2067
    iput-boolean v1, p1, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 2069
    instance-of p1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;

    if-nez p1, :cond_0

    .line 2070
    iput-boolean v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    .line 2071
    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend()V

    .line 2072
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;->this$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    .line 2073
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;->this$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2075
    :cond_0
    iput-boolean v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    .line 2076
    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->clearSelection()V

    .line 2078
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;->this$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
