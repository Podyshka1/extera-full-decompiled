.class public final Lcom/google/android/exoplayer2/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/Function;

.field audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

.field buildCalled:Z

.field clock:Lcom/google/android/exoplayer2/util/Clock;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field public eglContext:Landroid/opengl/EGLContext;

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field loadControlSupplier:Lcom/google/common/base/Supplier;

.field looper:Landroid/os/Looper;

.field mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

.field pauseAtEndOfMediaItems:Z

.field playbackLooper:Landroid/os/Looper;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/Supplier;

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field skipSilenceEnabled:Z

.field trackSelectorSupplier:Lcom/google/common/base/Supplier;

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public static synthetic $r8$lambda$4qhvUKIRrN-DysIrv45HiMI7TtI(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 1

    .line 535
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$C4W3_CpBDGRsHmoIhfOUQmtXsl4(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$GYdozbRODnlGDQgrVACU4rpd-6I(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$Z9NUWa_6QXYrw0QqdfsKlmwIjME(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2

    .line 536
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$bOGazydcqPog978vb_g5q9jwMzI(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    .line 649
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jNFyOnL11Ub_hDLTi6yxZquXOOw(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 1

    .line 647
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$riCuehVJ3XIhWdU_TuhRzEblprE(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;
    .locals 0

    .line 0
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 533
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 8

    .line 643
    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda6;-><init>()V

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v6, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda8;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 662
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 663
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 664
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    .line 665
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 666
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 667
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    .line 668
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 669
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 p1, 0x0

    .line 670
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    .line 671
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoScalingMode:I

    .line 672
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 673
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 674
    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    const-wide/16 p3, 0x1388

    .line 675
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    .line 676
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 677
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 678
    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/16 p3, 0x1f4

    .line 679
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    .line 680
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 681
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 2

    .line 1133
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1134
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    .line 1135
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V

    return-object v0
.end method

.method public buildSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 2

    .line 1139
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1140
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    .line 1141
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    return-object v0
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 754
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 755
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/LoadControl;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 786
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 710
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/RenderersFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 739
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 740
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method
