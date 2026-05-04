.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$Api31;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B


# instance fields
.field private final assumedMinimumCodecOperatingRate:F

.field private availableCodecInfos:Ljava/util/ArrayDeque;

.field private final buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

.field private bypassDrainAndReinitialize:Z

.field private bypassEnabled:Z

.field private final bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private bypassSampleBufferPending:Z

.field private c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

.field private codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

.field private codecAdaptationWorkaroundMode:I

.field private final codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

.field private codecDrainAction:I

.field private codecDrainState:I

.field private codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private codecHasOutputMediaFormat:Z

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field private codecInputFormat:Lcom/google/android/exoplayer2/Format;

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosBufferTimestampWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagation:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecNeedsSosFlushWorkaround:Z

.field private codecOperatingRate:F

.field public codecOutputMediaFormat:Landroid/media/MediaFormat;

.field private codecOutputMediaFormatChanged:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private currentPlaybackSpeed:F

.field private final decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final enableDecoderFallback:Z

.field private final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private isDecodeOnlyOutputBuffer:Z

.field private isLastOutputBuffer:Z

.field private largestQueuedPresentationTimeUs:J

.field private lastBufferInStreamPresentationTimeUs:J

.field private final mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private mediaCryptoRequiresSecureDecoder:Z

.field private final noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private outputStreamStartPositionUs:J

