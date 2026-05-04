.class public final Lokhttp3/internal/connection/BufferedSocketKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final asBufferedSocket(Ljava/net/Socket;)Lokhttp3/internal/connection/BufferedSocket;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lokio/Okio;->socket(Ljava/net/Socket;)Lokio/Socket;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/connection/BufferedSocketKt;->asBufferedSocket(Lokio/Socket;)Lokhttp3/internal/connection/BufferedSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final asBufferedSocket(Lokio/Socket;)Lokhttp3/internal/connection/BufferedSocket;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Lokio/Socket;)V

    return-object v0
.end method
