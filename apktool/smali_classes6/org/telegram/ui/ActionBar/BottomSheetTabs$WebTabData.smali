.class public Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheetTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebTabData"
.end annotation


# instance fields
.field public actionBarColor:I

.field public actionBarColorKey:I

.field public allowSwipes:Z

.field public articleProgress:F

.field public articleViewer:Lorg/telegram/ui/ArticleViewer;

.field public backButton:Z

.field public backgroundColor:I

.field public buttons:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

.field public confirmDismiss:Z

.field public currentUrl:Ljava/lang/String;

.field public error:Z

.field public errorDescription:Ljava/lang/String;

.field public expanded:Z

.field public expandedOffset:F

.field public favicon:Landroid/graphics/Bitmap;

.field public fullscreen:Z

.field public fullscreenBlur:Z

.field public fullsize:Z

.field public isWeb:Z

.field public lastUrl:Ljava/lang/String;

.field public navigationBarColor:I

.field public needsContext:Z

.field public orientationLocked:Z

.field public overrideActionBarColor:Z

.field public overrideBackgroundColor:Z

.field public previewBitmap:Landroid/graphics/Bitmap;

.field public previewNode:Ljava/lang/Object;

.field public props:Lorg/telegram/ui/bots/WebViewRequestProps;

.field public proxy:Ljava/lang/Object;

.field public ready:Z

.field public sensors:Lorg/telegram/ui/bots/BotSensors;

.field public settings:Z

.field public themeIsDark:Z

.field public title:Ljava/lang/String;

.field public view2:Landroid/view/View;

.field public viewHeight:I

.field public viewScroll:I

.field public viewWidth:I

.field public webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 854
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expandedOffset:F

    const/4 v0, 0x1

    .line 855
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->allowSwipes:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 907
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->destroy()V

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 911
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 915
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 924
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->isWeb:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 929
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 930
    :cond_1
    iget v0, v0, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v1, v1, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 931
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 925
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 926
    sget v0, Lorg/telegram/messenger/R$string;->WebEmpty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 927
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isArticle()Z
    .locals 1

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isLastArticle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
