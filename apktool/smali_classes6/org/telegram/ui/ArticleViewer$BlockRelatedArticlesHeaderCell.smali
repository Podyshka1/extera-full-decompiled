.class Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockRelatedArticlesHeaderCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 10471
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10472
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 10464
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textX:I

    .line 10473
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 10520
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 10521
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 10506
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10509
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 10510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10511
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10512
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 10513
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10514
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 10488
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 10489
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz p2, :cond_0

    .line 10490
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 p2, 0x42500000    # 52.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int v4, p1, p2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_1

    const/high16 p2, 0x40c00000    # 6.0f

    .line 10492
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textY:I

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 10495
    :cond_1
    :goto_0
    iget-object p2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_2

    const/high16 p2, 0x42180000    # 38.0f

    .line 10496
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10497
    iget-object p1, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget p2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textX:I

    iput p2, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10498
    iget p2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textY:I

    iput p2, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    return-void

    :cond_2
    const/4 p2, 0x1

    .line 10500
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 10483
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-super {p0, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V
    .locals 0

    .line 10477
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 10478
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
