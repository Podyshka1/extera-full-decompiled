.class Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;


# direct methods
.method public static synthetic $r8$lambda$0Sm_g_ZYNuxHprNRwIr3jBVpO5E(Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->lambda$onBindViewHolder$0(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V
    .locals 0

    .line 1497
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/ui/Stories/recorder/GalleryListView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Landroid/view/View;)V
    .locals 1

    .line 1553
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1554
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1556
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetmaxCount(Lorg/telegram/ui/Stories/recorder/GalleryListView;)I

    move-result v0

    if-le p3, v0, :cond_1

    .line 1557
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetshiftDp(Lorg/telegram/ui/Stories/recorder/GalleryListView;)I

    move-result p3

    neg-int p3, p3

    invoke-static {p1, p3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fputshiftDp(Lorg/telegram/ui/Stories/recorder/GalleryListView;I)V

    int-to-float p1, p3

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 1558
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 1561
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1564
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateSelectButtonVisible()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1597
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->getTotalItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-eqz p1, :cond_2

    .line 1586
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 6

    add-int/lit8 v0, p1, -0x2

    .line 1603
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDraftFolder(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v0, p1, -0x3

    goto :goto_0

    .line 1608
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-ltz v0, :cond_2

    .line 1609
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 1610
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 1611
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    div-long/2addr v0, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1613
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr v0, p1

    .line 1615
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_5

    .line 1618
    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 1619
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-gt p1, v5, :cond_4

    .line 1620
    div-long/2addr v0, v3

    .line 1622
    :cond_4
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v5
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 5

    .line 1641
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->getTotalItemsCount()I

    move-result v0

    .line 1642
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 1643
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetASPECT_RATIO(Lorg/telegram/ui/Stories/recorder/GalleryListView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    .line 1644
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int v2, v0, v1

    .line 1646
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v2, v3

    const/4 v4, 0x0

    .line 1647
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    int-to-float p2, p2

    int-to-float v2, v2

    div-float/2addr p2, v2

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 1650
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1653
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    aput v2, p3, v4

    .line 1654
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    int-to-float v0, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    add-int/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F
    .locals 4

    .line 1659
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->getTotalItemsCount()I

    move-result v0

    .line 1660
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 1661
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetASPECT_RATIO(Lorg/telegram/ui/Stories/recorder/GalleryListView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    .line 1662
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/2addr v0, v1

    .line 1664
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1665
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public getTotalItemsCount()I
    .locals 2

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1631
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDraftFolder(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1633
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1634
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1501
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1520
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 1522
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPadding()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;->setHeight(I)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 1524
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v3

    .line 1525
    :goto_1
    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setRounding(ZZ)V

    add-int/lit8 v2, p2, -0x2

    .line 1528
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDraftFolder(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v2, :cond_4

    .line 1530
    invoke-virtual {p1, v3, v1, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setCheckbox(ZIZ)V

    .line 1531
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;I)V

    return-void

    :cond_4
    add-int/lit8 v2, p2, -0x3

    goto :goto_2

    .line 1535
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetcontainsDrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-ltz v2, :cond_6

    .line 1536
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    .line 1537
    invoke-virtual {p1, v3, v1, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setCheckbox(ZIZ)V

    .line 1538
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;I)V

    return-void

    .line 1541
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr v2, p2

    .line 1544
    :cond_7
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    if-eqz p2, :cond_a

    if-ltz v2, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt v2, p2, :cond_8

    goto :goto_4

    .line 1547
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1548
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->isMultiple()Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->-$$Nest$fgetcurrentObject(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_9

    goto :goto_3

    :cond_9
    move v0, v3

    :goto_3
    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setCheckbox(ZIZ)V

    .line 1549
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->set(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->collaging:Z

    if-eqz v0, :cond_a

    .line 1552
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-nez p2, :cond_0

    .line 1509
    new-instance p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1511
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    invoke-direct {p2, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Z)V

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fputheaderView(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;)V

    move-object p1, p2

    goto :goto_0

    .line 1513
    :cond_1
    new-instance p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetASPECT_RATIO(Lorg/telegram/ui/Stories/recorder/GalleryListView;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->collaging:Z

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    .line 1515
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 1572
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1573
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1574
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    .line 1575
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->-$$Nest$fgetcurrentObject(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1576
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->-$$Nest$fgetcurrentObject(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1577
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->isMultiple()Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setCheckbox(ZIZ)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1579
    invoke-virtual {p1, v1, v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setCheckbox(ZIZ)V

    :cond_1
    return-void
.end method
