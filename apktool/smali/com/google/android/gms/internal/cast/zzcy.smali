.class public final Lcom/google/android/gms/internal/cast/zzcy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/android/gms/cast/internal/Logger;

.field protected final zzb:Lcom/google/android/gms/internal/cast/zzda;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdd;

    const/4 v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzsc;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/cast/zzrx;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzdd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/zzrx;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "BaseNetUtils"

    .line 3
    invoke-direct {p1, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcy;->zza:Lcom/google/android/gms/cast/internal/Logger;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzb:Lcom/google/android/gms/internal/cast/zzda;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzda;->zza()V

    return-void
.end method
