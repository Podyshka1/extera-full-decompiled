.class public final Lcom/google/android/gms/location/LocationRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:I

.field private zzg:F

.field private zzh:Z

.field private zzi:J

.field private zzj:I

.field private zzk:I

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Landroid/os/WorkSource;

.field private zzo:Lcom/google/android/gms/internal/location/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zza:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb:J

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzc:J

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzd:J

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zze:J

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getMaxUpdates()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzf:I

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzg:F

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->isWaitForAccurateLocation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzh:Z

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzi:J

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getGranularity()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzj:I

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzk:I

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->zzd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzl:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->zze()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzm:Z

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->zzb()Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzn:Landroid/os/WorkSource;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->zzc()Lcom/google/android/gms/internal/location/zzd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzo:Lcom/google/android/gms/internal/location/zzd;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/LocationRequest;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    iget v2, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zza:I

    iget-wide v3, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb:J

    iget-wide v5, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzc:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    const/16 v9, 0x69

    if-ne v2, v9, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 1
    :goto_0
    iget-wide v9, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzd:J

    iget-wide v11, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb:J

    .line 3
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zze:J

    iget v13, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzf:I

    iget v14, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzg:F

    iget-boolean v15, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzh:Z

    move-wide/from16 v16, v7

    iget-wide v7, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzi:J

    cmp-long v16, v7, v16

    if-nez v16, :cond_2

    iget-wide v7, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb:J

    :cond_2
    move-wide/from16 v16, v7

    iget v7, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzj:I

    iget v8, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzk:I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzl:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzm:Z

    move/from16 v21, v1

    .line 4
    new-instance v1, Landroid/os/WorkSource;

    move/from16 v19, v2

    iget-object v2, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzn:Landroid/os/WorkSource;

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object/from16 v22, v1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide v7, v9

    iget-object v9, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzo:Lcom/google/android/gms/internal/location/zzd;

    move-object/from16 v23, v9

    const-wide v9, 0x7fffffffffffffffL

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zzd;)V

    return-object v1
.end method

.method public setGranularity(I)Lcom/google/android/gms/location/LocationRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/location/zzo;->zza(I)I

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzj:I

    return-object p0
.end method

.method public setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :cond_1
    :goto_0
    const-string v0, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzi:J

    return-object p0
.end method

.method public setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzh:Z

    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/location/LocationRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzm:Z

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/location/LocationRequest$Builder;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzl:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/location/LocationRequest$Builder;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move v3, v1

    move p1, v2

    goto :goto_0

    :cond_0
    move v2, p1

    move v3, v0

    goto :goto_0

    :cond_1
    move v2, p1

    move v3, v1

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant"

    .line 2
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzk:I

    return-object p0
.end method

.method public final zzd(Landroid/os/WorkSource;)Lcom/google/android/gms/location/LocationRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->zzn:Landroid/os/WorkSource;

    return-object p0
.end method
