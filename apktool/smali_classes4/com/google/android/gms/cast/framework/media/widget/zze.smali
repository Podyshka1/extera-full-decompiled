.class public final Lcom/google/android/gms/cast/framework/media/widget/zze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:I

.field public zzb:I

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/framework/media/widget/zze;

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza:I

    .line 2
    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzc:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzc:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzd:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzd:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zze:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zze:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzf:Z

    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzf:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzb:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzc:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzd:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zze:I

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/cast/framework/media/widget/zze;->zzf:Z

    .line 6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 7
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
