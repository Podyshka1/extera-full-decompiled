.class public Lorg/telegram/ui/ArticleViewer$DrawingText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawingText"
.end annotation


# instance fields
.field private isDrawing:Z

.field private latestParentView:Landroid/view/View;

.field public markPath:Lorg/telegram/ui/Components/LinkPath;

.field public parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field public parentText:Ljava/lang/Object;

.field public prefix:Ljava/lang/CharSequence;

.field public row:I

.field public searchIndex:I

.field public searchPath:Lorg/telegram/ui/Components/LinkPath;

.field public textLayout:Landroid/text/StaticLayout;

.field public textPath:Lorg/telegram/ui/Components/LinkPath;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field public x:I

.field public y:I


# direct methods
.method static bridge synthetic -$$Nest$fgetlatestParentView(Lorg/telegram/ui/ArticleViewer$DrawingText;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->latestParentView:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 477
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->isDrawing:Z

    .line 487
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->latestParentView:Landroid/view/View;

    .line 489
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetsearchResults(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 490
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetsearchResults(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentSearchIndex(Lorg/telegram/ui/ArticleViewer;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ArticleViewer$SearchResult;

    .line 491
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v6, v7, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgettext(Lorg/telegram/ui/ArticleViewer$SearchResult;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentText:Ljava/lang/Object;

    if-eq v6, v7, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgettext(Lorg/telegram/ui/ArticleViewer$SearchResult;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentText:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 492
    :cond_0
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 493
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    .line 494
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    .line 495
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v6

    invoke-virtual {v2, v3, v6, v4}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 496
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 497
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v1

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetsearchText(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v2, v3, v1, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 498
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    goto :goto_0

    .line 501
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    .line 502
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    goto :goto_0

    .line 505
    :cond_2
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    .line 506
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    .line 508
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    if-eqz v1, :cond_4

    .line 509
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetwebpageSearchPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 511
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textPath:Lorg/telegram/ui/Components/LinkPath;

    if-eqz v1, :cond_5

    .line 512
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetwebpageUrlPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 514
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->markPath:Lorg/telegram/ui/Components/LinkPath;

    if-eqz v1, :cond_6

    .line 515
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetwebpageMarkPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 517
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetlinks(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 518
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 520
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    if-ne p2, p0, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLink(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetdrawBlockSelection(Lorg/telegram/ui/ArticleViewer;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result p2

    if-ne p2, v0, :cond_8

    .line 524
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result p2

    .line 525
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineLeft(I)F

    move-result v4

    goto :goto_1

    .line 527
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 530
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float v7, v1, v4

    add-float/2addr v4, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float v9, v4, p2

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result p2

    int-to-float v10, p2

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgeturlPaint()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_9
    move-object v6, p1

    .line 532
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 533
    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->isDrawing:Z

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayout()Landroid/text/StaticLayout;
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getLineAscent(I)I
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result p1

    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p1

    return p1
.end method

.method public getLineWidth(I)F
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    return p1
.end method

.method public getPrefix()Ljava/lang/CharSequence;
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->prefix:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 587
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->row:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()I
    .locals 1

    .line 577
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 582
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    return v0
.end method

.method public invalidateParent()V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->isDrawing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->latestParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
