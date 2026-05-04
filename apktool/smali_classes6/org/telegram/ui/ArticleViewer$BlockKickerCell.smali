.class Lorg/telegram/ui/ArticleViewer$BlockKickerCell;
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
    name = "BlockKickerCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 12074
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 12075
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 12069
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textX:I

    .line 12076
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 12131
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 12132
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 12117
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-nez v0, :cond_0

    goto :goto_0

    .line 12120
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 12121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12122
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12123
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 12124
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 12125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 12092
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 12095
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-eqz p2, :cond_2

    .line 12096
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$PageBlock;->first:Z

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x41800000    # 16.0f

    if-eqz p2, :cond_0

    .line 12097
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textY:I

    .line 12098
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_0

    .line 12100
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textY:I

    const/4 p2, 0x0

    .line 12102
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v6, p1, v0

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textY:I

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v0

    :goto_1
    move-object v9, v0

    goto :goto_2

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :goto_2
    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    .line 12104
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 12105
    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, v3, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 12106
    iget v1, v3, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textY:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_3

    :cond_2
    move-object v3, p0

    const/4 p2, 0x1

    .line 12112
    :cond_3
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 12086
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;)V
    .locals 0

    .line 12080
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    .line 12081
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
