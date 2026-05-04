.class Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
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
    name = "BlockEmbedCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TelegramWebviewProxy;
    }
.end annotation


# instance fields
.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

.field private exactWebViewHeight:I

.field private listX:I

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private final videoView:Lorg/telegram/ui/Components/WebPlayerView;

.field private wasUserInteraction:Z

.field private final webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoView(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwasUserInteraction(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->wasUserInteraction:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputexactWebViewHeight(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->exactWebViewHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwasUserInteraction(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->wasUserInteraction:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 3

    .line 8279
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 8280
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8281
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p3, 0x0

    .line 8282
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 8284
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 8285
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v0, p2, p3, p3, v1}, Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    .line 8376
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8377
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcreatedWebViews(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8379
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    .line 8380
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 8381
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 8383
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 8384
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 8385
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TelegramWebviewProxy;

    invoke-direct {p2, p0, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer-IA;)V

    const-string v2, "TelegramWebviewProxy"

    invoke-virtual {v0, p2, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8387
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 8388
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    .line 8389
    invoke-virtual {p2, v0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 8391
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 8434
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$3;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8472
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 8474
    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    .line 8475
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    return-void
.end method


# virtual methods
.method public destroyWebView(Z)V
    .locals 2

    .line 8481
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    if-eqz v0, :cond_0

    .line 8482
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 8483
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8485
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 8488
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8490
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 8492
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz p1, :cond_1

    .line 8493
    invoke-virtual {p1}, Lorg/telegram/ui/Components/WebPlayerView;->destroy()V

    :cond_1
    return-void
.end method

.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 8696
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 8697
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8700
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 8701
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 8575
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 8567
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 8568
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetisVisible(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 8569
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 8671
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-nez v0, :cond_0

    goto :goto_1

    .line 8675
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8676
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8677
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8678
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8679
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 8682
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_2

    .line 8683
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8684
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8685
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8686
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8689
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_4

    const/high16 v0, 0x41900000    # 18.0f

    .line 8690
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

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
    .locals 0

    .line 8661
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 8662
    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 8664
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 8665
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 8586
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8589
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz p2, :cond_d

    .line 8592
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/4 v0, 0x0

    const/high16 v1, 0x41900000    # 18.0f

    if-lez p2, :cond_0

    mul-int/lit8 p2, p2, 0xe

    int-to-float p2, p2

    .line 8593
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p2, v2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    .line 8594
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p2, v1

    sub-int p2, p1, p2

    move v5, p2

    goto :goto_1

    .line 8597
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    .line 8598
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    const/high16 p2, 0x42100000    # 36.0f

    .line 8599
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, p1, v2

    .line 8600
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->full_width:Z

    if-nez v3, :cond_1

    .line 8601
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p1, p2

    .line 8602
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_1
    move p2, p1

    goto :goto_0

    .line 8606
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    if-nez v2, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 8611
    :goto_2
    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->exactWebViewHeight:I

    if-eqz v4, :cond_3

    int-to-float v1, v4

    .line 8612
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_3

    .line 8614
    :cond_3
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->h:I

    int-to-float v1, v1

    if-nez v2, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :cond_4
    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_3
    const/high16 v2, 0x41200000    # 10.0f

    if-nez v1, :cond_5

    .line 8617
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_5
    move v9, v1

    .line 8619
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    .line 8620
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/view/View;->measure(II)V

    .line 8622
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_7

    .line 8623
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v9

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/view/View;->measure(II)V

    :cond_7
    const/high16 p2, 0x41000000    # 8.0f

    .line 8626
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v6, v1, v9

    iput v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    .line 8627
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v10, 0x40800000    # 4.0f

    if-eqz v1, :cond_8

    .line 8629
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditOffset:I

    .line 8630
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    :goto_4
    move v0, v9

    goto :goto_5

    .line 8632
    :cond_8
    iput v0, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditOffset:I

    goto :goto_4

    .line 8634
    :goto_5
    iget-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v7, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v3, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    iget v6, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditOffset:I

    add-int/2addr v6, v3

    iget-object v3, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v3

    :goto_6
    move-object v8, v3

    goto :goto_7

    :cond_9
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_6

    :goto_7
    iget-object v9, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_a

    .line 8636
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v3, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 8637
    iget-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v3, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    iput v3, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8638
    iget v3, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditOffset:I

    iput v3, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_a
    const/high16 v1, 0x40a00000    # 5.0f

    .line 8641
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 8643
    iget-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v3, :cond_b

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-nez v1, :cond_b

    .line 8644
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_8
    add-int/2addr v0, p2

    goto :goto_9

    :cond_b
    if-nez v3, :cond_c

    .line 8645
    iget-object v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_c

    .line 8646
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_8

    .line 8648
    :cond_c
    :goto_9
    iget-object p2, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_e

    .line 8649
    iget v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8650
    iget v1, v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_a

    :cond_d
    move-object v2, p0

    const/4 v0, 0x1

    .line 8656
    :cond_e
    :goto_a
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 8580
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    iget p1, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    iget v6, v3, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->creditOffset:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V
    .locals 10

    .line 8498
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 8499
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 8500
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    if-eqz v1, :cond_0

    .line 8501
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8503
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eq v0, v1, :cond_a

    const/4 v2, 0x0

    .line 8504
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->wasUserInteraction:Z

    .line 8505
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    if-eqz v0, :cond_2

    .line 8506
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->allow_scrolling:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 8507
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 8508
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0

    .line 8510
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 8511
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 8514
    :cond_2
    :goto_0
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->exactWebViewHeight:I

    .line 8515
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const-string v1, "about:blank"

    if-eqz v0, :cond_3

    .line 8517
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8519
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 8524
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->html:Ljava/lang/String;

    const/4 v9, 0x4

    if-eqz v5, :cond_5

    .line 8525
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    if-eqz v3, :cond_4

    .line 8526
    const-string v4, "https://telegram.org/embed"

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8527
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    .line 8529
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz p1, :cond_a

    .line 8530
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8531
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z

    goto/16 :goto_6

    .line 8534
    :cond_5
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->poster_photo_id:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetPhotoWithId(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    :goto_3
    move-object v5, v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 8535
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 8537
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    if-eqz p1, :cond_7

    .line 8538
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8539
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 8540
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 8542
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz p1, :cond_a

    .line 8543
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 8546
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    if-eqz p1, :cond_9

    .line 8547
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8548
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8549
    const-string v0, "Referer"

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8550
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 8552
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz p1, :cond_a

    .line 8553
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8554
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 8559
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 8562
    :cond_a
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
