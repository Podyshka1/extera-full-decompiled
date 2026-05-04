.class final Lcom/google/android/gms/internal/measurement/zzev;
.super Lcom/google/android/gms/internal/measurement/zzeq;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfa;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Landroid/app/Activity;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:Lcom/google/android/gms/internal/measurement/zzfa;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfa;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:Lcom/google/android/gms/internal/measurement/zzfa;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfa;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzQ()Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzi:J

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V

    return-void
.end method
