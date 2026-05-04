.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockCollageCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;
    }
.end annotation


# instance fields
.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

.field private group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

.field private inLayout:Z

.field private innerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private innerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listX:I

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroup(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinLayout(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinnerListView(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentAdapter(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 8

    .line 9335
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 9336
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9001
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    .line 9337
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 9339
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 9348
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9386
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v4, 0x3e8

    move-object v2, p0

    move-object v7, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;IIZLorg/telegram/ui/ArticleViewer;)V

    .line 9417
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;

    invoke-direct {p1, p0, v7}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 9425
    iget-object p1, v2, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9426
    iget-object p1, v2, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$5;

    invoke-direct {p2, p0, v7}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$5;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p2, v2, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9483
    iget-object p1, v2, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, -0x1

    const/high16 p3, -0x40000000    # -2.0f

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 9484
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 9587
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 9588
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9590
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 9591
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 9561
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-nez v0, :cond_0

    goto :goto_1

    .line 9565
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9567
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9568
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9569
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 9570
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 9572
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_2

    .line 9573
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9574
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9575
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9576
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 9577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9579
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_4

    const/high16 v0, 0x41900000    # 18.0f

    .line 9580
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_3

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_3
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 9556
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p5, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 p2, 0x1

    .line 9505
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    .line 9506
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 9509
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 9512
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/high16 v0, 0x41900000    # 18.0f

    if-lez p2, :cond_0

    mul-int/lit8 p2, p2, 0xe

    int-to-float p2, p2

    .line 9513
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p2, v2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    .line 9514
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    sub-int p2, p1, p2

    move v6, p2

    goto :goto_0

    .line 9517
    :cond_0
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    .line 9518
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    const/high16 p2, 0x42100000    # 36.0f

    .line 9519
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p1, p2

    move v6, p2

    move p2, p1

    .line 9522
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, p2, v2}, Landroid/view/View;->measure(II)V

    .line 9523
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x41000000    # 8.0f

    .line 9525
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v7, p2, v2

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    .line 9526
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v11, 0x40800000    # 4.0f

    if-eqz v2, :cond_1

    .line 9528
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    .line 9529
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr p2, v2

    .line 9530
    iget-object v2, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9531
    iget v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_1

    .line 9533
    :cond_1
    iput v1, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    .line 9535
    :goto_1
    iget-object v2, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v8, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-object v4, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v7, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int/2addr v7, v4

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v4

    :goto_2
    move-object v9, v4

    goto :goto_3

    :cond_2
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :goto_3
    iget-object v10, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v4, 0x0

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_3

    .line 9537
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr p2, v2

    .line 9538
    iget-object v2, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9539
    iget v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int/2addr v4, v5

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_3
    const/high16 v2, 0x41800000    # 16.0f

    .line 9542
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p2, v2

    .line 9543
    iget-object v2, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v4, :cond_5

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-nez v2, :cond_5

    .line 9544
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_4

    :cond_4
    move-object v3, p0

    .line 9550
    :cond_5
    :goto_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 9551
    iput-boolean v1, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 9499
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int/2addr v6, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V
    .locals 2

    .line 9488
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eq v0, p1, :cond_0

    .line 9489
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 9490
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->calculate()V

    .line 9492
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9493
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 9494
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
