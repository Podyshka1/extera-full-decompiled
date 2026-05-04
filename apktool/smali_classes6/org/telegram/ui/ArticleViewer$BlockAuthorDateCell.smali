.class Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
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
    name = "BlockAuthorDateCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 11880
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 11881
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 11874
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    .line 11882
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 11976
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 11977
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 11953
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11956
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 11957
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11958
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11959
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 11960
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 11961
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 11967
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 11968
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 11969
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 11971
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 11897
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 11900
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    .line 11902
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object v4, v3

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetText(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    move v8, v6

    .line 11905
    instance-of v2, v0, Landroid/text/Spannable;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 11906
    move-object v2, v0

    check-cast v2, Landroid/text/Spannable;

    .line 11907
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v9, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 11912
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11913
    sget v4, Lorg/telegram/messenger/R$string;->ArticleDateByAuthor:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    int-to-long v11, v11

    mul-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v9

    aput-object v0, v6, v7

    const-string v5, "ArticleDateByAuthor"

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 11914
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11915
    sget v4, Lorg/telegram/messenger/R$string;->ArticleByAuthor:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v6, "ArticleByAuthor"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 11917
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    int-to-long v10, v7

    mul-long/2addr v10, v5

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_3

    .line 11920
    :try_start_0
    array-length v5, v3

    if-lez v5, :cond_3

    .line 11921
    invoke-static {v4, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 11923
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    move v5, v9

    .line 11925
    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 11926
    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, v0

    aget-object v10, v3, v5

    invoke-interface {v2, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v10, v0

    const/16 v11, 0x21

    invoke-interface {v4, v6, v7, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11931
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    move-object v2, v4

    .line 11933
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v4, v8, v3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_5

    const/high16 v0, 0x41800000    # 16.0f

    .line 11935
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 11936
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v3

    if-eqz v3, :cond_4

    int-to-float v3, v8

    .line 11937
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineLeft(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    goto :goto_3

    :cond_4
    const/high16 v0, 0x41900000    # 18.0f

    .line 11939
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    .line 11941
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    iput v3, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 11942
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    iput v3, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    move v7, v2

    goto :goto_4

    :cond_5
    move v7, v9

    goto :goto_4

    :cond_6
    move v8, v6

    .line 11948
    :goto_4
    invoke-virtual {p0, v8, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 11892
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V
    .locals 0

    .line 11886
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .line 11887
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
