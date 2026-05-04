.class public Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# instance fields
.field private allowedVideoJoiningTimeMs:J

.field private final codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

.field private final context:Landroid/content/Context;

.field private enableAudioTrackPlaybackParams:Z

.field private enableDecoderFallback:Z

.field private enableFloatOutput:Z

.field private enableOffload:Z

.field private extensionRendererMode:I

.field private mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 111
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    const-wide/16 v0, 0x1388

    .line 113
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 114
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method protected buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 14

    move/from16 v0, p2

    move-object/from16 v1, p8

    .line 457
    const-class v2, Lcom/google/android/exoplayer2/audio/AudioSink;

    const-class v3, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    const-class v4, Landroid/os/Handler;

    const-string v5, "DefaultRenderersFactory"

    new-instance v6, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 460
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v8

    move-object v7, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v13, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 466
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 471
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 477
    :cond_1
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v7, 0x0

    .line 478
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, p1, 0x1

    .line 480
    :try_start_1
    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 481
    const-string p1, "Loaded MidiRenderer."

    invoke-static {v5, p1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move p1, v7

    goto :goto_1

    .line 486
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating MIDI extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    :goto_1
    move v7, p1

    :goto_2
    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v8, 0x1

    .line 491
    :try_start_2
    const-class v9, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;

    .line 492
    new-array v10, v0, [Ljava/lang/Class;

    aput-object v4, v10, p1

    aput-object v3, v10, v8

    aput-object v2, v10, v6

    .line 493
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 497
    new-array v10, v0, [Ljava/lang/Object;

    aput-object p6, v10, p1

    aput-object p7, v10, v8

    aput-object p5, v10, v6

    .line 498
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v10, v7, 0x1

    .line 499
    :try_start_3
    invoke-virtual {v1, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 500
    const-string v7, "Loaded LibopusAudioRenderer."

    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_4
    move v7, v10

    goto :goto_4

    .line 505
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating Opus extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    :goto_4
    move v10, v7

    .line 510
    :goto_5
    :try_start_4
    const-class v7, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;

    .line 511
    new-array v9, v0, [Ljava/lang/Class;

    aput-object v4, v9, p1

    aput-object v3, v9, v8

    aput-object v2, v9, v6

    .line 512
    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 516
    new-array v9, v0, [Ljava/lang/Object;

    aput-object p6, v9, p1

    aput-object p7, v9, v8

    aput-object p5, v9, v6

    .line 517
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    add-int/lit8 v9, v10, 0x1

    .line 518
    :try_start_5
    invoke-virtual {v1, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 519
    const-string v7, "Loaded LibflacAudioRenderer."

    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :catch_7
    move v10, v9

    goto :goto_7

    .line 524
    :goto_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating FLAC extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_8
    :goto_7
    move v9, v10

    .line 530
    :goto_8
    :try_start_6
    const-class v7, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;

    .line 531
    new-array v10, v0, [Ljava/lang/Class;

    aput-object v4, v10, p1

    aput-object v3, v10, v8

    aput-object v2, v10, v6

    .line 532
    invoke-virtual {v7, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 536
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p6, v0, p1

    aput-object p7, v0, v8

    aput-object p5, v0, v6

    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Renderer;

    .line 538
    invoke-virtual {v1, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 539
    const-string p1, "Loaded FfmpegAudioRenderer."

    invoke-static {v5, p1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    move-object p1, v0

    .line 544
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating FFmpeg extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_a
    :goto_9
    return-void
.end method

.method protected buildAudioSink(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;
    .locals 1

    .line 631
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;-><init>()V

    .line 632
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 633
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 634
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 635
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setOffloadMode(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 639
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->build()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    move-result-object p1

    return-object p1
.end method

.method protected buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    .line 593
    new-instance p1, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 581
    new-instance p1, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 563
    new-instance p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Landroid/opengl/EGLContext;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 19

    move/from16 v0, p3

    move-object/from16 v1, p10

    .line 362
    const-string v2, "DefaultRenderersFactory"

    const/16 v3, 0x32

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 362
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    const-class v6, Landroid/os/Handler;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v11

    const/16 v18, 0x32

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-wide/from16 v13, p8

    invoke-direct/range {v8 .. v18}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroid/opengl/EGLContext;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 373
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 378
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    add-int/lit8 v8, v8, -0x1

    :cond_1
    const/4 v0, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x1

    .line 385
    :try_start_0
    const-string v13, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 386
    new-array v14, v11, [Ljava/lang/Class;

    aput-object v7, v14, v10

    aput-object v6, v14, v12

    aput-object v5, v14, v9

    aput-object v4, v14, v0

    .line 387
    invoke-virtual {v13, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 395
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 398
    new-array v15, v11, [Ljava/lang/Object;

    aput-object v14, v15, v10

    aput-object p6, v15, v12

    aput-object p7, v15, v9

    aput-object v3, v15, v0

    .line 394
    invoke-virtual {v13, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v14, v8, 0x1

    .line 399
    :try_start_1
    invoke-virtual {v1, v8, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 400
    const-string v8, "Loaded LibvpxVideoRenderer."

    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move v8, v14

    goto :goto_1

    .line 405
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :goto_1
    move v14, v8

    .line 410
    :goto_2
    :try_start_2
    const-string v8, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 411
    new-array v13, v11, [Ljava/lang/Class;

    aput-object v7, v13, v10

    aput-object v6, v13, v12

    aput-object v5, v13, v9

    aput-object v4, v13, v0

    .line 412
    invoke-virtual {v8, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 420
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 423
    new-array v6, v11, [Ljava/lang/Object;

    aput-object v5, v6, v10

    aput-object p6, v6, v12

    aput-object p7, v6, v9

    aput-object v3, v6, v0

    .line 419
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Renderer;

    .line 424
    invoke-virtual {v1, v14, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 425
    const-string v0, "Loaded Libgav1VideoRenderer."

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 430
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating AV1 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    :goto_3
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Landroid/opengl/EGLContext;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 11

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    move-object v10, v5

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    iget-wide v8, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v6, p1

    move-object v2, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;Landroid/opengl/EGLContext;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    .line 307
    iget-object p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableFloatOutput:Z

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableOffload:Z

    .line 308
    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioSink(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    move-object v0, p0

    move-object v6, p1

    move-object v7, p4

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 323
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v0, p0

    move-object/from16 v2, p5

    move-object v5, v10

    .line 320
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 326
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 329
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p6

    .line 326
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 332
    iget-object p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, p2, p3, v10}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 333
    iget-object p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, p2, p1, p3, v10}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 334
    new-array p1, p1, [Lcom/google/android/exoplayer2/Renderer;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/Renderer;

    return-object p1
.end method

.method protected getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    return-object v0
.end method

.method public setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 130
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    return-object p0
.end method
