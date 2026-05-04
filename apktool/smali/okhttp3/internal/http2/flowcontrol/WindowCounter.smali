.class public final Lokhttp3/internal/http2/flowcontrol/WindowCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acknowledged:J

.field private final streamId:I

.field private total:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->streamId:I

    return-void
.end method

.method public static synthetic update$default(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const-wide/16 v0, 0x0

    if-eqz p6, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-wide p3, v0

    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->update(JJ)V

    return-void
.end method


# virtual methods
.method public final getAcknowledged()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J

    return-wide v0
.end method

.method public final getStreamId()I
    .locals 1

    .line 19
    iget v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->streamId:I

    return v0
.end method

.method public final getTotal()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    return-wide v0
.end method

.method public final declared-synchronized getUnacknowledged()J
    .locals 4

    monitor-enter p0

    .line 30
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    iget-wide v2, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowCounter(streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", acknowledged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unacknowledged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->getUnacknowledged()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized update(JJ)V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    .line 40
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->total:J

    .line 41
    iget-wide p1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->acknowledged:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
