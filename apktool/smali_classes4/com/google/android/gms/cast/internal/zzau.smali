.class public final Lcom/google/android/gms/cast/internal/zzau;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/lang/Object;


# instance fields
.field protected final zzb:Lcom/google/android/gms/cast/internal/Logger;

.field zzc:J

.field zzd:J

.field zze:Lcom/google/android/gms/cast/internal/zzas;

.field zzf:Ljava/lang/Runnable;

.field private final zzg:J

.field private final zzh:Ljava/lang/String;

.field private final zzi:Landroid/os/Handler;

.field private final zzj:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzg:J

    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzau;->zzh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzj:Lcom/google/android/gms/common/util/Clock;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzd:J

    new-instance p1, Lcom/google/android/gms/internal/cast/zzed;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzi:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    const-string p2, "RequestTracker"

    .line 3
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/cast/internal/zzau;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/cast/internal/zzau;->zzh(ILjava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final zzg(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p3, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->zze:Lcom/google/android/gms/cast/internal/zzas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->zzj:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->zze:Lcom/google/android/gms/cast/internal/zzas;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/cast/internal/zzas;

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzau;->zzh:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    iget-wide v7, p0, Lcom/google/android/gms/cast/internal/zzau;->zzd:J

    move v5, p1

    move-object v6, p2

    .line 4
    invoke-interface/range {v1 .. v10}, Lcom/google/android/gms/cast/internal/zzas;->zza(Ljava/lang/String;JILjava/lang/Object;JJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    :goto_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zze:Lcom/google/android/gms/cast/internal/zzas;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzau;->zzf:Ljava/lang/Runnable;

    if-nez p2, :cond_1

    .line 5
    monitor-exit p3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->zzi:Landroid/os/Handler;

    .line 6
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzf:Ljava/lang/Runnable;

    .line 7
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 7
    :goto_2
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 8
    :goto_3
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private final zzh(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    sget-object p2, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "clearing request %d"

    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/cast/internal/zzau;->zzg(ILjava/lang/Object;Ljava/lang/String;)V

    .line 4
    monitor-exit p2

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p2

    return v1

    .line 6
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzb(JLcom/google/android/gms/cast/internal/zzas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzau;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzau;->zze:Lcom/google/android/gms/cast/internal/zzas;

    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/cast/internal/zzau;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzau;->zze:Lcom/google/android/gms/cast/internal/zzas;

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzau;->zzd:J

    .line 2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzau;->zzh:Ljava/lang/String;

    .line 3
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/cast/internal/zzas;->zzb(Ljava/lang/String;JJJ)V

    :cond_0
    monitor-enter v9

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzf:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzau;->zzi:Landroid/os/Handler;

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/cast/internal/zzat;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/internal/zzat;-><init>(Lcom/google/android/gms/cast/internal/zzau;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzf:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzau;->zzi:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzau;->zzg:J

    .line 5
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    monitor-exit v9

    return-void

    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 2
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final zzc(I)Z
    .locals 1

    const/16 p1, 0x7d2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/internal/zzau;->zzh(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzd(JILjava/lang/Object;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "request %d completed"

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array v4, p2, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p3, p4, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzg(ILjava/lang/Object;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return v2

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze(J)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    cmp-long p1, v1, p1

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzau;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzau;->zzc:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
