.class public abstract Lcom/google/android/gms/internal/play_billing/zzfb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzev;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzev;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfa;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzfa;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzex;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static zzb(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzew;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzew;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzew;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzfa;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method
