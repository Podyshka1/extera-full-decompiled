.class public Lorg/telegram/messenger/video/VideoPlayerHolderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private allowMultipleInstances:Z

.field audioDisabled:Z

.field private final betterSeek:Ljava/lang/Runnable;

.field contentUri:Landroid/net/Uri;

.field private currentAccount:I

.field public volatile currentPosition:J

.field public currentSeek:F

.field public volatile currentSeekThread:F

.field final dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field private volatile duration:J

.field public firstFrameRendered:Z

.field private volatile firstSeek:Z

.field initRunnable:Ljava/lang/Runnable;

.field private lastBetterSeek:J

.field private volatile lastSeek:J

.field lastState:I

.field private onErrorListener:Ljava/lang/Runnable;

.field private onReadyListener:Ljava/lang/Runnable;

.field private onSeekUpdate:Ljava/lang/Runnable;

.field public paused:Z

.field public pendingSeekTo:J

.field playerDuration:J

.field public playerStubBitmap:Landroid/graphics/Bitmap;

.field public playerStubPaint:Landroid/graphics/Paint;

.field public progress:F

.field progressRunnable:Ljava/lang/Runnable;

.field public volatile released:Z

.field private volatile seeking:Z

.field startTime:J

.field public stubAvailable:Z

.field private surface:Landroid/view/Surface;

.field private surfaceView:Landroid/view/SurfaceView;

.field private textureView:Landroid/view/TextureView;

.field private volatile triesCount:I

.field private final updateSeek:Ljava/lang/Runnable;

.field public uri:Landroid/net/Uri;

