.class public Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;
.super Lorg/telegram/ui/Cells/TextSelectionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticleTextSelectionHelper"
.end annotation


# instance fields
.field public arrayList:Ljava/util/ArrayList;

.field childCountByPosition:Landroid/util/SparseIntArray;

.field endViewChildPosition:I

.field endViewOffset:I

.field endViewPosition:I

.field public layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field maybeTextIndex:I

.field prefixTextByPosition:Landroid/util/SparseArray;

.field startPeek:Z

.field startViewChildPosition:I

.field startViewOffset:I

.field startViewPosition:I

.field textByPosition:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2539
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;-><init>()V

    const/4 v0, -0x1

    .line 2523
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2524
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2527
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2528
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2531
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    .line 2533
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    .line 2534
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    .line 2535
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    .line 2544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 2540
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    .line 2541
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsAsPopupAlways:Z

    return-void
.end method

.method private findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I
    .locals 7

    .line 2674
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2675
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v1

    .line 2676
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2677
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2678
    instance-of v4, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v4, :cond_0

    int-to-float v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    int-to-float p1, p1

    .line 2679
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result p2

    sub-float/2addr v4, p2

    float-to-int p2, v4

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2683
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p3, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2685
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    return v0

    .line 2691
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const v2, 0x7fffffff

    move v4, v0

    move v3, v2

    :goto_1
    if-ltz p3, :cond_5

    .line 2692
    iget-object v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    .line 2693
    invoke-interface {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result v6

    .line 2694
    invoke-interface {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    add-int/2addr v5, v6

    if-lt p2, v6, :cond_3

    if-ge p2, v5, :cond_3

    goto :goto_2

    :cond_3
    sub-int v6, p2, v6

    .line 2700
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v5, v3, :cond_4

    move v4, p3

    move v3, v5

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_5
    move v1, v3

    move p3, v4

    :goto_2
    if-gez p3, :cond_6

    return v0

    .line 2710
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getRow()I

    move-result p2

    if-lez p2, :cond_9

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2713
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 2718
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_9

    .line 2719
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    .line 2720
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getRow()I

    move-result v3

    if-ne v3, p2, :cond_8

    .line 2721
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v3

    .line 2722
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v4

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    add-int/2addr v4, v1

    if-lt p1, v3, :cond_7

    if-gt p1, v4, :cond_7

    return v0

    :cond_7
    sub-int v1, p1, v3

    .line 2726
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v3, p1, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v2, :cond_8

    move p3, v0

    move v2, v1

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_9
    return p3
.end method

.method private getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I
    .locals 3

    .line 2787
    check-cast p1, Landroid/view/View;

    .line 2788
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2789
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 2790
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2791
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2792
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    .line 2799
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 2800
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1

    .line 2802
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected canSelect(I)Z
    .locals 2

    .line 3206
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v0, v1, :cond_0

    .line 3207
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canSelect(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected canShowActions()Z
    .locals 5

    .line 3227
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3230
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 3231
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 3232
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-lt v0, v3, :cond_1

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-le v0, v4, :cond_2

    :cond_1
    if-lt v2, v3, :cond_3

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-gt v2, v4, :cond_3

    :cond_2
    return v1

    :cond_3
    if-lt v3, v0, :cond_4

    .line 3235
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-gt v0, v2, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public clear(Z)V
    .locals 0

    .line 3053
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    const/4 p1, -0x1

    .line 3054
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 3055
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 3056
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 3057
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 3058
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 3059
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 10

    .line 2743
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2744
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2746
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result v3

    if-gez v3, :cond_0

    goto/16 :goto_0

    .line 2751
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2752
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p2, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    if-ltz p3, :cond_b

    .line 2754
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_b

    .line 2755
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    if-eqz v1, :cond_b

    .line 2757
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 2759
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2760
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    move v4, v5

    .line 2765
    :cond_1
    iget v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-ne v3, v6, :cond_5

    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v3, v7, :cond_5

    .line 2766
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v3, v6, :cond_2

    if-ne v3, p3, :cond_2

    .line 2767
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void

    :cond_2
    if-ne p3, v3, :cond_3

    .line 2769
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v5

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void

    :cond_3
    move v9, v5

    move v5, v4

    move v4, v9

    if-ne p3, v6, :cond_4

    .line 2771
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void

    :cond_4
    if-le p3, v3, :cond_b

    if-ge p3, v6, :cond_b

    .line 2773
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void

    :cond_5
    move v9, v5

    move v5, v4

    move v4, v9

    if-ne v3, v6, :cond_6

    .line 2775
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v7, p3, :cond_6

    .line 2776
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void

    .line 2777
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v3, v7, :cond_7

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v8, p3, :cond_7

    .line 2778
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void

    :cond_7
    if-le v3, v6, :cond_8

    if-lt v3, v7, :cond_a

    :cond_8
    if-ne v3, v6, :cond_9

    .line 2779
    iget v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-gt p3, v5, :cond_a

    :cond_9
    if-ne v3, v7, :cond_b

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ge p3, v3, :cond_b

    .line 2780
    :cond_a
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    :cond_b
    :goto_0
    return-void
.end method

.method protected fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V
    .locals 2

    .line 2611
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_0

    .line 2612
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    :goto_0
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2614
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    return-void

    .line 2617
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    if-eqz p3, :cond_2

    .line 2619
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    goto :goto_3

    .line 2621
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    :goto_2
    if-ltz p1, :cond_5

    .line 2622
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_4

    goto :goto_4

    .line 2626
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    :goto_3
    const/4 p1, 0x0

    .line 2628
    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    return-void

    .line 2623
    :cond_5
    :goto_4
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    return-void
.end method

.method protected getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)I
    .locals 1

    const/4 v0, -0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    .line 2573
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 2574
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p5, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    if-eqz p6, :cond_1

    .line 2578
    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    goto :goto_0

    .line 2580
    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz p3, :cond_2

    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_2
    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2582
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p3

    const/4 p4, 0x1

    if-gez p1, :cond_3

    move p1, p4

    :cond_3
    if-gez p2, :cond_4

    move p2, p4

    .line 2589
    :cond_4
    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p5

    if-le p1, p5, :cond_5

    .line 2590
    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p1

    .line 2592
    :cond_5
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p5

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p5

    if-le p2, p5, :cond_6

    .line 2593
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    sub-int/2addr p2, p4

    invoke-virtual {p3, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p2

    sub-int/2addr p2, p4

    :cond_6
    const/4 p4, 0x0

    .line 2596
    :goto_1
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p5

    if-ge p4, p5, :cond_8

    .line 2597
    invoke-virtual {p3, p4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result p5

    if-le p2, p5, :cond_7

    invoke-virtual {p3, p4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p5

    if-ge p2, p5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_8
    move p4, v0

    :goto_2
    if-ltz p4, :cond_9

    int-to-float p1, p1

    .line 2603
    invoke-virtual {p3, p4, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    return p1

    :cond_9
    return v0
.end method

.method protected bridge synthetic getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I
    .locals 0

    .line 2521
    check-cast p5, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)I

    move-result p1

    return p1
.end method

.method protected getLineHeight()I
    .locals 5

    .line 2633
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2636
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2638
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    :goto_0
    if-ltz v0, :cond_5

    .line 2639
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_2

    .line 2642
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    const v2, 0x7fffffff

    .line 2644
    :goto_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2645
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method protected getSelectedText()Ljava/lang/CharSequence;
    .locals 13

    .line 3064
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3065
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_17

    .line 3066
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    const/16 v5, 0x20

    const/16 v6, 0xa

    if-ne v1, v4, :cond_b

    if-ne v4, v2, :cond_0

    .line 3067
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3068
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    :goto_2
    if-gt v4, v2, :cond_16

    .line 3069
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v8, v4, 0x10

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-nez v7, :cond_1

    goto/16 :goto_4

    .line 3073
    :cond_1
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v10, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v9, v10, :cond_4

    iget v11, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v4, v11, :cond_4

    iget v11, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v4, v11, :cond_4

    .line 3074
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 3075
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    if-ge v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v12, v9

    move v9, v8

    move v8, v12

    .line 3081
    :goto_3
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v8, v10, :cond_a

    .line 3082
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 3083
    :cond_3
    invoke-interface {v7, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3084
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_4
    if-ne v9, v10, :cond_7

    .line 3086
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v4, v9, :cond_7

    .line 3087
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_5

    .line 3089
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3091
    :cond_5
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 3092
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v8, v9, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 3093
    :cond_6
    invoke-interface {v7, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3094
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 3095
    :cond_7
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v4, v9, :cond_8

    .line 3096
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 3097
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 3098
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v7, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3099
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 3102
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_9

    .line 3104
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3106
    :cond_9
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3107
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_b
    if-ne v1, v2, :cond_14

    move v2, v3

    .line 3111
    :goto_5
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-gt v2, v4, :cond_16

    .line 3112
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v7, v2, 0x10

    add-int/2addr v7, v1

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-nez v4, :cond_c

    goto/16 :goto_6

    .line 3116
    :cond_c
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v8, v9, :cond_e

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v2, v8, :cond_e

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v2, v8, :cond_e

    .line 3117
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 3118
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 3119
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v8, v9, :cond_13

    .line 3120
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v7, v9, :cond_d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 3121
    :cond_d
    invoke-interface {v4, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3122
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 3124
    :cond_e
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v2, v8, :cond_11

    .line 3125
    iget-object v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_f

    .line 3127
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3129
    :cond_f
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 3130
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v7, v8, :cond_10

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 3131
    :cond_10
    invoke-interface {v4, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3132
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 3134
    :cond_11
    iget-object v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_12

    .line 3136
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3138
    :cond_12
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3139
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_13
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 3143
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 3144
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    :goto_7
    if-ge v3, v2, :cond_16

    .line 3145
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v7, v3, 0x10

    add-int/2addr v7, v1

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_15

    .line 3147
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3149
    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3150
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3155
    :cond_17
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 3156
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-class v2, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    .line 3157
    array-length v2, v1

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_18

    aget-object v5, v1, v4

    .line 3158
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 3159
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3160
    invoke-virtual {v0, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 3163
    :cond_18
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 2548
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2549
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    if-eqz p2, :cond_0

    .line 2552
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    goto :goto_0

    .line 2554
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2556
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    if-gez p1, :cond_2

    goto :goto_1

    .line 2559
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 2557
    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 2521
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()V
    .locals 2

    .line 3045
    invoke-super {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    const/4 v0, 0x0

    .line 3046
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3047
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSelectable(Landroid/view/View;)Z
    .locals 2

    .line 2809
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v0, :cond_1

    .line 2810
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2811
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2812
    instance-of p1, p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2815
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 7

    if-eqz p3, :cond_1

    .line 3214
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-ne p6, v0, :cond_1

    cmpl-float v0, p5, p4

    if-nez v0, :cond_1

    .line 3215
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz p2, :cond_0

    .line 3216
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    return-void

    .line 3218
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    return-void

    :cond_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 3221
    invoke-super/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V

    return-void
.end method

.method protected bridge synthetic jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0

    .line 2521
    check-cast p6, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    return-void
.end method

.method protected onNewViewSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 5

    .line 2843
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 2846
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2848
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->invalidate()V

    .line 2850
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingDirectionSettling:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v1, v4, :cond_4

    if-ne v0, v1, :cond_2

    .line 2852
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ge p3, p1, :cond_1

    .line 2853
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2854
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2855
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2856
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    sub-int/2addr p1, v2

    .line 2857
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto/16 :goto_3

    .line 2859
    :cond_1
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2860
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2861
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2862
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto/16 :goto_3

    :cond_2
    if-ge v0, v1, :cond_3

    .line 2865
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2866
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2867
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2868
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2869
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    sub-int/2addr p1, v2

    .line 2870
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto/16 :goto_3

    .line 2872
    :cond_3
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2873
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2874
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2875
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2876
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto/16 :goto_3

    .line 2878
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz v1, :cond_9

    if-ne v0, p1, :cond_7

    .line 2880
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-le p3, p1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ge v0, v1, :cond_5

    goto :goto_1

    .line 2886
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2887
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2888
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2889
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2890
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2891
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2892
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    goto/16 :goto_3

    .line 2881
    :cond_6
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2882
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2883
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2884
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    goto/16 :goto_3

    .line 2894
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-gt v0, p1, :cond_8

    .line 2895
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2896
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2897
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2898
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    goto :goto_3

    .line 2900
    :cond_8
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2901
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2902
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2903
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2904
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2905
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2906
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    goto :goto_3

    :cond_9
    if-ne v0, p1, :cond_c

    .line 2910
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ge p3, p1, :cond_b

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-le v0, v1, :cond_a

    goto :goto_2

    .line 2916
    :cond_a
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2917
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2918
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2919
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2920
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2921
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2922
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    goto :goto_3

    .line 2911
    :cond_b
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2912
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2913
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2914
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto :goto_3

    .line 2924
    :cond_c
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-lt v0, p1, :cond_d

    .line 2925
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2926
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2927
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2928
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto :goto_3

    .line 2930
    :cond_d
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2931
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2932
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2933
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2934
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2935
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2936
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2941
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2942
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2943
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2944
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    :goto_4
    if-ge v3, p1, :cond_e

    .line 2946
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 p3, v3, 0x10

    add-int/2addr p3, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2947
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getPrefix()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method protected onOffsetChanged()V
    .locals 3

    .line 3033
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result v0

    .line 3034
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 3035
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v1, v2, :cond_1

    .line 3036
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 3039
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v1, v0, :cond_2

    .line 3040
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    :cond_2
    return-void
.end method

.method protected onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 4

    .line 2823
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p2

    if-gez p2, :cond_0

    goto :goto_1

    .line 2828
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2829
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2832
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2833
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2834
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2835
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2837
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v2, v0, 0x10

    add-int/2addr v2, p2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2838
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getPrefix()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected bridge synthetic onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0

    .line 2521
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    return-void
.end method

.method protected pickEndView()V
    .locals 4

    .line 2954
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2957
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    .line 2958
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ltz v1, :cond_7

    .line 2960
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2961
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    .line 2962
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2963
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 2967
    iput-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return-void

    .line 2970
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 2971
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-eq v2, v3, :cond_4

    .line 2972
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_1

    .line 2973
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-eq v2, v3, :cond_5

    .line 2974
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_1

    .line 2976
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 2979
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 2980
    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2981
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 2982
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 2985
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2986
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2987
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2988
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    .line 2989
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    :cond_7
    :goto_2
    return-void
.end method

.method protected pickStartView()V
    .locals 4

    .line 2996
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 2999
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    .line 3000
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-ltz v0, :cond_6

    .line 3002
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3003
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    .line 3004
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3005
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 3008
    iput-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return-void

    .line 3011
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 3012
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    .line 3013
    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_1

    .line 3014
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-eq v1, v2, :cond_5

    .line 3015
    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_1

    .line 3017
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 3020
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 3023
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3024
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 3025
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3026
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    .line 3027
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    :cond_6
    :goto_2
    return-void
.end method

.method protected selectLayout(II)Z
    .locals 6

    .line 3172
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3175
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v0

    const/4 v2, 0x1

    if-le p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getBottom()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_1

    .line 3194
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    :goto_0
    int-to-float p1, p1

    .line 3195
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    float-to-int p1, p1

    int-to-float p2, p2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getY()F

    move-result v3

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    if-eq p1, v0, :cond_3

    if-ltz p1, :cond_3

    .line 3197
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v0, p2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->onNewViewSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return v2

    :cond_3
    return v1

    .line 3176
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_7

    .line 3178
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->isSelectable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3179
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    .line 3180
    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v5

    if-le p2, v5, :cond_6

    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getBottom()I

    move-result v5

    if-ge p2, v5, :cond_6

    int-to-float p1, p1

    .line 3181
    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    invoke-direct {p0, p1, p2, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 3183
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, p2, v4, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->onNewViewSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 3184
    iput-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return v2

    :cond_5
    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method public setMaybeView(IILandroid/view/View;)V
    .locals 1

    .line 2659
    instance-of v0, p3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v0, :cond_1

    .line 2660
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 2661
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 2662
    check-cast p3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iput-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 2663
    check-cast p3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2665
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return-void

    .line 2667
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    .line 2668
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    :cond_1
    return-void
.end method

.method public trySelect(Landroid/view/View;)V
    .locals 0

    .line 2653
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz p1, :cond_0

    .line 2654
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
