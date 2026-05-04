.class public final Lcom/google/android/gms/cast/internal/zzab;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/internal/zzab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:D

.field private zzb:Z

.field private zzc:I

.field private zzd:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private zze:I

.field private zzf:Lcom/google/android/gms/cast/zzav;

.field private zzg:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/internal/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(DZILcom/google/android/gms/cast/ApplicationMetadata;ILcom/google/android/gms/cast/zzav;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzab;->zza:D

    iput-boolean p3, p0, Lcom/google/android/gms/cast/internal/zzab;->zzb:Z

    iput p4, p0, Lcom/google/android/gms/cast/internal/zzab;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/cast/internal/zzab;->zzd:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput p6, p0, Lcom/google/android/gms/cast/internal/zzab;->zze:I

    iput-object p7, p0, Lcom/google/android/gms/cast/internal/zzab;->zzf:Lcom/google/android/gms/cast/zzav;

    iput-wide p8, p0, Lcom/google/android/gms/cast/internal/zzab;->zzg:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/internal/zzab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzab;

    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzab;->zza:D

    .line 2
    iget-wide v5, p1, Lcom/google/android/gms/cast/internal/zzab;->zza:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zzb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/internal/zzab;->zzb:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zzc:I

    iget v3, p1, Lcom/google/android/gms/cast/internal/zzab;->zzc:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zzd:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v3, p1, Lcom/google/android/gms/cast/internal/zzab;->zzd:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zze:I

    iget v3, p1, Lcom/google/android/gms/cast/internal/zzab;->zze:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zzf:Lcom/google/android/gms/cast/zzav;

    .line 4
    invoke-static {v1, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzab;->zzg:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/internal/zzab;->zzg:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zza:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zzb:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/cast/internal/zzab;->zzc:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzab;->zzd:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget v4, p0, Lcom/google/android/gms/cast/internal/zzab;->zze:I

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/cast/internal/zzab;->zzf:Lcom/google/android/gms/cast/zzav;

    iget-wide v6, p0, Lcom/google/android/gms/cast/internal/zzab;->zzg:D

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    .line 6
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zza:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "volume=%f"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzab;->zza:D

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzab;->zzb:Z

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/cast/internal/zzab;->zzc:I

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zzd:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/cast/internal/zzab;->zze:I

    .line 6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzab;->zzf:Lcom/google/android/gms/cast/zzav;

    .line 7
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzab;->zzg:D

    .line 8
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zzg:D

    return-wide v0
.end method

.method public final zzb()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zza:D

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zzc:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zze:I

    return v0
.end method

.method public final zze()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zzd:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/cast/zzav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zzf:Lcom/google/android/gms/cast/zzav;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzab;->zzb:Z

    return v0
.end method
