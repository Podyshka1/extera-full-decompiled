.class final Lcom/google/android/gms/internal/measurement/zzdm;
.super Lcom/google/android/gms/internal/measurement/zzeq;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzdf;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Lcom/google/android/gms/internal/measurement/zzdf;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzd:Lcom/google/android/gms/internal/measurement/zzfb;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzd:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzQ()Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzc:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzh:J

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzcr;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
