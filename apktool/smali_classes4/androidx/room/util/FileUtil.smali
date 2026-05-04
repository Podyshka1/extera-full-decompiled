.class public abstract Landroidx/room/util/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V
    .locals 9

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move-object v4, p0

    move-object v3, p1

    .line 41
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_3

    :cond_0
    move-object v4, p0

    move-object v3, p1

    .line 43
    invoke-static {v4}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object p0

    .line 44
    invoke-static {v3}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p1

    const/16 v0, 0x1000

    .line 46
    new-array v0, v0, [B

    .line 49
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    .line 50
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 53
    :cond_1
    :goto_2
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-interface {v4}, Ljava/nio/channels/Channel;->close()V

    .line 56
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, p0

    move-object v3, p1

    goto :goto_0

    .line 55
    :goto_3
    invoke-interface {v4}, Ljava/nio/channels/Channel;->close()V

    .line 56
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    throw p0
.end method
