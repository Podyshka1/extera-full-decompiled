.class public Lorg/telegram/ui/Components/UniversalAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UniversalAdapter$Section;,
        Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;
    }
.end annotation


# instance fields
.field private allowReorder:Z

.field private applyBackground:Z

.field private chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

.field private final classGuid:I

.field private final context:Landroid/content/Context;

.field public final currentAccount:I

.field private currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

.field private currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

.field private final dialog:Z

.field protected fillItems:Lorg/telegram/messenger/Utilities$Callback2;

.field private final items:Ljava/util/ArrayList;

.field protected final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final oldItems:Ljava/util/ArrayList;

.field private onReordered:Lorg/telegram/messenger/Utilities$Callback2;

.field private orderChanged:Z

.field private orderChangedId:I

.field private final reorderSections:Ljava/util/ArrayList;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final whiteSections:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$7u_o9PZvvbLi9wKZ2NUwR6atNjQ(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    .line 1143
    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->switchClickCallback:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FyXULGrJCbzgPBhCX_xYYkBMPnM(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    .line 1144
    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0LSwD87LisoRJkto5JsMpKXFOQ(Lorg/telegram/ui/Components/UniversalAdapter;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->lambda$update$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vzHf0oakf0BeZ8jG2h6nn1WvQp0(Lorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UItem;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/UItem;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zkYqYy_dtBSQIc15WzODxdmLimw(Lorg/telegram/ui/Components/UItem;I)V
    .locals 0

    .line 950
    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p0, :cond_0

    .line 951
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 153
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->applyBackground:Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 167
    iput-object p2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    .line 168
    iput p3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    .line 169
    iput p4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->classGuid:I

    .line 170
    iput-boolean p5, p0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    .line 171
    iput-object p6, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    .line 172
    iput-object p7, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private callReorder(I)V
    .locals 5

    if-ltz p1, :cond_1

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    .line 283
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    iget v0, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 284
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private findViewByItemObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1163
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 1164
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1165
    iget-object v2, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    const/4 p1, 0x0

    if-ne v1, v3, :cond_2

    return-object p1

    .line 1173
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1174
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1175
    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v3, :cond_3

    if-ne v4, v1, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method private hasDivider(I)Z
    .locals 4

    .line 614
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 615
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 617
    iget-boolean v3, v0, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    if-eqz v3, :cond_1

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-static {v3}, Lorg/telegram/ui/Components/UniversalAdapter;->isHeader(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 625
    :cond_1
    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-static {p1}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result p1

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-static {v0}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result v0

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public static isHeader(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x1a

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isShadow(I)Z
    .locals 3

    .line 629
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_1

    .line 630
    invoke-static {p0}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 631
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->isShadow()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x26

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_3

    const/4 v0, -0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x2

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private synthetic lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/UItem;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;
    .locals 1

    .line 985
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->findViewByItemObject(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 986
    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    if-eqz v0, :cond_0

    .line 987
    check-cast p1, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$update$0(Z)V
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 328
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateColors(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 1190
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    if-eqz v1, :cond_0

    .line 1191
    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$Colorable;->updateColors()V

    .line 1193
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->shouldApplyBackground(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 1194
    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-eqz p2, :cond_1

    .line 1195
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1197
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 1198
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method private updateReorderSections()V
    .locals 7

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 232
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 235
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    .line 236
    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    iget v5, v3, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    iget v3, v3, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->pack(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public drawWhiteSections(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 4

    const/4 v0, 0x0

    .line 304
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    .line 306
    iget v2, v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    if-gez v2, :cond_0

    goto :goto_2

    .line 307
    :cond_0
    iget v1, v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    iget-boolean v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p2, p1, v1, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;III)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getItem(I)Lorg/telegram/ui/Components/UItem;
    .locals 1

    if-ltz p1, :cond_1

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1265
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/UItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1222
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 608
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 610
    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public getReorderSectionId(I)I
    .locals 2

    const/4 v0, 0x0

    .line 244
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/UniversalAdapter$Section;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1227
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 1228
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 1230
    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v0, v1, :cond_0

    .line 1231
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1232
    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 1260
    iget-boolean p1, p1, Lorg/telegram/ui/Components/UItem;->enabled:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public isReorderItem(I)Z
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 23

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v0, p2

    .line 647
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .line 648
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    .line 649
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-nez v2, :cond_0

    goto/16 :goto_2a

    .line 651
    :cond_0
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    .line 652
    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v13

    .line 654
    invoke-direct {v4, v6, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->updateColors(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Components/UItem;)V

    .line 656
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v7, 0x0

    if-lt v5, v0, :cond_2

    .line 657
    invoke-static {v5}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 659
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v4, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    instance-of v5, v3, Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v5, :cond_1

    move-object v7, v3

    check-cast v7, Lorg/telegram/ui/Components/UniversalRecyclerView;

    :cond_1
    move-object v5, v7

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/UItem$UItemFactory;->bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    goto/16 :goto_29

    :cond_2
    const/16 v0, 0x65

    const/4 v15, 0x1

    if-eq v5, v0, :cond_5b

    const/4 v0, 0x2

    const/16 v8, 0xc

    const/16 v9, 0x8

    const/4 v10, -0x1

    .line 661
    const-string v11, ""

    const/4 v12, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_29

    .line 673
    :pswitch_0
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 674
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 676
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 677
    invoke-virtual {v0, v1, v3, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 679
    :cond_3
    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 682
    :cond_4
    :goto_0
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    goto/16 :goto_29

    .line 668
    :pswitch_1
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 669
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    iget v3, v0, Lorg/telegram/ui/Cells/HeaderCell;->id:I

    iget v5, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v3, v5, :cond_5

    goto :goto_1

    :cond_5
    move v15, v12

    :goto_1
    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 670
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->id:I

    goto/16 :goto_29

    .line 1130
    :pswitch_2
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 1131
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->reset()V

    .line 1132
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget v7, v0, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    iget v8, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v7, v8, :cond_6

    goto :goto_2

    :cond_6
    move v15, v12

    :goto_2
    invoke-virtual {v0, v1, v3, v13, v15}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZZ)V

    .line 1133
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    .line 1134
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz v1, :cond_7

    sget v1, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_3

    :cond_7
    move v1, v12

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    const/16 v1, 0x28

    if-ne v5, v1, :cond_5d

    .line 1136
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1137
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->hideCollapseArrow()V

    goto/16 :goto_29

    .line 1139
    :cond_8
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    .line 1140
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v2, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    .line 1142
    iget-boolean v5, v2, Lorg/telegram/ui/Components/UItem;->exteraExpandableSwitch:Z

    if-eqz v5, :cond_9

    .line 1143
    new-instance v5, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2, v0}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    goto :goto_4

    .line 1144
    :cond_9
    new-instance v5, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2, v0}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    .line 1139
    :goto_4
    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1146
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCollapseContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->exteraExpandableSwitch:Z

    if-eqz v1, :cond_5d

    .line 1149
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v3, v5, v7, v7}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 1150
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/Switch;->setDrawIconType(I)V

    goto/16 :goto_29

    .line 1121
    :pswitch_3
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 1122
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->pad:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    .line 1123
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setUserOrChat(Lorg/telegram/tgnet/TLObject;)V

    .line 1124
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    iget v5, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v3, v5, :cond_a

    goto :goto_5

    :cond_a
    move v15, v12

    :goto_5
    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 1125
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    .line 1126
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/CheckBoxCell;->setNeedDivider(Z)V

    goto/16 :goto_29

    .line 1108
    :pswitch_4
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 1109
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->reset()V

    .line 1110
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->pad:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    .line 1111
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    iget v7, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v3, v7, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getAnimatedTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eq v3, v11, :cond_b

    move v3, v15

    goto :goto_6

    :cond_b
    move v3, v12

    :goto_6
    invoke-virtual {v0, v1, v11, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1112
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    iget v7, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v3, v7, :cond_c

    goto :goto_7

    :cond_c
    move v15, v12

    :goto_7
    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 1113
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/CheckBoxCell;->setNeedDivider(Z)V

    .line 1114
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    .line 1115
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz v1, :cond_d

    sget v12, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_d
    invoke-virtual {v0, v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    const/16 v1, 0x24

    if-eq v5, v1, :cond_e

    const/16 v1, 0x29

    if-ne v5, v1, :cond_5d

    .line 1117
    :cond_e
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCollapseButton(ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29

    .line 1102
    :pswitch_5
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 1103
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto/16 :goto_29

    .line 1089
    :pswitch_6
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v14, v0

    check-cast v14, Lorg/telegram/ui/Cells/DialogCell;

    .line 1091
    iget-object v0, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v1, v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_f

    .line 1092
    move-object v7, v0

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 1094
    :cond_f
    iput-boolean v13, v14, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-nez v7, :cond_10

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1096
    invoke-virtual/range {v14 .. v20}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto/16 :goto_29

    .line 1098
    :cond_10
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v15

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v18, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto/16 :goto_29

    .line 1039
    :pswitch_7
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1040
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 1042
    iget-boolean v5, v2, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v5, :cond_11

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_11

    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    if-eqz v5, :cond_11

    if-eqz v5, :cond_14

    .line 1045
    const-string v8, "BotUsers"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 1047
    :cond_11
    iget-boolean v5, v2, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    if-eqz v5, :cond_14

    .line 1049
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_12

    .line 1050
    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 1051
    :cond_12
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_13

    .line 1052
    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_13
    move-object v5, v7

    :goto_8
    if-eqz v5, :cond_14

    .line 1055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_14
    move-object v5, v11

    .line 1059
    :goto_9
    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_19

    .line 1060
    move-object v8, v3

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1061
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v9, :cond_17

    .line 1063
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_15

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_15

    .line 1064
    const-string v9, "Subscribers"

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 1066
    :cond_15
    const-string v9, "Members"

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1068
    :goto_a
    const-string v10, ", "

    .line 1070
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_16

    const/4 v11, 0x3

    .line 1071
    new-array v11, v11, [Ljava/lang/CharSequence;

    aput-object v5, v11, v12

    aput-object v10, v11, v15

    aput-object v9, v11, v0

    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_b

    :cond_16
    move-object v5, v9

    .line 1076
    :cond_17
    :goto_b
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_18
    :goto_c
    move-object/from16 v20, v5

    move-object/from16 v19, v11

    goto :goto_d

    .line 1077
    :cond_19
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_18

    .line 1078
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1080
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    .line 1082
    :goto_d
    iget-boolean v0, v2, Lorg/telegram/ui/Components/UItem;->locked:Z

    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    instance-of v8, v5, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v8, :cond_1a

    move-object v7, v5

    check-cast v7, Lorg/telegram/messenger/Utilities$Callback;

    :cond_1a
    invoke-virtual {v1, v0, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowBotOpenButton(ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1083
    iget-boolean v0, v2, Lorg/telegram/ui/Components/UItem;->red:Z

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setRectangularAvatar(Z)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 1084
    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1085
    iget-boolean v0, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v1, v0, v12}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    .line 1086
    iput-boolean v13, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    goto/16 :goto_29

    .line 1031
    :pswitch_8
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1032
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GraySectionCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1033
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v15, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    goto/16 :goto_29

    .line 1035
    :cond_1b
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29

    .line 1025
    :pswitch_9
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextRightIconCell;

    .line 1026
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget v3, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/TextRightIconCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1027
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/TextRightIconCell;->setDivider(Z)V

    .line 1028
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_29

    .line 1019
    :pswitch_a
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;

    .line 1020
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v1, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;

    if-eqz v3, :cond_5d

    .line 1021
    check-cast v1, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->set(Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;Z)V

    goto/16 :goto_29

    .line 1010
    :pswitch_b
    iget-boolean v0, v2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-eqz v0, :cond_1c

    .line 1011
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_e

    .line 1012
    :cond_1c
    iget v0, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-eqz v0, :cond_1d

    .line 1013
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1015
    :cond_1d
    :goto_e
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1016
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v3, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    invoke-direct {v1, v10, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_29

    .line 1000
    :pswitch_c
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    .line 1001
    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->dialogId:J

    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_1e

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_f

    :cond_1e
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_1f

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    goto :goto_f

    :cond_1f
    const-wide/16 v10, 0x0

    :goto_f
    cmp-long v1, v7, v10

    if-nez v1, :cond_20

    move v1, v15

    goto :goto_10

    :cond_20
    move v1, v12

    .line 1002
    :goto_10
    invoke-virtual {v0, v12, v15}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setIsSendAs(ZZ)V

    .line 1003
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->set(Ljava/lang/Object;)V

    .line 1004
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    iget-boolean v3, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChecked(ZZ)V

    .line 1007
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setDivider(Z)V

    goto/16 :goto_29

    .line 994
    :pswitch_d
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;

    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stats$BroadcastRevenueTransaction;

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;->set(Lorg/telegram/tgnet/tl/TL_stats$BroadcastRevenueTransaction;Z)V

    goto/16 :goto_29

    .line 997
    :pswitch_e
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;

    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;->set(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)V

    goto/16 :goto_29

    .line 981
    :pswitch_f
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    iget v1, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    new-instance v5, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v2}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UItem;)V

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->set(ILorg/telegram/ui/StatisticActivity$ChartViewData;Lorg/telegram/messenger/Utilities$Callback0Return;)V

    goto/16 :goto_29

    .line 969
    :pswitch_10
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;

    .line 970
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v12}, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;->setChecked(ZZ)V

    .line 971
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    if-eqz v3, :cond_5d

    .line 972
    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;->set(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Z)V

    goto/16 :goto_29

    .line 961
    :pswitch_11
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    .line 962
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v12}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->setChecked(ZZ)V

    .line 963
    iget-boolean v1, v4, Lorg/telegram/ui/Components/UniversalAdapter;->allowReorder:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->setReorder(Z)V

    .line 964
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    if-eqz v3, :cond_5d

    .line 965
    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v0, v1, v7, v13}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->set(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Ljava/lang/String;Z)V

    goto/16 :goto_29

    .line 956
    :pswitch_12
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SlideIntChooseView;

    .line 957
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/Cells/SlideIntChooseView;->set(ILorg/telegram/ui/Cells/SlideIntChooseView$Options;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 958
    iget-wide v7, v2, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int v1, v7

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->setMinValueAllowed(I)V

    goto/16 :goto_29

    .line 945
    :pswitch_13
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/SlideChooseView;

    .line 946
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->texts:[Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/SlideChooseView;->setNeedDivider(Z)V

    .line 948
    iget-wide v7, v2, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int v1, v7

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setMinAllowedIndex(I)V

    .line 949
    new-instance v1, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    goto/16 :goto_29

    .line 939
    :pswitch_14
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    .line 940
    iget v1, v4, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    invoke-virtual {v0, v1, v2, v13}, Lorg/telegram/ui/Cells/UserCell;->setFromUItem(ILorg/telegram/ui/Components/UItem;Z)V

    .line 941
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    xor-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setAddButtonVisible(Z)V

    .line 942
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setCloseIcon(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29

    .line 932
    :pswitch_15
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    .line 933
    iget v1, v4, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    invoke-virtual {v0, v1, v2, v13}, Lorg/telegram/ui/Cells/UserCell;->setFromUItem(ILorg/telegram/ui/Components/UItem;Z)V

    if-ne v5, v8, :cond_5d

    .line 935
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v12}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto/16 :goto_29

    .line 788
    :pswitch_16
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogRadioCell;

    .line 789
    iget v1, v0, Lorg/telegram/ui/Cells/DialogRadioCell;->itemId:I

    iget v3, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, v3, :cond_21

    .line 790
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Cells/DialogRadioCell;->setChecked(ZZ)V

    .line 791
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->enabled:Z

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Cells/DialogRadioCell;->setEnabled(ZZ)V

    goto :goto_11

    .line 793
    :cond_21
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->enabled:Z

    invoke-virtual {v0, v1, v12}, Lorg/telegram/ui/Cells/DialogRadioCell;->setEnabled(ZZ)V

    .line 795
    :goto_11
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 796
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v3, v13}, Lorg/telegram/ui/Cells/DialogRadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    goto :goto_12

    .line 798
    :cond_22
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    iget-boolean v5, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v3, v5, v13}, Lorg/telegram/ui/Cells/DialogRadioCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 800
    :goto_12
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/DialogRadioCell;->itemId:I

    goto/16 :goto_29

    :pswitch_17
    const/4 v10, 0x7

    if-eq v5, v10, :cond_27

    if-ne v5, v9, :cond_23

    goto :goto_13

    :cond_23
    const/16 v8, 0x26

    if-ne v5, v8, :cond_26

    .line 851
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/CollapseTextCell;

    .line 852
    iget-object v8, v2, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    iget-boolean v9, v2, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    invoke-virtual {v5, v8, v9}, Lorg/telegram/ui/Cells/CollapseTextCell;->set(Ljava/lang/CharSequence;Z)V

    .line 853
    iget-boolean v8, v2, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v8, :cond_24

    .line 854
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/CollapseTextCell;->setColor(I)V

    goto/16 :goto_16

    .line 855
    :cond_24
    iget-boolean v8, v2, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v8, :cond_25

    .line 856
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/CollapseTextCell;->setColor(I)V

    goto/16 :goto_16

    .line 858
    :cond_25
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/CollapseTextCell;->setColor(I)V

    goto/16 :goto_16

    :cond_26
    move-object v5, v7

    goto/16 :goto_16

    .line 831
    :cond_27
    :goto_13
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 832
    iget-object v13, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_29

    if-ne v5, v9, :cond_28

    const/16 v8, 0xdc

    .line 833
    :cond_28
    invoke-virtual {v10, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 834
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 836
    :cond_29
    invoke-virtual {v10, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 837
    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :goto_14
    iget-boolean v5, v2, Lorg/telegram/ui/Components/UItem;->accent:Z

    const/high16 v8, 0x41880000    # 17.0f

    if-eqz v5, :cond_2a

    const/16 v5, 0x11

    .line 840
    invoke-virtual {v10, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextGravity(I)V

    .line 841
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v5

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-static {v9, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v9

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    const/high16 v13, 0x42700000    # 60.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setWidth(I)V

    .line 842
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v12, v9, v12, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_15

    :cond_2a
    const v5, 0x800003

    .line 844
    invoke-virtual {v10, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextGravity(I)V

    .line 845
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 846
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v5

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    .line 847
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v5

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v12, v9, v12, v8}, Landroid/view/View;->setPadding(IIII)V

    :goto_15
    move-object v5, v10

    :goto_16
    if-eqz v3, :cond_2b

    .line 862
    iget v3, v3, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-static {v3}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result v3

    if-nez v3, :cond_2b

    move v3, v15

    goto :goto_17

    :cond_2b
    move v3, v12

    :goto_17
    if-eqz v1, :cond_2c

    .line 863
    iget v1, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-static {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result v1

    if-nez v1, :cond_2c

    move v1, v15

    goto :goto_18

    :cond_2c
    move v1, v12

    .line 864
    :goto_18
    iget-object v8, v4, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 865
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_29

    :cond_2d
    if-eqz v3, :cond_2e

    if-eqz v1, :cond_2e

    .line 869
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_19

    :cond_2e
    if-eqz v3, :cond_2f

    .line 871
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_19

    :cond_2f
    if-eqz v1, :cond_30

    .line 873
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    goto :goto_19

    .line 875
    :cond_30
    sget v1, Lorg/telegram/messenger/R$drawable;->field_carret_empty:I

    .line 877
    :goto_19
    iget-object v3, v4, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v8, v4, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 878
    iget-boolean v3, v4, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz v3, :cond_31

    .line 879
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    .line 880
    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v0, v12

    aput-object v1, v0, v15

    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 879
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_29

    .line 884
    :cond_31
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_29

    .line 813
    :pswitch_18
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, v0

    check-cast v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 814
    iget-object v9, v2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    if-eqz v9, :cond_32

    move v12, v15

    .line 815
    :cond_32
    iget v10, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-eqz v10, :cond_33

    .line 816
    iget-object v8, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v11, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    move v14, v13

    move v13, v12

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v14}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZ)V

    goto :goto_1a

    .line 818
    :cond_33
    iget-object v8, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v10, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    .line 820
    :goto_1a
    invoke-virtual {v7, v15}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setAnimationsEnabled(Z)V

    const/4 v0, 0x6

    if-ne v5, v0, :cond_34

    .line 822
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 824
    :cond_34
    iget-boolean v0, v2, Lorg/telegram/ui/Components/UItem;->drawLine:Z

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setDrawLine(Z)V

    goto/16 :goto_29

    .line 765
    :pswitch_19
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 766
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell;->reset()V

    .line 767
    iget v1, v0, Lorg/telegram/ui/Cells/TextCheckCell;->itemId:I

    iget v3, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, v3, :cond_35

    .line 768
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 770
    :cond_35
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_37

    .line 771
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v8, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-ne v5, v3, :cond_36

    if-eqz v13, :cond_36

    goto :goto_1b

    :cond_36
    move v15, v12

    :goto_1b
    invoke-virtual {v0, v1, v8, v15}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1e

    .line 773
    :cond_37
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v8, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    iget-boolean v8, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-boolean v9, v2, Lorg/telegram/ui/Components/UItem;->multiline:Z

    if-ne v5, v3, :cond_38

    if-eqz v13, :cond_38

    move/from16 v21, v15

    :goto_1c
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_1d

    :cond_38
    move/from16 v21, v12

    goto :goto_1c

    :goto_1d
    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, v16

    .line 775
    :goto_1e
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->enabled:Z

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 776
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-eqz v1, :cond_39

    .line 777
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setIcon(I)V

    .line 779
    :cond_39
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->checkBoxIconResId:I

    if-eqz v1, :cond_3a

    .line 780
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    .line 782
    :cond_3a
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/TextCheckCell;->itemId:I

    const/16 v0, 0x9

    if-ne v5, v0, :cond_5d

    .line 784
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-eqz v1, :cond_3b

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_1f

    :cond_3b
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_1f
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_29

    .line 698
    :pswitch_1a
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 699
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->reset()V

    .line 700
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_3c

    .line 701
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v3, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndSticker(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto/16 :goto_22

    .line 702
    :cond_3c
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_3d

    .line 703
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndSticker(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    goto/16 :goto_22

    .line 704
    :cond_3d
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    instance-of v3, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_42

    .line 705
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 708
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->iconColor:Ljava/lang/Integer;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_20

    :cond_3e
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    iget-object v5, v4, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 709
    :goto_20
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 711
    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v9, v5, Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3f

    .line 712
    move-object v7, v5

    check-cast v7, Landroid/graphics/drawable/Drawable;

    goto :goto_21

    .line 713
    :cond_3f
    iget v5, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-eqz v5, :cond_40

    .line 714
    iget-object v7, v4, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-static {v7, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 715
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v3, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_40
    :goto_21
    if-eqz v7, :cond_41

    .line 719
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v7, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIconAndValueDrawable(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_22

    .line 721
    :cond_41
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_22

    .line 723
    :cond_42
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 724
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_43

    .line 725
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_22

    .line 726
    :cond_43
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-nez v1, :cond_44

    .line 727
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_22

    .line 729
    :cond_44
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_22

    .line 732
    :cond_45
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_46

    .line 733
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v5, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_22

    .line 734
    :cond_46
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-nez v1, :cond_47

    .line 735
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_22

    .line 737
    :cond_47
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v5, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v5, v1, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 740
    :goto_22
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v1, :cond_48

    .line 741
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto :goto_23

    .line 742
    :cond_48
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v1, :cond_49

    .line 743
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto :goto_23

    .line 745
    :cond_49
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 747
    :goto_23
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_4a

    .line 748
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    invoke-virtual {v0, v1, v3, v5, v12}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(IIIZ)V

    .line 750
    :cond_4a
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->pad:I

    if-lez v1, :cond_4b

    .line 751
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    .line 753
    :cond_4b
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-lez v1, :cond_4d

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    if-eqz v3, :cond_4c

    instance-of v3, v3, Lcom/exteragram/messenger/plugins/models/TextSetting;

    if-eqz v3, :cond_4d

    .line 754
    :cond_4c
    iput v1, v0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    .line 756
    :cond_4d
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 757
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 758
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 759
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 761
    :cond_4e
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->prioritizeTitleOverValue:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    goto/16 :goto_29

    .line 685
    :pswitch_1b
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/TopViewCell;

    .line 686
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-eqz v1, :cond_50

    .line 687
    iget-boolean v3, v2, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v3, :cond_4f

    .line 688
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TopViewCell;->setEmojiStatic(I)V

    goto :goto_24

    .line 690
    :cond_4f
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TopViewCell;->setEmoji(I)V

    goto :goto_24

    .line 693
    :cond_50
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TopViewCell;->setEmoji(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_24
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TopViewCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    .line 665
    :pswitch_1c
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    .line 913
    :pswitch_1d
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;

    .line 914
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;->setMinusHeight(I)V

    .line 915
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->flags:I

    invoke-static {v1, v15}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;->setMinusPadding(Z)V

    .line 916
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lorg/telegram/messenger/R$id;->parent_tag:I

    iget-boolean v5, v2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 917
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-eqz v1, :cond_51

    .line 918
    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_26

    .line 920
    :cond_51
    iget-boolean v1, v4, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz v1, :cond_52

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_25

    :cond_52
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_25
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 922
    :goto_26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-nez v3, :cond_53

    move v15, v12

    :cond_53
    if-ne v1, v15, :cond_54

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eq v1, v3, :cond_5d

    .line 923
    :cond_54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 924
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eqz v1, :cond_5d

    .line 925
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 926
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_29

    .line 891
    :pswitch_1e
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 892
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-nez v3, :cond_55

    move v15, v12

    :cond_55
    if-ne v1, v15, :cond_56

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eq v1, v3, :cond_5d

    .line 893
    :cond_56
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 894
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eqz v1, :cond_5d

    .line 895
    instance-of v3, v1, Lorg/telegram/ui/Cells/EditTextCell;

    if-eqz v3, :cond_57

    check-cast v1, Lorg/telegram/ui/Cells/EditTextCell;

    .line 896
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Cells/EditTextCell;->setDivider(Z)V

    .line 898
    :cond_57
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 899
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-nez v1, :cond_58

    .line 900
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_58
    if-eq v5, v10, :cond_5a

    const/4 v1, -0x4

    if-ne v5, v1, :cond_59

    goto :goto_27

    :cond_59
    const/4 v1, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    .line 906
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto :goto_28

    .line 904
    :cond_5a
    :goto_27
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->intValue:I

    int-to-float v1, v1

    invoke-static {v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 908
    :goto_28
    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    .line 803
    :cond_5b
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 804
    iget v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->itemId:I

    iget v3, v2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, v3, :cond_5c

    .line 805
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 807
    :cond_5c
    iget-boolean v1, v2, Lorg/telegram/ui/Components/UItem;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 808
    iget-object v1, v2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v3, v13, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 809
    iget v1, v2, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->itemId:I

    .line 1156
    :cond_5d
    :goto_29
    iget-object v0, v2, Lorg/telegram/ui/Components/UItem;->bind:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_5e

    .line 1157
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_5e
    :goto_2a
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1e
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_1c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_17
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    .line 413
    iget-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz p1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 414
    :goto_0
    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt p2, v1, :cond_2

    .line 415
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 417
    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    iget v6, p0, Lorg/telegram/ui/Components/UniversalAdapter;->classGuid:I

    iget-object v7, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/UItem$UItemFactory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_a

    .line 419
    :cond_1
    new-instance p1, Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_2
    const/16 v1, 0x65

    if-eq p2, v1, :cond_e

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 572
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 433
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 430
    :pswitch_1
    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v6, 0x15

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_3
    :goto_1
    move-object p1, v3

    goto/16 :goto_a

    .line 597
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 593
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/CollapseTextCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/CollapseTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    :pswitch_4
    const/16 p1, 0x23

    if-ne p2, p1, :cond_4

    const/4 v1, 0x4

    :goto_2
    move v4, v1

    goto :goto_3

    :cond_4
    const/16 p1, 0x24

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x25

    if-ne p2, p1, :cond_6

    const/4 v1, 0x7

    goto :goto_2

    :cond_6
    const/16 p1, 0x29

    if-ne p2, p1, :cond_7

    const/16 v1, 0x8

    goto :goto_2

    :cond_7
    move v4, v3

    .line 588
    :goto_3
    new-instance v2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v5, 0x15

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 589
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v1, v3, v4}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    :goto_4
    move-object p1, v2

    goto/16 :goto_a

    .line 565
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 566
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto/16 :goto_a

    .line 562
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1, v4, v3, v2}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    goto/16 :goto_a

    .line 559
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 551
    :pswitch_8
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 552
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    const/16 v3, 0x1c

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 553
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setNoBackground(Z)V

    goto/16 :goto_a

    .line 555
    :cond_8
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 548
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/TextRightIconCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextRightIconCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 545
    :pswitch_a
    new-instance p1, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 542
    :pswitch_b
    new-instance p1, Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 508
    :pswitch_c
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 509
    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setIsSendAs(ZZ)V

    goto/16 :goto_a

    .line 439
    :pswitch_d
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v7, 0x17

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 440
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    :goto_5
    move-object p1, v4

    goto/16 :goto_a

    .line 536
    :pswitch_e
    new-instance p1, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 539
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 530
    :pswitch_10
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    if-nez p1, :cond_9

    .line 531
    new-instance p1, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    invoke-direct {p1}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 533
    :cond_9
    new-instance v1, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    add-int/lit8 v4, p2, -0x12

    iget-object v5, p0, Lorg/telegram/ui/Components/UniversalAdapter;->chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    iget v6, p0, Lorg/telegram/ui/Components/UniversalAdapter;->classGuid:I

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;I)V

    move-object p1, v1

    goto/16 :goto_a

    .line 522
    :pswitch_11
    new-instance p1, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 519
    :pswitch_12
    new-instance p1, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    move v2, v3

    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2, v3}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 516
    :pswitch_13
    new-instance p1, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/SlideIntChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 513
    :pswitch_14
    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_a

    .line 504
    :pswitch_15
    new-instance v3, Lorg/telegram/ui/Cells/UserCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZ)V

    goto/16 :goto_1

    .line 499
    :pswitch_16
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    const/16 v5, 0xc

    if-ne p2, v5, :cond_b

    const/4 v5, 0x3

    goto :goto_7

    :cond_b
    move v5, v3

    :goto_7
    invoke-direct {p1, v4, v1, v5, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 500
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/UserCell;->setSelfAsSavedMessages(Z)V

    goto/16 :goto_a

    .line 461
    :pswitch_17
    new-instance p1, Lorg/telegram/ui/Cells/DialogRadioCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/DialogRadioCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    :pswitch_18
    move p1, v2

    goto :goto_9

    :pswitch_19
    move p1, v2

    .line 468
    new-instance v2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    move v4, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    if-ne p2, v1, :cond_c

    move v7, p1

    goto :goto_8

    :cond_c
    move v7, v4

    :goto_8
    iget-object v8, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v4, 0x15

    const/16 v5, 0x3c

    const/16 v6, 0x47

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_4

    .line 451
    :goto_9
    new-instance v3, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0x9

    if-ne p2, v1, :cond_3

    .line 453
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    .line 454
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(IIIII)V

    .line 455
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x38

    .line 456
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setHeight(I)V

    goto/16 :goto_1

    .line 447
    :pswitch_1a
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_a

    .line 444
    :pswitch_1b
    new-instance p1, Lorg/telegram/ui/Components/TopViewCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/TopViewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_a

    .line 436
    :pswitch_1c
    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v6, 0x11

    const/16 v7, 0xf

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_1

    :pswitch_1d
    if-eqz p1, :cond_d

    .line 424
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v7, 0x15

    const/16 v8, 0xf

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    .line 426
    :cond_d
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_a

    .line 480
    :pswitch_1e
    new-instance p1, Lorg/telegram/ui/Components/UniversalAdapter$2;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$2;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Landroid/content/Context;)V

    goto :goto_a

    .line 495
    :pswitch_1f
    new-instance p1, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 472
    :pswitch_20
    new-instance p1, Lorg/telegram/ui/Components/UniversalAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$1;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Landroid/content/Context;)V

    goto :goto_a

    .line 464
    :cond_e
    new-instance p1, Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    .line 600
    :goto_a
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->shouldApplyBackground(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 601
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 603
    :cond_f
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_20
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_18
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1185
    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->allowReorder:Z

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 1186
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->updateColors(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Components/UItem;)V

    return-void
.end method

.method public reorderDone()V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    if-eqz v0, :cond_0

    .line 289
    iget v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChangedId:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->callReorder(I)V

    :cond_0
    return-void
.end method

.method public reorderSectionEnd()V
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    if-eqz v0, :cond_1

    .line 218
    iget v0, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 220
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    if-eqz v2, :cond_0

    :goto_0
    if-gt v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UniversalAdapter;->isHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    iput v0, v2, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    .line 226
    iput v1, v2, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    :cond_1
    return-void
.end method

.method public reorderSectionStart()I
    .locals 2

    .line 210
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$Section;-><init>(Lorg/telegram/ui/Components/UniversalAdapter-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public setApplyBackground(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->applyBackground:Z

    return-void
.end method

.method public shouldApplyBackground(I)Z
    .locals 3

    .line 358
    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->applyBackground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 359
    :cond_0
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    return v1

    :cond_2
    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public swapElements(II)V
    .locals 7

    const/4 v0, 0x3

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    if-nez v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result v1

    .line 256
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result v2

    if-ltz v1, :cond_5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/UItem;

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/UItem;

    .line 262
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v4

    .line 263
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v5

    .line 264
    iget-object v6, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 267
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v2

    if-eq v2, v4, :cond_2

    .line 268
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 270
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result p2

    if-eq p2, v5, :cond_3

    .line 271
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 273
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChangedId:I

    if-eq p1, v1, :cond_4

    .line 274
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->callReorder(I)V

    :cond_4
    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    .line 277
    iput v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChangedId:I

    :cond_5
    :goto_0
    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_2

    .line 318
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorderSections()V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public updateReorder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 1206
    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v0, v1, :cond_1

    .line 1207
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Components/UItem$UItemFactory;->attachedView(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V

    return-void

    :cond_1
    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 1214
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->setReorder(Z)V

    return-void
.end method

.method public updateReorder(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->allowReorder:Z

    return-void
.end method

.method public updateWithoutNotify()V
    .locals 2

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorderSections()V

    return-void
.end method

.method public whiteSectionEnd()V
    .locals 3

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    if-eqz v0, :cond_1

    .line 197
    iget v0, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 199
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    if-eqz v2, :cond_0

    :goto_0
    if-gt v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UniversalAdapter;->isHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    iput v0, v2, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    .line 205
    iput v1, v2, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    :cond_1
    return-void
.end method

.method public whiteSectionStart()V
    .locals 2

    .line 190
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$Section;-><init>(Lorg/telegram/ui/Components/UniversalAdapter-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
