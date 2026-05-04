.class Lorg/telegram/ui/ArticleViewer$BlockListItemCell;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockListItemCell"
.end annotation


# instance fields
.field private blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private blockX:I

.field private blockY:I

.field private currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

.field private currentBlockType:I

.field private drawDot:Z

.field private numOffsetY:I

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private verticalAlign:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetverticalAlign(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->verticalAlign:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 9870
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 9871
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 9872
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p1, 0x0

    .line 9873
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 2

    .line 10085
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v1, :cond_0

    .line 10086
    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 10088
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 10089
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 10068
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 10069
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 10070
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 10043
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 10046
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 10047
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10048
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10049
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 10050
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->numOffsetY:I

    add-int/2addr v1, v3

    iget-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->drawDot:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :cond_1
    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 10052
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->numOffsetY:I

    add-int/2addr v1, v3

    iget-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->drawDot:Z

    if-eqz v3, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :cond_3
    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10054
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10055
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10057
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_5

    .line 10058
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10059
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10060
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 10061
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10062
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 10076
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 10077
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 10078
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 10080
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 10036
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    .line 10037
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockY:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockY:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    .line 9906
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 9909
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    const/4 v10, 0x1

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    .line 9910
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 9911
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)I

    move-result v0

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    .line 9912
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->numOffsetY:I

    .line 9913
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v0

    sget v2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    if-eq v0, v2, :cond_4

    .line 9914
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fputlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V

    .line 9915
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fputlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V

    .line 9916
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V

    .line 9917
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v13, v12

    :goto_1
    if-ge v13, v8, :cond_3

    .line 9918
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 9919
    invoke-static {v14}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 9922
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v14}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v4, v9, v3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 9923
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v2

    invoke-static {v14}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 9925
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetlistTextNumPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v4, "00."

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)V

    .line 9927
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetpageBlockList(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    xor-int/2addr v0, v10

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->drawDot:Z

    .line 9929
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41900000    # 18.0f

    if-eqz v0, :cond_5

    .line 9930
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textX:I

    goto :goto_3

    :cond_5
    const/high16 v0, 0x41c00000    # 24.0f

    .line 9932
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textX:I

    .line 9934
    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v9, v0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textX:I

    sub-int/2addr v0, v4

    .line 9935
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x40c00000    # 6.0f

    .line 9936
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    :cond_6
    move v4, v0

    .line 9938
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    const/high16 v13, 0x40200000    # 2.5f

    const/high16 v14, 0x41000000    # 8.0f

    if-eqz v0, :cond_9

    .line 9939
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v2

    :goto_4
    move-object v7, v2

    goto :goto_5

    :cond_7
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_4

    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_19

    .line 9940
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    if-lez v0, :cond_19

    .line 9941
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 9942
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v0

    .line 9943
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->numOffsetY:I

    .line 9945
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    goto/16 :goto_d

    .line 9947
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 9948
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textX:I

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    .line 9949
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockY:I

    .line 9950
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_18

    .line 9951
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    if-eqz v5, :cond_b

    .line 9952
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockY:I

    .line 9953
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 9954
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    .line 9956
    :cond_a
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    .line 9957
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto/16 :goto_a

    .line 9958
    :cond_b
    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    if-nez v0, :cond_10

    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    if-nez v0, :cond_10

    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    if-nez v0, :cond_10

    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    if-eqz v0, :cond_c

    goto :goto_9

    .line 9966
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$misListItemBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9967
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    .line 9968
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockY:I

    .line 9969
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    .line 9970
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v0

    if-nez v0, :cond_d

    .line 9971
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_7

    :cond_d
    move v0, v12

    .line 9974
    :goto_7
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    move v4, v9

    goto :goto_a

    .line 9975
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    if-eqz v0, :cond_f

    .line 9976
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 9977
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_8
    add-int/2addr v4, v0

    :cond_f
    move v0, v12

    goto :goto_a

    .line 9962
    :cond_10
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 9963
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    .line 9965
    :cond_11
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_8

    .line 9979
    :goto_a
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 9980
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v2

    if-lez v2, :cond_12

    .line 9981
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    .line 9982
    iget-object v3, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v3

    if-lez v3, :cond_12

    .line 9983
    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v2

    .line 9984
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->numOffsetY:I

    .line 9987
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v2, :cond_14

    .line 9988
    iput-boolean v10, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->verticalAlign:Z

    .line 9989
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockY:I

    .line 9990
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)I

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v2

    if-nez v2, :cond_13

    .line 9991
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 9993
    :cond_13
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_b

    .line 9994
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v3, :cond_15

    .line 9995
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->-$$Nest$fgetverticalAlign(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->verticalAlign:Z

    goto :goto_b

    .line 9996
    :cond_15
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v3, :cond_16

    .line 9997
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    iget-boolean v2, v2, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->verticalAlign:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->verticalAlign:Z

    .line 9999
    :cond_16
    :goto_b
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->verticalAlign:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 10000
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    .line 10001
    iput-boolean v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->drawDot:Z

    .line 10003
    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_c

    :cond_18
    move v0, v12

    .line 10005
    :goto_c
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_6

    :cond_19
    move v0, v12

    .line 10007
    :goto_d
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-ne v2, v3, :cond_1a

    .line 10008
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 10010
    :cond_1a
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)I

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I

    move-result v2

    if-nez v2, :cond_1b

    .line 10011
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1b
    move v10, v0

    .line 10013
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1c

    .line 10014
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10015
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 10017
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v0, :cond_1e

    .line 10018
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10019
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 10020
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1d
    :goto_e
    if-ge v12, v2, :cond_1e

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    .line 10021
    instance-of v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v4, :cond_1d

    .line 10022
    check-cast v3, Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockX:I

    add-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10023
    iget v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockY:I

    add-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_e

    .line 10031
    :cond_1e
    invoke-virtual {p0, v9, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 9897
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 9900
    :cond_0
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)V
    .locals 7

    .line 9877
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eq v0, p1, :cond_1

    .line 9878
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 9879
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    .line 9880
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 9881
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 9883
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9884
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetTypeForBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlockType:I

    .line 9885
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 9886
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9889
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9890
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlockType:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mbindBlockToHolder(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    .line 9892
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
