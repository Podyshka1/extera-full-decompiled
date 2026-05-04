.class public Lorg/telegram/tgnet/NativeByteBuffer;
.super Lorg/telegram/tgnet/AbstractSerializedData;
.source "SourceFile"


# static fields
.field private static final addressWrappers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/LinkedList<",
            "Lorg/telegram/tgnet/NativeByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected address:J

.field public buffer:Ljava/nio/ByteBuffer;

.field private justCalc:Z

.field private len:I

.field public reused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer$1;

    invoke-direct {v0}, Lorg/telegram/tgnet/NativeByteBuffer$1;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/NativeByteBuffer;->addressWrappers:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 53
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    if-ltz p1, :cond_1

    .line 55
    invoke-static {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getFreeBuffer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getJavaByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60
    iget-object p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "invalid NativeByteBuffer size"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 68
    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    return-void
.end method

.method public static native native_getFreeBuffer(I)J
.end method

.method public static native native_getJavaByteBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method public static native native_limit(J)I
.end method

.method public static native native_position(J)I
.end method

.method public static native native_reuse(J)V
.end method

.method public static wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lorg/telegram/tgnet/NativeByteBuffer;->addressWrappers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/NativeByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(IZ)V

    .line 34
    :cond_0
    iput-wide p0, v0, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    .line 35
    iput-boolean v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 36
    invoke-static {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getJavaByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 37
    invoke-static {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_limit(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 38
    invoke-static {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_position(J)I

    move-result p0

    .line 39
    iget-object p1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-gt p0, p1, :cond_1

    .line 40
    iget-object p1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    :cond_1
    iget-object p0, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public compact()V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 651
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 654
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIntFromByte(B)I
    .locals 0

    if-ltz p1, :cond_0

    return p1

    :cond_0
    add-int/lit16 p1, p1, 0x100

    return p1
.end method

.method public getPosition()I
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 2

    .line 513
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readData(IZ)[B

    move-result-object v0

    .line 514
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 516
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 517
    const-string v0, "<err>"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 379
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0

    .line 382
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    return v0
.end method

.method public limit()I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public position()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public readBool(Z)Z
    .locals 3

    .line 449
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    const v1, -0x668d8a4b

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const v1, -0x438668c9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 455
    :cond_1
    const-string v0, "Not bool value!"

    if-nez p1, :cond_3

    .line 458
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 459
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    return v2

    .line 456
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte(Z)B
    .locals 2

    .line 402
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 404
    const-string/jumbo v1, "read byte error"

    if-nez p1, :cond_1

    .line 407
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 408
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 409
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 405
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readByteArray(Z)[B
    .locals 5

    .line 561
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x4

    if-lt v0, v1, :cond_0

    .line 563
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 566
    :goto_0
    new-array v3, v0, [B

    .line 567
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int v4, v0, v1

    .line 569
    rem-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 570
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    .line 575
    :goto_2
    const-string/jumbo v1, "read byte array error"

    if-nez p1, :cond_3

    .line 578
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 579
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 580
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    .line 584
    new-array p1, p1, [B

    return-object p1

    .line 576
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 7

    .line 590
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x4

    if-lt v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 595
    :goto_0
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v3, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 596
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    .line 597
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 598
    iget-object v5, v3, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 599
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 600
    iget-object v4, v3, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    add-int v4, v0, v1

    .line 602
    rem-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 603
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    .line 608
    :goto_2
    const-string/jumbo v1, "read byte array error"

    if-nez p1, :cond_3

    .line 611
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 612
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 613
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 609
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readBytes([BIIZ)V
    .locals 1

    .line 498
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 500
    const-string/jumbo p2, "read raw error"

    if-nez p4, :cond_1

    .line 503
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_0

    .line 504
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 505
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 501
    :cond_1
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public readBytes([BZ)V
    .locals 1

    .line 483
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 485
    const-string/jumbo v0, "read raw error"

    if-nez p2, :cond_1

    .line 488
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 489
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 490
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 486
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public readData(IZ)[B
    .locals 0

    .line 522
    new-array p1, p1, [B

    .line 523
    invoke-virtual {p0, p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    return-object p1
.end method

.method public readDouble(Z)D
    .locals 2

    .line 622
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 624
    const-string/jumbo v1, "read double error"

    if-nez p1, :cond_1

    .line 627
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 628
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 629
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 625
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readFloat(Z)F
    .locals 2

    .line 434
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 436
    const-string/jumbo v1, "read float error"

    if-nez p1, :cond_1

    .line 439
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 440
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 441
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 437
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readInt32(Z)I
    .locals 2

    .line 418
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 420
    const-string/jumbo v1, "read int32 error"

    if-nez p1, :cond_1

    .line 423
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 424
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 421
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readInt64(Z)J
    .locals 2

    .line 467
    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 469
    const-string/jumbo v1, "read int64 error"

    if-nez p1, :cond_1

    .line 472
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 473
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 474
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 470
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readString(Z)Ljava/lang/String;
    .locals 6

    .line 528
    invoke-virtual {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->getPosition()I

    move-result v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    const/16 v2, 0xfe

    const/4 v3, 0x4

    if-lt v1, v2, :cond_0

    .line 533
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 536
    :goto_0
    new-array v4, v1, [B

    .line 537
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int v5, v1, v2

    .line 539
    rem-int/2addr v5, v3

    if-eqz v5, :cond_1

    .line 540
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 543
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 545
    :goto_2
    const-string/jumbo v2, "read string error"

    if-nez p1, :cond_3

    .line 548
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 549
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 550
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 553
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 555
    const-string p1, ""

    return-object p1

    .line 546
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public remaining()I
    .locals 1

    .line 646
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public reuse()V
    .locals 4

    .line 637
    iget-wide v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 638
    sget-object v0, Lorg/telegram/tgnet/NativeByteBuffer;->addressWrappers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 640
    iget-wide v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    invoke-static {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_reuse(J)V

    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public skip(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 392
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    return-void
.end method

.method public writeBool(Z)V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const p1, -0x668d8a4b

    .line 159
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    return-void

    :cond_0
    const p1, -0x438668c9

    .line 161
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    return-void

    .line 164
    :cond_1
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    return-void
.end method

.method public writeByte(B)V
    .locals 1

    .line 204
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 207
    :cond_0
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 210
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 211
    const-string/jumbo v0, "write byte error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public writeByte(I)V
    .locals 0

    int-to-byte p1, p1

    .line 199
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(B)V

    return-void
.end method

.method public writeByteArray([B)V
    .locals 5

    .line 277
    :try_start_0
    array-length v0, p1

    const/16 v1, 0xfd

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    .line 278
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v4, p1

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    .line 281
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    .line 284
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 286
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v4, p1

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 287
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v4, p1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 288
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v4, p1

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 290
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    .line 293
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 296
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    array-length v4, p1

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    .line 298
    :goto_1
    array-length v0, p1

    if-gt v0, v1, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    .line 299
    :goto_2
    array-length v1, p1

    add-int/2addr v1, v0

    rem-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 300
    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_5

    .line 301
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 303
    :cond_5
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 308
    :goto_4
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 309
    const-string/jumbo v0, "write byte array error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 310
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public writeByteArray([BII)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/16 v2, 0xfd

    if-gt p3, v2, :cond_1

    .line 238
    :try_start_0
    iget-boolean v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v3, :cond_0

    .line 239
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    .line 241
    :cond_0
    iget v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    .line 244
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v3, :cond_2

    .line 245
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 246
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 247
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 248
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, p3, 0x10

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 250
    :cond_2
    iget v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    .line 253
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v3, :cond_3

    .line 254
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 256
    :cond_3
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    :goto_1
    if-gt p3, v2, :cond_4

    move p1, v1

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    add-int p2, p3, p1

    .line 259
    rem-int/2addr p2, v0

    if-eqz p2, :cond_6

    .line 260
    iget-boolean p2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez p2, :cond_5

    .line 261
    iget-object p2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 263
    :cond_5
    iget p2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 268
    :goto_4
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_6

    .line 269
    const-string/jumbo p2, "write byte array error"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 6

    .line 328
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0xfd

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    .line 330
    iget-boolean v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v4, :cond_0

    .line 331
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    .line 333
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    .line 336
    :cond_1
    iget-boolean v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v4, :cond_2

    .line 337
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 338
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 339
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 340
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 342
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    .line 345
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v4, :cond_3

    .line 346
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 347
    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 349
    :cond_3
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    :goto_1
    if-gt v0, v1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    add-int v1, v0, p1

    .line 352
    rem-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 353
    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_5

    .line 354
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 356
    :cond_5
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 361
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public writeBytes(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 1

    .line 366
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-eqz v0, :cond_0

    .line 367
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 370
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeBytes([B)V
    .locals 1

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 173
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 176
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 177
    const-string/jumbo v0, "write raw error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public writeBytes([BII)V
    .locals 1

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 188
    :cond_0
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 191
    :goto_0
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_1

    .line 192
    const-string/jumbo p2, "write raw error"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 193
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    .line 317
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 319
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 320
    const-string/jumbo p2, "write double error"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 321
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 146
    :cond_0
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 149
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 150
    const-string/jumbo v0, "write float error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public writeInt32(I)V
    .locals 1

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 116
    :cond_0
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 119
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 120
    const-string/jumbo v0, "write int32 error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public writeInt64(J)V
    .locals 1

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 131
    :cond_0
    iget p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 134
    :goto_0
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_1

    .line 135
    const-string/jumbo p2, "write int64 error"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    .line 219
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 220
    const-string/jumbo p1, "write string null"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 221
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 223
    :cond_0
    const-string p1, ""

    .line 226
    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 228
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 229
    const-string/jumbo v0, "write string error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
