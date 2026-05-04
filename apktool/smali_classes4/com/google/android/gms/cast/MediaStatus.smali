.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaStatus$Writer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzx:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field zza:Lcom/google/android/gms/cast/MediaInfo;

.field zzb:J

.field zzc:I

.field zzd:D

.field zze:I

.field zzf:I

.field zzg:J

.field zzh:J

.field zzi:D

.field zzj:Z

.field zzk:[J

.field zzl:I

.field zzm:I

.field zzn:Ljava/lang/String;

.field zzo:Lorg/json/JSONObject;

.field zzp:I

.field final zzq:Ljava/util/List;

.field zzr:Z

.field zzs:Lcom/google/android/gms/cast/AdBreakStatus;

.field zzt:Lcom/google/android/gms/cast/VideoInfo;

.field zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

.field zzv:Lcom/google/android/gms/cast/MediaQueueData;

.field zzw:Z

.field private final zzy:Landroid/util/SparseArray;

.field private final zzz:Lcom/google/android/gms/cast/MediaStatus$Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaStatus"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->zzx:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v0, Lcom/google/android/gms/cast/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzcm;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 4

    move-object/from16 v0, p19

    move-object/from16 v1, p21

    move-object/from16 v2, p26

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    new-instance v3, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzy:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/android/gms/cast/MediaStatus$Writer;

    invoke-direct {v3, p0}, Lcom/google/android/gms/cast/MediaStatus$Writer;-><init>(Lcom/google/android/gms/cast/MediaStatus;)V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzz:Lcom/google/android/gms/cast/MediaStatus$Writer;

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    iput p4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzd:D

    iput p7, p0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    iput p8, p0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    iput-wide p9, p0, Lcom/google/android/gms/cast/MediaStatus;->zzg:J

    move-wide p1, p11

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    move-wide/from16 p1, p13

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzi:D

    move/from16 p1, p15

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    move/from16 p1, p17

    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    move/from16 p1, p18

    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzn:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzn:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move/from16 p1, p20

    goto :goto_1

    .line 6
    :catch_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    goto :goto_0

    .line 4
    :goto_1
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/MediaStatus;->zze(Ljava/util/List;)V

    :cond_1
    move/from16 p1, p22

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzr:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzs:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzt:Lcom/google/android/gms/cast/VideoInfo;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzv:Lcom/google/android/gms/cast/MediaQueueData;

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaQueueData;->zzk()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzw:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 27

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    .line 7
    invoke-direct/range {v0 .. v26}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    return-void
.end method

.method private final zze(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzy:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/MediaQueueItem;

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzy:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final zzf(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    if-eq p1, v1, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    return v1

    :cond_1
    if-eq p3, p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-nez p2, :cond_4

    return v1

    :cond_4
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    .line 3
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzd:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzd:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzg:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzg:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzi:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzi:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzj:Z

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 8
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzr:Z

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzs:Lcom/google/android/gms/cast/AdBreakStatus;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzs:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 11
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzt:Lcom/google/android/gms/cast/VideoInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzt:Lcom/google/android/gms/cast/VideoInfo;

    .line 12
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 13
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzv:Lcom/google/android/gms/cast/MediaQueueData;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzv:Lcom/google/android/gms/cast/MediaQueueData;

    .line 14
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzw:Z

    iget-boolean p1, p1, Lcom/google/android/gms/cast/MediaStatus;->zzw:Z

    if-ne v1, p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    return-object v0
.end method

.method public getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzs:Lcom/google/android/gms/cast/AdBreakStatus;

    return-object v0
.end method

.method public getCurrentItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    return v0
.end method

.method public getIndexById(I)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1
.end method

.method public getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    return-object v0
.end method

.method public getLoadingItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzd:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    return v0
.end method

.method public getPreloadedItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    return v0
.end method

.method public getQueueData()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzv:Lcom/google/android/gms/cast/MediaQueueData;

    return-object v0
.end method

.method public getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueueRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzg:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzi:D

    return-wide v0
.end method

.method public getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzt:Lcom/google/android/gms/cast/VideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->zzd:D

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget v5, v0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, v0, Lcom/google/android/gms/cast/MediaStatus;->zzg:J

    .line 6
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->zzi:D

    .line 8
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-boolean v10, v0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Z

    .line 9
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    .line 10
    invoke-static {v11}, Ljava/util/Arrays;->hashCode([J)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    .line 11
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    .line 12
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    .line 13
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    .line 14
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzr:Z

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzs:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzt:Lcom/google/android/gms/cast/VideoInfo;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzv:Lcom/google/android/gms/cast/MediaQueueData;

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v16, v0, v22

    const/16 v16, 0x1

    aput-object v2, v0, v16

    const/4 v2, 0x2

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v4, v0, v2

    const/4 v2, 0x4

    aput-object v5, v0, v2

    const/4 v2, 0x5

    aput-object v6, v0, v2

    const/4 v2, 0x6

    aput-object v7, v0, v2

    const/4 v2, 0x7

    aput-object v8, v0, v2

    const/16 v2, 0x8

    aput-object v9, v0, v2

    const/16 v2, 0x9

    aput-object v10, v0, v2

    const/16 v2, 0xa

    aput-object v11, v0, v2

    const/16 v2, 0xb

    aput-object v12, v0, v2

    const/16 v2, 0xc

    aput-object v13, v0, v2

    const/16 v2, 0xd

    aput-object v14, v0, v2

    const/16 v2, 0xe

    aput-object v15, v0, v2

    const/16 v2, 0xf

    aput-object v17, v0, v2

    const/16 v2, 0x10

    aput-object v18, v0, v2

    const/16 v2, 0x11

    aput-object v19, v0, v2

    const/16 v2, 0x12

    aput-object v20, v0, v2

    const/16 v2, 0x13

    aput-object v21, v0, v2

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzr:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzn:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    .line 5
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    .line 7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v4

    .line 9
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    .line 11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v2

    .line 13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v4

    .line 15
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    .line 16
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamVolume()D

    move-result-wide v4

    .line 18
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/16 v1, 0xb

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isMute()Z

    move-result v2

    .line 20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v2

    .line 22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    const/16 v1, 0xd

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v2

    .line 24
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPreloadedItemId()I

    move-result v2

    .line 26
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzn:Ljava/lang/String;

    .line 27
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x10

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    .line 28
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    .line 29
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x12

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v2

    .line 31
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x13

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v2

    .line 33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x14

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;

    move-result-object v2

    .line 35
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x15

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v2

    .line 37
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x16

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v2

    .line 39
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 40
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lorg/json/JSONObject;I)I
    .locals 13

    .line 1
    const-string v0, "extendedStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    new-array v5, v2, [Ljava/lang/String;

    .line 6
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v4, p1, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v4

    :catch_0
    :cond_2
    const-string v0, "mediaSessionId"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    cmp-long v3, v0, v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v2

    .line 13
    :goto_2
    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_e

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IDLE"

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz v3, :cond_4

    move v1, v4

    goto :goto_3

    .line 25
    :cond_4
    const-string v3, "PLAYING"

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    const-string v3, "PAUSED"

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v6

    goto :goto_3

    :cond_6
    const-string v3, "BUFFERING"

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v7

    goto :goto_3

    :cond_7
    const-string v3, "LOADING"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    goto :goto_3

    :cond_8
    move v1, v2

    .line 15
    :goto_3
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    if-eq v1, v3, :cond_9

    iput v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    or-int/lit8 v0, v0, 0x2

    :cond_9
    if-ne v1, v4, :cond_e

    .line 20
    const-string v1, "idleReason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CANCELLED"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v6, v5

    goto :goto_4

    .line 38
    :cond_a
    const-string v3, "INTERRUPTED"

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    const-string v3, "FINISHED"

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v6, v4

    goto :goto_4

    :cond_c
    const-string v3, "ERROR"

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v6, v7

    goto :goto_4

    :cond_d
    move v6, v2

    .line 22
    :goto_4
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    if-eq v6, v1, :cond_e

    iput v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    or-int/lit8 v0, v0, 0x2

    .line 26
    :cond_e
    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/cast/MediaStatus;->zzd:D

    cmpl-double v1, v8, v6

    if-eqz v1, :cond_f

    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzd:D

    or-int/lit8 v0, v0, 0x2

    .line 28
    :cond_f
    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/cast/MediaStatus;->zzg:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_10

    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzg:J

    or-int/lit8 v0, v0, 0x2

    :cond_10
    or-int/lit16 v0, v0, 0x80

    .line 30
    :cond_11
    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_12

    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzh:J

    or-int/lit8 v0, v0, 0x2

    .line 32
    :cond_12
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez p2, :cond_14

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "level"

    .line 34
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/cast/MediaStatus;->zzi:D

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_13

    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzi:D

    or-int/lit8 v0, v0, 0x2

    :cond_13
    const-string v1, "muted"

    .line 35
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Z

    if-eq p2, v1, :cond_14

    iput-boolean p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Z

    or-int/lit8 v0, v0, 0x2

    .line 36
    :cond_14
    const-string p2, "activeTrackIds"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    goto :goto_5

    :cond_15
    move-object p2, v3

    .line 37
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/cast/internal/CastUtils;->zzg(Lorg/json/JSONArray;)[J

    move-result-object p2

    if-eqz p2, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    if-nez v1, :cond_16

    goto :goto_7

    .line 50
    :cond_16
    array-length v6, p2

    array-length v1, v1

    if-ne v1, v6, :cond_18

    move v1, v2

    :goto_6
    array-length v6, p2

    if-ge v1, v6, :cond_19

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    .line 38
    aget-wide v7, v6, v1

    aget-wide v9, p2, v1

    cmp-long v6, v7, v9

    if-nez v6, :cond_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    if-eqz v1, :cond_19

    .line 37
    :cond_18
    :goto_7
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzk:[J

    or-int/lit8 v0, v0, 0x2

    .line 39
    :cond_19
    const-string p2, "customData"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzo:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzn:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    .line 41
    :cond_1a
    const-string p2, "media"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 42
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 43
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v1, p2}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v6, :cond_1b

    .line 44
    invoke-virtual {v6, v1}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    :cond_1b
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v0, v0, 0x2

    :cond_1c
    const-string v1, "metadata"

    .line 45
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    or-int/lit8 v0, v0, 0x4

    .line 46
    :cond_1d
    const-string p2, "currentItemId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    if-eq v1, p2, :cond_1e

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    or-int/lit8 v0, v0, 0x2

    :cond_1e
    const-string p2, "preloadedItemId"

    .line 48
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    if-eq v1, p2, :cond_1f

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    or-int/lit8 v0, v0, 0x10

    :cond_1f
    const-string p2, "loadingItemId"

    .line 49
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    if-eq v1, p2, :cond_20

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    or-int/lit8 v0, v0, 0x2

    :cond_20
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    if-nez p2, :cond_21

    const/4 p2, -0x1

    goto :goto_8

    .line 50
    :cond_21
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result p2

    .line 49
    :goto_8
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    iget v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    iget v7, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    invoke-static {v1, v6, v7, p2}, Lcom/google/android/gms/cast/MediaStatus;->zzf(IIII)Z

    move-result p2

    if-nez p2, :cond_2b

    .line 51
    const-string p2, "repeatMode"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 52
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->mediaRepeatModeFromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_22

    iget p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    goto :goto_9

    .line 54
    :cond_22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_9
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    if-eq v1, p2, :cond_23

    .line 56
    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    move p2, v4

    goto :goto_a

    :cond_23
    move p2, v2

    .line 57
    :goto_a
    const-string v1, "items"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-instance v7, Landroid/util/SparseArray;

    .line 60
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    move v8, v2

    :goto_b
    if-ge v8, v6, :cond_24

    .line 61
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "itemId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_24
    new-instance v8, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v2

    :goto_c
    if-ge v9, v6, :cond_28

    .line 63
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 65
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v12

    if-eqz v12, :cond_25

    .line 66
    invoke-virtual {v12, v11}, Lcom/google/android/gms/cast/MediaQueueItem;->fromJson(Lorg/json/JSONObject;)Z

    move-result v11

    or-int/2addr p2, v11

    .line 67
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_27

    :goto_d
    move p2, v4

    goto :goto_e

    .line 69
    :cond_25
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v10, p0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    if-ne p2, v10, :cond_26

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz p2, :cond_26

    new-instance v10, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 71
    invoke-direct {v10, p2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p2

    .line 72
    invoke-virtual {p2, v11}, Lcom/google/android/gms/cast/MediaQueueItem;->fromJson(Lorg/json/JSONObject;)Z

    .line 73
    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 70
    :cond_26
    new-instance p2, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {p2, v11}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v6, :cond_29

    move v1, v2

    goto :goto_f

    :cond_29
    move v1, v4

    :goto_f
    xor-int/2addr v1, v4

    or-int/2addr p2, v1

    .line 75
    invoke-direct {p0, v8}, Lcom/google/android/gms/cast/MediaStatus;->zze(Ljava/util/List;)V

    :cond_2a
    if-eqz p2, :cond_2c

    or-int/lit8 v0, v0, 0x8

    goto :goto_10

    .line 54
    :cond_2b
    iput v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzc:I

    iput v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    iput v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzm:I

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    .line 76
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2c

    or-int/lit8 v0, v0, 0x8

    iput v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:I

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzq:Ljava/util/List;

    .line 77
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzy:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 75
    :cond_2c
    :goto_10
    const-string p2, "breakStatus"

    .line 79
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/AdBreakStatus;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzs:Lcom/google/android/gms/cast/AdBreakStatus;

    if-nez v1, :cond_2d

    if-nez p2, :cond_2e

    :cond_2d
    if-eqz v1, :cond_31

    .line 80
    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    :cond_2e
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    invoke-virtual {p2}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    :cond_2f
    move v2, v4

    :cond_30
    iput-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzr:Z

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzs:Lcom/google/android/gms/cast/AdBreakStatus;

    or-int/lit8 v0, v0, 0x20

    :cond_31
    const-string p2, "videoInfo"

    .line 81
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/VideoInfo;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VideoInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzt:Lcom/google/android/gms/cast/VideoInfo;

    if-nez v1, :cond_32

    if-nez p2, :cond_33

    :cond_32
    if-eqz v1, :cond_34

    .line 82
    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_33
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzt:Lcom/google/android/gms/cast/VideoInfo;

    or-int/lit8 v0, v0, 0x40

    .line 83
    :cond_34
    const-string p2, "breakInfo"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v1, :cond_35

    .line 84
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/MediaInfo;->zzr(Lorg/json/JSONObject;)V

    or-int/lit8 v0, v0, 0x2

    .line 85
    :cond_35
    const-string p2, "queueData"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Lcom/google/android/gms/cast/MediaQueueData$Builder;

    .line 86
    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaQueueData$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueData$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->build()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzv:Lcom/google/android/gms/cast/MediaQueueData;

    .line 87
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaQueueData;->zzk()Z

    move-result p2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzw:Z

    if-eq v1, p2, :cond_36

    iput-boolean p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzw:Z

    or-int/lit8 v0, v0, 0x8

    :cond_36
    const-string p2, "liveSeekableRange"

    .line 88
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_37

    or-int/lit8 p2, v0, 0x2

    const-string v0, "liveSeekableRange"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    goto :goto_11

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    if-eqz p1, :cond_38

    or-int/lit8 v0, v0, 0x2

    :cond_38
    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzu:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move p2, v0

    :goto_11
    return p2
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzb:J

    return-wide v0
.end method

.method public final zzd()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zza:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zze:I

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzf:I

    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzl:I

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/cast/MediaStatus;->zzf(IIII)Z

    move-result v0

    return v0
.end method
