.class public Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;
.super Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I = 0x1680

.field private static final NUM_BUFFERS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "LibopusAudioRenderer"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/decoder/Decoder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected final createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;
    .locals 8

    .line 100
    const-string v0, "createOpusDecoder"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 102
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v2, 0x4

    .line 104
    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getSinkFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :goto_1
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_1
    const/16 v0, 0x1680

    goto :goto_2

    .line 109
    :goto_3
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;

    const/16 v3, 0x10

    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    const/16 v2, 0x10

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;-><init>(IIILjava/util/List;Lcom/google/android/exoplayer2/decoder/CryptoConfig;Z)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->experimentalGetDiscardPaddingEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->experimentalSetDiscardPaddingEnabled(Z)V

    .line 119
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-object v1
.end method

.method protected experimentalGetDiscardPaddingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "LibopusAudioRenderer"

    return-object v0
.end method

.method protected bridge synthetic getOutputFormat(Lcom/google/android/exoplayer2/decoder/Decoder;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 33
    check-cast p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->getOutputFormat(Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method protected final getOutputFormat(Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;)Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 127
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->outputFloat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 128
    :goto_0
    iget p1, p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    const v1, 0xbb80

    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

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
    .locals 3

    .line 82
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->supportsCryptoType(I)Z

    move-result v0

    .line 83
    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "audio/opus"

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v2, 0x2

    .line 87
    invoke-static {v2, v1, p1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sinkSupportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
