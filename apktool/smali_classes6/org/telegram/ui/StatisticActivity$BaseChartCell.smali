.class public abstract Lorg/telegram/ui/StatisticActivity$BaseChartCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseChartCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;
    }
.end annotation


# instance fields
.field chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

.field chartType:I

.field chartView:Lorg/telegram/ui/Charts/BaseChartView;

.field checkBoxes:Ljava/util/ArrayList;

.field checkboxContainer:Landroid/view/ViewGroup;

.field data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field errorTextView:Landroid/widget/TextView;

.field progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;


# direct methods
.method public static synthetic $r8$lambda$2ZXd9xHwj2UzqRC8ICk7UfLrxpE(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M300l7FVWcRq6l3lCS7qawX2Gfc(Lorg/telegram/ui/StatisticActivity$BaseChartCell;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$QrPwqYh2pTNiJM_H9q2L7fadNOo(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RAa_AZgMeTmV90h3fZrtuBtXzp0(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$updateData$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UyxITjH46P9X-f9qly_OzlsBqmg(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Lorg/telegram/ui/Charts/view_data/TransitionParams;FLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$createTransitionAnimator$4(Lorg/telegram/ui/Charts/view_data/TransitionParams;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vI6a4KfAeQyHIQu-516lDfBz8k0(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V
    .locals 1

    const/4 v0, 0x0

    .line 1804
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 1809
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1810
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1811
    iput p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartType:I

    .line 1812
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1813
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1814
    new-instance v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$1;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    .line 1851
    new-instance v3, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 1852
    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->back:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;

    invoke-direct {v4}, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1853
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->back:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x4

    if-eq p2, v2, :cond_4

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v4, 0x5

    if-eq p2, v4, :cond_0

    .line 1883
    new-instance p2, Lorg/telegram/ui/Charts/LinearChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/LinearChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1884
    new-instance p2, Lorg/telegram/ui/Charts/LinearChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/LinearChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1885
    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v2, p2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    goto/16 :goto_0

    .line 1877
    :cond_0
    new-instance p2, Lorg/telegram/ui/Charts/LinearBarChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/LinearBarChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1878
    new-instance p2, Lorg/telegram/ui/Charts/LinearBarChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/LinearBarChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1879
    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v2, p2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    goto :goto_0

    .line 1872
    :cond_1
    new-instance p2, Lorg/telegram/ui/Charts/StackLinearChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/StackLinearChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1873
    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v2, p2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showPercentage:Z

    .line 1874
    new-instance p2, Lorg/telegram/ui/Charts/PieChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/PieChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    goto :goto_0

    .line 1867
    :cond_2
    new-instance p2, Lorg/telegram/ui/Charts/BarChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/BarChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1868
    new-instance p2, Lorg/telegram/ui/Charts/LinearChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Charts/LinearChartView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1869
    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v2, p2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    goto :goto_0

    .line 1862
    :cond_3
    new-instance p2, Lorg/telegram/ui/Charts/StackBarChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4, p4}, Lorg/telegram/ui/Charts/StackBarChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1863
    new-instance p2, Lorg/telegram/ui/Charts/StackBarChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4, p4}, Lorg/telegram/ui/Charts/StackBarChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1864
    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v2, p2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    goto :goto_0

    .line 1857
    :cond_4
    new-instance p2, Lorg/telegram/ui/Charts/DoubleLinearChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4, p4}, Lorg/telegram/ui/Charts/DoubleLinearChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1858
    new-instance p2, Lorg/telegram/ui/Charts/DoubleLinearChartView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4, p4}, Lorg/telegram/ui/Charts/DoubleLinearChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1859
    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v2, p2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    .line 1889
    :goto_0
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1891
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object p3, v4, Lorg/telegram/ui/Charts/BaseChartView;->sharedUiComponents:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 1892
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object p3, v4, Lorg/telegram/ui/Charts/BaseChartView;->sharedUiComponents:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 1893
    new-instance p3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1894
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1895
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p3, p3, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/4 v4, -0x2

    invoke-virtual {p2, p3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1896
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1897
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p3, p3, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {p2, p3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1898
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v9, 0x0

    const/high16 v10, 0x42700000    # 60.0f

    const/16 v4, 0x2c

    const/high16 v5, 0x42300000    # 44.0f

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, p3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    const/high16 p1, 0x41700000    # 15.0f

    .line 1901
    invoke-virtual {p3, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1902
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41f00000    # 30.0f

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1903
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1905
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray4:I

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1908
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    new-instance p3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Charts/BaseChartView;->setDateSelectionListener(Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;)V

    .line 1913
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    .line 1914
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    new-instance p3, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;

    invoke-direct {p3}, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1915
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    new-instance p3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1916
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    new-instance p3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1917
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1918
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1919
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 1921
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    const/high16 p3, 0x42500000    # 52.0f

    const/4 p4, -0x1

    invoke-static {p4, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, -0x40000000    # -2.0f

    .line 1922
    invoke-static {p4, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1923
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x7

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1925
    iget p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartType:I

    if-ne p1, v3, :cond_5

    .line 1926
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1927
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1928
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1929
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1932
    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createTransitionAnimator(JZ)Landroid/animation/ValueAnimator;
    .locals 11

    .line 2092
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2095
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 2096
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-boolean v1, v2, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    const/4 v3, 0x2

    .line 2097
    iput v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v0, 0x1

    .line 2098
    iput v0, v2, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 2100
    new-instance v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;

    invoke-direct {v2}, Lorg/telegram/ui/Charts/view_data/TransitionParams;-><init>()V

    .line 2101
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, v4, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v5, v4, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iput v5, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pickerEndOut:F

    .line 2102
    iget v4, v4, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    iput v4, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pickerStartOut:F

    .line 2104
    iput-wide p1, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->date:J

    .line 2106
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    .line 2108
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length p1, p1

    sub-int/2addr p1, v0

    .line 2110
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object p2, p2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object p2, p2, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget p2, p2, p1

    iput p2, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->xPercentage:F

    .line 2113
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2114
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object v2, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    .line 2115
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object v2, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x7fffffff

    move p2, v1

    .line 2119
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p2, v8, :cond_3

    .line 2120
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v9, v8, p1

    cmp-long v8, v9, v4

    if-lez v8, :cond_1

    .line 2121
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v8, v4, p1

    move-wide v4, v8

    .line 2122
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v9, v8, p1

    cmp-long v8, v9, v6

    if-gez v8, :cond_2

    .line 2123
    iget-object v6, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v7, v6, p1

    move-wide v6, v7

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    long-to-float p1, v6

    sub-long/2addr v4, v6

    long-to-float p2, v4

    add-float/2addr p1, p2

    .line 2125
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget v4, p2, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr p1, v4

    iget v5, p2, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v5, v4

    div-float/2addr p1, v5

    .line 2128
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Charts/BaseChartView;->fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V

    .line 2129
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Charts/BaseChartView;->fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, p2

    :goto_1
    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move p2, v4

    .line 2130
    :goto_2
    new-array p3, v3, [F

    aput v5, p3, v1

    aput p2, p3, v0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2131
    new-instance p3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, v2, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Lorg/telegram/ui/Charts/view_data/TransitionParams;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x190

    .line 2144
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2145
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method private synthetic lambda$createTransitionAnimator$4(Lorg/telegram/ui/Charts/view_data/TransitionParams;FLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 2132
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v3, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v2, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    .line 2133
    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v1, v2

    .line 2135
    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    .line 2136
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget v0, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->xPercentage:F

    mul-float/2addr p2, v0

    sub-float/2addr p2, v1

    iput p2, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    .line 2138
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    .line 2139
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2140
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Charts/BaseChartView;->fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V

    .line 2141
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1853
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomOut(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(J)V
    .locals 0

    .line 1909
    invoke-virtual {p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomCanceled()V

    .line 1910
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 1915
    invoke-virtual {p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->onZoomed()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 1916
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    return-void
.end method

.method private synthetic lambda$updateData$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2233
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2234
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2235
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iput p1, v0, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    .line 2236
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2237
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private zoomOut(Z)V
    .locals 7

    .line 2029
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2032
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->zoomOut(Lorg/telegram/ui/Charts/BaseChartView;Z)V

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2034
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 2036
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->getSelectedDate()J

    move-result-wide v3

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J

    .line 2039
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->clearSelection()V

    .line 2042
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 2043
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2046
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2047
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-boolean v0, p1, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 2048
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-boolean v5, v2, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 2049
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2050
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 2052
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    .line 2053
    iget-object v4, v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2054
    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v0, v3, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    goto :goto_0

    .line 2057
    :cond_1
    invoke-direct {p0, v3, v4, v5}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->createTransitionAnimator(JZ)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2058
    new-instance v2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2081
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    .line 2082
    iget-object v6, v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2083
    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v0, v4, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    goto :goto_1

    .line 2085
    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected abstract loadData(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
.end method

.method public abstract onZoomed()V
.end method

.method public recolor()V
    .locals 5

    .line 2251
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->updateColors()V

    .line 2252
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2254
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->updateColors()V

    .line 2255
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->recolor()V

    .line 2258
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2260
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    .line 2261
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2263
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2264
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    goto :goto_1

    .line 2266
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 2267
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    goto :goto_1

    .line 2268
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    .line 2270
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2271
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->recolor(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2275
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 2276
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V
    .locals 10

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 2154
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2157
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2158
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Charts/BaseChartView;->setLandscape(Z)V

    .line 2159
    iput-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->viewShowed:Z

    .line 2160
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Charts/BaseChartView;->setLandscape(Z)V

    .line 2161
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 2163
    iget-boolean v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x8

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 2179
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2180
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-boolean v8, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->isTopHourChart:Z

    .line 2181
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    xor-int/2addr v8, v3

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->showDate(Z)V

    .line 2183
    iget-object v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->token:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2184
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2185
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    invoke-virtual {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->loadData(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    .line 2187
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)Z

    return-void

    :cond_3
    if-nez p2, :cond_4

    .line 2190
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2193
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2194
    iget-boolean v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->showAll:Z

    if-eqz v0, :cond_5

    .line 2195
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->set(FF)V

    .line 2198
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-boolean v4, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useWeekFormat:Z

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setUseWeekInterval(Z)V

    .line 2199
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-boolean p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useWeekFormat:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->setUseWeek(Z)V

    .line 2201
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v3

    :goto_2
    iput-boolean v0, p1, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    .line 2202
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v2, v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    .line 2204
    iget-boolean v0, p1, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2205
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-boolean v0, p1, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2207
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2208
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2209
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-le p1, v3, :cond_8

    move v0, v2

    :goto_3
    if-ge v0, p1, :cond_8

    .line 2212
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, v4, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    .line 2213
    new-instance v6, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;I)V

    invoke-virtual {v6, v4}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->setData(Lorg/telegram/ui/Charts/view_data/LineViewData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2217
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-wide v6, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_9

    .line 2218
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v6, v7}, Lorg/telegram/ui/Charts/BaseChartView;->selectDate(J)V

    .line 2219
    invoke-virtual {p0, v3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomChart(Z)V

    goto :goto_4

    .line 2221
    :cond_9
    invoke-direct {p0, v2}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomOut(Z)V

    .line 2222
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2225
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->recolor()V

    if-eqz p2, :cond_a

    .line 2228
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 p2, 0x3

    iput p2, p1, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 2229
    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2230
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    new-instance v0, Lorg/telegram/ui/Charts/view_data/TransitionParams;

    invoke-direct {v0}, Lorg/telegram/ui/Charts/view_data/TransitionParams;-><init>()V

    iput-object v0, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    .line 2231
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iput v5, p2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    .line 2232
    new-instance p2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2239
    new-instance p2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$4;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2246
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    :goto_5
    return-void

    .line 2164
    :cond_b
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2165
    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->errorMessage:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 2166
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v7, :cond_c

    .line 2168
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2169
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2171
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2174
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2175
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract zoomCanceled()V
.end method

.method public zoomChart(Z)V
    .locals 12

    .line 1942
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->getSelectedDate()J

    move-result-wide v0

    .line 1943
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p1, :cond_0

    .line 1946
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1947
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v3, v2, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView;->updatePicker(Lorg/telegram/ui/Charts/data/ChartData;J)V

    .line 1949
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)Z

    .line 1952
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v5, :cond_9

    move v3, v6

    move v7, v3

    .line 1954
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v3, v8, :cond_7

    move v8, v6

    .line 1956
    :goto_1
    iget-object v10, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_5

    .line 1957
    iget-object v10, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Charts/data/ChartData$Line;

    .line 1958
    iget-object v10, v10, Lorg/telegram/ui/Charts/data/ChartData$Line;->id:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v11, v11, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/ChartData$Line;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1959
    iget-object v10, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v10, v10, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/FlatCheckBox;->checked:Z

    .line 1960
    iget-object v11, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v11, v11, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iput-boolean v10, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    .line 1961
    iget-object v11, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v11, v11, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/view_data/LineViewData;

    if-eqz v10, :cond_2

    move v11, v9

    goto :goto_2

    :cond_2
    move v11, v4

    :goto_2
    iput v11, v8, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    .line 1962
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v5, v8, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    .line 1963
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v10, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    move v8, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_3
    if-nez v8, :cond_6

    .line 1970
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v6, v8, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    .line 1971
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_9

    .line 1976
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v6, p1, :cond_8

    .line 1977
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v5, p1, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    .line 1978
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    return-void

    .line 1984
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iput-wide v0, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J

    .line 1986
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v2, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1987
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput v4, v2, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    .line 1988
    iput-boolean v6, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    .line 1989
    iput-boolean v6, v2, Lorg/telegram/ui/Charts/BaseChartView;->animateLegentTo:Z

    .line 1991
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2}, Lorg/telegram/ui/Charts/BaseChartView;->updateColors()V

    if-nez p1, :cond_a

    .line 1994
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2}, Lorg/telegram/ui/Charts/BaseChartView;->clearSelection()V

    .line 1995
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2, v3, v0, v1, v5}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->zoomTo(Lorg/telegram/ui/Charts/BaseChartView;JZ)V

    .line 1998
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 1999
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    if-eqz p1, :cond_b

    .line 2002
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2003
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2005
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput v6, p1, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 2006
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput v6, v2, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 2007
    iput-boolean v6, p1, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 2008
    iput-boolean v5, v2, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 2009
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {p1, v2, v0, v1, v6}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->zoomTo(Lorg/telegram/ui/Charts/BaseChartView;JZ)V

    return-void

    .line 2011
    :cond_b
    invoke-direct {p0, v0, v1, v5}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->createTransitionAnimator(JZ)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2012
    new-instance v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$2;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2024
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
