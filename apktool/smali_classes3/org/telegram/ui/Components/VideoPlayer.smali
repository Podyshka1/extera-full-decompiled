.class public Lorg/telegram/ui/Components/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/video/VideoListener;
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;,
        Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;,
        Lorg/telegram/ui/Components/VideoPlayer$Quality;,
        Lorg/telegram/ui/Components/VideoPlayer$VideoUri;,
        Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;,
        Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;
    }
.end annotation


# static fields
.field public static final activePlayers:Ljava/util/HashSet;

.field private static cachedSupportedCodec:Ljava/util/HashMap;

.field private static lastPlayerId:I

.field static playerCounter:I


# instance fields
.field public allowMultipleInstances:Z

.field audioDisabled:Z

.field private audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private audioPlayerReady:Z

.field private audioType:Ljava/lang/String;

.field audioUpdateHandler:Landroid/os/Handler;

.field private audioUri:Landroid/net/Uri;

.field private audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

.field private autoIsOriginal:Z

.field private autoplay:Z

.field private currentStreamIsHls:Z

.field private currentUri:Landroid/net/Uri;

.field dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

.field private eglParentContext:Landroid/opengl/EGLContext;

.field private fallbackDuration:J

.field private fallbackPosition:J

.field private handleAudioFocus:Z

.field hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

.field private isStory:Z

.field private isStreaming:Z

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private looper:Landroid/os/Looper;

.field private looping:Z

.field private loopingMediaSource:Z

.field private manifestUris:Ljava/util/ArrayList;

.field private mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

.field private mixedAudio:Z

.field private mixedPlayWhenReady:Z

.field private onQualityChangeListener:Ljava/lang/Runnable;

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public final playerId:I

.field progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

.field private repeatCount:I

.field private final seekFinishedListeners:Ljava/util/ArrayList;

.field private selectedQualityIndex:I

.field private shouldPauseOther:Z

.field ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

.field private surface:Landroid/view/Surface;

.field private surfaceView:Landroid/view/SurfaceView;

.field private textureView:Landroid/view/TextureView;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

.field private triedReinit:Z

.field private videoPlayerReady:Z

.field private videoQualities:Ljava/util/ArrayList;

.field private videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

.field private videoType:Ljava/lang/String;

.field private videoUri:Landroid/net/Uri;

