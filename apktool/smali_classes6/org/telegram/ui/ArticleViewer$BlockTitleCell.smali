.class Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
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
    name = "BlockTitleCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 11992
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 11993
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 11987
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    .line 11994
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 12058
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 12059
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 12035
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 12038
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 12039
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12040
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12041
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 12042
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 12043
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 12049
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 12050
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 12051
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 12053
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrIVTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 12010
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 12013
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz p2, :cond_2

    .line 12014
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$PageBlock;->first:Z

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x41000000    # 8.0f

    if-eqz p2, :cond_0

    .line 12015
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 12016
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    goto :goto_0

    .line 12018
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    const/4 p2, 0x0

    .line 12020
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v5, p1, v2

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v2

    :goto_1
    move-object v8, v2

    goto :goto_2

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_3

    .line 12022
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 12023
    iget-object v0, v2, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, v2, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 12024
    iget v1, v2, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_3

    :cond_2
    move-object v2, p0

    const/4 p2, 0x1

    .line 12030
    :cond_3
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 12004
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V
    .locals 0

    .line 11998
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .line 11999
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
