.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

.field private livePresentationDelayMs:J

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 131
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 132
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 133
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    .line 134
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    .line 135
    new-instance p1, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
    .locals 12

    .line 270
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    .line 275
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 276
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    new-instance v3, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;-><init>(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 280
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 287
    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    const/4 v11, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource-IA;)V

    return-object v0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    .line 203
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 204
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    .line 141
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 142
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method