.field private pendingOutputEndOfStream:Z

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private final pendingOutputStreamStartPositionsUs:[J

.field private final pendingOutputStreamSwitchTimesUs:[J

.field private pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private renderTimeLimitMs:J

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private targetPlaybackSpeed:F

.field private waitingForFirstSampleInFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    .line 290
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V
    .locals 1

    .line 386
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 387
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    .line 388
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 389
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 390
    iput p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 391
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newNoDataInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 392
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 393
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 394
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 395
    new-instance p3, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 396
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 397
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 398
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 399
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 400
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const/16 p5, 0xa

    .line 401
    new-array v0, p5, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamStartPositionsUs:[J

    .line 402
    new-array v0, p5, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    .line 403
    new-array p5, p5, [J

    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamSwitchTimesUs:[J

    .line 404
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    .line 405
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamOffsetUs(J)V

    .line 411
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 412
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 414
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 415
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 416
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 p1, -0x1

    .line 417
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 418
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 419
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 420
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 421
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 422
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 423
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void
.end method

.method private bypassRead()V
    .locals 5

    .line 2275
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2276
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 2277
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 2279
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 2280
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_5

    const/4 v4, -0x4

    if-eq v2, v4, :cond_2

    const/4 v0, -0x3

    if-ne v2, v0, :cond_1

    return-void

    .line 2306
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2288
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2289
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    return-void

    .line 2292
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v2, :cond_4

    .line 2294
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    .line 2295
    invoke-virtual {p0, v2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 2296
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 2299
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 2300
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2301
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    return-void

    .line 2283
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return-void
.end method

.method private bypassRender(JJ)Z
    .locals 17

    move-object/from16 v0, p0

    .line 2212
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v15, 0x1

    xor-int/2addr v1, v15

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2213
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2214
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v6, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v7, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 2221
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->getSampleCount()I

    move-result v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2222
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->getFirstSampleTimeUs()J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2223
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isDecodeOnly()Z

    move-result v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 2224
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v13

    iget-object v14, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move v15, v2

    move-wide/from16 v1, p1

    .line 2214
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 2228
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    goto :goto_0

    :cond_0
    return v15

    :cond_1
    move v15, v2

    .line 2236
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 2237
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v15

    .line 2241
    :cond_2
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    if-eqz v1, :cond_3

    .line 2242
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2243
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 2246
    :cond_3
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_5

    .line 2247
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v16, 0x1

    return v16

    .line 2253
    :cond_4
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 2254
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 2255
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 2256
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v1, :cond_5

    return v15

    .line 2263
    :cond_5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassRead()V

    .line 2265
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2266
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 2271
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_8

    :cond_7
    const/16 v16, 0x1

    goto :goto_1

    :cond_8
    return v15

    :goto_1
    return v16
.end method

.method private codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .locals 3

    .line 2365
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v1, "OMX.Exynos.avc.dec.secure"

    .line 2366
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v2, "SM-T585"

    .line 2367
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A510"

    .line 2368
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A520"

    .line 2369
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-J700"

    .line 2370
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 2372
    const-string v0, "OMX.Nvidia.h264.decode"

    .line 2373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 2374
    const-string v0, "flounder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flounder_lte"

    .line 2375
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "grouper"

    .line 2376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tilapia"

    .line 2377
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2466
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.mp3.dec"

    .line 2467
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 2468
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "baffin"

    .line 2469
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "grand"

    .line 2470
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fortuna"

    .line 2471
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gprimelte"

    .line 2472
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "j2y18lte"

    .line 2473
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ms01"

    .line 2474
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2456
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2489
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static codecNeedsEosPropagationWorkaround(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 3

    .line 2429
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 2430
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/16 v2, 0x11

    if-gt v1, v2, :cond_1

    const-string v2, "OMX.allwinner.video.decoder.avc"

    .line 2431
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 2433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 2434
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 2435
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 2436
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 2437
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 2438
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Amazon"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 2439
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AFTS"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2343
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_0

    const-string v1, "OMX.SEC.avc.dec"

    .line 2345
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 2347
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 2348
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 2413
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private disableBypass()V
    .locals 2

    const/4 v0, 0x0

    .line 727
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 728
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    .line 729
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 730
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 731
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return-void
.end method

.method private drainAndFlushCodec()Z
    .locals 2

    .line 1767
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1768
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1769
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1773
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 1770
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private drainAndReinitializeCodec()V
    .locals 1

    .line 1812
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1813
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v0, 0x3

    .line 1814
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void

    .line 1817
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    return-void
.end method

.method private drainAndUpdateCodecDrmSessionV23()Z
    .locals 2

    .line 1790
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1791
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1792
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1796
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 1793
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v0, 0x0

    return v0

    .line 1800
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    :goto_1
    return v1
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1827
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v1

    const/4 v15, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 1829
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_1

    .line 1831
    :try_start_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1833
    :catch_0
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1834
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_0

    .line 1836
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_0
    return v2

    .line 1841
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    :goto_0
    if-gez v1, :cond_5

    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    .line 1846
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputMediaFormatChanged()V

    return v15

    .line 1850
    :cond_2
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1852
    :cond_3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_4
    return v2

    .line 1858
    :cond_5
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v3, :cond_6

    .line 1859
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 1860
    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    return v15

    .line 1862
    :cond_6
    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_7

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    .line 1865
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v2

    .line 1869
    :cond_7
    iput v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 1870
    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_8

    .line 1875
    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1876
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1878
    :cond_8
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    iget-wide v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_9

    .line 1882
    iput-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1884
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyBuffer(J)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 1885
    iget-wide v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    move v1, v15

    goto :goto_1

    :cond_a
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 1887
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 1891
    :cond_b
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_d

    .line 1893
    :try_start_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v14, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x1

    move-wide/from16 v3, p3

    move/from16 v16, v2

    move-wide/from16 v1, p1

    .line 1894
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move/from16 v16, v2

    .line 1907
    :catch_2
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1908
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_c

    .line 1910
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_c
    return v16

    :cond_d
    move/from16 v16, v2

    .line 1915
    iget-object v5, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v6, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v14, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v9, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1916
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_10

    .line 1931
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1932
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    move v2, v15

    goto :goto_3

    :cond_e
    move/from16 v2, v16

    .line 1933
    :goto_3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    if-nez v2, :cond_f

    return v15

    .line 1937
    :cond_f
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_10
    return v16
.end method

.method private drmNeedsCodecReinitialization(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_8

    if-nez p3, :cond_1

    goto :goto_1

    .line 2106
    :cond_1
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {p3}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2111
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_3

    return v1

    .line 2116
    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 2117
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 2123
    :cond_4
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object p3

    if-nez p3, :cond_5

    return v1

    .line 2136
    :cond_5
    iget-boolean p3, p3, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    if-eqz p3, :cond_6

    move p2, v0

    goto :goto_0

    .line 2139
    :cond_6
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {p4, p2}, Lcom/google/android/exoplayer2/drm/DrmSession;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result p2

    .line 2141
    :goto_0
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 15

    .line 1193
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v0, :cond_1

    .line 1196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldReinitCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1200
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_3

    .line 1201
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_2

    return v1

    .line 1205
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1206
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 1209
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 1212
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1215
    :cond_4
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1216
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1217
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1219
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    return v1

    .line 1223
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_6

    .line 1224
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1225
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1226
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    array-length v7, v1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1228
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    return v3

    .line 1234
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 1235
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 1236
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1237
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1239
    :cond_7
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1241
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 1243
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v4

    .line 1247
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v5
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1257
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1259
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_9
    const/4 v6, -0x3

    if-ne v5, v6, :cond_a

    return v1

    :cond_a
    const/4 v6, -0x5

    if-ne v5, v6, :cond_c

    .line 1266
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_b

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 1270
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1272
    :cond_b
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return v3

    .line 1277
    :cond_c
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1278
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_d

    .line 1282
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 1283
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1285
    :cond_d
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 1286
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_e

    .line 1287
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v1

    .line 1291
    :cond_e
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_f

    goto :goto_2

    .line 1294
    :cond_f
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1295
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v1

    :catch_0
    move-exception v0

    .line 1304
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1305
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v2

    .line 1304
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 1316
    :cond_10
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/Buffer;->isKeyFrame()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1317
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 1318
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_11

    .line 1321
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_11
    return v3

    .line 1326
    :cond_12
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1328
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->increaseClearDataFirstSubSampleBy(I)V

    .line 1330
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v0, :cond_15

    if-nez v2, :cond_15

    .line 1331
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 1332
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_14

    return v3

    .line 1335
    :cond_14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 1338
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 1340
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    if-eqz v6, :cond_16

    .line 1341
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1342
    invoke-virtual {v6, v4, v0}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->updateAndGetPresentationTimeUs(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)J

    move-result-wide v4

    .line 1347
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1350
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->getLastOutputBufferPresentationTimeUs(Lcom/google/android/exoplayer2/Format;)J

    move-result-wide v8

    .line 1348
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    :cond_16
    move-wide v12, v4

    .line 1353
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1354
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_18

    .line 1357
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 1358
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1360
    :cond_18
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 1361
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 1362
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1363
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 1366
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    if-eqz v2, :cond_1a

    .line 1369
    :try_start_2
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v11, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/4 v14, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 1372
    :cond_1a
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1373
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    const/4 v10, 0x0

    .line 1372
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1380
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1381
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1382
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1383
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    return v3

    .line 1376
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1377
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v2

    .line 1376
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 1249
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 1252
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 1253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v3

    :cond_1b
    :goto_5
    return v1
.end method

.method private flushCodec()V
    .locals 1

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 883
    throw v0
.end method

.method private getAvailableCodecInfos(Z)Ljava/util/List;
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1055
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 1056
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1061
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 1062
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 1063
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drm session requires secure decoder for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method private getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;
    .locals 3

    .line 2183
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2184
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting FrameworkCryptoConfig but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v1, 0x1771

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 2193
    :cond_1
    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    return-object p1
.end method

.method private hasOutputBuffer()Z
    .locals 1

    .line 1165
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initBypass(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1078
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 1080
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1081
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "audio/mpeg"

    .line 1082
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/opus"

    .line 1083
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1085
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    goto :goto_0

    .line 1087
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    .line 1089
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return-void
.end method

.method private initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1095
    iget-object v0, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1097
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    const/high16 v4, -0x40800000    # -1.0f

    if-ge v7, v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 1099
    :cond_0
    iget v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/BaseRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result v3

    .line 1100
    :goto_0
    iget v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 1103
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1104
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1105
    instance-of v4, v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eglContext:Landroid/opengl/EGLContext;

    :goto_2
    move-object v6, v4

    move-object/from16 v4, p2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;FLandroid/opengl/EGLContext;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object v3

    const/16 v4, 0x1f

    if-lt v7, v4, :cond_3

    .line 1107
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/BaseRenderer;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$Api31;->setLogSessionIdToMediaCodecFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 1110
    :cond_3
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCodec:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1111
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1117
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v4, :cond_4

    .line 1118
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1122
    invoke-static {v4}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v4

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v4, v13, v11

    aput-object v0, v13, v12

    .line 1120
    const-string v4, "Format exceeds selected codec\'s capabilities [%s, %s]"

    invoke-static {v4, v13}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1118
    const-string v13, "MediaCodecRenderer"

    invoke-static {v13, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_4
    iput-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 1126
    iput v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 1127
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1128
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 1129
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1130
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 1131
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 1132
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 1133
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 1134
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 1135
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 1136
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1137
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 1139
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecNeedsEosPropagation()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v11

    goto :goto_5

    :cond_6
    :goto_4
    move v4, v12

    :goto_5
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 1140
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->needsReconfiguration()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1141
    iput-boolean v12, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1142
    iput v12, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1143
    iget v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v4, :cond_7

    move v11, v12

    :cond_7
    iput-boolean v11, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1146
    :cond_8
    const-string v4, "c2.android.mp3.decoder"

    iget-object v2, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1147
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    .line 1150
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/BaseRenderer;->getState()I

    move-result v2

    if-ne v2, v10, :cond_a

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    add-long/2addr v4, v10

    iput-wide v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 1154
    :cond_a
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v4, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v4, v12

    iput v4, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    sub-long v4, v6, v8

    move-wide v14, v6

    move-wide v6, v4

    move-wide v4, v14

    move-object v2, v0

    .line 1156
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;JJ)V

    return-void

    :catchall_0
    move-exception v0

    .line 1113
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1114
    throw v0
.end method

.method private isDecodeOnlyBuffer(J)Z
    .locals 5

    .line 2158
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2160
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2161
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isMediaCodecException(Ljava/lang/IllegalStateException;)Z
    .locals 3

    .line 2312
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2315
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 2316
    array-length v0, p0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.MediaCodec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private static isMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z
    .locals 0

    .line 2320
    instance-of p0, p0, Landroid/media/MediaCodec$CodecException;

    return p0
.end method

.method private static isRecoverableMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z
    .locals 1

    .line 2325
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 2326
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .locals 7

    .line 978
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 981
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v0

    .line 982
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 983
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v3, :cond_0

    .line 984
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 985
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 986
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 990
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v0

    .line 998
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1006
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 1007
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez v2, :cond_7

    .line 1008
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 1009
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 1014
    :cond_3
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 1016
    const-string v4, "MediaCodecRenderer"

    if-ne v2, v0, :cond_4

    .line 1020
    :try_start_2
    const-string v3, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x32

    .line 1021
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1022
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_4

    .line 1024
    :cond_4
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1028
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize decoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1032
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1033
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v4, v5, v3, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZLcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)V

    .line 1036
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 1037
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v2, :cond_5

    .line 1038
    iput-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_5

    .line 1041
    :cond_5
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->-$$Nest$mcopyWithFallbackException(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 1043
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 1044
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw p1

    .line 1049
    :cond_7
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    return-void

    .line 999
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method private processEndOfStream()V
    .locals 3

    .line 2033
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2046
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 2047
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    .line 2035
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    return-void

    .line 2038
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 2039
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    return-void

    .line 2042
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    return-void
.end method

.method private processOutputMediaFormatChanged()V
    .locals 4

    const/4 v0, 0x1

    .line 1945
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 1946
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 1947
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v2, :cond_0

    const-string v2, "width"

    .line 1948
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-string v2, "height"

    .line 1949
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1952
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    return-void

    .line 1955
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v2, :cond_1

    .line 1956
    const-string v2, "channel-count"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1958
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 1959
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    return-void
.end method

.method private readSourceOmittingSampleData(I)Z
    .locals 3

    .line 961
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 962
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 964
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 966
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return v2

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 968
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 969
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 970
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private reinitializeCodec()V
    .locals 0

    .line 2151
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 2152
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-void
.end method

.method private resetInputBuffer()V
    .locals 2

    const/4 v0, -0x1

    .line 1169
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 1170
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private resetOutputBuffer()V
    .locals 1

    const/4 v0, -0x1

    .line 1174
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1185
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private setOutputStreamOffsetUs(J)V
    .locals 2

    .line 2070
    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2072
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputStreamOffsetUsChanged(J)V

    :cond_0
    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1180
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private shouldContinueRendering(J)Z
    .locals 4

    .line 1160
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected static supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 2078
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4

    .line 1724
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 1730
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1735
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 1736
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result p1

    .line 1737
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_3

    .line 1743
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1745
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    .line 1749
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1750
    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1751
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    .line 1752
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    :cond_6
    :goto_1
    return v2
.end method

.method private updateDrmSessionV23()V
    .locals 3

    .line 2171
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 2176
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 2177
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void

    :catch_0
    move-exception v0

    .line 2173
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected abstract canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .locals 1

    .line 948
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)V

    return-object v0
.end method

.method protected final flushOrReinitializeCodec()Z
    .locals 1

    .line 836
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_0
    return v0
.end method

.method protected flushOrReleaseCodec()Z
    .locals 5

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 853
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 861
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-lt v0, v2, :cond_4

    .line 865
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 867
    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3

    .line 873
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v1

    .line 857
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3
.end method

.method protected final getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    return-object v0
.end method

.method protected final getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
.end method

.method protected final getCodecOutputMediaFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected abstract getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
.end method

.method protected abstract getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;FLandroid/opengl/EGLContext;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
.end method

.method protected final getOutputStreamOffsetUs()J
    .locals 2

    .line 2066
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamOffsetUs:J

    return-wide v0
.end method

.method protected getPlaybackSpeed()F
    .locals 1

    .line 1677
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    return v0
.end method

.method protected handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 1663
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 4

    .line 1668
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 1669
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1670
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final maybeInitCodecOrBypass()V
    .locals 6

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldUseBypass(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initBypass(Lcom/google/android/exoplayer2/Format;)V

    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 509
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_6

    .line 510
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 512
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object v1

    if-nez v1, :cond_2

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 524
    :cond_2
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    if-nez v1, :cond_3

    .line 531
    invoke-virtual {v2, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 526
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 534
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v0, :cond_6

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    goto :goto_2

    .line 537
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 538
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 539
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v2, v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 549
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 551
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0xfa1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method protected abstract onCodecError(Ljava/lang/Exception;)V
.end method

.method protected abstract onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;JJ)V
.end method

.method protected abstract onCodecReleased(Ljava/lang/String;)V
.end method

.method protected onDisabled()V
    .locals 2

    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 710
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    .line 711
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamOffsetUs(J)V

    const/4 v0, 0x0

    .line 712
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    .line 713
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    return-void
.end method

.method protected onEnabled(ZZ)V
    .locals 0

    .line 646
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 11

    const/4 v0, 0x1

    .line 1440
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1441
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    .line 1442
    iget-object v1, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1451
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1452
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1454
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1455
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    return-object v1

    .line 1459
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez p1, :cond_1

    .line 1460
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1461
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-object v1

    .line 1472
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 1474
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1475
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drmNeedsCodecReinitialization(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1476
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1477
    new-instance v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v2

    .line 1484
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v6

    :goto_0
    if-eqz v2, :cond_5

    .line 1485
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v0

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1487
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v3

    .line 1489
    iget v7, v3, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    const/4 v8, 0x3

    if-eqz v7, :cond_f

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v7, v0, :cond_c

    if-eq v7, v10, :cond_8

    if-ne v7, v8, :cond_7

    .line 1525
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    move v7, v9

    goto :goto_6

    .line 1528
    :cond_6
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_10

    .line 1529
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_4
    move v7, v10

    goto :goto_6

    .line 1535
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1508
    :cond_8
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3

    .line 1511
    :cond_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1512
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1513
    iget v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eq v7, v10, :cond_b

    if-ne v7, v0, :cond_a

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->width:I

    iget v9, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v7, v9, :cond_a

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->height:I

    iget v9, v4, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v7, v9, :cond_a

    goto :goto_5

    :cond_a
    move v0, v6

    :cond_b
    :goto_5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1518
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_10

    .line 1519
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4

    .line 1494
    :cond_c
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    .line 1497
    :cond_d
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_e

    .line 1499
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4

    .line 1502
    :cond_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndFlushCodec()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4

    .line 1491
    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    :cond_10
    move v7, v6

    .line 1538
    :goto_6
    iget v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-ne v0, p1, :cond_11

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    if-ne p1, v8, :cond_12

    .line 1542
    :cond_11
    new-instance v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v2

    :cond_12
    return-object v3

    .line 1446
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected abstract onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
.end method

.method protected onOutputStreamOffsetUsChanged(J)V
    .locals 0

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 3

    const/4 p1, 0x0

    .line 674
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 675
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 676
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 677
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p2, :cond_0

    .line 678
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    .line 679
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 680
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    .line 687
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_1

    .line 688
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 690
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    .line 691
    iget p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz p2, :cond_2

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    sub-int/2addr p2, p3

    aget-wide v1, v0, p2

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamOffsetUs(J)V

    .line 693
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamStartPositionsUs:[J

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    sub-int/2addr v0, p3

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    .line 695
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    :cond_2
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 4

    .line 1597
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamStartPositionsUs:[J

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    .line 1600
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamOffsetUs(J)V

    .line 1601
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    .line 1602
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamStartPositionsUs:[J

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1608
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1614
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamSwitchTimesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1620
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 0

    return-void
.end method

.method protected abstract onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 719
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 723
    throw v1
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 6

    .line 652
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 653
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 654
    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    .line 655
    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setOutputStreamOffsetUs(J)V

    return-void

    .line 657
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v1, v1

    if-ne p1, v1, :cond_2

    .line 658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    sub-int/2addr v2, v0

    aget-wide v2, v1, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/2addr p1, v0

    .line 663
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    .line 665
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamStartPositionsUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, p1, v2

    .line 666
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    add-int/lit8 p2, v1, -0x1

    aput-wide p4, p1, p2

    .line 667
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamSwitchTimesUs:[J

    sub-int/2addr v1, v0

    iget-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    aput-wide p2, p1, v1

    return-void
.end method

.method protected abstract processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
.end method

.method protected releaseCodec()V
    .locals 3

    const/4 v0, 0x0

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_0

    .line 737
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->release()V

    .line 738
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 739
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecReleased(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 742
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 744
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 748
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    return-void

    .line 748
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 751
    throw v1

    .line 742
    :goto_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 744
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 745
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    .line 748
    :cond_2
    :goto_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 752
    throw v1

    .line 748
    :goto_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 751
    throw v1
.end method

.method public render(JJ)V
    .locals 5

    .line 767
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 768
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 769
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 778
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    .line 782
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 787
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 788
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v2, :cond_4

    .line 789
    const-string v2, "bypassRender"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 790
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassRender(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 791
    :cond_3
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3

    .line 792
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v2, :cond_7

    .line 793
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 794
    const-string v4, "drainAndFeed"

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 795
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 796
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 797
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 798
    :cond_6
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3

    .line 800
    :cond_7
    iget-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 805
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 807
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 809
    :goto_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isMediaCodecException(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 810
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 811
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isRecoverableMediaCodecExceptionV21(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_8

    move v1, v0

    :cond_8
    if-eqz v1, :cond_9

    .line 813
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 816
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 p3, 0xfa3

    .line 815
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 821
    :cond_a
    throw p1

    :cond_b
    const/4 p1, 0x0

    .line 773
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 774
    throw v0
.end method

.method protected renderToEndOfStream()V
    .locals 0

    return-void
.end method

.method protected resetCodecStateForFlush()V
    .locals 4

    .line 889
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 890
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 891
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const/4 v2, 0x0

    .line 892
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 893
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 894
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 895
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 896
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 897
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 898
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 899
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 900
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->reset()V

    .line 904
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 905
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 910
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return-void
.end method

.method protected resetCodecStateForRelease()V
    .locals 2

    .line 921
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 923
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 924
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    .line 925
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 926
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 927
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 928
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 929
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 930
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 931
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 932
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 933
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 934
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 935
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 936
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 937
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 938
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 939
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 940
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 941
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 942
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 943
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    return-void
.end method

.method protected final setPendingOutputEndOfStream()V
    .locals 1

    const/4 v0, 0x1

    .line 2057
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    return-void
.end method

.method protected final setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0

    .line 702
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 703
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 704
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    return-void
.end method

.method protected shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected shouldReinitCodec()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseBypass(Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    .line 449
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected abstract supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected final updateOutputFormatForTime(J)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_0

    .line 611
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p2, :cond_0

    .line 616
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    :cond_0
    if-eqz p1, :cond_1

    .line 619
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    .line 622
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_2

    .line 623
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    :cond_2
    return-void
.end method