.field videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public static synthetic $r8$lambda$04rLJMRR1oYNrdEGRaS2on00Gyo(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$pause$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$8ptHkvIZhZyVyGYWr2Pf4rSazOY(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$release$3(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HXNNe9SfQ1MB-ht8QAlDwcHzvpE(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZFLandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$preparePlayer$0(ZFLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L_vl4pXxc7OzdjBUGaDMxuS79vE(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$setAudioEnabled$8(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$MO-trhf3b83RSYEWHP4AnMMxNHM(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$setSpeed$5(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$VaN3ZKJVZjQ4mWlnV0tQ3a3RywA(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$loopBack$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZNT13QCmTCRjl4z9tPZPvUD8RUA(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$play$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$b1_IfZWw1Fw25jNUgk_2HtwvC4g(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$new$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$cEXZPR87QCyM_FRLYu1KyHpUlBs(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$setVolume$10(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$g4U19oIr8LBEPvhfXwltuTmML-I(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ho3fs7DjH22IODWLomzfVU6jgD4(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$new$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$kSw-PQniaV4GJeugBma6e8a8D2E(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZFLandroid/net/Uri;ZZJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$start$2(ZFLandroid/net/Uri;ZZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pwfYIKocn969_hdCvMYTrExrr2A(Lorg/telegram/messenger/video/VideoPlayerHolderBase;JZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$seekTo$12(JZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zjKIY9RjAHnsRlhYFc5IPN9Q6N4(Lorg/telegram/messenger/video/VideoPlayerHolderBase;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$seekTo$11(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zoGAPERcDI0S1Nz_tkwbrAOPIlU(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$play$7(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetonErrorListener(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onErrorListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonReadyListener(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onReadyListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurface(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Landroid/view/Surface;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurfaceView(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Landroid/view/SurfaceView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettriesCount(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->triesCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputonErrorListener(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onErrorListener:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonReadyListener(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onReadyListener:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtriesCount(Lorg/telegram/messenger/video/VideoPlayerHolderBase;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->triesCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lorg/telegram/messenger/Utilities;->getOrCreatePlayerQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 80
    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x3

    .line 195
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->triesCount:I

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    const-wide/16 v0, -0x1

    .line 573
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    .line 574
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastBetterSeek:J

    const/4 v0, 0x0

    .line 575
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    .line 576
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeekThread:F

    .line 579
    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    .line 585
    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->updateSeek:Ljava/lang/Runnable;

    return-void
.end method

.method private ensurePlayerCreated(Z)V
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 201
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(ZZ)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 202
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->allowMultipleInstances:Z

    iput-boolean p1, v0, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    .line 203
    new-instance p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 277
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->setIsStory()V

    return-void
.end method

.method private synthetic lambda$loopBack$9()V
    .locals 3

    .line 498
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_0
    const/4 v0, 0x0

    .line 501
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    .line 502
    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    return-void
.end method

.method private synthetic lambda$new$13()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$14()V
    .locals 6

    .line 586
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 589
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeekThread:F

    iget-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->duration:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 590
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 591
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    .line 593
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-boolean v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x15e

    goto :goto_0

    :cond_2
    const/16 v4, 0x28

    :goto_0
    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    const/4 v2, 0x0

    .line 594
    iput-boolean v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    .line 595
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastBetterSeek:J

    .line 596
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 597
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 598
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$pause$4()V
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$play$6()V
    .locals 5

    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    .line 382
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 389
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 390
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 391
    iput-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    .line 393
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$play$7(F)V
    .locals 5

    .line 407
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    .line 408
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 415
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 416
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 417
    iput-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    .line 419
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 420
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$preparePlayer$0(ZFLandroid/net/Uri;)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->ensurePlayerCreated(Z)V

    .line 113
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "videoplayerholderbase.preparePlayer(): preparePlayer new player as preload uri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string p2, "other"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 116
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 117
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method private synthetic lambda$release$3(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 3

    .line 307
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 311
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 314
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 317
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 319
    :cond_2
    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 320
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$seekTo$11(J)V
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    .line 545
    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    return-void

    .line 548
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    return-void
.end method

.method private synthetic lambda$seekTo$12(JZLjava/lang/Runnable;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    .line 555
    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    return-void

    .line 558
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setAudioEnabled$8(ZZ)V
    .locals 6

    .line 433
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz p1, :cond_6

    .line 437
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->createdWithAudioTrack()Z

    move-result v1

    if-nez v1, :cond_6

    .line 439
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 440
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 441
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 p1, 0x0

    .line 442
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 443
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->ensurePlayerCreated(Z)V

    .line 444
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->uri:Landroid/net/Uri;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->contentUri:Landroid/net/Uri;

    .line 445
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoplayerholderbase.setAudioEnabled(): repreparePlayer as audio track is enabled back uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 446
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v5, "other"

    invoke-virtual {v4, p1, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    if-nez p2, :cond_4

    .line 449
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 450
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    .line 452
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 454
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 458
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v4, 0x32

    add-long/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 460
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 461
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    return-void

    .line 463
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 464
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    return-void

    .line 467
    :cond_6
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    return-void
.end method

.method private synthetic lambda$setSpeed$5(F)V
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setVolume$10(F)V
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$start$2(ZFLandroid/net/Uri;ZZJ)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    .line 131
    const-string p1, "videoplayerholderbase returned from start: released"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->ensurePlayerCreated(Z)V

    .line 136
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "videoplayerholderbase.start(): preparePlayer new player uri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string p2, "other"

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    if-nez p4, :cond_3

    .line 141
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 142
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    .line 144
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 148
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto/16 :goto_4

    :cond_3
    if-eqz p5, :cond_c

    .line 150
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_4

    .line 151
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 152
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_5

    .line 153
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_1

    .line 155
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 157
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto :goto_4

    .line 160
    :cond_6
    const-string p1, "videoplayerholderbase.start(): player already exist"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p4, :cond_9

    .line 162
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_7

    .line 163
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_2

    .line 164
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_8

    .line 165
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_2

    .line 167
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 169
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_4

    :cond_9
    if-eqz p5, :cond_c

    .line 171
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_a

    .line 172
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_3

    .line 173
    :cond_a
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_b

    .line 174
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_3

    .line 176
    :cond_b
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 178
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_c
    :goto_4
    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    if-lez p1, :cond_d

    .line 182
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, p6, p7}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 186
    :cond_d
    new-instance p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allowMultipleInstances(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->allowMultipleInstances:Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 519
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    return-wide v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 523
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerDuration:J

    return-wide v0
.end method

.method public getPlaybackProgress(J)F
    .locals 2

    .line 473
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 474
    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 478
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    long-to-float v0, v0

    long-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    .line 480
    :cond_1
    iget-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    long-to-float p1, p1

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerDuration:J

    long-to-float p2, v0

    div-float v0, p1, p2

    .line 485
    :goto_0
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    .line 486
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seeking:Z

    if-nez p1, :cond_2

    .line 487
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    .line 488
    iget-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    .line 491
    :cond_2
    :goto_1
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    return p1
.end method

.method public isBuffering()Z
    .locals 2

    .line 515
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 527
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loopBack()V
    .locals 2

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    const/4 v0, 0x1

    .line 496
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    .line 497
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public needRepeat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method protected onVideoSizeChanged(IIIF)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 330
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    .line 337
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->prepareStub()V

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public play()V
    .locals 2

    .line 373
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    .line 380
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public play(F)V
    .locals 2

    .line 399
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    .line 406
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public preparePlayer(Landroid/net/Uri;ZF)V
    .locals 2

    .line 101
    iput-boolean p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    .line 102
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    .line 103
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->contentUri:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    .line 105
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZFLandroid/net/Uri;)V

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareStub()V
    .locals 4

    .line 346
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->stubAvailable:Z

    .line 348
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/16 v1, 0x500

    .line 349
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x2d0

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    .line 350
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubPaint:Landroid/graphics/Paint;

    .line 352
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 353
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->stubAvailable:Z

    :cond_1
    return-void
.end method

.method public release(Ljava/lang/Runnable;)Z
    .locals 8

    .line 294
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_0

    .line 296
    invoke-static {v2}, Lorg/telegram/messenger/FileStreamLoadOperation;->getStreamPrioriy(Lorg/telegram/tgnet/TLRPC$Document;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 298
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileStreamLoadOperation;->setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 299
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->changePriority(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    .line 303
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 304
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 305
    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    .line 306
    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v2, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 322
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 323
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return v0
.end method

.method public seek(FJ)F
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    .line 615
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    return p1

    .line 617
    :cond_0
    iput-wide p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->duration:J

    .line 618
    iget p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    add-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    .line 619
    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeekThread:F

    .line 620
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->updateSeek:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 621
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->updateSeek:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 622
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    return p1
.end method

.method public seekTo(J)V
    .locals 2

    .line 543
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekTo(JZLjava/lang/Runnable;)V
    .locals 7

    .line 553
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;JZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAudioEnabled(ZZ)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 427
    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 430
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    const/4 v0, 0x3

    .line 431
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->triesCount:I

    .line 432
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnErrorListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onErrorListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnReadyListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onReadyListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSeekUpdate(Ljava/lang/Runnable;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onSeekUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method public setSeeking(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 604
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seeking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 605
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    .line 607
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seeking:Z

    if-nez p1, :cond_1

    .line 609
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 362
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 507
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start(ZZLandroid/net/Uri;JZF)V
    .locals 10

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->startTime:J

    move/from16 v2, p6

    .line 123
    iput-boolean v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    .line 124
    iput-boolean p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    const/4 v0, 0x3

    .line 125
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->triesCount:I

    const-wide/16 v3, 0x0

    cmp-long v0, p4, v3

    if-lez v0, :cond_0

    .line 127
    iput-wide p4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    .line 129
    :cond_0
    iget-object v9, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda2;

    move-object v1, p0

    move v6, p1

    move v5, p2

    move-object v4, p3

    move-wide v7, p4

    move/from16 v3, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZFLandroid/net/Uri;ZZJ)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public with(Landroid/view/Surface;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    .line 71
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    .line 72
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public with(Landroid/view/SurfaceView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    .line 57
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public with(Landroid/view/TextureView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    .line 63
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    .line 64
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surface:Landroid/view/Surface;

    return-object p0
.end method
