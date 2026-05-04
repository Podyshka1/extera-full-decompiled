.class public abstract synthetic Lokhttp3/internal/platform/android/SocketAdapter$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$matchesSocketFactory(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 0

    .line 0
    const-string p0, "sslSocketFactory"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static $default$trustManager(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 0

    .line 0
    const-string p0, "sslSocketFactory"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic access$matchesSocketFactory$jd(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lokhttp3/internal/platform/android/SocketAdapter$-CC;->$default$matchesSocketFactory(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$trustManager$jd(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lokhttp3/internal/platform/android/SocketAdapter$-CC;->$default$trustManager(Lokhttp3/internal/platform/android/SocketAdapter;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0
.end method
