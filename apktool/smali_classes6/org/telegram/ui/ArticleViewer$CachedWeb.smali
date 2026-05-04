.class public Lorg/telegram/ui/ArticleViewer$CachedWeb;
.super Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CachedWeb"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 13631
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$CachedWeb;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;-><init>()V

    .line 13632
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    .line 13633
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->currentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attach(Lorg/telegram/ui/ArticleViewer$PageLayout;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 13639
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_1

    .line 13640
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onResume()V

    .line 13641
    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->proxy:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->replaceWebView(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 13642
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->-$$Nest$msetWebBgColor(Lorg/telegram/ui/ArticleViewer$PageLayout;ZI)V

    const/4 v0, 0x0

    .line 13643
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->-$$Nest$msetWebBgColor(Lorg/telegram/ui/ArticleViewer$PageLayout;ZI)V

    return-void

    .line 13644
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 13645
    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public detach(Lorg/telegram/ui/ArticleViewer$PageLayout;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 13664
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->preserveWebView()V

    .line 13665
    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    .line 13666
    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getProxy()Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->proxy:Ljava/lang/Object;

    .line 13667
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_1

    .line 13668
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onPause()V

    .line 13669
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->title:Ljava/lang/String;

    .line 13670
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->favicon:Landroid/graphics/Bitmap;

    .line 13671
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    .line 13672
    iget v0, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webActionBarColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    .line 13673
    iget p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webBackgroundColor:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 13679
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13680
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13682
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
