.class final Lcom/google/android/gms/internal/cast/zzsd;
.super Lcom/google/android/gms/internal/cast/zzrw;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzse;

.field private final zzb:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzse;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzsd;->zza:Lcom/google/android/gms/internal/cast/zzse;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzrw;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzsd;->zzb:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsd;->zzb:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsd;->zzb:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsd;->zza:Lcom/google/android/gms/internal/cast/zzse;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzl(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final zzd(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsd;->zza:Lcom/google/android/gms/internal/cast/zzse;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzk(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsd;->zza:Lcom/google/android/gms/internal/cast/zzse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzrg;->isDone()Z

    move-result v0

    return v0
.end method
