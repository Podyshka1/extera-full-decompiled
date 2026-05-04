.class Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
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
    name = "BlockChannelCell"
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private buttonWidth:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

.field private currentState:I

.field private currentType:I

.field private imageView:Landroid/widget/ImageView;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textView:Landroid/widget/TextView;

.field private textX:I

.field private textX2:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public static synthetic $r8$lambda$spJY0PtYmNXpSGp3eNE3Rrb2eWo(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V
    .locals 2

    .line 11704
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 11705
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 11693
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    const/high16 p1, 0x41300000    # 11.0f

    .line 11694
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    .line 11706
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p1, 0x0

    .line 11707
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 11708
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 11709
    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    .line 11711
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/4 p4, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    .line 11712
    invoke-virtual {p3, p4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11713
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11714
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    sget p4, Lorg/telegram/messenger/R$string;->ChannelJoin:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11715
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/16 p4, 0x13

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setGravity(I)V

    .line 11716
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/4 p4, -0x2

    const/16 v0, 0x27

    const/16 v1, 0x35

    invoke-static {p4, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11717
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    new-instance p4, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11725
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    .line 11726
    sget p4, Lorg/telegram/messenger/R$drawable;->list_check:I

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11727
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11728
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11730
    new-instance p3, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {p3, p2, p1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 11731
    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 11718
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentState:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 11721
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 11722
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetloadedChannel(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mjoinChannel(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 11864
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 11865
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 11843
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-nez v0, :cond_0

    goto :goto_1

    .line 11846
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11847
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 11848
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 11849
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11850
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 11852
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11854
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    if-nez p1, :cond_2

    .line 11855
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v1, p0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 11857
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {p1, v1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 11858
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 11836
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    const/high16 p3, 0x41980000    # 19.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p2, p4

    iget p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    const/high16 p5, 0x41a00000    # 20.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p4, v0

    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 11837
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    iget p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 11838
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 11813
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x42400000    # 48.0f

    .line 11814
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11816
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v1, 0x421c0000    # 39.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->measure(II)V

    .line 11817
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    .line 11818
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 11819
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 11820
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz p1, :cond_1

    .line 11821
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/high16 p1, 0x42500000    # 52.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p2, p1

    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    sub-int v4, p2, p1

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_LEFT()Landroid/text/Layout$Alignment;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 11822
    iget-object p1, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11823
    iget p1, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    iput p1, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    goto :goto_0

    .line 11825
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    sub-int/2addr p1, p2

    iget p2, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->buttonWidth:I

    sub-int/2addr p1, p2

    iput p1, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX2:I

    .line 11827
    :goto_0
    iget-object p1, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_2

    .line 11828
    iget p2, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    iput p2, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 11829
    iget p2, v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    iput p2, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    return-void

    :cond_1
    move-object v1, p0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 11804
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    if-eqz v0, :cond_0

    .line 11805
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 11807
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V
    .locals 5

    .line 11735
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 11737
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentType:I

    if-nez v0, :cond_0

    .line 11738
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    .line 11739
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 11740
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 11741
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 11742
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetLinkTextColor(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11743
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v4, 0x22

    invoke-static {v4, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 11744
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetGrayTextColor(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 11746
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11747
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7f000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11748
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 11750
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 11751
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 11755
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputloadedChannel(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 11756
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz p1, :cond_2

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez p1, :cond_2

    .line 11757
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    .line 11759
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_2

    .line 11752
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, p0, v2, p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mloadChannel(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 p1, 0x1

    .line 11753
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 11762
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setState(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 11766
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 11767
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11769
    :cond_0
    iput v1, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_a

    .line 11771
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 11772
    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 11773
    :goto_0
    new-array v10, v3, [F

    const/4 v11, 0x0

    aput v9, v10, v11

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v12, 0x3dcccccd    # 0.1f

    .line 11774
    :goto_1
    new-array v13, v3, [F

    aput v12, v13, v11

    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v10, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v14, 0x3dcccccd    # 0.1f

    .line 11775
    :goto_2
    new-array v15, v3, [F

    aput v14, v15, v11

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne v1, v3, :cond_4

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    .line 11777
    :goto_3
    new-array v4, v3, [F

    aput v16, v4, v11

    invoke-static {v15, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne v1, v3, :cond_5

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const v16, 0x3dcccccd    # 0.1f

    .line 11778
    :goto_4
    new-array v5, v3, [F

    aput v16, v5, v11

    invoke-static {v15, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne v1, v3, :cond_6

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const v16, 0x3dcccccd    # 0.1f

    .line 11779
    :goto_5
    new-array v6, v3, [F

    aput v16, v6, v11

    invoke-static {v15, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_7

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_6
    move/from16 p2, v11

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    goto :goto_6

    .line 11781
    :goto_7
    new-array v11, v3, [F

    aput v17, v11, p2

    invoke-static {v15, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_8

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_8
    const v15, 0x3dcccccd    # 0.1f

    .line 11782
    :goto_8
    new-array v2, v3, [F

    aput v15, v2, p2

    invoke-static {v11, v12, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    const/4 v12, 0x2

    if-ne v1, v12, :cond_9

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_9
    const v18, 0x3dcccccd    # 0.1f

    .line 11783
    :goto_9
    new-array v1, v3, [F

    aput v18, v1, p2

    invoke-static {v11, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/16 v11, 0x9

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v8, v11, p2

    aput-object v10, v11, v3

    aput-object v13, v11, v12

    const/4 v3, 0x3

    aput-object v4, v11, v3

    const/4 v3, 0x4

    aput-object v5, v11, v3

    const/4 v3, 0x5

    aput-object v6, v11, v3

    const/4 v3, 0x6

    aput-object v9, v11, v3

    const/4 v3, 0x7

    aput-object v2, v11, v3

    const/16 v2, 0x8

    aput-object v1, v11, v2

    .line 11772
    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 11785
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11786
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 11788
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_b

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 11789
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_c
    const v4, 0x3dcccccd    # 0.1f

    :goto_b
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 11790
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_d

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_d
    const v4, 0x3dcccccd    # 0.1f

    :goto_c
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 11792
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne v1, v3, :cond_e

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_e
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 11793
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne v1, v3, :cond_f

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_f
    const v4, 0x3dcccccd    # 0.1f

    :goto_e
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 11794
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    if-ne v1, v3, :cond_10

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_10
    const v3, 0x3dcccccd    # 0.1f

    :goto_f
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 11796
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    const/4 v12, 0x2

    if-ne v1, v12, :cond_11

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_11
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 11797
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    if-ne v1, v12, :cond_12

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_12
    const v3, 0x3dcccccd    # 0.1f

    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 11798
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->imageView:Landroid/widget/ImageView;

    if-ne v1, v12, :cond_13

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_13
    const v5, 0x3dcccccd    # 0.1f

    :goto_12
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
