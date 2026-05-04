.class public Lorg/telegram/messenger/FileLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLog$ByteArrayHexAdapter;,
        Lorg/telegram/messenger/FileLog$TLObjectDeserializer;,
        Lorg/telegram/messenger/FileLog$ANRDetector;,
        Lorg/telegram/messenger/FileLog$IgnoreSentException;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/FileLog; = null

.field public static databaseIsMalformed:Z = false

.field private static dumpedHeap:J = 0x0L

.field private static excludeRequests:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static exclusionStrategy:Lcom/google/gson/ExclusionStrategy; = null

.field private static gson:Lcom/google/gson/Gson; = null

.field private static gsonDisabled:Z = false

.field private static final mtproto_tag:Ljava/lang/String; = "MTProto"

.field private static privateFields:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tag:Ljava/lang/String; = "tmessages"


# instance fields
.field private currentFile:Ljava/io/File;

.field private dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

.field private fileDateFormat:Lorg/telegram/messenger/time/FastDateFormat;

.field private initied:Z

.field private logQueue:Lorg/telegram/messenger/DispatchQueue;

.field private networkFile:Ljava/io/File;

.field private streamWriter:Ljava/io/OutputStreamWriter;

.field private tlRequestsFile:Ljava/io/File;

.field private tlStreamWriter:Ljava/io/OutputStreamWriter;

