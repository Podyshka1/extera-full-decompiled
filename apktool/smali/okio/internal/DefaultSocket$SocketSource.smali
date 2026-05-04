.class public final Lokio/internal/DefaultSocket$SocketSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/DefaultSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SocketSource"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lokio/internal/DefaultSocket;

.field private final timeout:Lokio/internal/SocketAsyncTimeout;


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;)V
    .locals 1

    .line 112
    iput-object p1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->inputStream:Ljava/io/InputStream;

    .line 114
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 144
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    .line 196
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 145
    :try_start_0
    invoke-static {v1}, Lokio/internal/DefaultSocket;->access$getCloseBits$p(Lokio/internal/DefaultSocket;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lokio/internal/_AtomicKt;->setBitsOrZero(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 154
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    .line 160
    :catch_1
    :try_start_2
    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 150
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 164
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 205
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 204
    :cond_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 202
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 4

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    if-ltz v2, :cond_6

    .line 119
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->throwIfReached()V

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p1, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    .line 121
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    .line 85
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 123
    :try_start_0
    iget-object p3, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    .line 196
    invoke-virtual {p3}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->inputStream:Ljava/io/InputStream;

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {v1, v2, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-virtual {p3}, Lokio/AsyncTimeout;->exit()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_3

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 131
    iget p2, v0, Lokio/Segment;->pos:I

    iget p3, v0, Lokio/Segment;->limit:I

    if-ne p2, p3, :cond_1

    .line 133
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p2

    iput-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 134
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1

    .line 138
    :cond_2
    iget p3, v0, Lokio/Segment;->limit:I

    add-int/2addr p3, p2

    iput p3, v0, Lokio/Segment;->limit:I

    .line 139
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long p2, p2

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    return-wide p2

    :cond_3
    const/4 p1, 0x0

    .line 205
    :try_start_3
    invoke-virtual {p3, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 202
    :try_start_4
    invoke-virtual {p3}, Lokio/AsyncTimeout;->exit()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_1
    :try_start_5
    invoke-virtual {p3}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    throw p1
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_0

    .line 127
    :goto_2
    invoke-static {p1}, Lokio/internal/_JavaIoKt;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 128
    :cond_5
    throw p1

    .line 118
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lokio/internal/DefaultSocket$SocketSource;->timeout()Lokio/internal/SocketAsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lokio/internal/SocketAsyncTimeout;
    .locals 1

    .line 167
    iget-object v0, p0, Lokio/internal/DefaultSocket$SocketSource;->timeout:Lokio/internal/SocketAsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/internal/DefaultSocket$SocketSource;->this$0:Lokio/internal/DefaultSocket;

    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
