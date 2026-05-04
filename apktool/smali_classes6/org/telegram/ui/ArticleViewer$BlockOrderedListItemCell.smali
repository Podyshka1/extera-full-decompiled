.class Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;
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
    name = "BlockOrderedListItemCell"
.end annotation


# instance fields
.field private blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private blockX:I

.field private blockY:I

.field private currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

.field private currentBlockType:I

.field private numOffsetY:I

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private verticalAlign:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetverticalAlign(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 10111
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10112
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 10113
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p1, 0x0

    .line 10114
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 2

    .line 10321
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v1, :cond_0

    .line 10322
    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 10324
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 10325
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 10304
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 10305
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 10306
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 10279
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 10282
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 10283
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10285
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41900000    # 18.0f

    if-eqz v1, :cond_1

    .line 10286
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 10288
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10290
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10291
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10293
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    .line 10294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10295
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10296
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 10297
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 10312
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 10313
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 10314
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 10316
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 10272
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    .line 10273
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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

    .line 10147
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 10150
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    const/4 v10, 0x1

    if-eqz v0, :cond_1c

    const/4 v2, 0x0

    .line 10151
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 10152
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)I

    move-result v0

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    .line 10153
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    .line 10154
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v0

    sget v2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    if-eq v0, v2, :cond_4

    .line 10155
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fputlastMaxNumCalcWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V

    .line 10156
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fputlastFontSize(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V

    .line 10157
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V

    .line 10158
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v13, v12

    :goto_1
    if-ge v13, v8, :cond_3

    .line 10159
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 10160
    invoke-static {v14}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 10163
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v14}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v4, v9, v3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 10164
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v2

    invoke-static {v14}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 10166
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

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

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fputmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)V

    .line 10168
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41900000    # 18.0f

    if-eqz v0, :cond_5

    .line 10169
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    goto :goto_3

    :cond_5
    const/high16 v0, 0x41c00000    # 24.0f

    .line 10171
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    .line 10173
    :goto_3
    iput-boolean v12, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    .line 10174
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v9, v0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    sub-int/2addr v0, v4

    .line 10175
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x40c00000    # 6.0f

    .line 10176
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetmaxNumWidth(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    :cond_6
    move v4, v0

    .line 10178
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    const/high16 v13, 0x41000000    # 8.0f

    if-eqz v0, :cond_9

    .line 10179
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

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
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_17

    .line 10180
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 10181
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 10182
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v0

    .line 10183
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    .line 10185
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    goto/16 :goto_c

    .line 10187
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 10188
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    .line 10189
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    .line 10190
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_16

    .line 10191
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    if-eqz v5, :cond_b

    .line 10192
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    .line 10193
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 10194
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    .line 10196
    :cond_a
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    .line 10197
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_9

    .line 10198
    :cond_b
    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    if-nez v0, :cond_f

    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    if-nez v0, :cond_f

    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    if-nez v0, :cond_f

    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    if-eqz v0, :cond_c

    goto :goto_8

    .line 10206
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$misListItemBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 10207
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    .line 10208
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    .line 10209
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    .line 10211
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    move v4, v9

    goto :goto_9

    .line 10212
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    if-eqz v0, :cond_e

    .line 10213
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 10214
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_7
    add-int/2addr v4, v0

    :cond_e
    move v0, v12

    goto :goto_9

    .line 10202
    :cond_f
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 10203
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    .line 10205
    :cond_10
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_7

    .line 10216
    :goto_9
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 10217
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 10218
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    .line 10219
    iget-object v3, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v3

    if-lez v3, :cond_11

    .line 10220
    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v2

    .line 10221
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    .line 10224
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v2, :cond_12

    .line 10225
    iput-boolean v10, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    .line 10226
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    .line 10227
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_a

    .line 10228
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v3, :cond_13

    .line 10229
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    iget-boolean v2, v2, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    goto :goto_a

    .line 10230
    :cond_13
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v3, :cond_14

    .line 10231
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->-$$Nest$fgetverticalAlign(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    .line 10233
    :cond_14
    :goto_a
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 10234
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    .line 10236
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_b

    :cond_16
    move v0, v12

    .line 10238
    :goto_b
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_6

    :cond_17
    move v0, v12

    .line 10240
    :goto_c
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetitems(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-ne v2, v3, :cond_18

    .line 10241
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 10243
    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)I

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->-$$Nest$fgetlevel(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v2

    if-nez v2, :cond_19

    .line 10244
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    :cond_19
    move v10, v0

    .line 10246
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1a

    .line 10247
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10248
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 10249
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 10250
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->prefix:Ljava/lang/CharSequence;

    .line 10253
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v0, :cond_1c

    .line 10254
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10255
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 10256
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1b
    :goto_d
    if-ge v12, v2, :cond_1c

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    .line 10257
    instance-of v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v4, :cond_1b

    .line 10258
    check-cast v3, Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    add-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10259
    iget v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    add-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_d

    .line 10267
    :cond_1c
    invoke-virtual {p0, v9, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 10138
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 10141
    :cond_0
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)V
    .locals 7

    .line 10118
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eq v0, p1, :cond_1

    .line 10119
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 10120
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    .line 10121
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 10122
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10124
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10125
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetTypeForBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlockType:I

    .line 10126
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10127
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10130
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10131
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlockType:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mbindBlockToHolder(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    .line 10133
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
