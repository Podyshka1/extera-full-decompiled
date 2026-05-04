.class public Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String;

.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Ljava/lang/Object;

.field private final zzc:Landroid/os/Handler;

.field private final zzd:Lcom/google/android/gms/cast/internal/zzaq;

.field private final zze:Lcom/google/android/gms/cast/framework/media/zzbf;

.field private final zzf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

.field private zzg:Lcom/google/android/gms/cast/zzr;

.field private zzh:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzi:Ljava/util/List;

.field private final zzj:Ljava/util/List;

.field private final zzk:Ljava/util/Map;

.field private final zzl:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "RemoteMediaClient"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    sget-object v0, Lcom/google/android/gms/cast/internal/zzaq;->zzb:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzaq;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzi:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzj:Ljava/util/List;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzk:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzl:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzed;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzc:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzbf;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzbf;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze:Lcom/google/android/gms/cast/framework/media/zzbf;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzaq;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzbn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cast/framework/media/zzbn;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/framework/media/zzbm;)V

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/internal/zzaq;->zzQ(Lcom/google/android/gms/cast/internal/zzan;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzh(Lcom/google/android/gms/cast/internal/zzar;)V

    new-instance p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;

    const/16 v0, 0x14

    .line 10
    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;II)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzaq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    return-object p0
.end method

.method public static zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzbh;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zzbh;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/cast/framework/media/zzbg;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/zzbg;-><init>(Lcom/google/android/gms/cast/framework/media/zzbh;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-object v0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzj:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzi:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result p0

    if-nez p0, :cond_0

    throw v1

    .line 6
    :cond_0
    throw v1

    .line 2
    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method private final zzy()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg:Lcom/google/android/gms/cast/zzr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/zzbk;->zzc()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2
    :catchall_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzbj;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/cast/framework/media/zzbj;-><init>(Lcom/google/android/gms/cast/framework/media/zzbk;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    throw p0
.end method


# virtual methods
.method public getApproximateStreamPosition()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzaq;->zzm()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdleReason()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 4
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzaq;->zzK()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzaq;->zzL()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzp;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    .line 4
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStreamDuration()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzaq;->zzo()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasMediaSession()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzv()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBuffering()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLiveStream()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingNextItem()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getIdleReason()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaLoadOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setMediaInfo(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadOptions;->getAutoplay()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setAutoplay(Ljava/lang/Boolean;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlayPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setCurrentTime(J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlaybackRate()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setPlaybackRate(D)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadOptions;->getActiveTrackIds()[J

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentials()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setCredentials(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentialsType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setCredentialsType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->build()Lcom/google/android/gms/cast/MediaLoadRequestData;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaLoadRequestData;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/google/android/gms/cast/MediaLoadRequestData;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 25
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzav;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzav;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/MediaLoadRequestData;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/cast/internal/zzaq;->zzO(Ljava/lang/String;)V

    return-void
.end method

.method public pause()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->pause(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public pause(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 2
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzax;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzax;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public play()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->play(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public play(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 2
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzaz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzaz;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public queueNext(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzan;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzan;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public queuePrev(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzam;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzam;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public queueSetRepeatMode(ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzao;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zzao;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;ILorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzj:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestStatus()Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzac;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public seek(J)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public seek(JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->setPosition(J)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->setResumeState(I)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 5
    invoke-virtual {v0, p4}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->build()Lcom/google/android/gms/cast/MediaSeekOptions;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public seek(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 7
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzba;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzba;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/MediaSeekOptions;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public setPlaybackRate(D)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setPlaybackRate(DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public setPlaybackRate(DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 2
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzbd;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/zzbd;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;DLorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public setStreamVolume(D)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setStreamVolume(DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public setStreamVolume(DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .line 2
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzbb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/zzbb;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;DLorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public togglePlayback()V
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->play()Lcom/google/android/gms/common/api/PendingResult;

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->pause()Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public unregisterCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzj:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final zza()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public final zzi()Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzas;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/media/zzas;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public final zzj([I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzat;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/zzat;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z[I)V

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzz(Lcom/google/android/gms/cast/framework/media/zzbk;)Lcom/google/android/gms/cast/framework/media/zzbk;

    return-object v0
.end method

.method public final zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    const-string p1, "Must be called from the main thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzy()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/cast/internal/zzao;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/cast/internal/zzao;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object p1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "create SessionState with cached mediaInfo and mediaStatus"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setMediaInfo(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setCurrentTime(J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setQueueData(Lcom/google/android/gms/cast/MediaQueueData;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setPlaybackRate(D)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->build()Lcom/google/android/gms/cast/MediaLoadRequestData;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/cast/SessionState$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/SessionState$Builder;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/SessionState$Builder;->setLoadRequestData(Lcom/google/android/gms/cast/MediaLoadRequestData;)Lcom/google/android/gms/cast/SessionState$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/SessionState$Builder;->build()Lcom/google/android/gms/cast/SessionState;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzao;

    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzao;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 16
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg:Lcom/google/android/gms/cast/zzr;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/cast/zzr;->zzi(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)Lcom/google/android/gms/tasks/Task;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->requestStatus()Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/cast/SessionState;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/SessionState;->getLoadRequestData()Lcom/google/android/gms/cast/MediaLoadRequestData;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    const-string v2, "resume SessionState"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaLoadRequestData;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/cast/zzr;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg:Lcom/google/android/gms/cast/zzr;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd:Lcom/google/android/gms/cast/internal/zzaq;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->zzf()V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/zzr;->zzg(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze:Lcom/google/android/gms/cast/framework/media/zzbf;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/zzbf;->zzc(Lcom/google/android/gms/cast/zzr;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzc:Landroid/os/Handler;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg:Lcom/google/android/gms/cast/zzr;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze:Lcom/google/android/gms/cast/framework/media/zzbf;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/zzbf;->zzc(Lcom/google/android/gms/cast/zzr;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzt()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaStatus;

    const-wide/16 v2, 0x40

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/MediaStatus;->isMediaCommandSupported(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    return v3
.end method

.method public final zzu()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaStatus;

    const-wide/16 v2, 0x80

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/MediaStatus;->isMediaCommandSupported(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    return v3
.end method

.method final zzv()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
