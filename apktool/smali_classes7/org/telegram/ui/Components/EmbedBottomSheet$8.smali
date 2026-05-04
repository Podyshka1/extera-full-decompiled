.class Lorg/telegram/ui/Components/EmbedBottomSheet$8;
.super Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

.field final synthetic val$canHandleUrl:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)V
    .locals 0

    .line 892
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->val$canHandleUrl:Z

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 2

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    const/4 v0, 0x0

    return v0

    .line 961
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 963
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOpenAnimationEnd()V
    .locals 11

    .line 895
    const-string v0, "m"

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->val$canHandleUrl:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v4

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetembedUrl(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetopenUrl(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetprogressBar(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetwebView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 901
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetprogressBar(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetwebView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetimageButtonsContainer(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetcopyTextButton(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 905
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetwebView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 906
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z

    .line 913
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 914
    const-string v3, "Referer"

    const-string v5, "messenger.telegram.org"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetvideoView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getYoutubeId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 918
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetprogressBarBlackBackground(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 919
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fputisYouTube(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)V

    .line 920
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetwebView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Components/EmbedBottomSheet$YoutubeProxy;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/Components/EmbedBottomSheet$YoutubeProxy;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Lorg/telegram/ui/Components/EmbedBottomSheet-IA;)V

    const-string v6, "YoutubeProxy"

    invoke-virtual {v1, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetopenUrl(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_5

    .line 924
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetopenUrl(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 925
    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetseekTimeOverride(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetseekTimeOverride(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v7, :cond_3

    .line 927
    const-string v5, "t"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 929
    const-string v5, "time_continue"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_5

    .line 933
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 934
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 935
    aget-object v1, v0, v2

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    aget-object v0, v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    .line 937
    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 941
    :goto_1
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_2
    move v1, v2

    .line 944
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetwebView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v5

    const-string v6, "https://messenger.telegram.org/"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<!DOCTYPE html><html><head><style>body { margin: 0; width:100%%; height:100%%;  background-color:#000; }html { width:100%%; height:100%%; background-color:#000; }.embed-container iframe,.embed-container object,   .embed-container embed {       position: absolute;       top: 0;       left: 0;       width: 100%% !important;       height: 100%% !important;   }   </style></head><body>   <div class=\"embed-container\">       <div id=\"player\"></div>   </div>   <script src=\"https://www.youtube.com/iframe_api\"></script>   <script>   var player;   var observer;   var videoEl;   var playing;   var posted = false;   YT.ready(function() {       player = new YT.Player(\"player\", {                              \"width\" : \"100%%\",                              \"events\" : {                              \"onReady\" : \"onReady\",                              \"onError\" : \"onError\",                              \"onStateChange\" : \"onStateChange\",                              },                              \"videoId\" : \"%1$s\",                              \"height\" : \"100%%\",                              \"playerVars\" : {                              \"start\" : %2$d,                              \"rel\" : 1,                              \"showinfo\" : 0,                              \"modestbranding\" : 0,                              \"iv_load_policy\" : 3,                              \"autohide\" : 1,                              \"autoplay\" : 1,                              \"cc_load_policy\" : 1,                              \"playsinline\" : 1,                              \"controls\" : 1                              }                            });        player.setSize(window.innerWidth, window.innerHeight);    });    function hideControls() {        playing = !videoEl.paused;       videoEl.controls = 0;       observer.observe(videoEl, {attributes: true});    }    function showControls() {        playing = !videoEl.paused;       observer.disconnect();       videoEl.controls = 1;    }    function onError(event) {       if (!posted) {            if (window.YoutubeProxy !== undefined) {                   YoutubeProxy.postEvent(\"loaded\", null);             }            posted = true;       }    }    function onStateChange(event) {       if (event.data == YT.PlayerState.PLAYING && !posted) {            if (window.YoutubeProxy !== undefined) {                   YoutubeProxy.postEvent(\"loaded\", null);             }            posted = true;       }    }    function onReady(event) {       player.playVideo();    }    window.onresize = function() {       player.setSize(window.innerWidth, window.innerHeight);       player.playVideo();    }    </script></body></html>"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v2

    aput-object v1, v8, v4

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const-string v10, "https://youtube.com"

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 946
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetwebView(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->-$$Nest$fgetembedUrl(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 949
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
