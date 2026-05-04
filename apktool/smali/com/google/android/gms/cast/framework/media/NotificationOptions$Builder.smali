.class public final Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/List;

.field private zzd:[I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:J

.field private zzs:Z

.field private zzt:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzn()Lcom/google/android/gms/internal/cast/zzfq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzb:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzq()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzd:[I

    const-string/jumbo v0, "smallIconDrawableResId"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zze:I

    const-string/jumbo v0, "stopLiveStreamDrawableResId"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzf:I

    const-string/jumbo v0, "pauseDrawableResId"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzg:I

    const-string/jumbo v0, "playDrawableResId"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzh:I

    const-string/jumbo v0, "skipNextDrawableResId"

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzi:I

    const-string/jumbo v0, "skipPrevDrawableResId"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzj:I

    const-string v0, "forwardDrawableResId"

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzk:I

    const-string v0, "forward10DrawableResId"

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzl:I

    const-string v0, "forward30DrawableResId"

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzm:I

    const-string/jumbo v0, "rewindDrawableResId"

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzn:I

    const-string/jumbo v0, "rewind10DrawableResId"

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzo:I

    const-string/jumbo v0, "rewind30DrawableResId"

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzp:I

    const-string v0, "disconnectDrawableResId"

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzq:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzr:J

    return-void
.end method

.method private static zza(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Lcom/google/android/gms/cast/framework/media/internal/ResourceProvider;

    sget v2, Lcom/google/android/gms/cast/framework/media/internal/ResourceProvider;->$r8$clinit:I

    const-string v2, "findResourceByName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 37

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzb:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzd:[I

    iget-wide v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzr:J

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza:Ljava/lang/String;

    iget v7, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zze:I

    iget v8, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzf:I

    iget v9, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzg:I

    iget v10, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzh:I

    iget v11, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzi:I

    iget v12, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzj:I

    iget v13, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzk:I

    iget v14, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzl:I

    iget v15, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzm:I

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzn:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzo:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzp:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzq:I

    const-string/jumbo v20, "notificationImageSizeDimenResId"

    .line 2
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v20

    .line 3
    const-string v21, "castingToDeviceStringResId"

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v21

    .line 4
    const-string/jumbo v22, "stopLiveStreamStringResId"

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v22

    .line 5
    const-string/jumbo v23, "pauseStringResId"

    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v23

    .line 6
    const-string/jumbo v24, "playStringResId"

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v24

    .line 7
    const-string/jumbo v25, "skipNextStringResId"

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v25

    .line 8
    const-string/jumbo v26, "skipPrevStringResId"

    invoke-static/range {v26 .. v26}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v26

    .line 9
    const-string v27, "forwardStringResId"

    invoke-static/range {v27 .. v27}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v27

    .line 10
    const-string v28, "forward10StringResId"

    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v28

    .line 11
    const-string v29, "forward30StringResId"

    invoke-static/range {v29 .. v29}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v29

    .line 12
    const-string/jumbo v30, "rewindStringResId"

    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v30

    .line 13
    const-string/jumbo v31, "rewind10StringResId"

    invoke-static/range {v31 .. v31}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v31

    .line 14
    const-string/jumbo v32, "rewind30StringResId"

    invoke-static/range {v32 .. v32}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v32

    .line 15
    const-string v33, "disconnectStringResId"

    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zza(Ljava/lang/String;)I

    move-result v33

    move/from16 v34, v1

    iget-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzs:Z

    move/from16 v35, v1

    iget-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzt:Z

    move/from16 v36, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v34

    const/16 v34, 0x0

    invoke-direct/range {v1 .. v36}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;-><init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;ZZ)V

    return-object v1
.end method
