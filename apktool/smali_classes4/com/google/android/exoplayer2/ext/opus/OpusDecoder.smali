.class public final Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder;"
    }
.end annotation


# static fields
.field private static final DECODE_ERROR:I = -0x1

.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final DRM_ERROR:I = -0x2

.field private static final FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT:I = 0x3

.field private static final NO_ERROR:I = 0x0

.field static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field public final channelCount:I

.field private final cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

.field private experimentalDiscardPaddingEnabled:Z

.field private final nativeDecoderContext:J

.field public final outputFloat:Z

.field private final preSkipSamples:I

.field private final seekPreRollSamples:I

.field private skipSamples:I


# direct methods
.method public static synthetic $r8$lambda$q5uIS_N8vbr0rMdK3_uDNZ-c5xI(Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    return-void
.end method

.method public constructor <init>(IIILjava/util/List;Lcom/google/android/exoplayer2/decoder/CryptoConfig;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/decoder/CryptoConfig;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v7, p6

    .line 83
    new-array v3, p1, [Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    new-array v4, p2, [Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    .line 84
    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 87
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    if-eqz v2, :cond_1

    .line 88
    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->opusIsSecureDecodeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v2, "Opus decoder does not support secure decode"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v2, "Invalid initialization data size"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    const/4 v5, 0x2

    const/16 v6, 0x8

    if-ne v2, v3, :cond_5

    .line 96
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    if-ne v2, v6, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    if-ne v2, v6, :cond_4

    goto :goto_2

    .line 97
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v2, "Invalid pre-skip or seek pre-roll"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_5
    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->getPreSkipSamples(Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->preSkipSamples:I

    .line 100
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->getSeekPreRollSamples(Ljava/util/List;)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->seekPreRollSamples:I

    .line 101
    iput v2, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    const/4 v2, 0x0

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 104
    array-length v3, v1

    const-string v8, "Invalid header length"

    const/16 v9, 0x13

    if-lt v3, v9, :cond_d

    .line 107
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->getChannelCount([B)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    if-gt v3, v6, :cond_c

    const/16 v10, 0x10

    .line 111
    invoke-static {v1, v10}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->readSignedLittleEndian16([BI)I

    move-result v10

    .line 113
    new-array v6, v6, [B

    const/16 v11, 0x12

    .line 116
    aget-byte v11, v1, v11

    if-nez v11, :cond_8

    if-gt v3, v5, :cond_7

    if-ne v3, v5, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    move v1, v2

    .line 123
    :goto_3
    aput-byte v2, v6, v2

    .line 124
    aput-byte v4, v6, v4

    move v2, v3

    move v3, v4

    move v4, v1

    goto :goto_4

    .line 119
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v2, "Invalid header, missing stream map"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_8
    array-length v4, v1

    add-int/lit8 v5, v3, 0x15

    if-lt v4, v5, :cond_b

    .line 130
    aget-byte v4, v1, v9

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x14

    .line 131
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0x15

    .line 132
    invoke-static {v1, v8, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_4
    const v1, 0xbb80

    move-object v0, p0

    move v5, v10

    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusInit(IIIII[B)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 139
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->setInitialInputBufferSize(I)V

    .line 141
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->outputFloat:Z

    if-eqz v7, :cond_9

    .line 143
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusSetFloatOutput()V

    :cond_9
    return-void

    .line 137
    :cond_a
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v2, "Failed to initialize decoder"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_b
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move v2, v3

    .line 109
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid channel count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_d
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_e
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v2, "Failed to load decoder native libraries"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getChannelCount([B)I
    .locals 1

    const/16 v0, 0x9

    .line 262
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static getDiscardPaddingSamples(Ljava/nio/ByteBuffer;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 310
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    return v0

    :cond_1
    const-wide/32 v3, 0xbb80

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x3b9aca00

    .line 317
    div-long/2addr v1, v3

    long-to-int p0, v1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method static getPreSkipSamples(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 273
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 275
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    .line 276
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 279
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/16 v0, 0xb

    .line 280
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xa

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static getSeekPreRollSamples(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 292
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 294
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    .line 295
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_0
    const/16 p0, 0xf00

    return p0
.end method

.method private native opusClose(J)V
.end method

.method private native opusDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;)I
.end method

.method private native opusGetErrorCode(J)I
.end method

.method private native opusGetErrorMessage(J)Ljava/lang/String;
.end method

.method private native opusInit(IIIII[B)J
.end method

.method private native opusReset(J)V
.end method

.method private native opusSecureDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;ILcom/google/android/exoplayer2/decoder/CryptoConfig;I[B[BI[I[I)I
.end method

.method private native opusSetFloatOutput()V
.end method

.method private static readSignedLittleEndian16([BI)I
    .locals 1

    .line 327
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 328
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private static samplesToBytes(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    mul-int/2addr p0, p1

    mul-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method protected createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 2

    .line 164
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;
    .locals 2

    .line 169
    new-instance v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;-><init>(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;
    .locals 2

    .line 174
    new-instance v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 36
    check-cast p2, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_1

    .line 182
    iget-wide v2, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusReset(J)V

    .line 185
    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->preSkipSamples:I

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->seekPreRollSamples:I

    :goto_0
    iput v2, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    .line 187
    :cond_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 188
    iget-object v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 190
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-wide v3, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    move-wide v7, v3

    move-object v6, v5

    iget-wide v4, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    move-wide v8, v7

    .line 195
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v7

    iget-object v10, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    iget v11, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iget-object v3, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    .line 200
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [B

    iget-object v3, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 201
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [B

    iget v14, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iget-object v15, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    move-object/from16 v16, v2

    move-wide v2, v8

    const v9, 0xbb80

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    move-object/from16 v8, p2

    .line 191
    invoke-direct/range {v1 .. v16}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusSecureDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;ILcom/google/android/exoplayer2/decoder/CryptoConfig;I[B[BI[I[I)I

    move-result v2

    move-object/from16 v7, p2

    move-object v8, v0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object v0, v1

    move-object v6, v5

    .line 205
    iget-wide v1, v3, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 209
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v6

    move-object/from16 v7, p2

    move-object v8, v0

    move-object/from16 v0, p0

    .line 205
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;)I

    move-result v2

    :goto_1
    if-gez v2, :cond_4

    const/4 v1, -0x2

    if-ne v2, v1, :cond_3

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drm error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    new-instance v2, Lcom/google/android/exoplayer2/decoder/CryptoException;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    .line 215
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorCode(J)I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/decoder/CryptoException;-><init>(ILjava/lang/String;)V

    .line 216
    new-instance v3, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {v3, v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 218
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decode error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v4, v2

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 222
    :cond_4
    iget-object v1, v7, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 225
    iget v4, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    if-lez v4, :cond_6

    .line 226
    iget v4, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->outputFloat:Z

    const/4 v6, 0x1

    invoke-static {v6, v4, v5}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->samplesToBytes(IIZ)I

    move-result v4

    .line 227
    iget v5, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    mul-int v6, v5, v4

    if-gt v2, v6, :cond_5

    .line 229
    div-int v3, v2, v4

    sub-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    const/high16 v3, -0x80000000

    .line 230
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/decoder/Buffer;->addFlag(I)V

    .line 231
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 233
    :cond_5
    iput v3, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    .line 234
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 236
    :cond_6
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->experimentalDiscardPaddingEnabled:Z

    if-eqz v3, :cond_7

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/decoder/Buffer;->hasSupplementalData()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 237
    iget-object v3, v8, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->getDiscardPaddingSamples(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-lez v3, :cond_7

    .line 239
    iget v4, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->outputFloat:Z

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->samplesToBytes(IIZ)I

    move-result v3

    if-lt v2, v3, :cond_7

    sub-int/2addr v2, v3

    .line 241
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_7
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public experimentalSetDiscardPaddingEnabled(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->experimentalDiscardPaddingEnabled:Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libopus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 251
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusClose(J)V

    return-void
.end method
