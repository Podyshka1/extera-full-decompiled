.class Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
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
    name = "BlockHeaderCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 10683
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10684
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 10676
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textX:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 10677
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

    .line 10685
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 10743
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 10744
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 10720
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10723
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 10724
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10725
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10726
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 10727
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10728
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 10734
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 10735
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 10736
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 10738
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrIVHeading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 10701
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 10704
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz p2, :cond_2

    .line 10705
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int v4, p1, p2

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object p2

    :goto_0
    move-object v7, p2

    goto :goto_1

    :cond_0
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_1

    const/high16 p2, 0x41800000    # 16.0f

    .line 10707
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 10708
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10709
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    move-object v1, p0

    const/4 p2, 0x1

    .line 10715
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 10695
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V
    .locals 0

    .line 10689
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .line 10690
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
