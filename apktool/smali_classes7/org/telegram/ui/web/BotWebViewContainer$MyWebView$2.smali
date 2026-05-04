.class Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;-><init>(Landroid/content/Context;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstRequest:Z

.field private final resetErrorRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

.field final synthetic val$bot:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$0nJhpqUvbRvyENAZv40h0XgxXBo(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$shouldInterceptRequest$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lz_vhT9AAnjLgwjtZJpKILhCQ4M(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$onRenderProcessGone$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$MzHShEmgqHgajDGs7OY5vtEiCZo(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$TZe6QQdsWEXPXrdy_AvZRNgYJ7E(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$onRenderProcessGone$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WXTXe0QM28knLdb8nM5b80R1qY4(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;Lcom/exteragram/messenger/adblock/data/BlockResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$checkShouldInterceptMainFrame$1(Lcom/exteragram/messenger/adblock/data/BlockResult;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;ZLandroid/content/Context;)V
    .locals 0

    .line 3692
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    iput-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x1

    .line 3694
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    .line 3985
    new-instance p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private checkCosmetic(Ljava/lang/String;)V
    .locals 2

    .line 4057
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->bot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4059
    :cond_0
    invoke-static {p1}, Lcom/exteragram/messenger/adblock/AdBlockClient;->getCosmeticHide(Ljava/lang/String;)Lcom/exteragram/messenger/adblock/AdBlockClient$CosmeticHide;

    move-result-object p1

    .line 4060
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetselectorsObserver(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lcom/exteragram/messenger/adblock/SelectorsObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/adblock/SelectorsObserver;->setCosmeticHide(Lcom/exteragram/messenger/adblock/AdBlockClient$CosmeticHide;)V

    if-eqz p1, :cond_3

    .line 4062
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/AdBlockClient$CosmeticHide;->getHideCss()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4063
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/AdBlockClient$CosmeticHide;->getHideCss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    .line 4065
    :cond_1
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/AdBlockClient$CosmeticHide;->getInjectedScript()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4066
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/AdBlockClient$CosmeticHide;->getInjectedScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    .line 4069
    :cond_2
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/AdBlockClient$CosmeticHide;->isGenericHide()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4070
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v0, "    function getAllClassesAndIds() {\n        let elements = document.getElementsByTagName(\'*\');\n        let classes = new Set();\n        let ids = new Set();\n\n        for (let element of elements) {\n            if (element.classList.length > 0) {\n                element.classList.forEach(cls => classes.add(cls));\n            }\n            if (element.id) {\n                ids.add(element.id);\n            }\n        }\n\n        return {\n            classes: Array.from(classes),\n            ids: Array.from(ids)\n        };\n    }\n\n    const observer = new MutationObserver(function(mutations) {\n        let result = getAllClassesAndIds();\n        Android.onElementsFound(JSON.stringify(result));\n    });\n\n    observer.observe(document, {\n        childList: true,\n        subtree: true,\n        attributes: true,\n        attributeFilter: [\'class\', \'id\']\n    });\n\n    let result = getAllClassesAndIds();\n    Android.onElementsFound(JSON.stringify(result));\n"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkShouldIntercept(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 9

    .line 3807
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentUrl(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentUrl(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/exteragram/messenger/adblock/AdBlockClient;->isAdRequest(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Lcom/exteragram/messenger/adblock/data/BlockResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3810
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->getRedirect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3811
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "text/html"

    const-string v3, "utf-8"

    const/16 v4, 0x1f4

    const-string v5, "Internal Server Error"

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v1

    .line 3812
    :cond_1
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3813
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->getRedirect()Ljava/lang/String;

    move-result-object p1

    .line 3814
    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3815
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3816
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3818
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3819
    const-string v0, "Content-Type"

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3820
    const-string v0, "Access-Control-Allow-Credentials"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3821
    const-string v0, "Access-Control-Allow-Headers"

    const-string v1, "Cache-Control"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    new-instance v2, Landroid/webkit/WebResourceResponse;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v4, 0x0

    const/16 v5, 0xc8

    const-string v6, "OK"

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private checkShouldInterceptMainFrame(Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 3793
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/exteragram/messenger/adblock/AdBlockClient;->isAdRequest(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Lcom/exteragram/messenger/adblock/data/BlockResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3795
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->isMatched()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->getRedirect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->getRedirect()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3796
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;Lcom/exteragram/messenger/adblock/data/BlockResult;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 3798
    :cond_0
    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->isMatched()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$$4()V
    .locals 3

    .line 3986
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3987
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onErrorShown(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkShouldInterceptMainFrame$1(Lcom/exteragram/messenger/adblock/data/BlockResult;)V
    .locals 1

    .line 3796
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Lcom/exteragram/messenger/adblock/data/BlockResult;->getRedirect()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$2()V
    .locals 2

    .line 3891
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.webview"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$3(Landroid/content/DialogInterface;)V
    .locals 1

    .line 3894
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3895
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shouldInterceptRequest$0()V
    .locals 4

    .line 3732
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3733
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    .line 3852
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3853
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-direct {v1}, Lorg/telegram/ui/web/BrowserHistory$Entry;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/web/BrowserHistory$Entry;)V

    .line 3854
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->id:J

    .line 3855
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    .line 3856
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->magic2tonsite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    .line 3857
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->from(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->meta:Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    .line 3858
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BrowserHistory;->pushHistory(Lorg/telegram/ui/web/BrowserHistory$Entry;)V

    .line 3860
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateVisitedHistory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3861
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3862
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    .line 3864
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 3833
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetwhenPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3834
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetwhenPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object v0

    .line 3835
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputwhenPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)V

    .line 3836
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3838
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageCommitVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3839
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    const-string v1, "false"

    const-string v2, "$DEBUG$"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 3840
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    .line 3841
    sget v3, Lorg/telegram/messenger/R$raw;->webview_ext:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    .line 3842
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    sget v1, Lorg/telegram/messenger/R$raw;->webview_share:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    goto :goto_0

    .line 3844
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    .line 3845
    sget v3, Lorg/telegram/messenger/R$raw;->webview_app_ext:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    .line 3847
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 4024
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputisPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Z)V

    .line 4026
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetwhenPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4027
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetwhenPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    .line 4028
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputwhenPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)V

    .line 4029
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 4032
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v2, "onPageFinished"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4033
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4034
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;Z)V

    goto :goto_1

    .line 4036
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v1, "onPageFinished: no container"

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4038
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    const-string v1, ""

    const-string v2, "$DEBUG$"

    if-nez p1, :cond_2

    .line 4039
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    .line 4040
    sget v3, Lorg/telegram/messenger/R$raw;->webview_ext:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    .line 4041
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    sget v1, Lorg/telegram/messenger/R$raw;->webview_share:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    goto :goto_2

    .line 4043
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    .line 4044
    sget v3, Lorg/telegram/messenger/R$raw;->webview_app_ext:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    .line 4046
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$msaveHistory(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    .line 4047
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4048
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v2

    xor-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    .line 4050
    :cond_4
    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->checkCosmetic(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 3993
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$misVerifyingAge(Lorg/telegram/ui/web/BotWebViewContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3994
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 3996
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentSheet(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3997
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentSheet(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 3998
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentSheet(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    .line 4000
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentHistoryEntry(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/web/BrowserHistory$Entry;)V

    .line 4001
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentUrl(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;)V

    .line 4002
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4003
    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    .line 4004
    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    .line 4005
    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    .line 4006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageStarted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4007
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    if-eqz v3, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShownAt:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4009
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetcurrentPageWasBlocked(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4010
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentPageWasBlocked(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Z)V

    const/16 v0, 0x21c

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    .line 4013
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4015
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4016
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v4, v3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v4, :cond_6

    iget-object v4, v3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v4, p2

    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v3

    xor-int/2addr v3, v1

    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v5

    xor-int/2addr v1, v5

    invoke-virtual {v0, v4, v3, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    .line 4018
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4019
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v2, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4097
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .line 4078
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4079
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4080
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4081
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4082
    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    .line 4083
    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    .line 4084
    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    .line 4085
    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitleGot:Z

    if-eqz p2, :cond_2

    .line 4086
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShownAt:Ljava/lang/String;

    .line 4087
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onTitleChanged(Ljava/lang/String;)V

    .line 4088
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onFaviconChanged(Landroid/graphics/Bitmap;)V

    .line 4089
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onErrorShown(ZILjava/lang/String;)V

    .line 4092
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 4117
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 4119
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError: statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4120
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4121
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4122
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4123
    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    .line 4124
    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    .line 4125
    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    .line 4126
    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitleGot:Z

    if-eqz p2, :cond_4

    .line 4127
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    :goto_3
    iput-object p2, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShownAt:Ljava/lang/String;

    .line 4128
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onTitleChanged(Ljava/lang/String;)V

    .line 4129
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onFaviconChanged(Landroid/graphics/Bitmap;)V

    .line 4130
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onErrorShown(ZILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .line 4137
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedSslError: error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4138
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 4139
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 3880
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    .line 3881
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderProcessGone priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " didCrash="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 3883
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string p2, "onRenderProcessGone"

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3886
    :goto_2
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    return p2

    .line 3889
    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    :goto_3
    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashTitle:I

    .line 3890
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashMessage:I

    .line 3891
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    .line 3892
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    .line 3893
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 3898
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    .line 3901
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 12

    .line 3698
    const-string v0, "; "

    .line 3699
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldInterceptRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3700
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3701
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v0, "proxying ton"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3702
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    .line 3703
    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer;->proxyTON(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 3705
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    const/4 v4, 0x1

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v2, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    if-eqz v2, :cond_c

    .line 3708
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3709
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3710
    :try_start_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3711
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3712
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3713
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5

    .line 3716
    :cond_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 3717
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 3718
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3719
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_2

    .line 3721
    :cond_4
    const-string v7, ", "

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3722
    iget-object v7, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v7, v7, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-nez v7, :cond_3

    const-string v7, "cross-origin-resource-policy"

    .line 3723
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "cross-origin-embedder-policy"

    .line 3724
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3726
    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_7

    goto :goto_3

    .line 3728
    :cond_7
    const-string v8, "unsafe-none"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "same-site"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3729
    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<!> dangerous header CORS policy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3730
    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v4, v5, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    .line 3731
    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3741
    :cond_8
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 3742
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    .line 3743
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_b

    .line 3744
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3745
    aget-object v6, v0, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3746
    aget-object v3, v0, v1

    :cond_9
    move v6, v4

    .line 3748
    :goto_4
    array-length v7, v0

    if-ge v6, v7, :cond_b

    .line 3749
    aget-object v7, v0, v6

    const-string v8, "charset="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3750
    aget-object v5, v0, v6

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    move-object v6, v3

    move-object v7, v5

    .line 3754
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    .line 3755
    new-instance v5, Landroid/webkit/WebResourceResponse;

    .line 3758
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 3759
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    .line 3761
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_1
    move-exception v0

    .line 3764
    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-eqz v3, :cond_c

    .line 3766
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3771
    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    .line 3773
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 3774
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3775
    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->checkShouldInterceptMainFrame(Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3776
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->allowBlockedPageLoad:Z

    if-nez v2, :cond_d

    .line 3777
    invoke-static {v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentPageWasBlocked(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Z)V

    .line 3778
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "plain/text"

    const-string v7, "utf-8"

    const/16 v8, 0x24e

    const-string v9, "Page blocked"

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v5

    .line 3780
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->allowBlockedPageLoad:Z

    goto :goto_6

    .line 3782
    :cond_e
    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->checkShouldIntercept(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 3789
    :cond_f
    :goto_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 3870
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3871
    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3872
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v0, "proxying ton"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3873
    const-string p1, "GET"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->proxyTON(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 3875
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 3909
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    .line 3912
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 3913
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_3

    .line 3914
    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3915
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onInstantClose()V

    goto :goto_0

    .line 3916
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3917
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3918
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)V

    .line 3921
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 3924
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3925
    iget-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    const-string v4, "shouldOverrideUrlLoading("

    if-nez v3, :cond_a

    .line 3926
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$context:Landroid/content/Context;

    invoke-static {v3, p2, v2}, Lorg/telegram/messenger/browser/Browser;->openInExternalApp(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3927
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = true (openInExternalBrowser)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3928
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetisPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3929
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3930
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onInstantClose()V

    goto :goto_1

    .line 3931
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3932
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3933
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return v2

    .line 3938
    :cond_7
    const-string v3, "intent://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3940
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 3941
    const-string v5, "browser_fallback_url"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3942
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3943
    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v3

    .line 3947
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 3950
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v3, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "tonsite"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3951
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = true (browser open)"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 3952
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return v2

    .line 3956
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3957
    iget-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    if-nez v3, :cond_b

    const-string v3, "embed"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "t.me"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    return p1

    .line 3960
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/web/BotWebViewContainer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/web/BotWebViewContainer;)I

    move-result p1

    .line 3961
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3962
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v3, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v3, :cond_e

    .line 3963
    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 3964
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onInstantClose()V

    goto :goto_2

    .line 3965
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3966
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3967
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)V

    .line 3969
    :cond_d
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 3970
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseToTabs()V

    .line 3973
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$monOpenUri(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/net/Uri;)V

    .line 3975
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = true"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return v2

    :cond_10
    if-eqz v0, :cond_11

    .line 3979
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputcurrentUrl(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;)V

    .line 3981
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = false"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return p1
.end method
