.class public Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockParagraphCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field public textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field public textX:I

.field public textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 8138
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 8139
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8140
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 8214
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 8215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 8188
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-nez v0, :cond_0

    goto :goto_1

    .line 8191
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 8192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8193
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8194
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 8195
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8198
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_3

    const/high16 v0, 0x41900000    # 18.0f

    .line 8199
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 8205
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 8206
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 8207
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 8209
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 8156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8159
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz p2, :cond_3

    .line 8160
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/high16 v0, 0x41900000    # 18.0f

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 8161
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    .line 8162
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    goto :goto_0

    .line 8164
    :cond_0
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    mul-int/lit8 p2, p2, 0xe

    add-int/lit8 p2, p2, 0x12

    int-to-float p2, p2

    .line 8165
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    .line 8167
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p1, p2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    sub-int v7, p2, v0

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object p2

    :goto_1
    move-object v10, p2

    goto :goto_2

    :cond_1
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :goto_2
    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, v4, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_4

    .line 8169
    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result p2

    .line 8170
    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_2

    .line 8171
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_3
    add-int/2addr p2, v0

    move v2, p2

    goto :goto_4

    :cond_2
    const/high16 v0, 0x41800000    # 16.0f

    .line 8173
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_3

    .line 8175
    :goto_4
    iget-object p2, v4, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v0, v4, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    iput v0, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8176
    iget v0, v4, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    iput v0, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_5

    :cond_3
    move-object v4, p0

    const/4 v2, 0x1

    .line 8183
    :cond_4
    :goto_5
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 8150
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V
    .locals 0

    .line 8144
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .line 8145
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
