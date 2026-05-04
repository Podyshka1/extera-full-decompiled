.class final Lcom/google/android/gms/internal/cast/zzse;
.super Lcom/google/android/gms/internal/cast/zzrm;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field private volatile zzb:Lcom/google/android/gms/internal/cast/zzrw;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzrm;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/cast/zzsd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzsd;-><init>(Lcom/google/android/gms/internal/cast/zzse;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzse;->zzb:Lcom/google/android/gms/internal/cast/zzrw;

    return-void
.end method

.method static zzn(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzse;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzse;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzse;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzse;->zzb:Lcom/google/android/gms/internal/cast/zzrw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzrw;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzse;->zzb:Lcom/google/android/gms/internal/cast/zzrw;

    return-void
.end method

.method protected final zze()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzse;->zzb:Lcom/google/android/gms/internal/cast/zzrw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/cast/zzrg;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzj()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzrg;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzse;->zzb:Lcom/google/android/gms/internal/cast/zzrw;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzrw;->zze()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzse;->zzb:Lcom/google/android/gms/internal/cast/zzrw;

    return-void
.end method
