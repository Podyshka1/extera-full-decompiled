.class Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockDetailsCell"
.end annotation


# instance fields
.field private arrow:Lorg/telegram/ui/Components/AnimatedArrowDrawable;

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method static bridge synthetic -$$Nest$fgetarrow(Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;)Lorg/telegram/ui/Components/AnimatedArrowDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->arrow:Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 1

    .line 10341
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10342
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p2, 0x42480000    # 50.0f

    .line 10333
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textX:I

    const/high16 p2, 0x41300000    # 11.0f

    .line 10334
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textY:I

    .line 10343
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 10345
    new-instance p2, Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetGrayTextColor(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;-><init>(IZ)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->arrow:Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 10416
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 10417
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 10350
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 10394
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-nez v0, :cond_0

    return-void

    .line 10397
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41900000    # 18.0f

    .line 10398
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10399
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->arrow:Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 10400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10402
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 10403
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10404
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10405
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 10406
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10410
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    .line 10411
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetdividerPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    move v5, v3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 10378
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x421c0000    # 39.0f

    .line 10379
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 10380
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_1

    .line 10381
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v5, p1, v0

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    const/high16 v0, 0x41a80000    # 21.0f

    .line 10383
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v3, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 10384
    iget-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textY:I

    .line 10385
    iget-object v0, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v3, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textX:I

    iput v3, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10386
    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_2

    :cond_1
    move-object v2, p0

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 10389
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 10372
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->textY:I

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

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;)V
    .locals 1

    .line 10364
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 10365
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->arrow:Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->setAnimationProgress(F)V

    .line 10366
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->arrow:Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10367
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