.field private workerQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public static synthetic $r8$lambda$EF1DTBN0iDixYSV1VaHllpaGmY8(Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->lambda$onPlayerError$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xOSn0dtaTobJhkh91WK9SEZUlE8(Lorg/telegram/ui/Components/VideoPlayer;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->lambda$onPlayerError$1(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaudioPlayerReady(Lorg/telegram/ui/Components/VideoPlayer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioVisualizerDelegate(Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmixedPlayWhenReady(Lorg/telegram/ui/Components/VideoPlayer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaudioPlayerReady(Lorg/telegram/ui/Components/VideoPlayer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPlayersReady(Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->checkPlayersReady()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 195
    sput v0, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget v0, Lorg/telegram/ui/Components/VideoPlayer;->lastPlayerId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Components/VideoPlayer;->lastPlayerId:I

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    const/4 v1, -0x1

    .line 481
    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 704
    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    .line 705
    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    .line 1361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    .line 1624
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->handleAudioFocus:Z

    .line 197
    iput-boolean p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioDisabled:Z

    .line 198
    new-instance v0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 203
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    .line 204
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->shouldPauseOther:Z

    if-eqz p1, :cond_1

    .line 206
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 208
    :cond_1
    sget p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    add-int/2addr p1, v1

    sput p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    return-void
.end method

.method private checkPlayersReady()V
    .locals 1

    .line 1659
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    if-eqz v0, :cond_0

    .line 1660
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_0
    return-void
.end method

.method private ensurePlayerCreated()V
    .locals 14

    .line 233
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStory:Z

    const/high16 v1, 0x10000

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 234
    new-instance v3, Lcom/google/android/exoplayer2/DefaultLoadControl;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-direct {v4, v2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v5, 0xc350

    const v6, 0xc350

    const/16 v7, 0x3e8

    const/16 v8, 0x3e8

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V

    goto :goto_0

    .line 245
    :cond_0
    new-instance v4, Lcom/google/android/exoplayer2/DefaultLoadControl;

    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-direct {v5, v2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v6, 0xc350

    const v7, 0xc350

    const/16 v8, 0x64

    const/16 v9, 0x1388

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V

    move-object v3, v4

    .line 256
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_8

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;-><init>(Lorg/telegram/ui/Components/VideoPlayer;Landroid/content/Context;)V

    goto :goto_1

    .line 261
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    :goto_1
    const/4 v1, 0x2

    .line 263
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 264
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .line 265
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 267
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->looper:Landroid/os/Looper;

    if-eqz v2, :cond_2

    .line 268
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 270
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->eglParentContext:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_3

    .line 271
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->eglContext:Landroid/opengl/EGLContext;

    .line 273
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 275
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    .line 279
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_2

    .line 280
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 281
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    goto :goto_2

    .line 282
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_6

    .line 283
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 285
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 288
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_9

    .line 290
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 293
    new-instance v1, Lorg/telegram/ui/Components/VideoPlayer$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/VideoPlayer$1;-><init>(Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_9
    return-void
.end method

.method public static getCachedQuality(Ljava/util/ArrayList;)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 940
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 941
    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_2
    if-ge v6, v5, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 942
    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v7

    :cond_3
    return-object v0
.end method

.method public static getLooping(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 473
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "media_saved_pos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "loop"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 476
    :cond_1
    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 6

    const/4 v5, 0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 812
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/VideoPlayer;->getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZZ)Ljava/util/ArrayList;
    .locals 9

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 817
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->videoIgnoreAltDocuments:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 820
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 823
    :cond_1
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 824
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "application/x-mpegurl"

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    .line 825
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 826
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 827
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v6, "mtproto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 829
    :cond_2
    :try_start_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 830
    invoke-virtual {p2, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 831
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 834
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 839
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 840
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 842
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 843
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 844
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "application/x-tgstoryboard"

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 845
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "application/x-tgstoryboardmap"

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 846
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    .line 850
    :cond_5
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p2, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p0, v6, v7, p3, p5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->of(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;IZ)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object v7

    .line 851
    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    if-lez v8, :cond_8

    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-gtz v8, :cond_6

    goto :goto_5

    :cond_6
    if-ne v6, p1, :cond_7

    .line 855
    iput-boolean v5, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_4

    .line 857
    :cond_7
    :goto_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 859
    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 863
    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_f

    .line 865
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 866
    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    if-eqz p2, :cond_d

    .line 867
    const-string p3, "av01"

    const-string p5, "av1"

    const-string/jumbo v0, "vp9"

    if-eqz p4, :cond_b

    .line 868
    const-string v3, "avc"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "h264"

    iget-object v3, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string/jumbo p2, "vp8"

    iget-object v0, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_a
    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_7

    .line 872
    :cond_b
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "hevc"

    iget-object p3, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "h265"

    iget-object p3, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_7

    .line 877
    :cond_d
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 880
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 882
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 884
    :cond_10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 886
    :goto_8
    invoke-static {p1}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->group(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getQualities(ILorg/telegram/tgnet/TLRPC$MessageMedia;Z)Ljava/util/ArrayList;
    .locals 6

    .line 890
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-nez v0, :cond_0

    .line 891
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 892
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/VideoPlayer;->getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getQualityForPlayer(Ljava/util/ArrayList;)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 14

    .line 948
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 949
    iget-object v3, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_1
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 950
    iget-boolean v7, v6, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v6

    .line 957
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v1

    :cond_3
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 958
    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_4
    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 959
    iget-boolean v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-nez v8, :cond_4

    iget-object v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v2, :cond_5

    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v9, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v10, v8, v9

    iget v11, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v12, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v13, v11, v12

    if-gt v10, v13, :cond_5

    mul-int/2addr v8, v9

    mul-int/2addr v11, v12

    if-ne v8, v11, :cond_4

    iget-wide v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v10, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    :cond_5
    move-object v2, v7

    goto :goto_0

    :cond_6
    if-nez v2, :cond_a

    .line 966
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :cond_7
    if-ge v3, v0, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 967
    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_8
    :goto_1
    if-ge v6, v5, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    if-eqz v2, :cond_9

    .line 968
    iget v8, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v9, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int/2addr v8, v9

    iget v9, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v10, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int/2addr v9, v10

    if-gt v8, v9, :cond_9

    iget-wide v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v10, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8

    :cond_9
    move-object v2, v7

    goto :goto_1

    :cond_a
    return-object v2
.end method

.method public static getQualityForThumb(Ljava/util/ArrayList;)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 12

    .line 910
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 911
    iget-object v3, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_1
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 912
    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v6

    .line 919
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v1

    :cond_3
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 920
    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_4
    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 921
    iget-boolean v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-nez v8, :cond_4

    if-eqz v2, :cond_5

    iget v8, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v9, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int/2addr v8, v9

    iget v9, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v10, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int/2addr v9, v10

    if-gt v8, v9, :cond_5

    iget-wide v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v10, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    :cond_5
    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    const/16 v9, 0x384

    if-gt v8, v9, :cond_4

    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-gt v8, v9, :cond_4

    move-object v2, v7

    goto :goto_0

    :cond_6
    if-nez v2, :cond_a

    .line 927
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :cond_7
    if-ge v3, v0, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 928
    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_8
    :goto_1
    if-ge v6, v5, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    if-eqz v2, :cond_9

    .line 929
    iget v8, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v9, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int/2addr v8, v9

    iget v9, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v10, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int/2addr v9, v10

    if-gt v8, v9, :cond_9

    iget-wide v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v10, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8

    :cond_9
    move-object v2, v7

    goto :goto_1

    :cond_a
    return-object v2
.end method

.method private getQualityTrackSelection(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    .locals 11

    .line 664
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->manifestUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 665
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 666
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 667
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    move v5, v2

    .line 668
    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_3

    .line 669
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    move v7, v2

    .line 670
    :goto_2
    iget v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_2

    .line 671
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 675
    :try_start_1
    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const/4 v9, -0x1

    :goto_3
    if-ltz v9, :cond_0

    if-ne v0, v9, :cond_0

    .line 681
    :try_start_2
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    invoke-direct {p1, v6, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_4

    .line 684
    :cond_0
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->width:I

    iget v10, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    if-ne v9, v10, :cond_1

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->height:I

    iget v9, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-ne v8, v9, :cond_1

    .line 685
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    invoke-direct {p1, v6, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 691
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getSavedQuality(Ljava/util/ArrayList;JI)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 5

    .line 438
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "q2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return-object v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    :cond_1
    if-ge v2, p3, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v4, :cond_2

    const-string v4, "s"

    goto :goto_0

    :cond_2
    move-object v4, p2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static getSavedQuality(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 4

    .line 426
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->preferOriginalQuality:Z

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 428
    iget-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 434
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;->getSavedQuality(Ljava/util/ArrayList;JI)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPlayerError$0()V
    .locals 4

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    .line 1720
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 1722
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V

    goto :goto_0

    .line 1724
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    if-eqz v0, :cond_1

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 1727
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1729
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onPlayerError$1(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 4

    .line 1692
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1693
    instance-of v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1694
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "av1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "av01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1695
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1696
    const-string p1, "av1 codec failed, we think this codec is not supported"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1697
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "unsupport_video/av01"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1698
    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 1699
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1701
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->filterByCodec(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V

    return-void

    .line 1708
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v1, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->triedReinit:Z

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v3, :cond_4

    :cond_3
    instance-of v0, v0, Lcom/google/android/exoplayer2/video/SurfaceNotValidException;

    if-eqz v0, :cond_9

    .line 1709
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->triedReinit:Z

    .line 1710
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_a

    .line 1711
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 1713
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1714
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1715
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1717
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->workerQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p1, :cond_6

    .line 1718
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1733
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 1735
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V

    goto :goto_0

    .line 1737
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    if-eqz p1, :cond_8

    .line 1738
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 1740
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1742
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    return-void

    .line 1745
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    if-eqz v0, :cond_a

    .line 1746
    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V

    :cond_a
    return-void
.end method

.method private maybeReportPlayerState()V
    .locals 3

    .line 1782
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1785
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    .line 1786
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    .line 1787
    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    if-ne v2, v0, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1788
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onStateChanged(ZI)V

    .line 1789
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    .line 1790
    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    return-void
.end method

.method private mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    .line 350
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 351
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "dash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "hls"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "ss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 368
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    if-nez p2, :cond_3

    .line 369
    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    .line 371
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    .line 353
    :pswitch_0
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    if-nez p2, :cond_4

    .line 354
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 356
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 358
    :pswitch_1
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    if-nez p2, :cond_5

    .line 359
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 361
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    .line 363
    :pswitch_2
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    if-nez p2, :cond_6

    .line 364
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 366
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xe60 -> :sswitch_2
        0x193ef -> :sswitch_1
        0x2eef92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveLooping(ZLorg/telegram/messenger/MessageObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 466
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "loop"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveQuality(Lorg/telegram/ui/Components/VideoPlayer$Quality;JI)V
    .locals 4

    .line 454
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    const-string v1, "q2"

    const-string v2, "_"

    if-nez p0, :cond_0

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 459
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz p0, :cond_1

    const-string p0, "s"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 461
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveQuality(Lorg/telegram/ui/Components/VideoPlayer$Quality;Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;->saveQuality(Lorg/telegram/ui/Components/VideoPlayer$Quality;JI)V

    return-void
.end method

.method private setSelectedQuality(ZLorg/telegram/ui/Components/VideoPlayer$Quality;)V
    .locals 9

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 720
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    if-nez p1, :cond_1

    .line 723
    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    .line 724
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    .line 729
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 730
    const-string v3, "hls"

    const-string v4, "other"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_7

    .line 731
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->makeManifest(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object p2

    .line 732
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getOriginalQuality()Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 733
    iget-object v8, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_2

    iget-object v8, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 734
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    .line 735
    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    .line 737
    iput-object v7, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 738
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-interface {p2, v3, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto/16 :goto_4

    :cond_2
    if-eqz p2, :cond_4

    .line 741
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    .line 742
    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverrides()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 743
    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    if-nez v4, :cond_3

    .line 744
    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    .line 745
    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p2

    invoke-interface {v4, p2, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto/16 :goto_4

    :cond_3
    move v5, v6

    goto/16 :goto_4

    .line 749
    :cond_4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p2

    if-nez p2, :cond_5

    .line 750
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p2

    :cond_5
    if-eqz p2, :cond_11

    .line 751
    iget-object v3, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_5

    .line 752
    :cond_6
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    .line 753
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 754
    iget-boolean v3, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    .line 755
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, p2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p2

    invoke-interface {v3, p2, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto/16 :goto_4

    .line 759
    :cond_7
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    .line 760
    iget-object v7, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_5

    .line 762
    :cond_8
    iget-object v7, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v5, :cond_9

    .line 763
    iget-object v7, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/VideoPlayer;->makeManifest(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    :cond_9
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_e

    .line 765
    iget-object v8, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_e

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_3

    .line 770
    :cond_a
    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    if-nez v4, :cond_b

    .line 771
    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    .line 772
    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {p0, v7, v3}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-interface {v4, v3, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto :goto_1

    :cond_b
    move v5, v6

    .line 775
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverrides()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    .line 776
    iget-object p2, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v6, v4, :cond_d

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 777
    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/VideoPlayer;->getQualityTrackSelection(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    move-result-object v7

    if-nez v7, :cond_c

    goto :goto_2

    .line 779
    :cond_c
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    goto :goto_2

    .line 781
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    goto :goto_4

    .line 766
    :cond_e
    :goto_3
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    .line 767
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, p2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p2

    invoke-interface {v3, p2, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    :goto_4
    if-eqz v5, :cond_11

    .line 786
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->prepare()V

    if-nez p1, :cond_f

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    if-eqz v0, :cond_f

    .line 790
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 793
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->onQualityChangeListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_10

    .line 794
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 796
    :cond_10
    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    return-void
.end method

.method public static supportsHardwareDecoder(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 994
    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/Components/VideoPlayer;->toMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 996
    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 997
    :cond_1
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 998
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 999
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupport_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 1002
    :cond_3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_8

    .line 1004
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 1005
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 1006
    :cond_4
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 1007
    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    .line 1008
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_7

    .line 1009
    aget-object v5, v3, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1010
    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1015
    :cond_8
    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1018
    :goto_4
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static toMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 979
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "h265"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "h264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "av01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "vp9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "vp8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "av1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 985
    :pswitch_0
    const-string/jumbo p0, "video/hevc"

    return-object p0

    .line 983
    :pswitch_1
    const-string/jumbo p0, "video/x-vnd.on2.vp9"

    return-object p0

    .line 982
    :pswitch_2
    const-string/jumbo p0, "video/x-vnd.on2.vp8"

    return-object p0

    .line 981
    :pswitch_3
    const-string/jumbo p0, "video/avc"

    return-object p0

    .line 986
    :pswitch_4
    const-string/jumbo p0, "video/av01"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17a9c -> :sswitch_7
        0x17ace -> :sswitch_6
        0x1c8be -> :sswitch_5
        0x1c8bf -> :sswitch_4
        0x2dd8f6 -> :sswitch_3
        0x300908 -> :sswitch_2
        0x300909 -> :sswitch_1
        0x30d06a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createdWithAudioTrack()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 213
    sget p2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 214
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer;

    if-eq p1, p0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStreaming:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentChromecastMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1998
    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    const-string/jumbo v4, "video/mp4"

    const-string v5, "/mtproto_"

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 1999
    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    return-object v6

    .line 2003
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2004
    iget-object v5, v0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    const-string v6, "mime"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2005
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 2008
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->fromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v3

    .line 2009
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setTitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v1

    .line 2010
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setSubtitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v1

    .line 2011
    invoke-virtual {v1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->build()Lorg/telegram/messenger/chromecast/ChromecastMedia;

    move-result-object v1

    .line 2013
    invoke-static {v1}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->of(Lorg/telegram/messenger/chromecast/ChromecastMedia;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    move-result-object v1

    return-object v1

    .line 2016
    :cond_2
    new-instance v3, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;

    invoke-direct {v3}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;-><init>()V

    .line 2017
    iget-object v7, v0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :cond_3
    if-ge v10, v8, :cond_6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 2018
    iget-object v11, v11, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v9

    :goto_1
    if-ge v13, v12, :cond_3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 2019
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v7

    iget-wide v6, v14, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2021
    iget-object v7, v14, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_4

    .line 2022
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 2024
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v7, v4

    .line 2027
    :cond_5
    iget-object v15, v14, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-static {v15, v6, v7}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->fromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v6

    .line 2028
    invoke-virtual {v6, v1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setTitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v6

    .line 2029
    invoke-virtual {v6, v2}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setSubtitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v6

    iget v7, v14, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v14, v14, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    .line 2030
    invoke-virtual {v6, v7, v14}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setSize(II)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v6

    .line 2031
    invoke-virtual {v6}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->build()Lorg/telegram/messenger/chromecast/ChromecastMedia;

    move-result-object v6

    .line 2033
    invoke-virtual {v3, v6}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;->add(Lorg/telegram/messenger/chromecast/ChromecastMedia;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;

    move-object/from16 v7, p1

    const/4 v6, 0x0

    goto :goto_1

    .line 2037
    :cond_6
    invoke-virtual {v3}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;->build()Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 14

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 582
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 583
    iget-wide v2, v0, Lcom/google/android/exoplayer2/Format;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 586
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_2
    if-ge v5, v3, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 587
    iget-object v6, v6, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_3
    if-ge v8, v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 588
    iget-wide v10, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/Format;->documentId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 589
    iget-object v0, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 1509
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 1512
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentQuality()Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 2

    .line 801
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentQualityIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 802
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentQualityIndex()I
    .locals 10

    .line 597
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 599
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    .line 600
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 601
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v3

    .line 602
    iget-boolean v3, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 608
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_2

    return v1

    .line 609
    :cond_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    move v3, v2

    .line 611
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 612
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v4

    .line 613
    iget-boolean v5, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-nez v5, :cond_4

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v6, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    if-ne v5, v6, :cond_4

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v6, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    if-ne v5, v6, :cond_4

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-wide v6, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v4, v6

    if-ne v5, v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 655
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1

    .line 659
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    return v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1502
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 1505
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHDRStaticInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;
    .locals 6

    .line 1951
    const-string v0, "color-range"

    const-string v1, "color-standard"

    const-string v2, "color-transfer"

    if-nez p1, :cond_0

    .line 1952
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    .line 1955
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->getRenderer(I)Lcom/google/android/exoplayer2/Renderer;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    iget-object v3, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 1956
    const-string v4, "hdr-static-info"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1957
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1958
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x11

    .line 1959
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    int-to-float v5, v5

    iput v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->maxlum:F

    const/16 v5, 0x13

    .line 1960
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    int-to-float v4, v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    iput v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->minlum:F

    .line 1963
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_4

    .line 1964
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1965
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    .line 1967
    :cond_2
    invoke-virtual {v3, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1968
    invoke-virtual {v3, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    .line 1970
    :cond_3
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1971
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :catch_0
    const/4 v0, 0x0

    .line 1975
    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->minlum:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->maxlum:F

    return-object p1
.end method

.method public getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 500
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 501
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 502
    iget-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 503
    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v4, v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    mul-int/2addr v3, v4

    iget v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v5, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getLowestFile()Ljava/io/File;
    .locals 7

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 559
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 560
    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 561
    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    if-nez v6, :cond_1

    .line 562
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->updateCached(Z)V

    .line 563
    :cond_1
    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 564
    new-instance v0, Ljava/io/File;

    iget-object v1, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 568
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 569
    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 570
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalQuality()Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 3

    const/4 v0, 0x0

    .line 491
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 492
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v1

    .line 493
    iget-boolean v2, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 2

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 1474
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1476
    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getQualitiesCount()I
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 537
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p1, :cond_2

    .line 486
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    return-object p1

    .line 486
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1795
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->repeatCount:I

    return v0
.end method

.method public getSelectedQuality()I
    .locals 1

    .line 577
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    return v0
.end method

.method public isBuffering()Z
    .locals 2

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHDR()Z
    .locals 3

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1937
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1938
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1941
    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_4
    :goto_1
    return v1
.end method

.method public isLooping()Z
    .locals 1

    .line 1655
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    return v0
.end method

.method public isMuted()Z
    .locals 2

    .line 1516
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayerPrepared()Z
    .locals 1

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1616
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public makeManifest(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 14

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    const-string v1, "#EXTM3U\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string v1, "#EXT-X-VERSION:6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v1, "#EXT-X-INDEPENDENT-SEGMENTS\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->manifestUris:Ljava/util/ArrayList;

    .line 1030
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    if-ge v5, v2, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 1032
    iget-object v6, v6, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :cond_1
    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 1033
    iget-object v10, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    iget-wide v11, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    iget-object v13, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v12, v13}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;->putDocumentUri(JLandroid/net/Uri;)V

    .line 1034
    iget-object v10, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    iget-wide v11, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocId:J

    iget-object v13, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v12, v13}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;->putDocumentUri(JLandroid/net/Uri;)V

    .line 1035
    iget-object v10, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 1036
    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->manifestUris:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    const-string v10, "#EXT-X-STREAM-INF:BANDWIDTH="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",RESOLUTION="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "x"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1039
    iget-object v10, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/ui/Components/VideoPlayer;->toMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1040
    const-string v11, "\""

    if-eqz v10, :cond_2

    .line 1041
    const-string v12, ",MIME=\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_2
    invoke-virtual {v9}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isManifestCached()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1044
    const-string v10, ",CACHED=\"true\""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    :cond_3
    const-string v10, ",DOCID=\""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string v10, ",ACCOUNT=\""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->currentAccount:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v9}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isManifestCached()Z

    move-result v10

    const-string v11, "\n\n"

    if-eqz v10, :cond_4

    .line 1050
    iget-object v9, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1052
    :cond_4
    const-string v10, "mtproto:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v9, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocId:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 1060
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1061
    const-string p1, ""

    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:application/x-mpegurl;base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public synthetic onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1

    .line 1691
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/VideoPlayer;Lcom/google/android/exoplayer2/PlaybackException;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 5

    .line 1666
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->maybeReportPlayerState()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    if-ne p2, v2, :cond_0

    .line 1667
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->isMuted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->shouldPauseOther:Z

    if-eqz p1, :cond_0

    .line 1668
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1670
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_1

    .line 1671
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    .line 1672
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->checkPlayersReady()V

    :cond_1
    if-eq p2, v2, :cond_2

    .line 1675
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1676
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    if-eqz p1, :cond_2

    .line 1677
    invoke-interface {p1, v0, v1, p2}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->onVisualizerUpdate(ZZ[F)V

    :cond_2
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 1685
    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->repeatCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->repeatCount:I

    :cond_0
    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onRenderedFirstFrame()V

    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1376
    iput-wide p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    .line 1377
    iput-wide p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    .line 1378
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    if-eqz p2, :cond_0

    .line 1379
    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    :cond_0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 3

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1366
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 1368
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Runnable;

    .line 1369
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1371
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1357
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    :cond_0
    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    return p1
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 1991
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    .line 1992
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->onQualityChangeListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1993
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 5

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    iget v1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onVideoSizeChanged(IIIF)V

    .line 1758
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method public pause()V
    .locals 4

    const/4 v0, 0x0

    .line 1450
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    .line 1451
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_0

    .line 1452
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 1454
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_1

    .line 1455
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 1458
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    if-eqz v1, :cond_2

    .line 1459
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1460
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3, v2}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->onVisualizerUpdate(ZZ[F)V

    :cond_2
    return-void
.end method

.method public play()V
    .locals 2

    const/4 v0, 0x1

    .line 1429
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    .line 1430
    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v1, :cond_2

    .line 1431
    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-nez v1, :cond_2

    .line 1432
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1433
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 1435
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_4

    .line 1436
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void

    .line 1441
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_3

    .line 1442
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 1444
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_4

    .line 1445
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_4
    return-void
.end method

.method public preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 376
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method public preparePlayer(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3

    const/4 p3, 0x0

    .line 380
    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    .line 381
    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 382
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    .line 383
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    .line 384
    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    .line 385
    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    .line 387
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    .line 388
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    .line 390
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    .line 391
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    .line 392
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 394
    const-string v2, "file"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStreaming:Z

    .line 395
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePlayerCreated()V

    .line 396
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    .line 397
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    return-void
.end method

.method public preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V
    .locals 2

    .line 402
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    .line 403
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    .line 405
    const-string v0, "hls"

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    .line 406
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    .line 407
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    .line 409
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    .line 411
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    .line 412
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    .line 413
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentUri:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 414
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStreaming:Z

    .line 415
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePlayerCreated()V

    .line 417
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    .line 419
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setSelectedQuality(ZLorg/telegram/ui/Components/VideoPlayer$Quality;)V

    .line 420
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    if-eqz p1, :cond_2

    .line 421
    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    :cond_2
    return-void
.end method

.method public preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    .line 310
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 311
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    .line 312
    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    .line 313
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    .line 314
    iput-object p4, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    const/4 v2, 0x0

    .line 316
    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    .line 318
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    .line 319
    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    .line 320
    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    .line 321
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePlayerCreated()V

    move v3, v2

    move-object v2, v0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    if-nez v3, :cond_0

    move-object v4, p1

    move-object v5, p2

    goto :goto_1

    :cond_0
    move-object v4, p3

    move-object v5, p4

    .line 334
    :goto_1
    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    .line 335
    new-instance v5, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    if-nez v3, :cond_1

    move-object v0, v5

    goto :goto_2

    :cond_1
    move-object v2, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 346
    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releasePlayer(Z)V
    .locals 1

    .line 1339
    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1340
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1341
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 1342
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 1344
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_1

    .line 1345
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 1346
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 1348
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->shouldPauseOther:Z

    if-eqz p1, :cond_2

    .line 1349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1351
    :cond_2
    sget p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1555
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 1560
    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    :goto_0
    invoke-interface {v0, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 1561
    iget-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public seekTo(JZLjava/lang/Runnable;)V
    .locals 1

    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p3, :cond_1

    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    :goto_0
    invoke-interface {p4, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 1571
    iget-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_2
    return-void
.end method

.method public setAudioVisualizerDelegate(Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;)V
    .locals 0

    .line 1600
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V
    .locals 0

    .line 1596
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    return-void
.end method

.method public setIsStory()V
    .locals 1

    const/4 v0, 0x1

    .line 1986
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStory:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1646
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    if-eq v0, p1, :cond_1

    .line 1647
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    .line 1648
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1649
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    :cond_1
    return-void
.end method

.method public setMute(Z)V
    .locals 4

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1521
    :goto_0
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 1523
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v1, v2

    .line 1524
    :cond_2
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :cond_3
    return-void
.end method

.method public setOnQualityChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->onQualityChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 1480
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    if-eqz p1, :cond_2

    .line 1481
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v0, :cond_2

    .line 1482
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-nez v0, :cond_2

    .line 1483
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1484
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 1486
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_4

    .line 1487
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void

    .line 1492
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    .line 1493
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3

    .line 1494
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 1496
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_4

    .line 1497
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_4
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 4

    .line 1466
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 1467
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const v2, 0x3f7ae148    # 0.98f

    :cond_0
    invoke-direct {v1, p1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setSelectedQuality(I)V
    .locals 1

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 709
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    if-eq p1, v0, :cond_2

    .line 710
    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 713
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSelectedQuality(ZLorg/telegram/ui/Components/VideoPlayer$Quality;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setStreamType(I)V
    .locals 5

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1634
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    if-nez p1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1635
    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v3

    .line 1636
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->handleAudioFocus:Z

    .line 1634
    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 1638
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3

    .line 1639
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1640
    :goto_1
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object p1

    .line 1641
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p1

    .line 1639
    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    :cond_3
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1409
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1413
    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1398
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1402
    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1387
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1391
    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 1540
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 1542
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 1543
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 1

    .line 1981
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->workerQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1982
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method
