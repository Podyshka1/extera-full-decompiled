.class final Lcom/google/android/gms/internal/cast/zzrg$zzg;
.super Lcom/google/android/gms/internal/cast/zzrg$zza;
.source "SourceFile"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzri;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzrg$zza;-><init>(Lcom/google/android/gms/internal/cast/zzrf;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Lcom/google/android/gms/internal/cast/zzrg$zzd;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzb(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzd;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzrg;->zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    .line 4
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzb(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Lcom/google/android/gms/internal/cast/zzrg$zzk;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzc(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzk;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzrg;->zzi(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    .line 4
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzc(Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->next:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/cast/zzrg$zzk;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzb(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzd;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/cast/zzrg;->zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)V

    .line 3
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 5
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzf(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzd(Lcom/google/android/gms/internal/cast/zzrg;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 3
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/cast/zzrg;->zzh(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;)V

    .line 4
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 6
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzc(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzk;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/cast/zzrg;->zzi(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    .line 3
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 5
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
