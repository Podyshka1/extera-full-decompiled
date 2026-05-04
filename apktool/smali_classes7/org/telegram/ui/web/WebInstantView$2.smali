.class Lorg/telegram/ui/web/WebInstantView$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/WebInstantView;->readHTML(Ljava/lang/String;Ljava/io/InputStream;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstLoad:Z

.field private streamLoaded:Z

.field final synthetic this$0:Lorg/telegram/ui/web/WebInstantView;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/WebInstantView;Ljava/io/InputStream;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$2;->this$0:Lorg/telegram/ui/web/WebInstantView;

    iput-object p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->val$stream:Ljava/io/InputStream;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x1

    .line 380
    iput-boolean p1, p0, Lorg/telegram/ui/web/WebInstantView$2;->firstLoad:Z

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9

    .line 387
    iget-boolean p1, p0, Lorg/telegram/ui/web/WebInstantView$2;->firstLoad:Z

    const-string v0, "text/html"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 388
    iput-boolean v1, p0, Lorg/telegram/ui/web/WebInstantView$2;->firstLoad:Z

    .line 389
    sget p1, Lorg/telegram/messenger/R$raw;->instant:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "$DEBUG$"

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script>\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n</script>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    new-instance p2, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "UTF-8"

    invoke-direct {p2, v0, p1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_4

    .line 392
    const-string v2, "/index.html"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    iget-boolean p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->streamLoaded:Z

    const-string v0, "application/octet-stream"

    if-eqz p2, :cond_3

    .line 395
    iget-object p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->this$0:Lorg/telegram/ui/web/WebInstantView;

    iget-object p2, p2, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/ui/web/MHTML;->entries:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/web/MHTML$Entry;

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    if-nez p2, :cond_2

    .line 398
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "text/plain"

    const-string v3, "utf-8"

    const/16 v4, 0x194

    const-string v5, "Not Found"

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v1

    .line 401
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 403
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 405
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "text/plain"

    const-string v2, "utf-8"

    const/16 v3, 0x1f7

    const-string v4, "Server error"

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0

    .line 408
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->val$stream:Ljava/io/InputStream;

    const/4 v1, 0x1

    .line 409
    iput-boolean v1, p0, Lorg/telegram/ui/web/WebInstantView$2;->streamLoaded:Z

    goto :goto_2

    .line 412
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView$2;->this$0:Lorg/telegram/ui/web/WebInstantView;

    iget-object v1, v1, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/web/MHTML;->entriesByLocation:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/web/MHTML$Entry;

    goto :goto_1

    :cond_5
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_6

    .line 415
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "text/plain"

    const-string v3, "utf-8"

    const/16 v4, 0x194

    const-string v5, "Not Found"

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v1

    .line 417
    :cond_6
    invoke-virtual {p2}, Lorg/telegram/ui/web/MHTML$Entry;->getType()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "text/css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 420
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "text/plain"

    const-string v4, "utf-8"

    const/16 v5, 0x194

    const-string v6, "Not Found"

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v2

    .line 423
    :cond_7
    :try_start_1
    invoke-virtual {p2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 430
    :goto_2
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-direct {v1, v0, p1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 425
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 427
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "text/plain"

    const-string v2, "utf-8"

    const/16 v3, 0x1f7

    const-string v4, "Server error"

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0
.end method
