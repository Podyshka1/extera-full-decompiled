.class Lorg/telegram/ui/StatisticActivity$Adapter$3;
.super Lorg/telegram/ui/Charts/view_data/ChartHeaderView;
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
.method constructor <init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter$3;->this$1:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1284
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1285
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1287
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
