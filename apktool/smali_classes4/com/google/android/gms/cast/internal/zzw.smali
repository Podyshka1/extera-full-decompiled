.class public final Lcom/google/android/gms/cast/internal/zzw;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "SourceFile"


# static fields
.field private static final zze:Lcom/google/android/gms/cast/internal/Logger;

.field private static final zzf:Ljava/lang/Object;

.field private static final zzg:Ljava/lang/Object;


# instance fields
.field private zzA:Landroid/os/Bundle;

.field private final zzB:Ljava/util/Map;

.field private zzC:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

.field private zzD:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

.field private zzh:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final zzi:Lcom/google/android/gms/cast/CastDevice;

.field private final zzj:Lcom/google/android/gms/cast/Cast$Listener;

.field private final zzk:Ljava/util/Map;

.field private final zzl:J

.field private final zzm:Landroid/os/Bundle;

.field private zzn:Lcom/google/android/gms/cast/internal/zzv;

.field private zzo:Ljava/lang/String;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:D

.field private zzu:Lcom/google/android/gms/cast/zzav;

.field private zzv:I

.field private zzw:I

.field private final zzx:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzy:Ljava/lang/String;

.field private zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzw;->zzf:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzw;->zzg:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    iput-object p4, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    iput-object p7, p0, Lcom/google/android/gms/cast/internal/zzw;->zzj:Lcom/google/android/gms/cast/Cast$Listener;

    iput-wide p5, p0, Lcom/google/android/gms/cast/internal/zzw;->zzl:J

    iput-object p8, p0, Lcom/google/android/gms/cast/internal/zzw;->zzm:Landroid/os/Bundle;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzk:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzx:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/HashMap;

    .line 4
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzB:Ljava/util/Map;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzw;->zzY()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzw;->zzp()D

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/cast/internal/zzw;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzk:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzh:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-void
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/cast/internal/zzw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/cast/internal/zzw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzy:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/cast/internal/zzw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzz:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzC:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/cast/internal/zzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzw;->zzY()V

    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zza;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zza;->zza()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzo:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzo:Ljava/lang/String;

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    sget-object v0, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/cast/internal/zzw;->zzq:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    const-string v1, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 4
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzq:Z

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzq:Z

    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzab;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zze()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzh:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzh:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzj:Lcom/google/android/gms/cast/Cast$Listener;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzb()D

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-wide v5, p0, Lcom/google/android/gms/cast/internal/zzw;->zzt:D

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzt:D

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzg()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzp:Z

    if-eq v1, v2, :cond_2

    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzp:Z

    move v0, v3

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zza()D

    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sget-object v1, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v5, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v5, v7, v3

    const-string v2, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 10
    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    if-eqz v0, :cond_4

    .line 11
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzc()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzv:I

    if-eq v0, v2, :cond_5

    iput v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzv:I

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    .line 13
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v5, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v5, v7, v3

    const-string v2, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 14
    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v2, :cond_7

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzv:I

    .line 15
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    .line 16
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzd()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzw:I

    if-eq v0, v2, :cond_8

    iput v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzw:I

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v4

    .line 17
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v5, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    aput-object v5, v6, v3

    const-string v2, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 18
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_a

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    if-eqz v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzw:I

    .line 19
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzu:Lcom/google/android/gms/cast/zzav;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzu:Lcom/google/android/gms/cast/zzav;

    :cond_b
    iput-boolean v4, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/gms/cast/internal/zzw;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzw;->zzaa(JI)V

    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/gms/cast/internal/zzw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzw;->zzab(I)V

    return-void
.end method

.method private final zzY()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzs:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzv:I

    iput v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzw:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzh:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzo:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzt:D

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzw;->zzp()D

    iput-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzp:Z

    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzu:Lcom/google/android/gms/cast/zzav;

    return-void
.end method

.method private final zzZ()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzk:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzk:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzaa(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzB:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzB:Ljava/util/Map;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzab(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzw;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzD:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzD:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/cast/internal/zzw;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzj:Lcom/google/android/gms/cast/Cast$Listener;

    return-object p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/cast/internal/zzw;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method

.method static bridge synthetic zzw()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/cast/internal/zzw;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzC:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-object p0
.end method

.method static bridge synthetic zzy()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/internal/zzw;->zzf:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/cast/internal/zzag;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/cast/internal/zzag;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/internal/zzag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/internal/zzag;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzn:Lcom/google/android/gms/cast/internal/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "disconnect(); ServiceListener=%s, isConnected=%b"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzn:Lcom/google/android/gms/cast/internal/zzv;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzn:Lcom/google/android/gms/cast/internal/zzv;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzv;->zzq()Lcom/google/android/gms/cast/internal/zzw;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzw;->zzZ()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzag;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzag;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    const-string v2, "Error while disconnecting the controller interface"

    new-array v3, v4, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void

    :goto_2
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 9
    throw v0

    .line 2
    :cond_1
    :goto_3
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "already disposed, so short-circuiting"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getConnectionHint()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzA:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzA:Landroid/os/Bundle;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzy:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzw;->zzz:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    .line 2
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    const-string v1, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzl:J

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzm:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/internal/zzv;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/internal/zzv;-><init>(Lcom/google/android/gms/cast/internal/zzw;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzn:Lcom/google/android/gms/cast/internal/zzv;

    .line 7
    new-instance v1, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzn:Lcom/google/android/gms/cast/internal/zzv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v2, "listener"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzy:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_application_id"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzz:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_session_id"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzw;->zzZ()V

    return-void
.end method

.method protected final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzw;->zze:Lcom/google/android/gms/cast/internal/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "in onPostInitHandler; statusCode=%d"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8fc

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/gms/cast/internal/zzw;->zzs:Z

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzs:Z

    iput-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzq:Z

    iput-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzw;->zzr:Z

    :goto_1
    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzA:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 3
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move p1, v4

    .line 4
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final zzR(I)V
    .locals 8

    .line 1
    sget-object v1, Lcom/google/android/gms/cast/internal/zzw;->zzf:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzC:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Lcom/google/android/gms/cast/internal/zzq;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/cast/internal/zzq;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->zzC:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzp()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    const-string v1, "device should not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    const/16 v1, 0x800

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x4

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->zzi:Lcom/google/android/gms/cast/CastDevice;

    const-string v5, "Chromecast Audio"

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :cond_2
    return-wide v3
.end method
