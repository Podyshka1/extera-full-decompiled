.class final Lcom/google/android/gms/measurement/internal/zzax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjg;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzay;Lcom/google/android/gms/measurement/internal/zzjg;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzax;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjg;->zzaU()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:Lcom/google/android/gms/measurement/internal/zzay;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zzc()Z

    move-result v1

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzay;->zze(J)V

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zza()V

    :cond_1
    return-void
.end method
