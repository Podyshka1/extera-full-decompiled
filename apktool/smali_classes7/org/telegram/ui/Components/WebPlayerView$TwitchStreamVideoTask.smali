.class Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitchStreamVideoTask"
.end annotation


# instance fields
.field private canRetry:Z

.field private currentUrl:Ljava/lang/String;

.field private results:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 1008
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->canRetry:Z

    const/4 p1, 0x2

    .line 1009
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    .line 1012
    iput-object p3, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    .line 1013
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->currentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1004
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 11

    .line 1017
    const-string p1, "UTF-8"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1018
    const-string v1, "Client-ID"

    const-string v2, "jzkbprff40iqj646a697cyrvl0zt2m6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1021
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    .line 1023
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "https://api.twitch.tv/kraken/streams/%s?stream_type=all"

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4, v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    return-object v6

    .line 1028
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1029
    const-string v1, "stream"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1030
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const-string v4, "https://api.twitch.tv/api/channels/%s/access_token"

    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4, v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v0

    .line 1031
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1032
    const-string v0, "sig"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    const-string v4, "token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://youtube.googleapis.com/v/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow_source=true&allow_audio_only=true&allow_spectre=true&player=twitchweb&segment_preference=4&p="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v7, v9

    double-to-int v4, v7

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&sig="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&token="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1043
    const-string v0, "https://usher.ttvnw.net/api/channel/hls/%s.m3u8?%s"

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object p1, v4, v5

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    aput-object p1, v0, v2

    .line 1045
    const-string p1, "hls"

    aput-object p1, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1047
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1049
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    aget-object v6, p1, v2

    :goto_1
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1004
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputinitied(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputplayVideoUrl(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 1057
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputplayVideoType(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 1058
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisAutoplay(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1059
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$mpreparePlayer(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 1061
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$mshowProgress(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 1062
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcontrolsView(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    return-void

    .line 1063
    :cond_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$monInitFailed(Lorg/telegram/ui/Components/WebPlayerView;)V

    :cond_2
    return-void
.end method
