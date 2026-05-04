.class public Lcom/google/android/gms/cast/MediaLoadRequestData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaLoadRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field zza:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/cast/MediaInfo;

.field private final zzd:Lcom/google/android/gms/cast/MediaQueueData;

.field private final zze:Ljava/lang/Boolean;

.field private final zzf:J

.field private final zzg:D

.field private final zzh:[J

.field private final zzi:Lorg/json/JSONObject;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Ljava/lang/String;

.field private final zzm:Ljava/lang/String;

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaLoadRequestData"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v0, Lcom/google/android/gms/cast/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzcc;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaLoadRequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    .line 1
    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/cast/internal/CastUtils;->jsonStringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-wide/from16 v14, p14

    .line 2
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/cast/MediaLoadRequestData;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzc:Lcom/google/android/gms/cast/MediaInfo;

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzd:Lcom/google/android/gms/cast/MediaQueueData;

    iput-object p3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zze:Ljava/lang/Boolean;

    iput-wide p4, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzf:J

    iput-wide p6, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzg:D

    iput-object p8, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzh:[J

    iput-object p9, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzi:Lorg/json/JSONObject;

    iput-object p10, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzj:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzk:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzl:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzm:Ljava/lang/String;

    iput-wide p14, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzn:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/cast/zzcb;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p15}, Lcom/google/android/gms/cast/MediaLoadRequestData;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaLoadRequestData;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzi:Lorg/json/JSONObject;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzi:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzc:Lcom/google/android/gms/cast/MediaInfo;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzc:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzd:Lcom/google/android/gms/cast/MediaQueueData;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzd:Lcom/google/android/gms/cast/MediaQueueData;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zze:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zze:Ljava/lang/Boolean;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzf:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzf:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzg:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzg:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzh:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzh:[J

    .line 6
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzj:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzk:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzl:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzm:Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzn:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzn:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzh:[J

    return-object v0
.end method

.method public getAutoplay()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCredentials()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzf:J

    return-wide v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzc:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzg:D

    return-wide v0
.end method

.method public getQueueData()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzd:Lcom/google/android/gms/cast/MediaQueueData;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzn:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzc:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzd:Lcom/google/android/gms/cast/MediaQueueData;

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zze:Ljava/lang/Boolean;

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzf:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzg:D

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzh:[J

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzi:Lorg/json/JSONObject;

    .line 3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzj:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzk:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzl:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzm:Ljava/lang/String;

    iget-wide v11, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzn:J

    .line 4
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    .line 5
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzc:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v2, :cond_0

    const-string v3, "media"

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->zza()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzd:Lcom/google/android/gms/cast/MediaQueueData;

    if-eqz v2, :cond_1

    const-string v3, "queueData"

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaQueueData;->zza()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "autoplay"

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zze:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzf:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const-string v4, "currentTime"

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "playbackRate"

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzg:D

    .line 6
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "credentials"

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzj:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "credentialsType"

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzk:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "atvCredentials"

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzl:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "atvCredentialsType"

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzm:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzh:[J

    if-eqz v2, :cond_4

    .line 11
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzh:[J

    .line 12
    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 13
    aget-wide v5, v4, v3

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "activeTrackIds"

    .line 14
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "customData"

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzi:Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "requestId"

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzn:J

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    sget-object v2, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "Error transforming MediaLoadRequestData into JSONObject"

    .line 17
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    .line 18
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzi:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v2

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getAutoplay()Ljava/lang/Boolean;

    move-result-object v1

    .line 8
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    const/4 p2, 0x5

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCurrentTime()J

    move-result-wide v1

    .line 10
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 p2, 0x6

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getPlaybackRate()D

    move-result-wide v1

    .line 12
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 p2, 0x7

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getActiveTrackIds()[J

    move-result-object v1

    .line 14
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    const/16 p2, 0x8

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zza:Ljava/lang/String;

    .line 15
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCredentials()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xa

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCredentialsType()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xb

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzl:Ljava/lang/String;

    .line 20
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xc

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzm:Ljava/lang/String;

    .line 21
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xd

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getRequestId()J

    move-result-wide v1

    .line 23
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
