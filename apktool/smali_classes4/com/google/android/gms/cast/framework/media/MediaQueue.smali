.class public Lcom/google/android/gms/cast/framework/media/MediaQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:J

.field zzb:Ljava/util/List;

.field final zzc:Landroid/util/SparseIntArray;

.field zzd:Landroid/util/LruCache;

.field final zze:Ljava/util/List;

.field final zzf:Ljava/util/Deque;

.field private final zzg:Lcom/google/android/gms/cast/internal/Logger;

.field private final zzh:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzi:I

.field private final zzj:Landroid/os/Handler;

.field private final zzk:Ljava/util/TimerTask;

.field private zzl:Lcom/google/android/gms/common/api/PendingResult;

.field private zzm:Lcom/google/android/gms/common/api/PendingResult;

.field private final zzn:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    new-instance p2, Lcom/google/android/gms/cast/internal/Logger;

    const-string p3, "MediaQueue"

    .line 2
    invoke-direct {p2, p3}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzh:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 p2, 0x1

    const/16 p3, 0x14

    .line 3
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzi:I

    new-instance p2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    new-instance p2, Landroid/util/SparseIntArray;

    .line 5
    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayDeque;

    .line 7
    invoke-direct {p2, p3}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf:Ljava/util/Deque;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzed;

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzj:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/cast/framework/media/zzq;

    .line 9
    invoke-direct {p2, p0}, Lcom/google/android/gms/cast/framework/media/zzq;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzk:Ljava/util/TimerTask;

    new-instance p2, Lcom/google/android/gms/cast/framework/media/zzs;

    invoke-direct {p2, p0}, Lcom/google/android/gms/cast/framework/media/zzs;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 11
    invoke-direct {p0, p3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzt(I)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza:J

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;)Lcom/google/android/gms/cast/internal/Logger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzu()V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzv()V

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/cast/framework/media/MediaQueue;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 3
    throw p0

    .line 4
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 3
    throw p0

    .line 4
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/cast/framework/media/MediaQueue;Ljava/util/List;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 3
    throw p0

    .line 4
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzw([I)V

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzx()V

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl:Lcom/google/android/gms/common/api/PendingResult;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzh:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf:Ljava/util/Deque;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzf(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzj([I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl:Lcom/google/android/gms/common/api/PendingResult;

    .line 3
    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/zzp;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf:Ljava/util/Deque;

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    .line 4
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzh:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzb()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final zzq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzj:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzk:Ljava/util/TimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzm:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzm:Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method private final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl:Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method private final zzt(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzr;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;I)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd:Landroid/util/LruCache;

    return-void
.end method

.method private final zzu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3
    throw v1

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzv()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3
    throw v1

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzw([I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzx()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3
    throw v1

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzy()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzj:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzk:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1f4

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final zzl()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzx()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd:Landroid/util/LruCache;

    .line 4
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf:Ljava/util/Deque;

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzr()V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzs()V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzv()V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzu()V

    return-void
.end method

.method final zzm(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Error fetching queue item ids, statusCode=%s, statusMessage=%s"

    .line 4
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzm:Lcom/google/android/gms/common/api/PendingResult;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf:Ljava/util/Deque;

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzy()V

    :cond_1
    return-void
.end method

.method final zzn(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Error fetching queue items, statusCode=%s, statusMessage=%s"

    .line 4
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl:Lcom/google/android/gms/common/api/PendingResult;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf:Ljava/util/Deque;

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzy()V

    :cond_1
    return-void
.end method

.method public final zzo()V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzm:Lcom/google/android/gms/common/api/PendingResult;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzr()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzh:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzi()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzm:Lcom/google/android/gms/common/api/PendingResult;

    .line 5
    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/zzo;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
