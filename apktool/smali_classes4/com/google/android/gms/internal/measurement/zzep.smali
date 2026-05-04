.class final Lcom/google/android/gms/internal/measurement/zzep;
.super Lcom/google/android/gms/internal/measurement/zzeq;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/Long;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Landroid/os/Bundle;

.field final synthetic zze:Z

.field final synthetic zzf:Z

.field final synthetic zzg:Lcom/google/android/gms/internal/measurement/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zza:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzd:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/zzep;->zze:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzf:Z

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzg:Lcom/google/android/gms/internal/measurement/zzfb;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zza:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzh:J

    :goto_0
    move-wide v8, v0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzg:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzQ()Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzd:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/zzep;->zze:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzf:Z

    .line 3
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/zzcr;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
