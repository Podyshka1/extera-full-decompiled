.class final Lcom/google/android/gms/internal/measurement/zzbt;
.super Lcom/google/android/gms/internal/measurement/zzbz;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:B

.field private zzc:I

.field private zzd:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbz;
    .locals 0

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/measurement/zzbz;
    .locals 0

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzb:B

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzca;
    .locals 9

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzb:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzc:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzd:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbu;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzc:I

    iget v7, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzd:I

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/measurement/zzbu;-><init>(Ljava/lang/String;ZILcom/google/android/gms/internal/measurement/zzbr;Lcom/google/android/gms/internal/measurement/zzbs;I[B)V

    return-object v1

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " fileOwner"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzb:B

    if-nez v1, :cond_3

    const-string v1, " hasDifferentDmaOwner"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzc:I

    if-nez v1, :cond_4

    const-string v1, " fileChecks"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzd:I

    if-nez v1, :cond_5

    const-string v1, " filePurpose"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final zzd(I)Lcom/google/android/gms/internal/measurement/zzbz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzc:I

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzbz;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzd:I

    return-object p0
.end method
