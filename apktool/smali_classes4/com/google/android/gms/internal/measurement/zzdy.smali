.class final Lcom/google/android/gms/internal/measurement/zzdy;
.super Lcom/google/android/gms/internal/measurement/zzeq;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzco;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;Lcom/google/android/gms/internal/measurement/zzco;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zza:Lcom/google/android/gms/internal/measurement/zzco;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzQ()Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zza:Lcom/google/android/gms/internal/measurement/zzco;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->generateEventId(Lcom/google/android/gms/internal/measurement/zzcu;)V

    return-void
.end method

.method protected final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zza:Lcom/google/android/gms/internal/measurement/zzco;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzco;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
