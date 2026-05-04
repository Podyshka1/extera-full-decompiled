.class public final Lokhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final addHeaderLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final addHeaderLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final applyConnectionSpec(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    const-string v0, "connectionSpec"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lokhttp3/ConnectionSpec;->apply$okhttp(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public static final buildConnectionPool(Lokhttp3/internal/connection/ConnectionListener;Lokhttp3/internal/concurrent/TaskRunner;)Lokhttp3/ConnectionPool;
    .locals 10

    const-string v0, "connectionListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v1, Lokhttp3/ConnectionPool;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/ConnectionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static final cacheGet(Lokhttp3/Cache;Lokhttp3/Request;)Lokhttp3/Response;
    .locals 1

    const-string v0, "cache"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lokhttp3/Cache;->get$okhttp(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static final charsetOrUtf8(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v1, v0, v1}, Lokhttp3/MediaType;->charset$default(Lokhttp3/MediaType;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static final chooseCharset(Lokhttp3/MediaType;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MediaType;",
            ")",
            "Lkotlin/Pair;"
        }
    .end annotation

    .line 90
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v2, v1, v2}, Lokhttp3/MediaType;->charset$default(Lokhttp3/MediaType;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 101
    :cond_1
    :goto_0
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final cookieToString(Lokhttp3/Cookie;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "cookie"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lokhttp3/Cookie;->toString$okhttp(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final effectiveCipherSuites(Lokhttp3/ConnectionSpec;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "socketEnabledCipherSuites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->getCipherSuitesAsString$okhttp()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->getCipherSuitesAsString$okhttp()[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lokhttp3/CipherSuite;->Companion:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v0}, Lokhttp3/CipherSuite$Companion;->getORDER_BY_NAME$okhttp()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lokhttp3/internal/_UtilCommonKt;->intersect([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static final getConnection(Lokhttp3/Response;)Lokhttp3/internal/connection/RealConnection;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object p0

    return-object p0
.end method

.method public static final parseCookie(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "setCookie"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lokhttp3/Cookie$Companion;->parse$okhttp(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public static final taskRunnerInternal(Lokhttp3/OkHttpClient$Builder;Lokhttp3/internal/concurrent/TaskRunner;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->taskRunner$okhttp(Lokhttp3/internal/concurrent/TaskRunner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method
