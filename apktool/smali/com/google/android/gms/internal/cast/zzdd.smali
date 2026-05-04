.class public final Lcom/google/android/gms/internal/cast/zzdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzda;


# static fields
.field private static final zzb:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final zza:Ljava/util/Set;

.field private final zzc:Lcom/google/android/gms/internal/cast/zzrx;

.field private final zzd:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final zze:Landroid/net/ConnectivityManager;

.field private final zzf:Ljava/util/Map;

.field private final zzg:Ljava/util/List;

.field private zzh:Z

.field private final zzi:Landroid/content/Context;

.field private final zzj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ConnectivityMonitor"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdd;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/zzrx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzj:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zza:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzc:Lcom/google/android/gms/internal/cast/zzrx;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzi:Landroid/content/Context;

    const-string p2, "connectivity"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zze:Landroid/net/ConnectivityManager;

    new-instance p1, Ljava/util/HashMap;

    .line 4
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzdc;-><init>(Lcom/google/android/gms/internal/cast/zzdd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzd:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/cast/zzdd;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdd;->zzf(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/cast/zzdd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/cast/zzdd;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const-string v2, "all networks are unavailable."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdd;->zzg()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/cast/zzdd;Landroid/net/Network;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/cast/zzdd;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const-string/jumbo v2, "the network is lost"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdd;->zzg()V

    return-void

    .line 2
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    .line 6
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final zzf(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/cast/zzdd;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const-string v2, "a new network is available"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzf:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdd;->zzg()V

    return-void

    .line 2
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    .line 8
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzg()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzc:Lcom/google/android/gms/internal/cast/zzrx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zza:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zza:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzc:Lcom/google/android/gms/internal/cast/zzrx;

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzc:Lcom/google/android/gms/internal/cast/zzrx;

    new-instance v3, Lcom/google/android/gms/internal/cast/zzdb;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/cast/zzdb;-><init>(Lcom/google/android/gms/internal/cast/zzdd;Lcom/google/android/gms/internal/cast/zzcz;)V

    .line 4
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdd;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start monitoring connectivity changes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzh:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zze:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzi:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zze:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdd;->zze:Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzdd;->zzf(Landroid/net/Network;Landroid/net/LinkProperties;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zze:Landroid/net/ConnectivityManager;

    .line 6
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzd:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 6
    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzh:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdd;->zzg:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
