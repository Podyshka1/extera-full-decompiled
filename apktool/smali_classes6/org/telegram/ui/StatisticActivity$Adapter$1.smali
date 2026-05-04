.class Lorg/telegram/ui/StatisticActivity$Adapter$1;
.super Lorg/telegram/ui/StatisticActivity$ChartCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StatisticActivity$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StatisticActivity$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;IILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V
    .locals 6

    .line 1255
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter$1;->this$1:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/StatisticActivity$ChartCell;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;IILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1258
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1259
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1261
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
