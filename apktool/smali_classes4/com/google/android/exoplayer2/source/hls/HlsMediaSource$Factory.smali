.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowChunklessPreparation:Z

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

.field private elapsedRealTimeOffsetMs:J

.field private extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private metadataType:I

.field private playlistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

.field private playlistTrackerFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

.field private useSessionKeys:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;)V
    .locals 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 154
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 155
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 156
    sget-object p1, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 157
    sget-object p1, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 158
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 159
    new-instance p1, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    const/4 p1, 0x1

    .line 160
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->metadataType:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 161
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    .line 162
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 338
    iget-object v1, v2, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 340
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 341
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;

    invoke-direct {v4, v1, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    move-object v1, v4

    .line 346
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-object v4, v3

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    move-object v5, v4

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    move-object v6, v5

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 351
    invoke-interface {v7, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object v7

    move-object v8, v6

    move-object v6, v7

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 353
    invoke-interface {v9, v10, v7, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;->createTracker(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v1

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->metadataType:I

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    const/4 v14, 0x0

    move-object v15, v8

    move-object v8, v1

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource-IA;)V

    return-object v1
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    .line 305
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 306
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    .line 183
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 184
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method
