.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PartSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 156
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    :cond_0
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_a

    .line 166
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 168
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    move-result-object v6

    invoke-interface {v6}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    iget-object v7, v1, Lokhttp3/MultipartReader$PartSource;->timeout:Lokio/Timeout;

    iget-object v8, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 302
    invoke-virtual {v6}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v9

    .line 303
    sget-object v11, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v7}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v6}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v11

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v11, v12, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 305
    invoke-virtual {v6}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 306
    invoke-virtual {v6}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    .line 307
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v16

    if-eqz v16, :cond_0

    move-wide/from16 v16, v4

    .line 308
    invoke-virtual {v6}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v4

    .line 169
    :goto_0
    :try_start_0
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    cmp-long v4, v2, v16

    if-nez v4, :cond_1

    const-wide/16 v14, -0x1

    goto :goto_1

    .line 171
    :cond_1
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_1
    invoke-virtual {v6, v9, v10, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 314
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v6, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_2
    return-wide v14

    :catchall_0
    move-exception v0

    .line 313
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v9, v10, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 314
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    invoke-virtual {v6, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_3
    throw v0

    :cond_4
    move-wide/from16 v16, v4

    .line 319
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 320
    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 169
    :cond_5
    :try_start_1
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    cmp-long v4, v2, v16

    if-nez v4, :cond_6

    const-wide/16 v14, -0x1

    goto :goto_2

    .line 171
    :cond_6
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    :goto_2
    invoke-virtual {v6, v9, v10, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 326
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 327
    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_7
    return-wide v14

    :catchall_1
    move-exception v0

    .line 325
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v9, v10, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 326
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_8
    throw v0

    .line 166
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 176
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lokio/Timeout;

    return-object v0
.end method
