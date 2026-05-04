.class public final Lcom/google/android/gms/cast/internal/zzaq;
.super Lcom/google/android/gms/cast/internal/zzd;
.source "SourceFile"


# static fields
.field public static final zzb:Ljava/lang/String;


# instance fields
.field final zzc:Lcom/google/android/gms/cast/internal/zzau;

.field final zzd:Lcom/google/android/gms/cast/internal/zzau;

.field final zze:Lcom/google/android/gms/cast/internal/zzau;

.field final zzf:Lcom/google/android/gms/cast/internal/zzau;

.field final zzg:Lcom/google/android/gms/cast/internal/zzau;

.field final zzh:Lcom/google/android/gms/cast/internal/zzau;

.field final zzi:Lcom/google/android/gms/cast/internal/zzau;

.field final zzj:Lcom/google/android/gms/cast/internal/zzau;

.field final zzk:Lcom/google/android/gms/cast/internal/zzau;

.field final zzl:Lcom/google/android/gms/cast/internal/zzau;

.field final zzm:Lcom/google/android/gms/cast/internal/zzau;

.field final zzn:Lcom/google/android/gms/cast/internal/zzau;

.field final zzo:Lcom/google/android/gms/cast/internal/zzau;

.field final zzp:Lcom/google/android/gms/cast/internal/zzau;

.field final zzq:Lcom/google/android/gms/cast/internal/zzau;

.field final zzr:Lcom/google/android/gms/cast/internal/zzau;

.field final zzs:Lcom/google/android/gms/cast/internal/zzau;

.field final zzt:Lcom/google/android/gms/cast/internal/zzau;

.field final zzu:Lcom/google/android/gms/cast/internal/zzau;

.field private zzv:J

.field private zzw:Lcom/google/android/gms/cast/MediaStatus;

.field private zzx:Ljava/lang/Long;

.field private zzy:Lcom/google/android/gms/cast/internal/zzan;

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/cast/internal/CastUtils;->$r8$clinit:I

    const-string v0, "urn:x-cast:com.google.cast.media"

    sput-object v0, Lcom/google/android/gms/cast/internal/zzaq;->zzb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/android/gms/cast/internal/zzaq;->zzb:Ljava/lang/String;

    const-string v2, "MediaControlChannel"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzz:I

    new-instance v1, Lcom/google/android/gms/cast/internal/zzau;

    const-wide/32 v2, 0x5265c00

    .line 2
    const-string v4, "load"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzc:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v4, Lcom/google/android/gms/cast/internal/zzau;

    .line 3
    const-string v5, "pause"

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v4, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzd:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v5, Lcom/google/android/gms/cast/internal/zzau;

    .line 4
    const-string v6, "play"

    invoke-direct {v5, v2, v3, v6}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v5, v0, Lcom/google/android/gms/cast/internal/zzaq;->zze:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v6, Lcom/google/android/gms/cast/internal/zzau;

    .line 5
    const-string v7, "stop"

    invoke-direct {v6, v2, v3, v7}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v6, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzf:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v7, Lcom/google/android/gms/cast/internal/zzau;

    const-wide/16 v8, 0x2710

    .line 6
    const-string v10, "seek"

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v7, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzg:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v8, Lcom/google/android/gms/cast/internal/zzau;

    .line 7
    const-string v9, "volume"

    invoke-direct {v8, v2, v3, v9}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v8, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzh:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v9, Lcom/google/android/gms/cast/internal/zzau;

    .line 8
    const-string v10, "mute"

    invoke-direct {v9, v2, v3, v10}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v9, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzi:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v10, Lcom/google/android/gms/cast/internal/zzau;

    .line 9
    const-string v11, "status"

    invoke-direct {v10, v2, v3, v11}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v10, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzj:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v11, Lcom/google/android/gms/cast/internal/zzau;

    .line 10
    const-string v12, "activeTracks"

    invoke-direct {v11, v2, v3, v12}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v11, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzk:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v12, Lcom/google/android/gms/cast/internal/zzau;

    .line 11
    const-string v13, "trackStyle"

    invoke-direct {v12, v2, v3, v13}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v12, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzl:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v13, Lcom/google/android/gms/cast/internal/zzau;

    .line 12
    const-string v14, "queueInsert"

    invoke-direct {v13, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v13, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzm:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    .line 13
    const-string v15, "queueUpdate"

    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v14, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzn:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    move-object/from16 p1, v14

    .line 14
    const-string v14, "queueRemove"

    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzo:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    move-object/from16 v16, v15

    .line 15
    const-string v15, "queueReorder"

    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v14, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzp:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    move-object/from16 v17, v14

    .line 16
    const-string v14, "queueFetchItemIds"

    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzq:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    move-object/from16 v18, v15

    .line 17
    const-string v15, "queueFetchItemRange"

    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v14, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzs:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    move-object/from16 v19, v14

    .line 18
    const-string v14, "queueFetchItems"

    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzr:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    .line 19
    const-string v15, "setPlaybackRate"

    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v14, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzt:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    move-object/from16 v20, v14

    .line 20
    const-string v14, "skipAd"

    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzaq;->zzu:Lcom/google/android/gms/cast/internal/zzau;

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 22
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 23
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 24
    invoke-virtual {v0, v6}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 25
    invoke-virtual {v0, v7}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 26
    invoke-virtual {v0, v8}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 27
    invoke-virtual {v0, v9}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 28
    invoke-virtual {v0, v10}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 29
    invoke-virtual {v0, v11}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 30
    invoke-virtual {v0, v12}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 31
    invoke-virtual {v0, v13}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    move-object/from16 v1, p1

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    move-object/from16 v1, v16

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    move-object/from16 v1, v17

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    move-object/from16 v1, v18

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    move-object/from16 v1, v19

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    move-object/from16 v1, v20

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 39
    invoke-virtual {v0, v15}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 40
    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzaq;->zzT()V

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/cast/internal/zzaq;)Lcom/google/android/gms/cast/internal/zzan;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    return-object p0
.end method