.field private tonlibFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$0ztTDayoCBQbqNUyey4KiVh2OWE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 382
    const-string v0, "\n"

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " E/tmessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 p1, 0x0

    .line 385
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 386
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " E/tmessages: \tat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 390
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cka7Jn8J8_XF-nXWLJvFPiIg4A4(Ljava/lang/Throwable;)V
    .locals 9

    .line 507
    const-string v0, "\n"

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FATAL/tmessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 509
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 510
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FATAL/tmessages: \tat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 514
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " E/tmessages: Caused by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 516
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 517
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " E/tmessages: \tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 520
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 522
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 525
    :goto_2
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 526
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$Fp_tthXxEDYM8ruhhhIZvuLpt48(Ljava/lang/String;)V
    .locals 5

    .line 405
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " E/tmessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 408
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic $r8$lambda$PLMC5g5CPMHKyCIyQZiqkkOXR5Q(Lorg/telegram/messenger/FileLog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLog;->dumpANR()V

    return-void
.end method

.method public static synthetic $r8$lambda$TbpBHKbdIrkiw9Ph1QNW-6DiAvI(JJIIJLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 113
    const-string v0, "\n"

    const-string v1, " "

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " requestingTime="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " request_token="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " account="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {p3, p6, p7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, p8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, p9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    const-string p2, "\n\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const-string p1, "MTProto"

    if-eqz p10, :cond_0

    .line 123
    :try_start_1
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p1, p8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {p1, p9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_0
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p1, p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p1, p9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic $r8$lambda$W1fml6687f73UJ9c-xSD3wMPIB4(Ljava/lang/String;)V
    .locals 5

    .line 567
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " W/tmessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 570
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic $r8$lambda$bY-Z1YvZDkuzSWHS46PDhtH0hTE(Ljava/lang/String;)V
    .locals 5

    .line 546
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " D/tmessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 549
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 550
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 551
    invoke-static {p0}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$dl4NO88LqoO42afmmxifdeuAxfg(Ljava/lang/Throwable;)V
    .locals 10

    .line 438
    const-string v0, "\n"

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " E/tmessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 440
    :goto_0
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " E/tmessages: \tat "

    if-ge v3, v4, :cond_0

    .line 441
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 445
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " E/tmessages: Caused by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 447
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 448
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 453
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic $r8$lambda$zqRYPgC_YdSVtSz1dAm-Pwy_uUw(JJILjava/lang/String;)V
    .locals 4

    .line 154
    const-string v0, " account="

    const-string v1, "MTProto"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v3, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " msgId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    const-string p1, "\n\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "msgId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string p0, " "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetprivateFields()Ljava/util/HashSet;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    .line 49
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    .line 50
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->fileDateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    .line 51
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 53
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    .line 54
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    .line 55
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->tonlibFile:Ljava/io/File;

    .line 59
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    .line 60
    iput-object v0, p0, Lorg/telegram/messenger/FileLog;->tlRequestsFile:Ljava/io/File;

    .line 80
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLog;->init()V

    return-void
.end method

.method private static checkGson()V
    .locals 4

    .line 180
    sget-object v0, Lorg/telegram/messenger/FileLog;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    .line 182
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string v1, "about"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "status_text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "secret"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "stripped_thumb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "strippedBitmap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string v1, "disableFree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string/jumbo v1, "priority"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    const-string v1, "constructorName"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 198
    sget-object v1, Lorg/telegram/messenger/FileLog;->privateFields:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLAG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileLog;->excludeRequests:Ljava/util/HashSet;

    .line 203
    const-string v1, "TL_upload_getFile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lorg/telegram/messenger/FileLog;->excludeRequests:Ljava/util/HashSet;

    const-string v1, "TL_upload_getWebFile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lorg/telegram/messenger/FileLog$1;

    invoke-direct {v0}, Lorg/telegram/messenger/FileLog$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileLog;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 221
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lorg/telegram/messenger/FileLog;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/FileLog$ByteArrayHexAdapter;

    invoke-direct {v1}, Lorg/telegram/messenger/FileLog$ByteArrayHexAdapter;-><init>()V

    .line 223
    const-class v2, [B

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-string/jumbo v1, "type_"

    sget-object v2, Lorg/telegram/messenger/FileLog;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 224
    const-class v3, Lorg/telegram/tgnet/TLObject;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;Lcom/google/gson/ExclusionStrategy;)Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/FileLog$TLObjectDeserializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/messenger/FileLog$TLObjectDeserializer;-><init>(Lorg/telegram/messenger/FileLog-IA;)V

    .line 225
    invoke-virtual {v0, v3, v1}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/FileLog;->gson:Lcom/google/gson/Gson;

    :cond_1
    return-void
.end method

.method public static cleanupLogs()V
    .locals 6

    .line 586
    invoke-static {}, Lorg/telegram/messenger/FileLog;->ensureInitied()V

    .line 587
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 591
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 593
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 594
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_3

    .line 595
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 598
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 601
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/FileLog;->tonlibFile:Ljava/io/File;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/FileLog;->tonlibFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 605
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 538
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->ensureInitied()V

    .line 542
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    .line 544
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static disableGson(Z)V
    .locals 0

    .line 175
    sput-boolean p0, Lorg/telegram/messenger/FileLog;->gsonDisabled:Z

    return-void
.end method

.method private dumpANR()V
    .locals 8

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    .line 480
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 482
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 484
    const-string v5, "Thread: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v2, v3

    .line 486
    const-string v7, "\tat "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 488
    :cond_0
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 491
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANR thread dump\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/FileLog;->dumpMemory(Z)V

    return-void
.end method

.method public static dumpResponseAndRequest(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;JJI)V
    .locals 12

    .line 92
    const-string v0, " : "

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {}, Lorg/telegram/messenger/FileLog;->checkGson()V

    .line 98
    sget-object v2, Lorg/telegram/messenger/FileLog;->excludeRequests:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    goto/16 :goto_2

    .line 102
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "req -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/telegram/messenger/FileLog;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 103
    const-string/jumbo p1, "null"

    if-eqz p2, :cond_3

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/FileLog;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    move-object v10, p1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_2

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "err -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/telegram/messenger/FileLog;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 111
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda7;

    move v6, p0

    move-object v11, p3

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    move/from16 v5, p8

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda7;-><init>(JJIIJLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 138
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static dumpUnparsedMessage(Lorg/telegram/tgnet/TLObject;JI)V
    .locals 8

    .line 143
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->checkGson()V

    .line 148
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive message -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/telegram/messenger/FileLog;->gsonDisabled:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/FileLog;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda1;

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda1;-><init>(JJILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 397
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->ensureInitied()V

    .line 401
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    .line 403
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 374
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->ensureInitied()V

    .line 378
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    .line 380
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 6

    .line 415
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 418
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disk image is malformed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/FileLog;->databaseIsMalformed:Z

    if-nez v0, :cond_1

    .line 419
    const-string v0, "copy malformed files"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 420
    sput-boolean v0, Lorg/telegram/messenger/FileLog;->databaseIsMalformed:Z

    .line 421
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 422
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "malformed_database/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 424
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseFiles()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    .line 425
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 427
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 429
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->ensureInitied()V

    .line 434
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 435
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_2

    .line 436
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 457
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static ensureInitied()V
    .locals 1

    .line 336
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLog;->init()V

    return-void
.end method

.method public static fatal(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 462
    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLog;->fatal(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static fatal(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 496
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    instance-of p1, p0, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    .line 500
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLog;->dumpMemory(Z)V

    .line 502
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->ensureInitied()V

    .line 503
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 504
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz p1, :cond_2

    .line 505
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 530
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 531
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    .line 532
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getInstance()Lorg/telegram/messenger/FileLog;
    .locals 2

    .line 67
    sget-object v0, Lorg/telegram/messenger/FileLog;->Instance:Lorg/telegram/messenger/FileLog;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Lorg/telegram/messenger/FileLog;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FileLog;->Instance:Lorg/telegram/messenger/FileLog;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/telegram/messenger/FileLog;

    invoke-direct {v0}, Lorg/telegram/messenger/FileLog;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileLog;->Instance:Lorg/telegram/messenger/FileLog;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public static getLogDirSize()Ljava/lang/String;
    .locals 3

    .line 577
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 579
    const-string v0, "N/A"

    return-object v0

    .line 581
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->getDirSize(Ljava/lang/String;IZ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkLogPath()Ljava/lang/String;
    .locals 8

    .line 340
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 344
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 348
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/FileLog;->fileDateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_net.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v2, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    .line 349
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static getTonlibLogPath()Ljava/lang/String;
    .locals 8

    .line 357
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 361
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 365
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_tonlib.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v2, Lorg/telegram/messenger/FileLog;->tonlibFile:Ljava/io/File;

    .line 366
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->tonlibFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 559
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/FileLog;->ensureInitied()V

    .line 563
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    .line 565
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dumpMemory(Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/messenger/FileLog;->dumpedHeap:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/FileLog;->dumpedHeap:J

    .line 470
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_heap.hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 472
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public init()V
    .locals 7

    .line 298
    const-string v0, "-----\n"

    const-string v1, "-----start log "

    iget-boolean v2, p0, Lorg/telegram/messenger/FileLog;->initied:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dd_MM_yyyy_HH_mm_ss.SSS"

    invoke-static {v3, v2}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    .line 302
    const-string v3, "dd_MM_yyyy_HH_mm_ss"

    invoke-static {v3, v2}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/FileLog;->fileDateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 305
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    .line 309
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    .line 310
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_mtproto.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->tlRequestsFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 312
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    :goto_1
    :try_start_1
    new-instance v3, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v4, "logQueue"

    invoke-direct {v3, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 316
    iget-object v3, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 317
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 318
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 322
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/telegram/messenger/FileLog;->tlRequestsFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 323
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/FileLog;->tlStreamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    :goto_2
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_2

    .line 330
    new-instance v0, Lorg/telegram/messenger/FileLog$ANRDetector;

    new-instance v1, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileLog;)V

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/FileLog$ANRDetector;-><init>(Lorg/telegram/messenger/FileLog;Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLog;->initied:Z

    return-void
.end method
