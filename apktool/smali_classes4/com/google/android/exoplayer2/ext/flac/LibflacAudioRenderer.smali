.class public final Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;
.super Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;"
    }
.end annotation


# static fields
.field private static final METADATA_BLOCK_HEADER_SIZE:I = 0x4

.field private static final NUM_BUFFERS:I = 0x10

.field private static final STREAM_MARKER_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LibflacAudioRenderer"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method private static getOutputFormat(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 128
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 127
    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/decoder/Decoder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;
    .locals 2

    .line 113
    const-string p2, "createFlacDecoder"

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 114
    new-instance p2, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    const/16 v1, 0x10

    invoke-direct {p2, v1, v1, v0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;-><init>(IIILjava/util/List;)V

    .line 116
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "LibflacAudioRenderer"

    return-object v0
.end method

.method protected bridge synthetic getOutputFormat(Lcom/google/android/exoplayer2/decoder/Decoder;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 33
    check-cast p1, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->getOutputFormat(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method protected getOutputFormat(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 123
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->getStreamMetadata()Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->getOutputFormat(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlaybackSpeed(FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Renderer$-CC;->$default$setPlaybackSpeed(Lcom/google/android/exoplayer2/Renderer;FF)V

    return-void
.end method

.method protected supportsFormatInternal(Lcom/google/android/exoplayer2/Format;)I
    .locals 4

    .line 81
    invoke-static {}, Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "audio/flac"

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 92
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 93
    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 97
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>([BI)V

    .line 98
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->getOutputFormat(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 100
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sinkSupportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_2
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-eqz p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x4

    return p1

    :cond_4
    :goto_1
    return v1
.end method
