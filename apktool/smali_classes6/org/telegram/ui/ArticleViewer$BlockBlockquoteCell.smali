.class Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
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
    name = "BlockBlockquoteCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field private textY2:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 10948
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10949
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 10942
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    .line 10950
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 11047
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 11048
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11050
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 11051
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 11016
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 11020
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 11021
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11022
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11023
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, p1, p0, v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 11024
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 11025
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v6

    .line 11027
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_2

    .line 11028
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11029
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11030
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 11031
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 11032
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 11034
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x40c00000    # 6.0f

    if-eqz v1, :cond_3

    .line 11035
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    int-to-float v1, v2

    .line 11036
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move v0, v3

    move v3, v2

    move v2, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 11038
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0x12

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11040
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_5

    const/high16 v0, 0x41900000    # 18.0f

    .line 11041
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :cond_4
    sub-int/2addr v0, v6

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 10965
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 10968
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz p2, :cond_8

    const/high16 p2, 0x42480000    # 50.0f

    .line 10969
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p1, p2

    .line 10970
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0xe

    int-to-float v0, v0

    .line 10971
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    :cond_0
    move v4, p2

    .line 10973
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v8, 0x41000000    # 8.0f

    if-eqz p2, :cond_1

    .line 10975
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 10977
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/high16 v2, 0x42000000    # 32.0f

    if-lez v0, :cond_3

    .line 10978
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10979
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0xe

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    goto :goto_1

    .line 10981
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v0, v0, 0xe

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    goto :goto_1

    .line 10984
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x41600000    # 14.0f

    .line 10985
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    goto :goto_1

    .line 10987
    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    .line 10990
    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int v5, p2, v0

    iput v5, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    .line 10991
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_5

    .line 10993
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr p2, v0

    :cond_5
    if-eqz p2, :cond_6

    .line 10996
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    .line 10998
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_7

    .line 10999
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 11000
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 11003
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_9

    .line 11004
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 11005
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_2

    :cond_8
    move-object v1, p0

    const/4 p2, 0x1

    .line 11011
    :cond_9
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 10960
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V
    .locals 0

    .line 10954
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 10955
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
