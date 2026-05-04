.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/zzho;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhx;

.field private final zzc:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhm;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhm;->zzg(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhm;)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzho;->zza:Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhm;->zze(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhm;)Lcom/google/android/gms/internal/mlkit_language_id_common/zzhx;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzho;->zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhx;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhm;->zzf(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhm;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzho;->zzc:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_language_id_common/zzhx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzho;->zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhx;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzho;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzho;->zza:Ljava/lang/Long;

    return-object v0
.end method
