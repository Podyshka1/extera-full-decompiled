.class public abstract Lorg/telegram/ui/Components/PhotoViewerWebView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;
    }
.end annotation


# instance fields
.field private bufferedPosition:F

.field private currentAccount:I

.field private currentPosition:I

.field private currentWebpage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private currentYoutubeId:Ljava/lang/String;

.field private errorButton:Landroid/widget/TextView;

.field private errorLayout:Landroid/widget/LinearLayout;

.field private errorMessage:Landroid/widget/TextView;

.field private isPlaying:Z

.field private isTouchDisabled:Z

.field private isYouTube:Z

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private photoViewer:Lorg/telegram/ui/PhotoViewer;

.field private pipItem:Landroid/view/View;

.field private playbackSpeed:F

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressBarBlackBackground:Landroid/view/View;

.field private progressRunnable:Ljava/lang/Runnable;

.field private setPlaybackSpeed:Z

.field private videoDuration:I

.field private webView:Landroid/webkit/WebView;

.field private youtubeStoryboards:Ljava/util/List;

.field private youtubeStoryboardsSpecUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$N2JnsHnbZBqjJ_XObZbOFXbCUdM(Lorg/telegram/ui/Components/PhotoViewerWebView;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoViewerWebView;->lambda$seekTo$1(JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$j4E50re73ZDLn8M8hHLmZK74KMI(Lorg/telegram/ui/Components/PhotoViewerWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentWebpage(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentWebpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentYoutubeId(Lorg/telegram/ui/Components/PhotoViewerWebView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentYoutubeId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorButton(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorLayout(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorMessage(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPlaying(Lorg/telegram/ui/Components/PhotoViewerWebView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisYouTube(Lorg/telegram/ui/Components/PhotoViewerWebView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/PhotoViewer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaybackSpeed(Lorg/telegram/ui/Components/PhotoViewerWebView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->playbackSpeed:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBarBlackBackground(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsetPlaybackSpeed(Lorg/telegram/ui/Components/PhotoViewerWebView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPlaybackSpeed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoDuration(Lorg/telegram/ui/Components/PhotoViewerWebView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->videoDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyoutubeStoryboardsSpecUrl(Lorg/telegram/ui/Components/PhotoViewerWebView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboardsSpecUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbufferedPosition(Lorg/telegram/ui/Components/PhotoViewerWebView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->bufferedPosition:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPosition(Lorg/telegram/ui/Components/PhotoViewerWebView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisPlaying(Lorg/telegram/ui/Components/PhotoViewerWebView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetPlaybackSpeed(Lorg/telegram/ui/Components/PhotoViewerWebView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPlaybackSpeed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoDuration(Lorg/telegram/ui/Components/PhotoViewerWebView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->videoDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyoutubeStoryboardsSpecUrl(Lorg/telegram/ui/Components/PhotoViewerWebView;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboardsSpecUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPlayingPoll(Lorg/telegram/ui/Components/PhotoViewerWebView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->checkPlayingPoll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessYoutubeStoryboards(Lorg/telegram/ui/Components/PhotoViewerWebView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->processYoutubeStoryboards(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPipVisibility(Lorg/telegram/ui/Components/PhotoViewerWebView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPipVisibility(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 12

    .line 252
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentAccount:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    .line 111
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressRunnable:Ljava/lang/Runnable;

    .line 254
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    .line 256
    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->pipItem:Landroid/view/View;

    .line 257
    new-instance p1, Lorg/telegram/ui/Components/PhotoViewerWebView$1;

    invoke-direct {p1, p0, p2, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    .line 285
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 287
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 290
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1, p3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerWebView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$2;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerWebView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$3;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x33

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorLayout:Landroid/widget/LinearLayout;

    .line 389
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorLayout:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    invoke-static {v4, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorMessage:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    .line 395
    invoke-virtual {p1, p3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorMessage:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorMessage:Landroid/widget/TextView;

    invoke-static {v4, v4, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorButton:Landroid/widget/TextView;

    .line 401
    invoke-virtual {p1, p3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorButton:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {p1, v7, v9, v10, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorButton:Landroid/widget/TextView;

    new-array p3, p3, [F

    aput v6, p3, v0

    invoke-static {v5, p3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->rectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorButton:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->errorButton:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance p1, Lorg/telegram/ui/Components/PhotoViewerWebView$4;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$4;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    const/high16 p3, -0x1000000

    .line 415
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance p1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 420
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v4, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkPlayingPoll(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 550
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 552
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    if-nez p1, :cond_1

    .line 553
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "pollPosition();"

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->runJsCode(Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$seekTo$1(JZ)V
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->runJsCode(Ljava/lang/String;)V

    .line 571
    new-instance p1, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V

    const-wide/16 p2, 0x64

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private processYoutubeStoryboards(Ljava/lang/String;)V
    .locals 12

    .line 433
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v0

    const/16 v1, 0x3e8

    div-int/2addr v0, v1

    .line 435
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    goto/16 :goto_4

    .line 441
    :cond_0
    const-string v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v4, p1, v3

    const-string v5, "\\$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "2/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    aget-object v4, p1, v3

    const-string v5, "\\$N"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 446
    array-length v6, p1

    const-string v7, "M#"

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    .line 447
    aget-object p1, p1, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    goto :goto_0

    .line 448
    :cond_1
    array-length v6, p1

    if-ne v6, v8, :cond_2

    .line 449
    aget-object p1, p1, v5

    const-string v6, "t#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    goto :goto_0

    .line 451
    :cond_2
    aget-object p1, p1, v9

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    :goto_0
    const/16 v6, 0x64

    const/high16 v7, 0x41c80000    # 25.0f

    if-gt v0, v6, :cond_3

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-double v0, v0

    .line 457
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_1
    double-to-int v0, v0

    goto :goto_2

    :cond_3
    const/16 v6, 0xfa

    if-gt v0, v6, :cond_4

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v7

    float-to-double v0, v0

    .line 459
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_1

    :cond_4
    const/16 v6, 0x1f4

    if-gt v0, v6, :cond_5

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v7

    float-to-double v0, v0

    .line 461
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_1

    :cond_5
    if-gt v0, v1, :cond_6

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v7

    float-to-double v0, v0

    .line 463
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_1

    :cond_6
    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v7

    float-to-double v0, v0

    .line 465
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_1

    :goto_2
    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_7

    .line 469
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v3

    aput-object v10, v11, v5

    aput-object v4, v11, v8

    aput-object p1, v11, v9

    const-string v10, "%sM%d%s&sigh=%s"

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private runJsCode(Ljava/lang/String;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private setPipVisibility(Z)V
    .locals 2

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->pipItem:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->pipItem:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x15

    if-eqz p1, :cond_1

    .line 817
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    return-void

    .line 819
    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkInlinePermissions()Z
    .locals 2

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 774
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isTouchDisabled:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 542
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract drawBlackBackground(Landroid/graphics/Canvas;II)V
.end method

.method public exitFromPip()V
    .locals 4

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 783
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-eqz v0, :cond_1

    .line 785
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/BringAppForegroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 787
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 790
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 793
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 795
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 796
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    return-void
.end method

.method public getBufferedPosition()F
    .locals 1

    .line 587
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->bufferedPosition:F

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 583
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentPosition:I

    return v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 579
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->videoDuration:I

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getYoutubeStoryboard(I)Ljava/lang/String;
    .locals 4

    .line 498
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v0

    const/16 v1, 0x3e8

    div-int/2addr v0, v1

    const/16 v2, 0x64

    const/high16 v3, 0x41c80000    # 25.0f

    if-gt v0, v2, :cond_0

    int-to-float p1, p1

    :goto_0
    div-float/2addr p1, v3

    float-to-int p1, p1

    goto :goto_1

    :cond_0
    const/16 v2, 0xfa

    if-gt v0, v2, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 504
    div-int/lit8 p1, p1, 0x19

    goto :goto_1

    :cond_1
    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 506
    div-int/lit8 p1, p1, 0x19

    goto :goto_1

    :cond_2
    if-gt v0, v1, :cond_3

    int-to-float p1, p1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 508
    div-int/lit8 p1, p1, 0x19

    goto :goto_1

    :cond_3
    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    goto :goto_0

    .line 512
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getYoutubeStoryboardImageCount(I)I
    .locals 4

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getYoutubeStoryboard(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x19

    if-ne p1, v0, :cond_4

    .line 477
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result p1

    const/16 v0, 0x3e8

    div-int/2addr p1, v0

    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    int-to-double v2, p1

    .line 480
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_0
    double-to-int p1, v2

    goto :goto_1

    :cond_0
    const/16 v2, 0xfa

    if-gt p1, v2, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    .line 482
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x1f4

    if-gt p1, v2, :cond_2

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    .line 484
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    :cond_2
    if-gt p1, v0, :cond_3

    int-to-float p1, p1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    .line 486
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    .line 488
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    .line 490
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public getYoutubeStoryboardImageIndex(I)I
    .locals 3

    .line 516
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v0

    const/16 v1, 0x3e8

    div-int/2addr v0, v1

    const/16 v2, 0x64

    if-gt v0, v2, :cond_0

    int-to-double v0, p1

    .line 520
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    rem-int/lit8 p1, p1, 0x19

    return p1

    :cond_0
    const/16 v2, 0xfa

    if-gt v0, v2, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 522
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    rem-int/lit8 p1, p1, 0x19

    return p1

    :cond_1
    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 524
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    rem-int/lit8 p1, p1, 0x19

    return p1

    :cond_2
    if-gt v0, v1, :cond_3

    int-to-float p1, p1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 526
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    rem-int/lit8 p1, p1, 0x19

    return p1

    :cond_3
    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 528
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    rem-int/lit8 p1, p1, 0x19

    return p1
.end method

.method public hasYoutubeStoryboards()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->youtubeStoryboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideControls()V
    .locals 0

    return-void
.end method

.method public init(ILorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 10

    .line 704
    const-string v0, "m"

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentWebpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 705
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getYouTubeVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentYoutubeId:Ljava/lang/String;

    .line 706
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 710
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentYoutubeId:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 711
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube:Z

    .line 713
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;Lorg/telegram/ui/Components/PhotoViewerWebView-IA;)V

    const-string v6, "YoutubeProxy"

    invoke-virtual {p2, v4, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    .line 717
    :try_start_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-lez p1, :cond_0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 720
    const-string p1, "t"

    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 722
    const-string p1, "time_continue"

    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_3

    .line 726
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 727
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 728
    aget-object p2, p1, v3

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    aget-object p1, p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_3

    .line 730
    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 734
    :goto_1
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_3
    :goto_2
    move p2, v3

    .line 737
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "youtube_embed.html"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 738
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2800

    .line 739
    new-array v1, v1, [B

    .line 741
    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 742
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 744
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 745
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 746
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    const-string v5, "https://messenger.telegram.org/"

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentYoutubeId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object p2, v6, v2

    invoke-static {p1, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    const-string v9, "https://youtube.com"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 748
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 749
    const-string v0, "Referer"

    const-string v1, "messenger.telegram.org"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 753
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 756
    :goto_6
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPipVisibility(Z)V

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentYoutubeId:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 760
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 762
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentYoutubeId:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->youtubePipType:Ljava/lang/String;

    const-string p2, "disabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 765
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPipVisibility(Z)V

    .line 766
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->pipItem:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public isControllable()Z
    .locals 1

    .line 654
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube()Z

    move-result v0

    return v0
.end method

.method public isInAppOnly()Z
    .locals 2

    .line 625
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->youtubePipType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 658
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    return v0
.end method

.method public isYouTube()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentWebpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    const/16 v2, 0x64

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 602
    :goto_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    if-eqz v0, :cond_1

    move v2, v0

    .line 603
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 604
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v4, v0

    int-to-float v1, v1

    div-float/2addr v4, v1

    int-to-float v5, v3

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 605
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 606
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 607
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 608
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v2

    .line 609
    div-int/lit8 v3, v3, 0x2

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    .line 610
    div-int/lit8 v0, v0, 0x2

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 613
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openInPip()Z
    .locals 8

    .line 629
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isInAppOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->checkInlinePermissions()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 633
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 636
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible()Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 637
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    .line 638
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v7

    .line 642
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBarBlackBackground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 643
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentWebpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Lorg/telegram/ui/Components/PhotoViewerWebView;Landroid/view/View;IIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->setPhotoViewer(Lorg/telegram/ui/PhotoViewer;)V

    :cond_3
    return v7
.end method

.method public pauseVideo()V
    .locals 1

    .line 681
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    const-string v0, "pauseVideo();"

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->runJsCode(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    const/4 v0, 0x1

    .line 688
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->checkPlayingPoll(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public playVideo()V
    .locals 1

    .line 670
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    const-string v0, "playVideo();"

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->runJsCode(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    const/4 v0, 0x0

    .line 677
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->checkPlayingPoll(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract processTouch(Landroid/view/MotionEvent;)V
.end method

.method public release()V
    .locals 2

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 803
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->videoDuration:I

    .line 804
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentPosition:I

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    const/4 v0, 0x1

    .line 558
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->seekTo(JZ)V

    return-void
.end method

.method public seekTo(JZ)V
    .locals 2

    .line 562
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying:Z

    long-to-int v1, p1

    .line 563
    iput v1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->currentPosition:I

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->pauseVideo()V

    :cond_0
    if-eqz v0, :cond_1

    .line 568
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoViewerWebView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;JZ)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 574
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->runJsCode(Ljava/lang/String;)V

    return-void
.end method

.method public setMenuItem(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 692
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->playbackSpeed:F

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube:Z

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlaybackSpeed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->runJsCode(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 698
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPlaybackSpeed:Z

    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView;->isTouchDisabled:Z

    return-void
.end method

.method public showControls()V
    .locals 0

    return-void
.end method
