.class public final Lokhttp3/internal/connection/RetryTlsHandshakeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final retryTlsHandshake(Ljava/io/IOException;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    instance-of v0, p0, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 35
    :cond_0
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    return v1

    .line 38
    :cond_1
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_2

    return v1

    .line 41
    :cond_2
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_3

    return v1

    .line 44
    :cond_3
    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method
