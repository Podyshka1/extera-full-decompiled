.class Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VimeoVideoTask"
.end annotation


# instance fields
.field private canRetry:Z

.field private results:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 843
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->canRetry:Z

    const/4 p1, 0x2

    .line 844
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    .line 847
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->videoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 840
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    .line 851
    const-string p1, "progressive"

    const-string v0, "hls"

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->videoId:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "https://player.vimeo.com/video/%s/config"

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 856
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 857
    const-string v1, "request"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "files"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 858
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "url"

    if-eqz v2, :cond_1

    .line 859
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 861
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    :try_start_3
    const-string v1, "default_cdn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 864
    const-string v2, "cdns"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 865
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 866
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    .line 868
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    aput-object v0, p1, v4

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    .line 869
    :cond_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    const-string v2, "other"

    aput-object v2, v0, v4

    .line 871
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 872
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 876
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 878
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    aget-object v3, p1, v6

    :goto_3
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 840
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputinitied(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputplayVideoUrl(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 886
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputplayVideoType(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 887
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisAutoplay(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$mpreparePlayer(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 890
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$mshowProgress(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 891
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcontrolsView(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    return-void

    .line 892
    :cond_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 893
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$monInitFailed(Lorg/telegram/ui/Components/WebPlayerView;)V

    :cond_2
    return-void
.end method
