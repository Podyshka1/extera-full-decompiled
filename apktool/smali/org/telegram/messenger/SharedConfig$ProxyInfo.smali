.class public Lorg/telegram/messenger/SharedConfig$ProxyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SharedConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyInfo"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public available:Z

.field public availableCheckTime:J

.field public checking:Z

.field public password:Ljava/lang/String;

.field public ping:J

.field public port:I

.field public proxyCheckPingId:J

.field public secret:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    .line 393
    iput p2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    .line 394
    iput-object p3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    .line 395
    iput-object p4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    .line 396
    iput-object p5, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    .line 397
    const-string p2, ""

    if-nez p1, :cond_0

    .line 398
    iput-object p2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    :cond_0
    if-nez p4, :cond_1

    .line 401
    iput-object p2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    :cond_1
    if-nez p3, :cond_2

    .line 404
    iput-object p2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    :cond_2
    if-nez p5, :cond_3

    .line 407
    iput-object p2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 3

    .line 412
    const-string v0, "UTF-8"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://t.me/proxy?"

    goto :goto_0

    :cond_0
    const-string v2, "https://t.me/socks?"

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    :try_start_0
    const-string/jumbo v2, "server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    const-string v2, "&user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 419
    const-string v2, "&pass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 422
    const-string v2, "&secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
