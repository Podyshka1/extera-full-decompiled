.class public abstract Lcom/google/android/gms/internal/cast/zzsc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/cast/zzrx;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/cast/zzrx;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzrx;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/zzsb;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzsb;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzry;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzry;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
