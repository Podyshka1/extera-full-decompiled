.class Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;
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
    name = "BlockRelatedArticlesCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

.field private divider:Z

.field private drawImage:Z

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textOffset:I

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 10543
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10544
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 10537
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 10538
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    .line 10545
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 10547
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p2, 0x40c00000    # 6.0f

    .line 10548
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 10664
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 10665
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10667
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 10668
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 10638
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 10641
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    if-eqz v0, :cond_1

    .line 10642
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 10645
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10646
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10647
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 10648
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 10649
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 10651
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 10652
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10653
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 10654
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10656
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10657
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->divider:Z

    if-eqz v0, :cond_6

    .line 10658
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    const/high16 v3, 0x41880000    # 17.0f

    if-eqz v0, :cond_4

    :goto_1
    move v6, v4

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_5
    sub-int/2addr v0, v1

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v9, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetdividerPaint()Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v1, p0

    .line 10559
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 10561
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    const/4 v12, 0x0

    if-eq v0, v2, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->divider:Z

    .line 10562
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    .line 10564
    sget v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    add-int/lit8 v0, v0, -0x10

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    .line 10566
    iget-wide v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->photo_id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetPhotoWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_3

    .line 10568
    iput-boolean v11, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    .line 10569
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 10570
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v5, 0x50

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v3

    .line 10574
    :goto_2
    iget-object v15, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    invoke-static {v4, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v2, v0

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v23

    const/16 v24, 0x1

    const-string v17, "64_64"

    const-string v19, "64_64_b"

    const/16 v22, 0x0

    move-wide/from16 v20, v2

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_3

    .line 10576
    :cond_3
    iput-boolean v12, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    :goto_3
    const/high16 v0, 0x42700000    # 60.0f

    .line 10579
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v0, 0x42100000    # 36.0f

    .line 10580
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v10, v0

    .line 10581
    iget-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    const/high16 v16, 0x40c00000    # 6.0f

    if-eqz v2, :cond_4

    const/high16 v2, 0x42300000    # 44.0f

    .line 10582
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 10583
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    sub-int v4, v10, v2

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    int-to-float v0, v0

    .line 10584
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    :cond_4
    move v4, v0

    const/high16 v0, 0x41900000    # 18.0f

    .line 10587
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    .line 10590
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->title:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 10591
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x3

    iget-object v9, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 10594
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_8

    .line 10595
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    rsub-int/lit8 v2, v0, 0x4

    .line 10597
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v14

    iput v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    .line 10598
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    add-int v17, v17, v3

    move v3, v12

    :goto_4
    if-ge v3, v0, :cond_7

    .line 10600
    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineLeft(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_6

    move v0, v11

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move v0, v12

    .line 10605
    :goto_5
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    iput v5, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10606
    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iput v5, v3, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :goto_6
    move v8, v2

    goto :goto_7

    .line 10608
    :cond_8
    iput v12, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    const/4 v2, 0x4

    move v0, v12

    goto :goto_6

    .line 10611
    :goto_7
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    if-eqz v2, :cond_9

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 10612
    sget v2, Lorg/telegram/messenger/R$string;->ArticleDateByAuthor:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    iget v7, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    const-wide/16 p1, 0x3e8

    int-to-long v5, v7

    mul-long v5, v5, p1

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v12

    aput-object v5, v6, v11

    const-string v3, "ArticleDateByAuthor"

    invoke-static {v3, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    move v12, v0

    goto :goto_9

    :cond_9
    const-wide/16 p1, 0x3e8

    .line 10613
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 10614
    sget v2, Lorg/telegram/messenger/R$string;->ArticleByAuthor:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v12

    const-string v3, "ArticleByAuthor"

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 10615
    :cond_a
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    if-eqz v2, :cond_b

    .line 10616
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iget v3, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    int-to-long v5, v3

    mul-long v5, v5, p1

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 10617
    :cond_b
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 10618
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->description:Ljava/lang/String;

    goto :goto_8

    .line 10620
    :cond_c
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    goto :goto_8

    .line 10622
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    add-int/2addr v5, v3

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v12, :cond_d

    goto :goto_b

    :cond_d
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_a
    move-object v7, v3

    goto :goto_c

    :cond_e
    :goto_b
    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v3

    goto :goto_a

    :goto_c
    iget-object v9, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_10

    .line 10624
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    add-int v17, v17, v0

    .line 10625
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_f

    .line 10626
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v14

    add-int v17, v17, v0

    .line 10628
    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10629
    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iget v3, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_10
    move/from16 v0, v17

    .line 10631
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10633
    iget-boolean v2, v1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->divider:Z

    add-int/2addr v0, v2

    invoke-virtual {v1, v10, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)V
    .locals 0

    .line 10552
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    .line 10553
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