.method static bridge synthetic zzN(Lcom/google/android/gms/cast/internal/zzaq;Ljava/lang/Long;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzx:Ljava/lang/Long;

    return-void
.end method

.method private final zzR(DJJ)J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide p3

    :cond_1
    long-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-long p1, v0

    add-long/2addr p3, p1

    cmp-long p1, p5, v2

    if-lez p1, :cond_2

    cmp-long p1, p3, p5

    if-lez p1, :cond_2

    return-wide p5

    :cond_2
    cmp-long p1, p3, v2

    if-ltz p1, :cond_3

    return-wide p3

    :cond_3
    return-wide v2
.end method

.method private static zzS(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cast/MediaError;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v1}, Lcom/google/android/gms/cast/internal/zzap;-><init>()V

    .line 2
    sget v2, Lcom/google/android/gms/cast/internal/CastUtils;->$r8$clinit:I

    .line 3
    const-string v2, "customData"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v1, Lcom/google/android/gms/cast/internal/zzap;->zza:Lorg/json/JSONObject;

    iput-object v0, v1, Lcom/google/android/gms/cast/internal/zzap;->zzb:Lcom/google/android/gms/cast/MediaError;

    return-object v1
.end method

.method private final zzT()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzau;

    const/16 v2, 0x7d2

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/internal/zzau;->zzc(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzU(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "sequenceNumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, -0x1

    .line 2
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzz:I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzp;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string v0, " message is missing a sequence number."

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final zzV()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzc()V

    :cond_0
    return-void
.end method

.method private final zzW()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzd()V

    :cond_0
    return-void
.end method

.method private final zzX()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzk()V

    :cond_0
    return-void
.end method

.method private final zzY()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzm()V

    :cond_0
    return-void
.end method

.method private final zzZ()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzz:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zzaa(Lorg/json/JSONArray;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/cast/internal/zzaq;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzz:I

    return p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/cast/internal/zzas;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Boolean;Ljava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 14

    move/from16 v0, p2

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    const-wide/16 v7, -0x1

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-ltz v8, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playPosition cannot be negative: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    :goto_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v9

    :try_start_0
    const-string v11, "requestId"

    .line 3
    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "type"

    const-string v12, "QUEUE_UPDATE"

    .line 4
    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    move-result-wide v12

    invoke-virtual {v8, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v11, "currentItemId"

    .line 6
    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz v4, :cond_3

    const-string v0, "jump"

    .line 7
    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz v3, :cond_5

    array-length v0, v3

    if-lez v0, :cond_5

    .line 8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_1
    array-length v11, v3

    if-ge v4, v11, :cond_4

    .line 9
    aget-object v11, v3, v4

    invoke-virtual {v11}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "items"

    .line 10
    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    if-eqz v5, :cond_6

    const-string v0, "shuffle"

    .line 11
    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_6
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "repeatMode"

    .line 13
    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    if-eqz v7, :cond_8

    const-string v0, "currentTime"

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_8
    if-eqz v6, :cond_9

    const-string v0, "customData"

    .line 15
    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "sequenceNumber"

    iget v1, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzz:I

    .line 16
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_a
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v9, v10, v1}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzn:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v1, Lcom/google/android/gms/cast/internal/zzam;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/internal/zzam;-><init>(Lcom/google/android/gms/cast/internal/zzaq;Lcom/google/android/gms/cast/internal/zzas;)V

    .line 18
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v9
.end method

.method public final zzB(Lcom/google/android/gms/cast/internal/zzas;)J
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "GET_STATUS"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v3, :cond_0

    const-string v4, "mediaSessionId"

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->zzb()J

    move-result-wide v5

    .line 5
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzj:Lcom/google/android/gms/cast/internal/zzau;

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1
.end method

.method public final zzC(Lcom/google/android/gms/cast/internal/zzas;Lcom/google/android/gms/cast/MediaSeekOptions;)J
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->isSeekToInfinite()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide v3, 0x3e800000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getPosition()J

    move-result-wide v3

    :goto_0
    :try_start_0
    const-string v5, "requestId"

    .line 4
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "SEEK"

    .line 5
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mediaSessionId"

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "currentTime"

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    const-string v7, "resumeState"

    if-ne v5, v6, :cond_1

    :try_start_1
    const-string v5, "PLAYBACK_START"

    .line 9
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const-string v5, "PLAYBACK_PAUSE"

    .line 11
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "customData"

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzx:Ljava/lang/Long;

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzg:Lcom/google/android/gms/cast/internal/zzau;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzal;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/internal/zzal;-><init>(Lcom/google/android/gms/cast/internal/zzaq;Lcom/google/android/gms/cast/internal/zzas;)V

    .line 16
    invoke-virtual {p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1
.end method

.method public final zzE(Lcom/google/android/gms/cast/internal/zzas;DLorg/json/JSONObject;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_PLAYBACK_RATE"

    .line 5
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "playbackRate"

    .line 6
    invoke-virtual {v0, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    const-string p3, "mediaStatus should not be null"

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "mediaSessionId"

    iget-object p3, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaStatus;->zzb()J

    move-result-wide v3

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p2, "customData"

    .line 9
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzt:Lcom/google/android/gms/cast/internal/zzau;

    .line 11
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1

    .line 1
    :cond_1
    new-instance p1, Lcom/google/android/gms/cast/internal/zzao;

    invoke-direct {p1}, Lcom/google/android/gms/cast/internal/zzao;-><init>()V

    throw p1
.end method

.method public final zzG(Lcom/google/android/gms/cast/internal/zzas;DLorg/json/JSONObject;)J
    .locals 6

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_VOLUME"

    .line 6
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    .line 8
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    .line 9
    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 10
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p2, "customData"

    .line 11
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzh:Lcom/google/android/gms/cast/internal/zzau;

    .line 13
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Volume cannot be "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzK()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final zzL()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final zzO(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "insertBefore"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzp;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string v5, "message received: %s"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    .line 4
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x834

    const-string v9, "itemIds"

    const/4 v10, 0x0

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    const-string v0, "QUEUE_ITEM_IDS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 18
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzq:Lcom/google/android/gms/cast/internal/zzau;

    .line 31
    invoke-virtual {v4, v5, v6, v3, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 32
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/cast/internal/zzaq;->zzU(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v0, :cond_13

    .line 33
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzaq;->zzaa(Lorg/json/JSONArray;)[I

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 34
    invoke-interface {v2, v0}, Lcom/google/android/gms/cast/internal/zzan;->zze([I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_e

    .line 5
    :sswitch_1
    const-string v0, "MEDIA_STATUS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48
    :try_start_2
    const-string v0, "status"

    .line 49
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 51
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzc:Lcom/google/android/gms/cast/internal/zzau;

    .line 52
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzh:Lcom/google/android/gms/cast/internal/zzau;

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzh:Lcom/google/android/gms/cast/internal/zzau;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzi:Lcom/google/android/gms/cast/internal/zzau;

    .line 54
    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzi:Lcom/google/android/gms/cast/internal/zzau;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_2
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v2, :cond_3

    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_4

    .line 55
    :cond_4
    :goto_3
    new-instance v2, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v2, v0}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    const/16 v0, 0x7f

    :goto_4
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_5

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzz:I

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzY()V

    :cond_5
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_6

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzY()V

    :cond_6
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    :cond_7
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_8

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzV()V

    :cond_8
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_9

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzX()V

    :cond_9
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_a

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzW()V

    :cond_a
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_b

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v2, :cond_b

    .line 67
    invoke-interface {v2}, Lcom/google/android/gms/cast/internal/zzan;->zza()V

    :cond_b
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_d

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzY()V

    goto :goto_5

    .line 57
    :cond_c
    iput-object v10, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzY()V

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzV()V

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzX()V

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzW()V

    .line 69
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/internal/zzau;

    .line 75
    invoke-virtual {v2, v5, v6, v3, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 5
    :sswitch_2
    const-string v0, "INVALID_PLAYER_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzp;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string v4, "received unexpected error: Invalid Player State."

    new-array v7, v3, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/internal/zzau;

    .line 48
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzS(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 5
    :sswitch_3
    const-string v7, "QUEUE_CHANGE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 12
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzs:Lcom/google/android/gms/cast/internal/zzau;

    .line 13
    invoke-virtual {v4, v5, v6, v3, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 14
    invoke-direct {p0, v2, v7}, Lcom/google/android/gms/cast/internal/zzaq;->zzU(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v4, :cond_13

    const-string v4, "changeType"

    .line 15
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/cast/internal/zzaq;->zzaa(Lorg/json/JSONArray;)[I

    move-result-object v5

    .line 17
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v5, :cond_13

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    sparse-switch v7, :sswitch_data_1

    goto :goto_8

    .line 30
    :sswitch_4
    const-string v0, "ITEMS_CHANGE"

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 28
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 29
    invoke-interface {v0, v5}, Lcom/google/android/gms/cast/internal/zzan;->zzj([I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    .line 18
    :sswitch_5
    const-string v5, "UPDATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 19
    :try_start_6
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/cast/internal/zzaq;->zzaa(Lorg/json/JSONArray;)[I

    move-result-object v4

    const-string v5, "A list of item IDs is expected in a QUEUE UPDATE message."

    .line 20
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "reorderItemIds"

    .line 21
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 22
    invoke-static {v4}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    move-result-object v4

    .line 23
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 24
    invoke-static {v5}, Lcom/google/android/gms/cast/internal/zzaq;->zzaa(Lorg/json/JSONArray;)[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 26
    invoke-interface {v5, v4, v2, v0}, Lcom/google/android/gms/cast/internal/zzan;->zzi(Ljava/util/List;Ljava/util/List;I)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 27
    invoke-interface {v0, v4}, Lcom/google/android/gms/cast/internal/zzan;->zze([I)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    .line 18
    :sswitch_6
    const-string v0, "REMOVE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 28
    invoke-interface {v0, v5}, Lcom/google/android/gms/cast/internal/zzan;->zzh([I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    .line 18
    :sswitch_7
    const-string v0, "INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 29
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 30
    invoke-interface {v0, v5, v6}, Lcom/google/android/gms/cast/internal/zzan;->zzf([II)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_f
    :goto_8
    return-void

    .line 5
    :sswitch_8
    const-string v0, "ERROR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/internal/zzau;

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzS(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-nez v0, :cond_11

    goto/16 :goto_c

    .line 37
    :cond_11
    invoke-static {v2}, Lcom/google/android/gms/cast/MediaError;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 38
    invoke-interface {v2, v0}, Lcom/google/android/gms/cast/internal/zzan;->zzb(Lcom/google/android/gms/cast/MediaError;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    return-void

    .line 5
    :sswitch_9
    const-string v0, "LOAD_FAILED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzc:Lcom/google/android/gms/cast/internal/zzau;

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzS(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v5, v6, v8, v2}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    return-void

    .line 5
    :sswitch_a
    const-string v0, "INVALID_REQUEST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzp;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string v4, "received unexpected error: Invalid Request."

    new-array v7, v3, [Ljava/lang/Object;

    .line 39
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/internal/zzau;

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzS(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    move-result-object v7

    const/16 v8, 0x7d1

    .line 42
    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_a

    .line 5
    :sswitch_b
    const-string v0, "QUEUE_ITEMS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 38
    :try_start_c
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzr:Lcom/google/android/gms/cast/internal/zzau;

    .line 6
    invoke-virtual {v4, v5, v6, v3, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 7
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/cast/internal/zzaq;->zzU(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    if-eqz v0, :cond_13

    const-string v0, "items"

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    move v4, v3

    .line 10
    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_12

    new-instance v5, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 11
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    .line 12
    invoke-interface {v0, v2}, Lcom/google/android/gms/cast/internal/zzan;->zzg([Lcom/google/android/gms/cast/MediaQueueItem;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    :cond_13
    :goto_c
    return-void

    .line 5
    :sswitch_c
    const-string v0, "LOAD_CANCELLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzc:Lcom/google/android/gms/cast/internal/zzau;

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzS(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    move-result-object v2

    const/16 v4, 0x835

    invoke-virtual {v0, v5, v6, v4, v2}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    :cond_14
    :goto_d
    return-void

    .line 5
    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzp;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object p1, v4, v1

    const-string p1, "Message is malformed (%s); ignoring: %s"

    invoke-virtual {v2, p1, v4}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_c
        -0x6ab4c52e -> :sswitch_b
        -0x430e23f9 -> :sswitch_a
        -0xfa7664a -> :sswitch_9
        0x3f2d9e8 -> :sswitch_8
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_7
        -0x7022137c -> :sswitch_6
        -0x6a6cd337 -> :sswitch_5
        0x42ef412f -> :sswitch_4
    .end sparse-switch
.end method

.method public final zzP(JI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzau;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/cast/internal/zzan;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzy:Lcom/google/android/gms/cast/internal/zzan;

    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zzb()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzT()V

    return-void
.end method

.method public final zzk()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getEndTime()J

    move-result-wide v6

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isLiveDone()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, -0x1

    move-object v3, p0

    .line 3
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/internal/zzaq;->zzR(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v6
.end method

.method public final zzm()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzK()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzx:Ljava/lang/Long;

    if-eqz v4, :cond_3

    const-wide v5, 0x3e800000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzk()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzo()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_2

    .line 6
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzo()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzv:J

    cmp-long v4, v4, v1

    if-nez v4, :cond_4

    return-wide v1

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v10

    move-object v5, p0

    .line 8
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/cast/internal/zzaq;->zzR(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_0
    return-wide v8

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzn()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzw:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzb()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/internal/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzao;-><init>()V

    throw v0
.end method

.method public final zzo()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzK()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzp(Lcom/google/android/gms/cast/internal/zzas;Lcom/google/android/gms/cast/MediaLoadRequestData;)J
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaInfo and MediaQueueData should not be both null"

    .line 9
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v0

    :try_start_0
    const-string v2, "requestId"

    .line 5
    invoke-virtual {p2, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "LOAD"

    .line 6
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzc:Lcom/google/android/gms/cast/internal/zzau;

    .line 8
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v0

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to jsonify the load request due to malformed request"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzq(Lcom/google/android/gms/cast/internal/zzas;Lorg/json/JSONObject;)J
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PAUSE"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 6
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzd:Lcom/google/android/gms/cast/internal/zzau;

    .line 8
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1
.end method

.method public final zzr(Lcom/google/android/gms/cast/internal/zzas;Lorg/json/JSONObject;)J
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PLAY"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 6
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zze:Lcom/google/android/gms/cast/internal/zzau;

    .line 8
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1
.end method

.method public final zzu(Lcom/google/android/gms/cast/internal/zzas;)J
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEM_IDS"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzq:Lcom/google/android/gms/cast/internal/zzau;

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1
.end method

.method public final zzv(Lcom/google/android/gms/cast/internal/zzas;[I)J
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEMS"

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 7
    aget v6, p2, v5

    .line 8
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 9
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->zzr:Lcom/google/android/gms/cast/internal/zzau;

    .line 11
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    return-wide v1
.end method
