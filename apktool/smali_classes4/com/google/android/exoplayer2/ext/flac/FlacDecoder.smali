.class public final Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder;"
    }
.end annotation


# instance fields
.field private final decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

.field private final streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;


# direct methods
.method public static synthetic $r8$lambda$JjJx5eXRkcD0pN1KFAcDuHhGRzs(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    return-void
.end method

.method public constructor <init>(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 58
    new-array p1, p1, [Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    new-array p2, p2, [Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    .line 59
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 62
    new-instance p1, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    const/4 p2, 0x0

    .line 63
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->setData(Ljava/nio/ByteBuffer;)V

    .line 65
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeStreamMetadata()Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget p3, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 75
    :goto_0
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->setInitialInputBufferSize(I)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 70
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 67
    :goto_2
    new-instance p2, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    const-string p3, "Failed to decode StreamInfo"

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 60
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    const-string p2, "Initialization data must be of length 1"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 2

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;
    .locals 2

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    new-instance v1, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;-><init>(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;
    .locals 2

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 34
    check-cast p2, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;
    .locals 2

    if-eqz p3, :cond_0

    .line 103
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flush()V

    .line 105
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->setData(Ljava/nio/ByteBuffer;)V

    .line 106
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->init(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 109
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeSample(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 114
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 111
    :goto_1
    new-instance p2, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    const-string p3, "Frame decoding failed"

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "libflac"

    return-object v0
.end method

.method public getStreamMetadata()Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->release()V

    return-void
.end method
