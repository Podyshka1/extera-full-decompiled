.class public final Lcom/google/android/gms/measurement/internal/zzpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjg;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzpg;


# instance fields
.field private zzA:Ljava/util/List;

.field private zzB:J

.field private final zzC:Ljava/util/Map;

.field private final zzD:Ljava/util/Map;

.field private final zzE:Ljava/util/Map;

.field private final zzF:Ljava/util/Map;

.field private zzG:Lcom/google/android/gms/measurement/internal/zzlu;

.field private zzH:Ljava/lang/String;

.field private zzI:Lcom/google/android/gms/measurement/internal/zzay;

.field private zzJ:J

.field private final zzK:Lcom/google/android/gms/measurement/internal/zzpo;

.field zza:J

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzht;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzgz;

.field private zze:Lcom/google/android/gms/measurement/internal/zzav;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzhb;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzok;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzad;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzpk;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzlp;

.field private zzk:Lcom/google/android/gms/measurement/internal/zznn;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzou;

.field private zzm:Lcom/google/android/gms/measurement/internal/zzhk;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzic;

.field private final zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzp:Z

.field private zzq:Ljava/util/List;

.field private final zzr:Ljava/util/Deque;

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Ljava/nio/channels/FileLock;

.field private zzy:Ljava/nio/channels/FileChannel;

.field private zzz:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzph;Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/LinkedList;

    .line 2
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzr:Ljava/util/Deque;

    new-instance p2, Ljava/util/HashMap;

    .line 3
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzF:Ljava/util/Map;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzpb;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzpb;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzph;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 6
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzy(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzic;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzB:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzou;

    .line 7
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzou;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzl:Lcom/google/android/gms/measurement/internal/zzou;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzpk;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzpk;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzi:Lcom/google/android/gms/measurement/internal/zzpk;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzgz;

    .line 10
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzgz;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzht;

    .line 12
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzht;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    new-instance p2, Ljava/util/HashMap;

    .line 14
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzC:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 15
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzD:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 16
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzE:Ljava/util/Map;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzov;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzov;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;Lcom/google/android/gms/measurement/internal/zzph;)V

    .line 18
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzpg;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzb:Lcom/google/android/gms/measurement/internal/zzpg;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/zzpg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzb:Lcom/google/android/gms/measurement/internal/zzpg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzph;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzph;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpg;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzpg;-><init>(Lcom/google/android/gms/measurement/internal/zzph;Lcom/google/android/gms/measurement/internal/zzic;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzb:Lcom/google/android/gms/measurement/internal/zzpg;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzb:Lcom/google/android/gms/measurement/internal/zzpg;

    return-object p0
.end method

.method static final zzaA(Lcom/google/android/gms/internal/measurement/zzhr;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    int-to-long v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    return-void
.end method

.method static final zzaB(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;->zzj(I)Lcom/google/android/gms/internal/measurement/zzhr;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzaC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzan;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Lcom/google/android/gms/measurement/internal/zzjk;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zze;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zze;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->zza()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v1

    .line 5
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzji;->zzb:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne v1, v4, :cond_2

    .line 6
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjk;)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    if-eq v4, v5, :cond_2

    .line 10
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzji;->zzd:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne v4, p1, :cond_1

    return v3

    :cond_1
    return v2

    .line 8
    :cond_2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Lcom/google/android/gms/measurement/internal/zzjk;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzam;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzv(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method private final zzaD(Lcom/google/android/gms/internal/measurement/zzhs;)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    const-string v1, "gad_"

    .line 3
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzpk;->zzH(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final zzaE()Lcom/google/android/gms/measurement/internal/zzay;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzI:Lcom/google/android/gms/measurement/internal/zzay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzoy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzoy;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;Lcom/google/android/gms/measurement/internal/zzjg;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzI:Lcom/google/android/gms/measurement/internal/zzay;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzI:Lcom/google/android/gms/measurement/internal/zzay;

    return-object v0
.end method

.method private final zzaF()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzr:Ljava/util/Deque;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaE()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zzc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzJ:J

    sub-long/2addr v0, v2

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzaB:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Scheduling notify next app runnable, delay in ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaE()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzay;->zzb(J)V

    :cond_0
    return-void
.end method

.method private final zzaG(Ljava/lang/String;J)Z
    .locals 43

    move-object/from16 v1, p0

    .line 1
    const-string v0, "_f"

    const-string v2, "_ai"

    const-string v3, "purchase"

    const-string v4, "items"

    const-wide/16 v5, 0x1

    .line 294
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    :try_start_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzpc;

    const/4 v8, 0x0

    .line 2
    invoke-direct {v15, v1, v8}, Lcom/google/android/gms/measurement/internal/zzpc;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;[B)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v9

    iget-wide v13, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzB:J

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    .line 4
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzav;->zzat(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzpc;)V

    iget-object v9, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    if-eqz v9, :cond_0

    .line 5
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move-object v2, v1

    const/4 v4, 0x0

    goto/16 :goto_45

    .line 422
    :cond_1
    iget-object v9, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzic;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzi()Lcom/google/android/gms/internal/measurement/zzic;

    move-object/from16 v17, v8

    move-object/from16 v18, v17

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_0
    iget-object v11, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    .line 8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "_et"

    const-string v6, "_fr"

    move/from16 p3, v13

    const-string v13, "_e"

    move/from16 v21, v14

    if-ge v12, v11, :cond_36

    :try_start_1
    iget-object v11, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    .line 9
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhr;

    const/16 v22, 0x1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v14

    move-object/from16 v23, v7

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    move/from16 v24, v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v7, v12}, Lcom/google/android/gms/measurement/internal/zzht;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "_err"

    if-eqz v7, :cond_4

    .line 12
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    const-string v6, "Dropping blocked raw event. appId"

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 15
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v13

    .line 16
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 17
    invoke-virtual {v5, v6, v7, v13}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v5

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzht;->zzn(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v5

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzht;->zzo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v25

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v27

    const-string v29, "_ev"

    .line 23
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v28, 0xb

    move-object/from16 v26, v5

    .line 24
    invoke-virtual/range {v25 .. v31}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto/16 :goto_47

    :cond_3
    :goto_1
    move/from16 v13, p3

    move-object/from16 v27, v3

    move-object v7, v4

    move/from16 v14, v21

    move/from16 v4, v24

    move-object/from16 v21, v2

    goto/16 :goto_1e

    .line 25
    :cond_4
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v25, v14

    const-string v14, "ecommerce_purchase"

    move-object/from16 v26, v4

    const-string v4, "_iap"

    if-nez v25, :cond_6

    .line 27
    :try_start_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 28
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v25, v10

    move/from16 v14, v21

    goto :goto_4

    .line 29
    :cond_6
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v7

    move/from16 v25, v10

    const-string v10, "_ct"

    .line 30
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    if-nez v21, :cond_7

    iget-object v10, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 31
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-direct {v1, v10, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 33
    invoke-direct {v1, v10, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 34
    invoke-direct {v1, v10, v14}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    const-string v4, "new"

    goto :goto_3

    .line 35
    :cond_7
    const-string v4, "returning"

    :goto_3
    :try_start_4
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzhv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 36
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 37
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    move/from16 v14, v22

    .line 38
    :goto_4
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjm;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 40
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v7, "Renaming ad_impression to _ai"

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x5

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    .line 44
    :goto_5
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()I

    move-result v7

    if-ge v4, v7, :cond_9

    const-string v7, "ad_platform"

    .line 45
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 46
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "admob"

    .line 47
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 49
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v10, "AdMob ad impression logged from app. Potentially duplicative."

    .line 50
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 51
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v4

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 52
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Lcom/google/android/gms/measurement/internal/zzht;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v7, "_c"

    if-nez v4, :cond_c

    .line 53
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v21, v2

    .line 55
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v27, v3

    const v3, 0x17333

    if-eq v2, v3, :cond_a

    goto :goto_7

    .line 114
    :cond_a
    const-string v2, "_ui"

    .line 55
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_6
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/16 v28, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v30, v5

    move v5, v8

    move-object/from16 v28, v9

    const/16 v29, 0x0

    goto/16 :goto_e

    :cond_c
    move-object/from16 v21, v2

    move-object/from16 v27, v3

    goto :goto_6

    .line 56
    :goto_8
    :try_start_6
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v29, v4

    const-string v4, "_r"

    if-ge v2, v3, :cond_f

    .line 57
    :try_start_7
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 58
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhv;

    move-object/from16 v30, v5

    const-wide/16 v4, 0x1

    .line 59
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 61
    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zzd(ILcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    move/from16 v28, v22

    goto :goto_9

    :cond_d
    move-object/from16 v30, v5

    .line 62
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 63
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhv;

    const-wide/16 v4, 0x1

    .line 64
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 66
    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zzd(ILcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    move/from16 v10, v22

    :cond_e
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v29

    move-object/from16 v5, v30

    goto :goto_8

    :cond_f
    move-object/from16 v30, v5

    if-nez v28, :cond_10

    if-eqz v29, :cond_10

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Marking event as conversion"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 69
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v5

    move/from16 v28, v10

    .line 70
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    move v5, v8

    move-object v3, v9

    const-wide/16 v8, 0x1

    .line 74
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 75
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzg(Lcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/internal/measurement/zzhr;

    goto :goto_a

    :cond_10
    move v5, v8

    move-object v3, v9

    move/from16 v28, v10

    :goto_a
    if-nez v28, :cond_11

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v8, "Marking event as real-time"

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 78
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v9

    .line 79
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 82
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzg(Lcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 83
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v31

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzC()J

    move-result-wide v32

    iget-object v2, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 85
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v34

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    .line 86
    invoke-virtual/range {v31 .. v41}, Lcom/google/android/gms/measurement/internal/zzav;->zzw(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zze:J

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    iget-object v10, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v28, v3

    .line 88
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzo:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v8, v2

    if-lez v2, :cond_12

    .line 89
    invoke-static {v11, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaB(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    move/from16 v16, v22

    .line 90
    :goto_b
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpp;->zzh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v29, :cond_19

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v31

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzC()J

    move-result-wide v32

    iget-object v2, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v34

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    .line 94
    invoke-virtual/range {v31 .. v41}, Lcom/google/android/gms/measurement/internal/zzav;->zzw(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:J

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzfy;->zzn:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 96
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v4

    int-to-long v8, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_19

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 100
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 101
    :goto_c
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()I

    move-result v9

    if-ge v2, v9, :cond_15

    .line 102
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v9

    .line 103
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 104
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhv;

    move-object v8, v4

    move v4, v2

    goto :goto_d

    .line 105
    :cond_13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    move/from16 v3, v22

    :cond_14
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_15
    if-eqz v3, :cond_17

    if-eqz v8, :cond_16

    .line 115
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzj(I)Lcom/google/android/gms/internal/measurement/zzhr;

    goto :goto_e

    :cond_16
    const/4 v8, 0x0

    :cond_17
    if-eqz v8, :cond_18

    .line 106
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzba()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 107
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    const-wide/16 v8, 0xa

    .line 108
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 110
    invoke-virtual {v11, v4, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzd(ILcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    goto :goto_e

    .line 111
    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 114
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_e
    if-eqz v29, :cond_1e

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v8, -0x1

    .line 117
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v10, "currency"

    const-string v12, "value"

    if-ge v3, v9, :cond_1c

    .line 118
    :try_start_8
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    move v4, v3

    goto :goto_10

    .line 119
    :cond_1a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move v8, v3

    :cond_1b
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1c
    const/4 v3, -0x1

    if-ne v4, v3, :cond_1d

    goto/16 :goto_13

    .line 120
    :cond_1d
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zze()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzi()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzj(I)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 135
    invoke-static {v11, v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaB(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 136
    invoke-static {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaA(Lcom/google/android/gms/internal/measurement/zzhr;ILjava/lang/String;)V

    :cond_1e
    const/4 v3, -0x1

    goto :goto_13

    :cond_1f
    const/4 v3, -0x1

    if-ne v8, v3, :cond_20

    goto :goto_12

    .line 121
    :cond_20
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_21

    const/4 v8, 0x0

    .line 123
    :goto_11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_22

    .line 124
    invoke-virtual {v2, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 125
    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 126
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_11

    .line 127
    :cond_21
    :goto_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 129
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzj(I)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 131
    invoke-static {v11, v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaB(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 132
    invoke-static {v11, v2, v10}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaA(Lcom/google/android/gms/internal/measurement/zzhr;ILjava/lang/String;)V

    .line 137
    :cond_22
    :goto_13
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v7, 0x3e8

    if-eqz v2, :cond_26

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v18, :cond_23

    .line 139
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v9

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v12

    sub-long/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-gtz v2, :cond_23

    .line 140
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzmb;->zzba()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 141
    invoke-direct {v1, v11, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaI(Lcom/google/android/gms/internal/measurement/zzhr;Lcom/google/android/gms/internal/measurement/zzhr;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v9, v28

    .line 142
    invoke-virtual {v9, v5, v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzf(ILcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    move v8, v5

    move/from16 v10, v25

    :goto_14
    const/16 v17, 0x0

    const/16 v18, 0x0

    goto/16 :goto_17

    :cond_23
    move-object/from16 v9, v28

    move/from16 v10, p3

    move v8, v5

    move-object/from16 v17, v11

    goto/16 :goto_17

    :cond_24
    move-object/from16 v9, v28

    :cond_25
    move/from16 v4, v25

    goto/16 :goto_16

    :cond_26
    move-object/from16 v9, v28

    .line 191
    const-string v2, "_vs"

    .line 143
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhs;

    move-object/from16 v4, v30

    invoke-static {v2, v4}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v2

    if-nez v2, :cond_25

    if-eqz v17, :cond_27

    .line 145
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v28

    sub-long v12, v12, v28

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v2, v12, v7

    if-gtz v2, :cond_27

    .line 146
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzmb;->zzba()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 147
    invoke-direct {v1, v2, v11}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaI(Lcom/google/android/gms/internal/measurement/zzhr;Lcom/google/android/gms/internal/measurement/zzhr;)Z

    move-result v4

    if-eqz v4, :cond_27

    move/from16 v4, v25

    .line 148
    invoke-virtual {v9, v4, v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzf(ILcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    move v10, v4

    move v8, v5

    goto :goto_14

    :cond_27
    move/from16 v4, v25

    move/from16 v8, p3

    move v10, v4

    move-object/from16 v18, v11

    goto :goto_17

    :cond_28
    move/from16 v4, v25

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzfy;->zzbj:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v7, 0x0

    .line 150
    invoke-virtual {v2, v7, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 151
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v6, "_v"

    if-nez v2, :cond_29

    .line 152
    :try_start_9
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 153
    :cond_29
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 154
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2a
    const/4 v2, 0x0

    .line 155
    :goto_15
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()I

    move-result v6

    if-ge v2, v6, :cond_2c

    .line 156
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v6

    const-string v7, "_elt"

    .line 157
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 158
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhr;->zzr(J)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 159
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzj(I)Lcom/google/android/gms/internal/measurement/zzhr;

    goto :goto_16

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2c
    :goto_16
    move v10, v4

    move v8, v5

    .line 160
    :goto_17
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()I

    move-result v2

    if-eqz v2, :cond_34

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpk;->zzE(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    .line 162
    :goto_18
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()I

    move-result v5

    if-ge v4, v5, :cond_31

    .line 163
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zzc(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v26

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 165
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzk()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2f

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 171
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzk()Ljava/util/List;

    move-result-object v5

    .line 173
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/os/Bundle;

    const/4 v13, 0x0

    .line 174
    :goto_19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_2e

    .line 175
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 176
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzk()Ljava/util/List;

    move-result-object v22

    move-object/from16 v25, v3

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzpk;->zzE(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    .line 177
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zzhw;->zzk()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/gms/internal/measurement/zzhw;

    move/from16 v26, v4

    .line 178
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v25

    move-object/from16 v28, v5

    move-object/from16 v5, v25

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-virtual {v1, v4, v5, v3, v6}, Lcom/google/android/gms/measurement/internal/zzpg;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhv;Landroid/os/Bundle;Ljava/lang/String;)V

    move/from16 v4, v26

    move-object/from16 v5, v28

    goto :goto_1a

    :cond_2d
    move/from16 v26, v4

    move-object/from16 v28, v5

    .line 179
    aput-object v3, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v26

    move-object/from16 v5, v28

    goto :goto_19

    :cond_2e
    move/from16 v26, v4

    .line 180
    invoke-virtual {v2, v7, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1b

    :cond_2f
    move/from16 v26, v4

    .line 166
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 167
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 169
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhv;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_30
    :goto_1b
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v26, v7

    const/4 v3, -0x1

    goto/16 :goto_18

    :cond_31
    move-object/from16 v7, v26

    .line 181
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzi()Lcom/google/android/gms/internal/measurement/zzhr;

    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 183
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_32
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 186
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 187
    invoke-virtual {v3, v12, v6}, Lcom/google/android/gms/measurement/internal/zzpk;->zzd(Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 182
    :cond_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_35

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 189
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    goto :goto_1d

    :cond_34
    move-object/from16 v7, v26

    :cond_35
    iget-object v2, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    .line 190
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhs;

    move/from16 v4, v24

    invoke-interface {v2, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzic;->zzg(Lcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    add-int/lit8 v13, p3, 0x1

    :goto_1e
    add-int/lit8 v12, v4, 0x1

    move-object v4, v7

    move-object/from16 v2, v21

    move-object/from16 v7, v23

    move-object/from16 v3, v27

    const-wide/16 v5, 0x1

    goto/16 :goto_0

    :cond_36
    move-object v4, v5

    move-object/from16 v23, v7

    const/16 v22, 0x1

    const-wide/16 v2, 0x0

    move/from16 v5, p3

    move-wide v7, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v5, :cond_3a

    .line 192
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzd(I)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v10

    .line 193
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v10, v6}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v11

    if-eqz v11, :cond_37

    .line 199
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzj(I)Lcom/google/android/gms/internal/measurement/zzic;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 195
    :cond_37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v10, v4}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zze()Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v10

    .line 196
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_20

    :cond_38
    const/4 v10, 0x0

    :goto_20
    if-eqz v10, :cond_39

    .line 197
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v2

    if-lez v11, :cond_39

    .line 198
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v7, v10

    :cond_39
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_3a
    const/4 v4, 0x0

    .line 200
    invoke-direct {v1, v9, v7, v8, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaH(Lcom/google/android/gms/internal/measurement/zzic;JZ)V

    .line 201
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v5, "_se"

    if-eqz v4, :cond_3c

    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v6, "_s"

    .line 202
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 204
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    const-string v0, "_sid"

    .line 206
    invoke-static {v9, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzx(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3d

    move/from16 v4, v22

    .line 207
    invoke-direct {v1, v9, v7, v8, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaH(Lcom/google/android/gms/internal/measurement/zzic;JZ)V

    goto :goto_22

    .line 208
    :cond_3d
    invoke-static {v9, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzx(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3e

    .line 209
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzr(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v4, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 212
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 213
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    :cond_3e
    :goto_22
    iget-object v0, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 216
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 217
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Cannot fix consent fields without appInfo. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    .line 221
    :cond_3f
    invoke-virtual {v1, v4, v9}, Lcom/google/android/gms/measurement/internal/zzpg;->zzI(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 220
    :goto_23
    iget-object v0, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 224
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 225
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v4

    if-nez v4, :cond_40

    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 227
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Cannot populate ad_campaign_info without appInfo. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_24

    .line 229
    :cond_40
    invoke-virtual {v1, v4, v9}, Lcom/google/android/gms/measurement/internal/zzpg;->zzJ(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V

    :goto_24
    const-wide v4, 0x7fffffffffffffffL

    .line 230
    invoke-virtual {v9, v4, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzv(J)Lcom/google/android/gms/internal/measurement/zzic;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {v9, v4, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzx(J)Lcom/google/android/gms/internal/measurement/zzic;

    const/4 v4, 0x0

    .line 231
    :goto_25
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v0

    if-ge v4, v0, :cond_43

    .line 232
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzd(I)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzf()J

    move-result-wide v5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzu()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_41

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzf()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzv(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 235
    :cond_41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzf()J

    move-result-wide v5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzw()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_42

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzf()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzx(J)Lcom/google/android/gms/internal/measurement/zzic;

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 237
    :cond_43
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzak()Lcom/google/android/gms/internal/measurement/zzic;

    .line 238
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjl;->zza:Lcom/google/android/gms/measurement/internal/zzjl;

    iget-object v0, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 240
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzaf()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    .line 241
    invoke-static {v4, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v4

    .line 242
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    .line 243
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzad(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v4

    .line 244
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzac(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)V

    .line 245
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 246
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 250
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzi(Ljava/lang/String;)V

    goto :goto_26

    .line 247
    :cond_44
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 248
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzj(Ljava/lang/String;)V

    .line 250
    :cond_45
    :goto_26
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 251
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 252
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzR()Lcom/google/android/gms/internal/measurement/zzic;

    .line 253
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzU()Lcom/google/android/gms/internal/measurement/zzic;

    .line 254
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzan()Lcom/google/android/gms/internal/measurement/zzic;

    .line 255
    :cond_46
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 256
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzX()Lcom/google/android/gms/internal/measurement/zzic;

    .line 257
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzav()Lcom/google/android/gms/internal/measurement/zzic;

    .line 258
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqp;->zza()Z

    .line 259
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 260
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzpp;->zzX(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 262
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v6

    .line 263
    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 264
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzak()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 265
    invoke-virtual {v1, v9, v15}, Lcom/google/android/gms/measurement/internal/zzpg;->zzT(Lcom/google/android/gms/internal/measurement/zzic;Lcom/google/android/gms/measurement/internal/zzpc;)V

    .line 266
    :cond_48
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzag()Lcom/google/android/gms/internal/measurement/zzic;

    .line 267
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzm()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v24

    .line 268
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    move-result-object v25

    .line 269
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Ljava/util/List;

    move-result-object v26

    .line 270
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzk()Ljava/util/List;

    move-result-object v27

    .line 271
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzu()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 272
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzw()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 273
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    const/16 v22, 0x1

    xor-int/lit8 v30, v0, 0x1

    .line 274
    invoke-virtual/range {v24 .. v30}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 276
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzD(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_63

    :try_start_b
    new-instance v4, Ljava/util/HashMap;

    .line 277
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    .line 278
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzf()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 280
    :goto_27
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v0

    if-ge v7, v0, :cond_60

    .line 281
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzic;->zzd(I)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 282
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v10, "_ep"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-string v10, "_efs"

    const-string v11, "_sr"

    if-eqz v0, :cond_4e

    .line 283
    :try_start_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v12, "_en"

    invoke-static {v0, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzI(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzbc;

    if-nez v12, :cond_49

    .line 285
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v12

    iget-object v13, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 286
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 287
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v12

    if-eqz v12, :cond_49

    .line 288
    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    if-eqz v12, :cond_4d

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzbc;->zzi:Ljava/lang/Long;

    if-nez v0, :cond_4d

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzbc;->zzj:Ljava/lang/Long;

    if-eqz v0, :cond_4a

    .line 289
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v19, 0x1

    cmp-long v13, v13, v19

    if-lez v13, :cond_4b

    .line 290
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 291
    invoke-static {v8, v11, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_28

    :cond_4a
    const-wide/16 v19, 0x1

    :cond_4b
    :goto_28
    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzbc;->zzk:Ljava/lang/Boolean;

    if-eqz v0, :cond_4c

    .line 292
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 293
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-object/from16 v12, v23

    .line 294
    invoke-static {v8, v10, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_29

    :cond_4c
    move-object/from16 v12, v23

    .line 295
    :goto_29
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4d
    move-object/from16 v12, v23

    const-wide/16 v19, 0x1

    .line 296
    :goto_2a
    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzf(ILcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-wide/from16 p2, v2

    :goto_2b
    move-object/from16 v21, v6

    move v1, v7

    move-object v6, v12

    move-object/from16 v17, v15

    const/4 v12, 0x1

    goto/16 :goto_38

    :cond_4e
    move-object/from16 v12, v23

    const-wide/16 v19, 0x1

    .line 297
    :try_start_d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v13

    iget-object v0, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 298
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v14

    const-string v0, "measurement.account.time_zone_offset_minutes"

    .line 299
    invoke-virtual {v13, v14, v0}, Lcom/google/android/gms/measurement/internal/zzht;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v17, :cond_4f

    .line 301
    :try_start_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-wide/from16 p2, v2

    goto :goto_2d

    :catch_0
    move-exception v0

    .line 423
    :try_start_f
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 302
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v13

    .line 303
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v13

    move-wide/from16 p2, v2

    const-string v2, "Unable to parse timezone offset. appId"

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 304
    invoke-virtual {v13, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_2c
    move-wide/from16 v13, p2

    goto :goto_2d

    :cond_4f
    move-wide/from16 p2, v2

    goto :goto_2c

    .line 305
    :goto_2d
    :try_start_10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v0

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v13, v14}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaj(JJ)J

    move-result-wide v2

    .line 306
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v1, "_dbg"

    .line 307
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_52

    .line 308
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzhw;

    move-object/from16 v18, v10

    .line 309
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 310
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_2f

    :cond_50
    const/4 v0, 0x1

    goto :goto_30

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_47

    :cond_51
    move-object/from16 v10, v18

    goto :goto_2e

    :cond_52
    move-object/from16 v18, v10

    .line 311
    :goto_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v1, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 312
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/measurement/internal/zzht;->zzm(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_30
    if-gtz v0, :cond_53

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Sample rate must be positive. event, rate"

    .line 315
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzf(ILcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    goto/16 :goto_2b

    .line 318
    :cond_53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzbc;

    if-nez v1, :cond_55

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    iget-object v10, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v23, v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v12}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v1

    if-nez v1, :cond_54

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v10, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v12, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 322
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v24, v13

    .line 323
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v13

    .line 324
    invoke-virtual {v1, v10, v12, v13}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v26, Lcom/google/android/gms/measurement/internal/zzbc;

    iget-object v1, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 325
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v27

    .line 326
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v28

    .line 327
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v35

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v26 .. v42}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v1, v26

    goto :goto_32

    :cond_54
    :goto_31
    move-wide/from16 v24, v13

    goto :goto_32

    :cond_55
    move-object/from16 v23, v12

    goto :goto_31

    .line 328
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v12, "_eid"

    invoke-static {v10, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzI(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_56

    const/16 v22, 0x1

    :goto_33
    const/4 v12, 0x1

    goto :goto_34

    :cond_56
    const/16 v22, 0x0

    goto :goto_33

    :goto_34
    if-ne v0, v12, :cond_59

    .line 330
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v22, :cond_58

    .line 331
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbc;->zzi:Ljava/lang/Long;

    if-nez v0, :cond_57

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbc;->zzj:Ljava/lang/Long;

    if-nez v0, :cond_57

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbc;->zzk:Ljava/lang/Boolean;

    if-eqz v0, :cond_58

    :cond_57
    const/4 v2, 0x0

    .line 332
    invoke-virtual {v1, v2, v2, v2}, Lcom/google/android/gms/measurement/internal/zzbc;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v0

    .line 333
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_58
    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzf(ILcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    move-object/from16 v21, v6

    move v1, v7

    move-object/from16 v17, v15

    move-object/from16 v6, v23

    goto/16 :goto_38

    .line 335
    :cond_59
    invoke-virtual {v6, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    if-nez v13, :cond_5b

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    int-to-long v13, v0

    .line 337
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v11, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v22, :cond_5a

    const/4 v10, 0x0

    .line 340
    invoke-virtual {v1, v10, v0, v10}, Lcom/google/android/gms/measurement/internal/zzbc;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v1

    .line 341
    :cond_5a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v1

    .line 343
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v6

    move v1, v7

    move-object/from16 v17, v15

    move-object/from16 v6, v23

    goto/16 :goto_37

    .line 344
    :cond_5b
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzbc;->zzh:Ljava/lang/Long;

    if-eqz v13, :cond_5c

    .line 345
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v21, v6

    move/from16 v26, v7

    move-object/from16 v17, v15

    goto :goto_35

    .line 346
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v13

    move-object/from16 v17, v15

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzp()J

    move-result-wide v14

    move-object/from16 v21, v6

    move/from16 v26, v7

    move-wide/from16 v6, v24

    invoke-virtual {v13, v14, v15, v6, v7}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaj(JJ)J

    move-result-wide v13

    :goto_35
    cmp-long v6, v13, v2

    if-eqz v6, :cond_5f

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-object/from16 v7, v18

    move-object/from16 v6, v23

    invoke-static {v8, v7, v6}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    int-to-long v13, v0

    .line 349
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v11, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v22, :cond_5d

    .line 352
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v0, v7}, Lcom/google/android/gms/measurement/internal/zzbc;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v1

    .line 353
    :cond_5d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v1

    .line 355
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    :goto_36
    move/from16 v1, v26

    goto :goto_37

    :cond_5f
    move-object/from16 v6, v23

    if-eqz v22, :cond_5e

    .line 357
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2, v2}, Lcom/google/android/gms/measurement/internal/zzbc;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v1

    .line 358
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 359
    :goto_37
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzf(ILcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    :goto_38
    add-int/lit8 v7, v1, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v23, v6

    move-object/from16 v15, v17

    move-object/from16 v6, v21

    goto/16 :goto_27

    :cond_60
    move-wide/from16 p2, v2

    move-object/from16 v17, v15

    const/4 v12, 0x1

    .line 360
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 361
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzi()Lcom/google/android/gms/internal/measurement/zzic;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 362
    :cond_61
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzh(Lcom/google/android/gms/measurement/internal/zzbc;)V

    goto :goto_39

    :cond_62
    move-object/from16 v15, v17

    goto :goto_3a

    :cond_63
    move-wide/from16 p2, v2

    const/4 v12, 0x1

    :goto_3a
    iget-object v0, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 364
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-nez v0, :cond_65

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Bundling raw events w/o app info. appId"

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 368
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 369
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_64
    const/4 v4, 0x0

    goto :goto_3f

    .line 370
    :cond_65
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v2

    if-lez v2, :cond_64

    .line 371
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-eqz v4, :cond_66

    .line 372
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzA(J)Lcom/google/android/gms/internal/measurement/zzic;

    goto :goto_3b

    .line 373
    :cond_66
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzB()Lcom/google/android/gms/internal/measurement/zzic;

    .line 374
    :goto_3b
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-nez v6, :cond_67

    goto :goto_3c

    :cond_67
    move-wide v2, v4

    :goto_3c
    cmp-long v4, v2, p2

    if-eqz v4, :cond_68

    .line 375
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzy(J)Lcom/google/android/gms/internal/measurement/zzic;

    goto :goto_3d

    .line 376
    :cond_68
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzz()Lcom/google/android/gms/internal/measurement/zzic;

    .line 377
    :goto_3d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzM(J)V

    .line 378
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaF()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzaJ(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 379
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzZ(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 380
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzu()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzo(J)V

    .line 381
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzw()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzq(J)V

    .line 382
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 383
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    goto :goto_3e

    .line 384
    :cond_69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzab()Lcom/google/android/gms/internal/measurement/zzic;

    .line 385
    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    const/4 v4, 0x0

    .line 386
    invoke-virtual {v2, v0, v4, v4}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 387
    :goto_3f
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-lez v0, :cond_6d

    move-object/from16 v2, p0

    :try_start_11
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 388
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaU()Lcom/google/android/gms/measurement/internal/zzae;

    .line 389
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza()Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_40

    .line 395
    :cond_6a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb()J

    move-result-wide v5

    .line 396
    invoke-virtual {v9, v5, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzal(J)Lcom/google/android/gms/internal/measurement/zzic;

    goto :goto_41

    :catchall_2
    move-exception v0

    goto/16 :goto_47

    .line 389
    :cond_6b
    :goto_40
    iget-object v0, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 390
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zzP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    const-wide/16 v5, -0x1

    .line 391
    invoke-virtual {v9, v5, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzal(J)Lcom/google/android/gms/internal/measurement/zzic;

    goto :goto_41

    .line 392
    :cond_6c
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Did not find measurement config or missing version info. appId"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 394
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 395
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    :goto_41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzid;

    move/from16 v10, v16

    invoke-virtual {v0, v3, v10}, Lcom/google/android/gms/measurement/internal/zzav;->zzz(Lcom/google/android/gms/internal/measurement/zzid;Z)Z

    goto :goto_42

    :cond_6d
    move-object/from16 v2, p0

    .line 398
    :goto_42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzpc;->zzb:Ljava/util/List;

    .line 399
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 401
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    const-string v5, "rowid in ("

    new-instance v6, Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v10, v4

    .line 403
    :goto_43
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_6f

    if-eqz v10, :cond_6e

    const-string v4, ","

    .line 404
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_6e
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    :cond_6f
    const-string v4, ")"

    .line 406
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "raw_events"

    const/4 v10, 0x0

    .line 408
    invoke-virtual {v4, v6, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 409
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_70

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 410
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 412
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 413
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Deleted fewer rows from raw events table than expected"

    .line 414
    invoke-virtual {v0, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    :cond_70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    .line 416
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 417
    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_44

    :catch_1
    move-exception v0

    .line 304
    :try_start_13
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 418
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 419
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 420
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    :goto_44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V

    move v10, v12

    goto :goto_46

    .line 6
    :goto_45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move v10, v4

    .line 422
    :goto_46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return v10

    :goto_47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 423
    throw v0
.end method

.method private final zzaH(Lcom/google/android/gms/internal/measurement/zzic;JZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    .line 1
    const-string v1, "_lte"

    :goto_0
    move-object v5, v1

    goto :goto_1

    .line 7
    :cond_0
    const-string v1, "_se"

    goto :goto_0

    .line 1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    check-cast v1, Ljava/lang/Long;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_3

    .line 1
    :cond_2
    :goto_2
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 8
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zzm()Lcom/google/android/gms/internal/measurement/zzit;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzit;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzit;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzit;->zza(J)Lcom/google/android/gms/internal/measurement/zzit;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzit;->zze(J)Lcom/google/android/gms/internal/measurement/zzit;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zziu;

    .line 13
    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzx(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 15
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzn(ILcom/google/android/gms/internal/measurement/zziu;)Lcom/google/android/gms/internal/measurement/zzic;

    goto :goto_4

    .line 14
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzo(Lcom/google/android/gms/internal/measurement/zziu;)Lcom/google/android/gms/internal/measurement/zzic;

    :goto_4
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-lez p1, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_5

    .line 19
    :cond_4
    const-string p1, "session-scoped"

    .line 17
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    .line 19
    invoke-virtual {p2, p3, p1, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final zzaI(Lcom/google/android/gms/internal/measurement/zzhr;Lcom/google/android/gms/internal/measurement/zzhr;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzd()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhr;->zzk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zze()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaJ()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static zzaK(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzaL()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    sub-long/2addr v1, v5

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzk()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb()V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzl()Lcom/google/android/gms/measurement/internal/zzok;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzok;->zzd()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzH()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaJ()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    .line 17
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzO:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzR()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzG()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :cond_4
    :goto_0
    if-eqz v10, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzA()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzJ:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 26
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzI:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 23
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 24
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzH:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 29
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 32
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zznn;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v15

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    move-wide/from16 v17, v3

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzM()J

    move-result-wide v3

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    move/from16 v19, v10

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzO()J

    move-result-wide v9

    .line 35
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v17

    if-nez v5, :cond_7

    move-wide/from16 v7, v17

    goto/16 :goto_4

    :cond_7
    sub-long/2addr v3, v1

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v3, v1, v3

    sub-long/2addr v13, v1

    .line 37
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v15, v1

    .line 38
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sub-long/2addr v1, v13

    add-long/2addr v7, v3

    .line 39
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    if-eqz v19, :cond_8

    cmp-long v5, v9, v17

    if-lez v5, :cond_8

    .line 40
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    .line 41
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    invoke-virtual {v5, v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzs(JJ)Z

    move-result v5

    if-nez v5, :cond_9

    add-long/2addr v9, v11

    move-wide v7, v9

    :cond_9
    cmp-long v5, v1, v17

    if-eqz v5, :cond_a

    cmp-long v3, v1, v3

    if-ltz v3, :cond_a

    const/4 v3, 0x0

    .line 42
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzQ:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 43
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v9, 0x14

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_c

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v3

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzP:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 46
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v13, v17

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    mul-long/2addr v11, v9

    add-long/2addr v7, v11

    cmp-long v4, v7, v1

    if-lez v4, :cond_b

    :cond_a
    :goto_3
    const-wide/16 v17, 0x0

    goto :goto_4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v17, 0x0

    goto :goto_2

    :cond_c
    const-wide/16 v7, 0x0

    goto :goto_3

    :goto_4
    cmp-long v1, v7, v17

    if-nez v1, :cond_d

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzk()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb()V

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzl()Lcom/google/android/gms/measurement/internal/zzok;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzok;->zzd()V

    return-void

    .line 51
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 52
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznn;->zzc:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v1

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzF:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 54
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzpk;->zzs(JJ)Z

    move-result v5

    if-nez v5, :cond_e

    add-long/2addr v1, v3

    .line 57
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 58
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzk()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb()V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v7, v1

    const-wide/16 v13, 0x0

    cmp-long v1, v7, v13

    if-gtz v1, :cond_f

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfy;->zzK:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 61
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 63
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 64
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzl()Lcom/google/android/gms/measurement/internal/zzok;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzok;->zzc(J)V

    return-void

    .line 66
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzk()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()V

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzl()Lcom/google/android/gms/measurement/internal/zzok;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzok;->zzd()V

    return-void

    .line 12
    :cond_11
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzk()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb()V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzl()Lcom/google/android/gms/measurement/internal/zzok;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzok;->zzd()V

    return-void
.end method

.method private final zzaM()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzu:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzq:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzq:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzu:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 7
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzaN(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 10
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzaO(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;
    .locals 40

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v3, p0

    .line 4
    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaN(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "App version does not match; dropping. appId"

    .line 31
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    move-object v2, v0

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    move-object v4, v2

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    move-result-object v3

    move-object v6, v4

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v4

    move-object v7, v6

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    move-result-object v6

    move-object v9, v7

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()J

    move-result-wide v7

    move-object v11, v9

    .line 12
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()J

    move-result-wide v9

    .line 13
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Z

    move-result v12

    .line 14
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Z

    move-result v18

    .line 16
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzae()Ljava/lang/Boolean;

    move-result-object v20

    .line 17
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzB()J

    move-result-wide v21

    .line 18
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzag()Ljava/util/List;

    move-result-object v23

    .line 19
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzjl;->zzl()Ljava/lang/String;

    move-result-object v24

    .line 20
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzai()Z

    move-result v27

    .line 21
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()J

    move-result-wide v28

    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzjl;->zzb()I

    move-result v30

    .line 23
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzaz;->zze()Ljava/lang/String;

    move-result-object v31

    .line 24
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzao()I

    move-result v32

    .line 25
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaw()J

    move-result-wide v33

    .line 26
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzay()Ljava/lang/String;

    move-result-object v35

    .line 27
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaH()Ljava/lang/String;

    move-result-object v36

    .line 28
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaL()I

    move-result v39

    const/16 v26, 0x0

    const-wide/16 v37, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v25, ""

    invoke-direct/range {v0 .. v39}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v0

    .line 3
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "No app data available; dropping"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final zzaP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide p1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static zzaQ(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final zzaR(Lcom/google/android/gms/measurement/internal/zzr;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzav()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzaT(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzC:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zze;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zza()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object p0

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method static synthetic zzaw(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaQ(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method final zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzC:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzZ(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)V

    return-void
.end method

.method final zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjl;->zza:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzC:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjl;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzX(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjl;->zza:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)V

    :cond_1
    return-object v0
.end method

.method final zzC()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zznn;->zzf:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpp;->zzf()Ljava/security/SecureRandom;

    move-result-object v2

    const v4, 0x5265c00

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 7
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    :cond_0
    add-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method final zzD(Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaN(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    .line 5
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v4, v2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 8
    :goto_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzr;

    move-object v5, v4

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    move-result-object v5

    move-object v8, v6

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v6

    move-object v9, v8

    .line 12
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    move-result-object v8

    move-object v11, v9

    .line 13
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()J

    move-result-wide v9

    move-object v13, v11

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()J

    move-result-wide v11

    .line 15
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Z

    move-result v14

    .line 16
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Z

    move-result v20

    .line 18
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzae()Ljava/lang/Boolean;

    move-result-object v22

    .line 19
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzB()J

    move-result-wide v23

    .line 20
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzag()Ljava/util/List;

    move-result-object v25

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzjl;->zzl()Ljava/lang/String;

    move-result-object v26

    .line 22
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzai()Z

    move-result v29

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()J

    move-result-wide v30

    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzjl;->zzb()I

    move-result v32

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzaz;->zze()Ljava/lang/String;

    move-result-object v33

    .line 26
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzao()I

    move-result v34

    .line 27
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaw()J

    move-result-wide v35

    .line 28
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzay()Ljava/lang/String;

    move-result-object v37

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaH()Ljava/lang/String;

    move-result-object v38

    .line 30
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaL()I

    move-result v41

    const/16 v28, 0x0

    const-wide/16 v39, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-string v27, ""

    invoke-direct/range {v2 .. v41}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzE(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    .line 3
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzE(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Lcom/google/android/gms/measurement/internal/zzbg;)Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object p1

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgv;->zzd:Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzU(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzpp;->zzI(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzG(Lcom/google/android/gms/measurement/internal/zzgv;I)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzb()Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzbf:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v1, "referrer API v2"

    .line 13
    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gclid"

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 17
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpl;

    const-string v7, "auto"

    const-string v3, "_lgclid"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzF(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method

.method final zzF(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    const-string v2, "_s"

    const-string v3, "_sid"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    move-object/from16 v5, p1

    .line 5
    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Lcom/google/android/gms/measurement/internal/zzbg;)Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v5

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzG:Lcom/google/android/gms/measurement/internal/zzlu;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzH:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    goto :goto_0

    .line 116
    :cond_1
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzG:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 8
    :goto_0
    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzgv;->zzd:Landroid/os/Bundle;

    const/4 v12, 0x0

    .line 9
    invoke-static {v6, v8, v12}, Lcom/google/android/gms/measurement/internal/zzpp;->zzav(Lcom/google/android/gms/measurement/internal/zzlu;Landroid/os/Bundle;Z)V

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgv;->zzb()Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object v5

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzD(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 12
    :cond_2
    iget-boolean v6, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v6, :cond_3

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 14
    :cond_3
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzr:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 15
    invoke-interface {v6, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbe;->zzf()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "ga_safelisted"

    const-wide/16 v12, 0x1

    .line 17
    invoke-virtual {v6, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbe;

    .line 18
    invoke-direct {v15, v6}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    move-object/from16 v16, v6

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 116
    invoke-virtual {v0, v5, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v13, v5

    .line 19
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    :try_start_0
    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_8

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 22
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v2, v14, v11

    if-eqz v2, :cond_8

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    const-string v6, "_f"

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    const-string v6, "_v"

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v14, -0x3a98

    add-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 30
    invoke-virtual {v1, v4, v13}, Lcom/google/android/gms/measurement/internal/zzpg;->zzG(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbg;)Landroid/os/Bundle;

    move-result-object v7

    .line 31
    invoke-virtual {v2, v4, v6, v3, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zzW(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 25
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 26
    invoke-virtual {v1, v4, v13}, Lcom/google/android/gms/measurement/internal/zzpg;->zzG(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbg;)Landroid/os/Bundle;

    move-result-object v6

    .line 27
    invoke-virtual {v2, v4, v7, v3, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzW(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 33
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    cmp-long v3, v9, v11

    if-gez v3, :cond_9

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v6, "Invalid time querying timed out conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 38
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 39
    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    .line 62
    :cond_9
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 41
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 43
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v6, :cond_a

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v8, "User property timed out"

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 46
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v12

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 47
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 48
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v14

    .line 49
    invoke-virtual {v7, v8, v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzah;->zzg:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz v7, :cond_b

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 50
    invoke-direct {v8, v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbg;J)V

    invoke-virtual {v1, v8, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzH(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 51
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 52
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    if-gez v3, :cond_d

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v6, "Invalid time querying expired conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 58
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 59
    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_6

    .line 89
    :cond_d
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 61
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 60
    :goto_6
    new-instance v6, Ljava/util/ArrayList;

    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v7, :cond_e

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v8

    .line 66
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    const-string v11, "User property expired"

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 67
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 68
    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 69
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 70
    invoke-virtual {v8, v11, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v4, v11}, Lcom/google/android/gms/measurement/internal/zzav;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzah;->zzk:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz v8, :cond_f

    .line 72
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v4, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zzr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 74
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v2, :cond_11

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 75
    invoke-direct {v11, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbg;J)V

    invoke-virtual {v1, v11, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzH(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_8

    .line 76
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    if-gez v3, :cond_12

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 86
    invoke-virtual {v3, v6, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_9

    .line 112
    :cond_12
    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 88
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzav;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 87
    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v4, :cond_13

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzpn;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    .line 92
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v8, v6

    move-object v6, v7

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    move-object v11, v8

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    .line 93
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v11

    move-object v11, v5

    move-object/from16 v5, v19

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    .line 96
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v7, "User property triggered"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 97
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v11

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 98
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 99
    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 100
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    .line 101
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v7, "Too many active user properties, ignoring"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 102
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v11

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 103
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 104
    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    :goto_b
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzah;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz v6, :cond_15

    .line 105
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzpl;

    .line 106
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Lcom/google/android/gms/measurement/internal/zzpn;)V

    iput-object v6, v4, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/measurement/internal/zzah;->zze:Z

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzav;->zzp(Lcom/google/android/gms/measurement/internal/zzah;)Z

    goto/16 :goto_a

    .line 108
    :cond_16
    invoke-virtual {v1, v13, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzH(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_17

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v12, v12, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 110
    invoke-direct {v5, v4, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbg;J)V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzH(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_c

    .line 111
    :cond_17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return-void

    :goto_d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 113
    throw v0
.end method

.method final zzG(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbg;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 2
    const-string v1, "_sid"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    const-string v1, "_sno"

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 4
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method

.method final zzH(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    const-string v3, "metadata_fingerprint"

    const-string v4, "app_id"

    const-string v5, "_fx"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzpk;->zzD(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    move-object/from16 v8, p1

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-virtual {v0, v10, v13}, Lcom/google/android/gms/measurement/internal/zzht;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v15, "_err"

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v13}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Dropping blocked event. appId"

    .line 14
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzht;->zzn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzht;->zzo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    const-string v12, "_ev"

    const/4 v14, 0x0

    const/16 v11, 0xb

    .line 28
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 17
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzJ()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    .line 22
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzN:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 23
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Fetching config for blocked app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzW(Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_4
    :goto_1
    return-void

    .line 29
    :cond_5
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Lcom/google/android/gms/measurement/internal/zzbg;)Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v0

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)I

    move-result v11

    .line 32
    invoke-virtual {v8, v0, v11}, Lcom/google/android/gms/measurement/internal/zzpp;->zzG(Lcom/google/android/gms/measurement/internal/zzgv;I)V

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    .line 34
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzfy;->zzag:Lcom/google/android/gms/measurement/internal/zzfx;

    const/16 v12, 0xa

    const/16 v13, 0x23

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;II)I

    move-result v8

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzgv;->zzd:Landroid/os/Bundle;

    new-instance v12, Ljava/util/TreeSet;

    .line 35
    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 36
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "items"

    .line 37
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v14

    .line 39
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v13

    .line 40
    invoke-virtual {v14, v13, v8}, Lcom/google/android/gms/measurement/internal/zzpp;->zzH([Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 41
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgv;->zzb()Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object v8

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 46
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v11

    .line 47
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzgn;->zzd(Lcom/google/android/gms/measurement/internal/zzbg;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Logging event"

    invoke-virtual {v0, v12, v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 49
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    const-string v0, "ecommerce_purchase"

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    if-nez v0, :cond_9

    :try_start_1
    const-string v0, "purchase"

    .line 51
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 52
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_28

    :goto_3
    const-string v9, "_iap"

    .line 53
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v27, v3

    const-string v3, "value"

    if-nez v9, :cond_d

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    :cond_c
    move-object v5, v8

    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_d
    :goto_4
    :try_start_2
    const-string v9, "_ltv_"

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v14, "currency"

    .line 54
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzbe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v0, :cond_10

    .line 56
    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, v20

    const-wide/16 v22, 0x0

    cmpl-double v0, v18, v22

    if-nez v0, :cond_e

    .line 57
    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v18, v4, v20

    goto :goto_5

    :cond_e
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    :goto_5
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v18, v4

    if-gtz v0, :cond_f

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v0, v18, v4

    if-ltz v0, :cond_f

    .line 63
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 64
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    neg-long v4, v4

    goto :goto_6

    .line 58
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 61
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V

    goto/16 :goto_f

    :cond_10
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    .line 55
    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 65
    :cond_11
    :goto_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 66
    invoke-virtual {v14, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "[A-Z]{3}"

    .line 67
    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 68
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 70
    instance-of v9, v0, Ljava/lang/Long;

    if-nez v9, :cond_13

    :cond_12
    const/4 v9, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_8

    .line 83
    :cond_13
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzpn;

    move-object v9, v10

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    add-long/2addr v12, v4

    .line 85
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v5, v8

    move-wide/from16 v12, v18

    const/4 v4, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v10, v9

    move-object/from16 v4, v16

    :goto_7
    move-object v0, v8

    goto :goto_a

    .line 71
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v12

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzfy;->zzT:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 73
    invoke-virtual {v0, v10, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 74
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 76
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v14, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'!_ltv!_%\' escape \'!\'order by set_timestamp desc limit ?,10);"

    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v10, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v13, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 393
    :try_start_4
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 80
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v12

    .line 81
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v12

    const-string v13, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzpn;

    move v12, v9

    move-object v9, v10

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    .line 82
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v8

    move-wide v12, v13

    move-object v8, v0

    move-object v14, v4

    move-object/from16 v4, v16

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v10, v9

    goto :goto_7

    .line 86
    :goto_a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v8

    .line 88
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    const-string v9, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 89
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 90
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 91
    invoke-virtual {v8, v9, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x9

    const/4 v12, 0x0

    .line 93
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_14
    :goto_b
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzh(Ljava/lang/String;)Z

    move-result v8

    .line 95
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    if-nez v9, :cond_15

    const-wide/16 v14, 0x0

    goto :goto_d

    .line 159
    :cond_15
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzbd;

    .line 97
    invoke-direct {v13, v9}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbe;)V

    const-wide/16 v14, 0x0

    .line 98
    :cond_16
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    .line 99
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbd;->zza()Ljava/lang/String;

    move-result-object v11

    .line 100
    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzbe;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 101
    instance-of v12, v11, [Landroid/os/Parcelable;

    if-eqz v12, :cond_16

    .line 102
    check-cast v11, [Landroid/os/Parcelable;

    array-length v11, v11

    int-to-long v11, v11

    add-long/2addr v14, v11

    goto :goto_c

    :cond_17
    :goto_d
    const-wide/16 v11, 0x1

    add-long/2addr v14, v11

    move-wide/from16 v20, v11

    move-wide v12, v14

    move v15, v8

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    move-object v14, v9

    move-object v11, v10

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzC()J

    move-result-wide v9

    const-wide/16 v22, 0x0

    const/16 v19, 0x0

    move-wide/from16 v31, v20

    const/16 v20, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x1

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move-object/from16 v24, v5

    move-wide/from16 v4, v31

    move-wide/from16 v31, v22

    .line 105
    invoke-virtual/range {v8 .. v20}, Lcom/google/android/gms/measurement/internal/zzav;->zzx(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    move-object v10, v11

    move/from16 v18, v15

    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzH()J

    move-result-wide v13

    sub-long/2addr v11, v13

    cmp-long v9, v11, v31

    const-wide/16 v13, 0x3e8

    if-lez v9, :cond_19

    rem-long/2addr v11, v13

    cmp-long v0, v11, v4

    if-nez v0, :cond_18

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 110
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V

    goto/16 :goto_f

    :cond_19
    if-eqz v18, :cond_1b

    .line 367
    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/zzar;->zza:J

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzfy;->zzm:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v15, 0x0

    .line 113
    invoke-virtual {v9, v15}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 114
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-wide v15, v13

    int-to-long v13, v9

    sub-long/2addr v11, v13

    cmp-long v9, v11, v31

    if-lez v9, :cond_1b

    rem-long/2addr v11, v15

    cmp-long v0, v11, v4

    if-nez v0, :cond_1a

    .line 386
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/zzar;->zza:J

    .line 388
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 389
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    :cond_1a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    const-string v12, "_ev"

    move-object/from16 v11, v24

    iget-object v13, v11, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v11, 0x10

    .line 391
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 392
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v11, v24

    const v9, 0xf4240

    if-eqz v17, :cond_1d

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    move-wide/from16 v33, v4

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzl:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 116
    invoke-virtual {v14, v15, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v4

    .line 117
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 118
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v14, v4

    sub-long/2addr v12, v14

    cmp-long v4, v12, v31

    if-lez v4, :cond_1e

    cmp-long v0, v12, v33

    if-nez v0, :cond_1c

    .line 381
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 383
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 384
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V

    goto/16 :goto_f

    :cond_1d
    move-wide/from16 v33, v4

    const/4 v5, 0x0

    .line 119
    :cond_1e
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzbe;->zzf()Landroid/os/Bundle;

    move-result-object v4

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    const-string v12, "_o"

    iget-object v13, v11, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzB:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v12, "_r"

    if-eqz v8, :cond_1f

    .line 122
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    const-string v14, "_dbg"

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v4, v14, v15}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    invoke-virtual {v8, v4, v12, v15}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    const-string v8, "_s"

    .line 124
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 126
    invoke-virtual {v8, v14, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v8

    if-eqz v8, :cond_20

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 127
    instance-of v14, v8, Ljava/lang/Long;

    if-eqz v14, :cond_20

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v14

    invoke-virtual {v14, v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzfy;->zzaX:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v15, 0x0

    .line 130
    invoke-virtual {v7, v15, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v7

    if-eqz v7, :cond_21

    const-string v7, "am"

    .line 131
    invoke-static {v13, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    const-string v7, "_ai"

    .line 132
    invoke-static {v0, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 133
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    instance-of v7, v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_21

    .line 135
    :try_start_6
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 136
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4, v3, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 138
    :catch_1
    :cond_21
    :try_start_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    .line 139
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 141
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    :try_start_8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 143
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzfy;->zzp:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 144
    invoke-virtual {v7, v10, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v7

    .line 145
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 146
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 147
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    filled-new-array {v10, v7}, [Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-virtual {v0, v6, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    int-to-long v7, v0

    goto :goto_e

    :catch_2
    move-exception v0

    .line 81
    :try_start_9
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v7, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 151
    invoke-virtual {v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v7, v31

    :goto_e
    cmp-long v0, v7, v31

    if-lez v0, :cond_22

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 154
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 155
    invoke-virtual {v0, v3, v9, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    move-object v3, v10

    iget-object v10, v11, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    move-object v7, v12

    iget-object v12, v11, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    iget-wide v13, v11, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    const-wide/16 v15, 0x0

    move-object v11, v3

    move-object/from16 v17, v4

    .line 156
    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    move-object v0, v8

    move-object v10, v11

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v3

    if-nez v3, :cond_24

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzav;->zzS(Ljava/lang/String;)J

    move-result-wide v11

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;)I

    move-result v3

    int-to-long v13, v3

    cmp-long v3, v11, v13

    if-ltz v3, :cond_23

    if-eqz v18, :cond_23

    .line 373
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 375
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v5

    .line 376
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 378
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 380
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 367
    :goto_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return-void

    .line 380
    :cond_23
    :try_start_a
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbc;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzd:J

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v9, v10

    move-object v10, v4

    .line 162
    invoke-direct/range {v8 .. v24}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v3, v0

    goto :goto_10

    .line 205
    :cond_24
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:J

    .line 158
    invoke-virtual {v0, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzic;J)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v8

    iget-wide v9, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzd:J

    .line 159
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbc;->zza(J)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v0

    move-object v3, v8

    move-object v8, v0

    .line 163
    :goto_10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzav;->zzh(Lcom/google/android/gms/measurement/internal/zzbc;)V

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 166
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzaE()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Lcom/google/android/gms/internal/measurement/zzic;

    const-string v0, "android"

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 171
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 172
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 173
    :cond_25
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 174
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 175
    :cond_26
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 176
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 177
    :cond_27
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_28

    .line 178
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzau(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 179
    :cond_28
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    const-wide/32 v12, -0x80000000

    cmp-long v0, v10, v12

    if-eqz v0, :cond_29

    long-to-int v0, v10

    .line 180
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaj(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 181
    :cond_29
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzic;->zzN(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 182
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 183
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 184
    :cond_2a
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    const/16 v11, 0x64

    .line 185
    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v10

    .line 186
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzjl;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjl;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzat(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 188
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqp;->zza()Z

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 190
    invoke-virtual {v10, v4, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 191
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->zzX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 192
    iget v4, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzz:I

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzaH(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 193
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzA:J

    .line 194
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    const-wide/16 v14, 0x20

    if-nez v0, :cond_2b

    cmp-long v0, v12, v31

    if-eqz v0, :cond_2b

    const-wide/16 v16, -0x2

    and-long v12, v12, v16

    or-long/2addr v12, v14

    :cond_2b
    cmp-long v0, v12, v33

    if-nez v0, :cond_2c

    move v0, v9

    goto :goto_11

    :cond_2c
    move v0, v5

    .line 195
    :goto_11
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaz(Z)Lcom/google/android/gms/internal/measurement/zzic;

    cmp-long v0, v12, v31

    if-nez v0, :cond_2d

    goto/16 :goto_19

    .line 196
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhe;->zzh()Lcom/google/android/gms/internal/measurement/zzhd;

    move-result-object v0

    and-long v16, v12, v33

    cmp-long v4, v16, v31

    if-eqz v4, :cond_2e

    move v4, v9

    goto :goto_12

    :cond_2e
    move v4, v5

    .line 197
    :goto_12
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Z)Lcom/google/android/gms/internal/measurement/zzhd;

    const-wide/16 v16, 0x2

    and-long v16, v12, v16

    cmp-long v4, v16, v31

    if-eqz v4, :cond_2f

    move v4, v9

    goto :goto_13

    :cond_2f
    move v4, v5

    .line 198
    :goto_13
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzhd;

    const-wide/16 v16, 0x4

    and-long v16, v12, v16

    cmp-long v4, v16, v31

    if-eqz v4, :cond_30

    move v4, v9

    goto :goto_14

    :cond_30
    move v4, v5

    .line 199
    :goto_14
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzhd;

    const-wide/16 v16, 0x8

    and-long v16, v12, v16

    cmp-long v4, v16, v31

    if-eqz v4, :cond_31

    move v4, v9

    goto :goto_15

    :cond_31
    move v4, v5

    .line 200
    :goto_15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhd;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzhd;

    const-wide/16 v16, 0x10

    and-long v16, v12, v16

    cmp-long v4, v16, v31

    if-eqz v4, :cond_32

    move v4, v9

    goto :goto_16

    :cond_32
    move v4, v5

    .line 201
    :goto_16
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhd;->zze(Z)Lcom/google/android/gms/internal/measurement/zzhd;

    and-long/2addr v14, v12

    cmp-long v4, v14, v31

    if-eqz v4, :cond_33

    move v4, v9

    goto :goto_17

    :cond_33
    move v4, v5

    .line 202
    :goto_17
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf(Z)Lcom/google/android/gms/internal/measurement/zzhd;

    const-wide/16 v14, 0x40

    and-long/2addr v12, v14

    cmp-long v4, v12, v31

    if-eqz v4, :cond_34

    move v13, v9

    goto :goto_18

    :cond_34
    move v13, v5

    .line 203
    :goto_18
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/zzhd;->zzg(Z)Lcom/google/android/gms/internal/measurement/zzhd;

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhe;

    .line 205
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaI(Lcom/google/android/gms/internal/measurement/zzhe;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 206
    :cond_35
    :goto_19
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    cmp-long v0, v12, v31

    if-eqz v0, :cond_36

    .line 207
    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzY(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 208
    :cond_36
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzq:J

    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzar(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 209
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "com.google.android.gms.measurement"

    .line 212
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzkb;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfu;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 213
    invoke-static {v0, v10, v12}, Lcom/google/android/gms/internal/measurement/zzjr;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzjr;

    move-result-object v0

    if-nez v0, :cond_37

    .line 214
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1a

    :cond_37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzb()Ljava/util/Map;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_38

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_39

    :cond_38
    :goto_1b
    const/4 v10, 0x0

    goto/16 :goto_1e

    .line 344
    :cond_39
    new-instance v10, Ljava/util/ArrayList;

    .line 216
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfy;->zzaf:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v15, 0x0

    .line 217
    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 218
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 219
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3a
    :goto_1c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "measurement.id."

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v14, :cond_3a

    .line 221
    :try_start_b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v12, :cond_3a

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 224
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v14, "Too many experiment IDs. Number of IDs"

    .line 226
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1d

    :catch_3
    move-exception v0

    .line 365
    :try_start_c
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 227
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v14

    .line 228
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v14

    const-string v15, "Experiment ID NumberFormatException"

    invoke-virtual {v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    .line 229
    :cond_3b
    :goto_1d
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_1b

    :cond_3c
    :goto_1e
    if-eqz v10, :cond_3d

    .line 230
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzaq(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 231
    :cond_3d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzba:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v15, 0x0

    .line 232
    invoke-virtual {v0, v15, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, ""

    .line 233
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 234
    :cond_3e
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v4

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    .line 236
    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v10

    .line 237
    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzjl;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v4

    .line 238
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v11

    if-eqz v11, :cond_42

    .line 239
    iget-boolean v11, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    if-eqz v11, :cond_42

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 240
    invoke-virtual {v11, v0, v4}, Lcom/google/android/gms/measurement/internal/zznn;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)Landroid/util/Pair;

    move-result-object v11

    .line 241
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_42

    .line 242
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/zzic;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 243
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v12, :cond_3f

    .line 244
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/zzic;->zzT(Z)Lcom/google/android/gms/internal/measurement/zzic;

    :cond_3f
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    move-object/from16 v13, v29

    .line 245
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_42

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const-string v12, "00000000-0000-0000-0000-000000000000"

    .line 246
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v11

    if-eqz v11, :cond_42

    .line 248
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaq()Z

    move-result v12

    if-eqz v12, :cond_42

    const/4 v15, 0x0

    .line 249
    invoke-virtual {v1, v0, v5, v15, v15}, Lcom/google/android/gms/measurement/internal/zzpg;->zzR(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    new-instance v12, Landroid/os/Bundle;

    .line 250
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 251
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzas()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_40

    const-string v15, "_pfo"

    move-object/from16 v16, v6

    .line 252
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v14, v10

    move-wide/from16 v9, v31

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 253
    invoke-virtual {v12, v15, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1f

    :cond_40
    move-object/from16 v16, v6

    move-object v14, v10

    .line 254
    :goto_1f
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzau()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_41

    const-string v6, "_uwa"

    .line 255
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v12, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_41
    move-wide/from16 v5, v33

    .line 256
    invoke-virtual {v12, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    .line 257
    invoke-interface {v5, v0, v13, v12}, Lcom/google/android/gms/measurement/internal/zzpo;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_20

    :cond_42
    move-object/from16 v16, v6

    move-object v14, v10

    :goto_20
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 258
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v6

    .line 259
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 260
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 261
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v6

    .line 262
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 263
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 264
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v6

    .line 265
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()J

    move-result-wide v9

    long-to-int v6, v9

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzI(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 266
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v6

    .line 267
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 268
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzw:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzay(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 269
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 270
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    const/4 v15, 0x0

    .line 271
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 272
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzic;->zzam(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 273
    :cond_43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v6

    if-nez v6, :cond_45

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzh;

    .line 274
    invoke-direct {v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzK(Lcom/google/android/gms/measurement/internal/zzjl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    .line 276
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzk:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzm(Ljava/lang/String;)V

    .line 277
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzg(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v4, v14}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 279
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    .line 280
    invoke-virtual {v5, v0, v9}, Lcom/google/android/gms/measurement/internal/zznn;->zzf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzk(Ljava/lang/String;)V

    :cond_44
    const-wide/16 v9, 0x0

    .line 282
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzF(J)V

    .line 283
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzo(J)V

    .line 284
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzq(J)V

    .line 285
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzs(Ljava/lang/String;)V

    .line 286
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzu(J)V

    .line 287
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzw(Ljava/lang/String;)V

    .line 288
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzy(J)V

    .line 289
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzA(J)V

    .line 290
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzE(Z)V

    .line 291
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzq:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzC(J)V

    .line 292
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    const/4 v9, 0x0

    .line 293
    invoke-virtual {v5, v6, v9, v9}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    goto :goto_21

    :cond_45
    const/4 v9, 0x0

    :goto_21
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 294
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 295
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 296
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 297
    :cond_46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 298
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 299
    :cond_47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzn(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move v14, v9

    .line 300
    :goto_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_49

    .line 301
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zzm()Lcom/google/android/gms/internal/measurement/zzit;

    move-result-object v4

    .line 302
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzpn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzit;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzit;

    .line 303
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzpn;

    iget-wide v10, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zzd:J

    invoke-virtual {v4, v10, v11}, Lcom/google/android/gms/internal/measurement/zzit;->zza(J)Lcom/google/android/gms/internal/measurement/zzit;

    .line 304
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzpn;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    invoke-virtual {v5, v4, v10}, Lcom/google/android/gms/measurement/internal/zzpk;->zzc(Lcom/google/android/gms/internal/measurement/zzit;Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzp(Lcom/google/android/gms/internal/measurement/zzit;)Lcom/google/android/gms/internal/measurement/zzic;

    const-string v4, "_sid"

    .line 306
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzpn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 307
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzam()J

    move-result-wide v4

    const-wide/16 v31, 0x0

    cmp-long v4, v4, v31

    if-eqz v4, :cond_48

    .line 308
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzu(Ljava/lang/String;)J

    move-result-wide v4

    .line 309
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzam()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-eqz v4, :cond_48

    .line 310
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzav()Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_48
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 311
    :cond_49
    :try_start_d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzid;

    .line 312
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 313
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 314
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 317
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    .line 318
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzt([B)J

    move-result-wide v5

    new-instance v10, Landroid/content/ContentValues;

    .line 319
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 320
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v28

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v13, v27

    invoke-virtual {v10, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "metadata"

    .line 322
    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 323
    :try_start_e
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "raw_events_metadata"

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 324
    invoke-virtual {v0, v11, v15, v10, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 334
    :try_start_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbd;

    .line 335
    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbe;)V

    .line 336
    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 337
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbd;->zza()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :goto_23
    const/16 v30, 0x1

    goto :goto_24

    .line 339
    :cond_4b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/measurement/internal/zzht;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 340
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v33

    .line 341
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzC()J

    move-result-wide v34

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v36, v4

    .line 342
    invoke-virtual/range {v33 .. v43}, Lcom/google/android/gms/measurement/internal/zzav;->zzw(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    move-object/from16 v7, v36

    if-eqz v0, :cond_4c

    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzar;->zze:J

    .line 343
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzo:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 344
    invoke-virtual {v0, v7, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v10, v7

    if-gez v0, :cond_4c

    goto :goto_23

    :cond_4c
    move/from16 v30, v9

    .line 345
    :goto_24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 346
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 347
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    .line 348
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 349
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v4

    .line 350
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzpk;->zzh(Lcom/google/android/gms/measurement/internal/zzbb;)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v4

    new-instance v7, Landroid/content/ContentValues;

    .line 351
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 352
    invoke-virtual {v7, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "name"

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    .line 353
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "timestamp"

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zzd:J

    .line 354
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 355
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    .line 356
    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "realtime"

    .line 357
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 358
    :try_start_10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object/from16 v5, v16

    const/4 v15, 0x0

    .line 359
    invoke-virtual {v4, v5, v15, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4d

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 360
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 361
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Failed to insert raw event (got -1). appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_27

    :catch_4
    move-exception v0

    goto :goto_25

    :cond_4d
    const-wide/16 v9, 0x0

    .line 372
    :try_start_11
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    goto :goto_27

    .line 329
    :goto_25
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 363
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 365
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_27

    :catch_5
    move-exception v0

    goto :goto_26

    :catch_6
    move-exception v0

    .line 333
    :try_start_12
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 325
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Error storing raw event metadata. appId"

    .line 327
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 328
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 330
    :goto_26
    :try_start_13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    .line 332
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 333
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    :goto_27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 367
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 368
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    .line 369
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 371
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v25

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 372
    const-string v3, "Background event processing time, ms"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 367
    :goto_28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 393
    throw v0
.end method

.method final zzI(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzaA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjl;->zzp()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 12
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjl;->zzb()I

    move-result v6

    .line 9
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(Lcom/google/android/gms/measurement/internal/zzjk;I)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    .line 13
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjl;->zzq()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 17
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    goto :goto_1

    .line 51
    :cond_2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjl;->zzb()I

    move-result v1

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(Lcom/google/android/gms/measurement/internal/zzjk;I)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 16
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v3

    .line 22
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzz(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjl;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzj()Ljava/lang/Boolean;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzaD(Z)Lcom/google/android/gms/internal/measurement/zzic;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzk()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzk()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzaF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzk()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_npa"

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zziu;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zziu;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_e

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzjk;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzam;->zza:Lcom/google/android/gms/measurement/internal/zzam;

    if-eq v4, v6, :cond_7

    goto/16 :goto_4

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzpn;->zzb:Ljava/lang/String;

    .line 34
    const-string v3, "tcf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzam;->zzh:Lcom/google/android/gms/measurement/internal/zzam;

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    goto/16 :goto_4

    :cond_8
    const-string v3, "app"

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzam;->zzf:Lcom/google/android/gms/measurement/internal/zzam;

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    goto/16 :goto_4

    :cond_9
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzam;->zzd:Lcom/google/android/gms/measurement/internal/zzam;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    goto :goto_4

    .line 39
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzae()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 40
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zziu;->zzg()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_d

    .line 41
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zziu;->zzg()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_c

    goto :goto_3

    .line 43
    :cond_c
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzam;->zzd:Lcom/google/android/gms/measurement/internal/zzam;

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    goto :goto_4

    .line 41
    :cond_d
    :goto_3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzam;->zzf:Lcom/google/android/gms/measurement/internal/zzam;

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    goto :goto_4

    .line 44
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzan;)I

    move-result v1

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zzm()Lcom/google/android/gms/internal/measurement/zzit;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzit;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzit;->zza(J)Lcom/google/android/gms/internal/measurement/zzit;

    int-to-long v3, v1

    .line 48
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzit;->zze(J)Lcom/google/android/gms/internal/measurement/zzit;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zziu;

    .line 50
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzo(Lcom/google/android/gms/internal/measurement/zziu;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Setting user property"

    const-string v4, "non_personalized_ads(_npa)"

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzy(Ljava/lang/String;)Z

    move-result p1

    .line 54
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 55
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 59
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_14

    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_tcfd"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 61
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzd()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_12

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v6, 0x4

    if-gt p1, v6, :cond_f

    goto :goto_9

    .line 63
    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    move v3, v5

    :goto_7
    const/16 v8, 0x40

    const-string v9, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    if-ge v3, v8, :cond_11

    .line 64
    aget-char v8, p1, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_10

    move v1, v3

    goto :goto_8

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    or-int/2addr v1, v5

    .line 65
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p1, v6

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 67
    :cond_12
    :goto_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object p1

    .line 68
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 69
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzhv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 70
    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/measurement/zzhr;->zze(ILcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/internal/measurement/zzhr;

    goto :goto_a

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 71
    :cond_14
    :goto_a
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzf(ILcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    return-void

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_16
    return-void
.end method

.method final zzJ(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzha;->zzr()Lcom/google/android/gms/internal/measurement/zzgx;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaJ()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgx;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmr; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to parse locally stored ad campaign info. appId"

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhs;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_cmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "gclid"

    .line 12
    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzJ(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "gbraid"

    .line 13
    invoke-static {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzJ(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "gad_source"

    .line 14
    invoke-static {v2, v7, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzJ(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 15
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzfy;->zzbg:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 16
    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzpk;->zzG(Lcom/google/android/gms/internal/measurement/zzhs;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "click_timestamp"

    const-wide/16 v7, 0x0

    .line 18
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lcom/google/android/gms/measurement/internal/zzpk;->zzJ(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-gtz v3, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhs;->zzf()J

    move-result-wide v9

    :cond_2
    const-string v3, "_cis"

    .line 20
    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzpk;->zzI(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "referrer API v2"

    .line 21
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzo()J

    move-result-wide v7

    cmp-long v3, v9, v7

    if-lez v3, :cond_1

    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzj()Lcom/google/android/gms/internal/measurement/zzgx;

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzgx;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 26
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzl()Lcom/google/android/gms/internal/measurement/zzgx;

    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzgx;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 29
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzn()Lcom/google/android/gms/internal/measurement/zzgx;

    goto :goto_4

    .line 31
    :cond_5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzgx;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 32
    :goto_4
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgx;->zzp(J)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzs()Lcom/google/android/gms/internal/measurement/zzgx;

    .line 34
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaD(Lcom/google/android/gms/internal/measurement/zzhs;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzgx;->zzt(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/zzgx;

    goto/16 :goto_1

    .line 35
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzg()J

    move-result-wide v7

    cmp-long v3, v9, v7

    if-lez v3, :cond_1

    .line 36
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzb()Lcom/google/android/gms/internal/measurement/zzgx;

    goto :goto_5

    .line 38
    :cond_7
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzgx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 39
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzd()Lcom/google/android/gms/internal/measurement/zzgx;

    goto :goto_6

    .line 41
    :cond_8
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzgx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 42
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzf()Lcom/google/android/gms/internal/measurement/zzgx;

    goto :goto_7

    .line 44
    :cond_9
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzgx;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 45
    :goto_7
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgx;->zzh(J)Lcom/google/android/gms/internal/measurement/zzgx;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzq()Lcom/google/android/gms/internal/measurement/zzgx;

    .line 47
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaD(Lcom/google/android/gms/internal/measurement/zzhs;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzgx;->zzr(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/zzgx;

    goto/16 :goto_1

    .line 48
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzha;->zzs()Lcom/google/android/gms/internal/measurement/zzha;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzaM(Lcom/google/android/gms/internal/measurement/zzha;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 50
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzh;->zzaI([B)V

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zza()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, p1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 54
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzbf:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 55
    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_lgclid"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method final zzK(Lcom/google/android/gms/measurement/internal/zzjl;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzf()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzL(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzz:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzz:Ljava/util/List;

    return-void
.end method

.method final zzM()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaU()Lcom/google/android/gms/measurement/internal/zzae;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznl;->zzJ()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_0
    move-exception v1

    goto/16 :goto_b

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto/16 :goto_9

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzz:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto/16 :goto_9

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzfy;->zzai:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v5

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzF()J

    move-result-wide v8

    sub-long v8, v1, v8

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 17
    invoke-direct {p0, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaG(Ljava/lang/String;J)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqp;->zza()Z

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaF()V

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v5, v1, v5

    .line 24
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 25
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzF()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_b

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzB:J

    cmp-long v4, v8, v5

    if-nez v4, :cond_a

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "select rowid from raw_events order by rowid desc limit 1;"

    .line 30
    invoke-virtual {v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 31
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_7

    .line 32
    :goto_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 33
    :cond_7
    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v8

    .line 59
    :try_start_4
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v9, "Error querying raw events"

    invoke-virtual {v4, v9, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_8

    goto :goto_1

    .line 32
    :cond_8
    :goto_2
    :try_start_5
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzB:J

    goto :goto_4

    :goto_3
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_9
    throw v1

    .line 37
    :cond_a
    :goto_4
    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzN(Ljava/lang/String;J)V

    goto/16 :goto_9

    .line 32
    :cond_b
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzB:J

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzF()J

    move-result-wide v4

    sub-long/2addr v1, v4

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 42
    :try_start_6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 43
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 45
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_7

    .line 49
    :cond_c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 48
    :goto_5
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :goto_6
    move-object v7, v1

    goto :goto_a

    :catchall_3
    move-exception v1

    move-object v2, v1

    goto :goto_a

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    .line 36
    :goto_7
    :try_start_9
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_d

    goto :goto_5

    .line 53
    :cond_d
    :goto_8
    :try_start_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzW(Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 7
    :cond_e
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    return-void

    :goto_a
    if-eqz v7, :cond_f

    .line 48
    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_f
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 48
    :goto_b
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    .line 59
    throw v1
.end method

.method final zzN(Ljava/lang/String;J)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-wide/from16 v2, p2

    .line 1
    const-string v4, "data"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 2
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzg:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzfy;->zzh:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 4
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    const/4 v9, 0x1

    if-lez v0, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v7

    .line 8
    :goto_0
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez v5, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v7

    .line 9
    :goto_1
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 10
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "queue"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v23, -0x1

    :try_start_1
    const-string v10, "rowid"

    const-string v11, "retry_count"

    filled-new-array {v10, v4, v11}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "app_id=?"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v21, "rowid"

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 13
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v11, v0

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object/from16 v22, v10

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v22, v10

    goto/16 :goto_f

    .line 97
    :cond_3
    :try_start_3
    new-instance v11, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v14, v7

    .line 18
    :goto_3
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 20
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v13, Ljava/io/ByteArrayInputStream;

    .line 21
    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 22
    invoke-direct {v0, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x400

    new-array v7, v7, [B

    move-object/from16 v21, v13

    .line 24
    :goto_4
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-gtz v13, :cond_c

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 27
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayInputStream;->close()V

    .line 28
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 29
    :try_start_6
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    array-length v7, v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/2addr v7, v14

    if-le v7, v5, :cond_5

    :cond_4
    move-object/from16 v22, v10

    goto/16 :goto_d

    .line 30
    :cond_5
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzaE()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 34
    :try_start_8
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x0

    .line 35
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v9, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzid;

    .line 36
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzid;->zzaf()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzaf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 37
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzid;->zzam()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzam()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 38
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzid;->zzao()Z

    move-result v9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzao()Z

    move-result v13

    if-ne v9, v13, :cond_4

    .line 39
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzid;->zzaq()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzaq()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 40
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzid;->zzf()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v21, v9

    const-string v9, "_npa"

    if-eqz v13, :cond_7

    :try_start_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zziu;

    move-object/from16 v22, v12

    .line 41
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zziu;->zzc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 42
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zziu;->zzg()J

    move-result-wide v12

    goto :goto_6

    :cond_6
    move-object/from16 v9, v21

    move-object/from16 v12, v22

    goto :goto_5

    :cond_7
    move-object/from16 v22, v12

    move-wide/from16 v12, v23

    .line 43
    :goto_6
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzid;->zzf()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/gms/internal/measurement/zziu;

    move-wide/from16 v25, v12

    .line 44
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zziu;->zzc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 45
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zziu;->zzg()J

    move-result-wide v12

    goto :goto_8

    :cond_8
    move-wide/from16 v12, v25

    goto :goto_7

    :cond_9
    move-wide/from16 v25, v12

    move-wide/from16 v12, v23

    :goto_8
    cmp-long v9, v25, v12

    if-nez v9, :cond_4

    :cond_a
    const/4 v9, 0x2

    .line 46
    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_b

    .line 47
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/measurement/zzic;->zzao(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 48
    :cond_b
    array-length v0, v0

    add-int/2addr v14, v0

    .line 49
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v22, v10

    goto :goto_c

    :catch_1
    move-exception v0

    .line 52
    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v9, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 33
    invoke-virtual {v7, v9, v12, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v22, v10

    goto :goto_a

    :cond_c
    move-object/from16 v22, v10

    const/4 v10, 0x0

    .line 25
    :try_start_a
    invoke-virtual {v12, v7, v10, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v10, v22

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    .line 55
    :goto_a
    :try_start_b
    iget-object v7, v9, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v9, "Failed to ungzip content"

    invoke-virtual {v7, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v22, v10

    .line 86
    :goto_b
    :try_start_c
    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 53
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 54
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v9, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 55
    invoke-virtual {v7, v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    :goto_c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v0, :cond_e

    if-le v14, v5, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v10, v22

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3

    .line 16
    :cond_e
    :goto_d
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_13

    :goto_e
    move-object/from16 v13, v22

    goto/16 :goto_3f

    :goto_f
    move-object/from16 v10, v22

    goto :goto_12

    :catchall_2
    move-exception v0

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    const-wide/16 v23, -0x1

    goto :goto_11

    :goto_10
    const/4 v13, 0x0

    goto/16 :goto_3f

    :goto_11
    const/4 v10, 0x0

    .line 25
    :goto_12
    :try_start_d
    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 57
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    const-string v7, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v10, :cond_2

    goto/16 :goto_2

    .line 61
    :goto_13
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_3e

    .line 62
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzbh:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v7, 0x0

    .line 63
    invoke-virtual {v0, v7, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    const-string v8, "_f"

    if-eqz v0, :cond_25

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v7, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 66
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    .line 67
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    const-string v5, "no_data_mode_events"

    if-nez v0, :cond_15

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzht;->zzB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzbi:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 117
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 119
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 120
    :try_start_e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v10

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzav;->zzH(J)V

    .line 121
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zzc()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_v"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 125
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    const-string v11, "_dac"

    const-wide/16 v12, 0x1

    .line 127
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzC(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    .line 129
    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v11

    .line 130
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 131
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 132
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v12, v11, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 134
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v13

    .line 135
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v13

    const-string v14, "Caching events in NO_DATA mode"

    invoke-virtual {v13, v14, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v13, Landroid/content/ContentValues;

    .line 136
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "app_id"

    .line 137
    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "name"

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v14

    invoke-virtual {v13, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v14, "timestamp_millis"

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzf()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a

    .line 141
    :try_start_f
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v14, 0x0

    .line 142
    invoke-virtual {v0, v5, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    cmp-long v0, v15, v23

    if-nez v0, :cond_11

    .line 143
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v12, "Failed to insert NO_DATA mode event (got -1). appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 145
    invoke-virtual {v0, v12, v13}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_15

    :catch_9
    move-exception v0

    .line 149
    :try_start_10
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 146
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v11

    .line 147
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v11

    const-string v12, "Error storing NO_DATA mode event. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 148
    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_15

    .line 149
    :catch_a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v10, "Failed handling NO_DATA mode bundles. appId"

    invoke-virtual {v0, v10, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 150
    :cond_14
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_24

    .line 243
    :cond_15
    new-instance v7, Ljava/util/ArrayList;

    .line 69
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v9

    .line 71
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 73
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    new-instance v10, Ljava/util/ArrayList;

    .line 74
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v12, " NO_DATA mode events. appId"

    const-string v13, "Pruned "

    .line 75
    :try_start_11
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v14

    const-string v22, "no_data_mode_events"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    const-string v24, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    .line 78
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v25

    const-string v28, "rowid"

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 79
    invoke-virtual/range {v21 .. v29}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v16, v11

    move-object/from16 v11, v21

    .line 80
    :try_start_12
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v0, :cond_17

    move-wide/from16 v21, v14

    :goto_16
    const/4 v14, 0x0

    .line 81
    :try_start_13
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhs;->zzk()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v14

    invoke-static {v14, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Lcom/google/android/gms/internal/measurement/zzmr; {:try_start_13 .. :try_end_13} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-object/from16 v23, v4

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object/from16 v23, v4

    goto/16 :goto_19

    :catch_b
    move-exception v0

    move-object/from16 v23, v4

    goto/16 :goto_1c

    :catch_c
    move-exception v0

    .line 98
    :try_start_14
    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 84
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v14

    .line 85
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v14

    const-string v15, "Failed to parse stored NO_DATA mode event, appId"
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v23, v4

    :try_start_15
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-virtual {v14, v15, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    :goto_17
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 88
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    const-string v0, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    .line 89
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v11, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_1d

    :catchall_4
    move-exception v0

    goto :goto_1a

    :catch_d
    move-exception v0

    goto :goto_1b

    :catchall_5
    move-exception v0

    goto :goto_19

    :catch_e
    move-exception v0

    goto :goto_1c

    :cond_16
    move-object/from16 v4, v23

    goto/16 :goto_16

    :cond_17
    move-object/from16 v23, v4

    .line 97
    :goto_18
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    :goto_19
    move-object/from16 v13, v23

    goto/16 :goto_23

    :catch_f
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_1b

    :goto_1a
    const/4 v13, 0x0

    goto/16 :goto_23

    :goto_1b
    const/16 v23, 0x0

    .line 148
    :goto_1c
    :try_start_17
    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Error flushing NO_DATA mode events. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 95
    invoke-virtual {v4, v5, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v23, :cond_18

    goto :goto_18

    .line 99
    :cond_18
    :goto_1d
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 100
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzic;

    if-eqz v4, :cond_19

    .line 101
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19

    .line 102
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Ljava/util/List;

    move-result-object v4

    .line 103
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzi()Lcom/google/android/gms/internal/measurement/zzic;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    const/4 v4, 0x0

    .line 104
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzho;->zzb()Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v11

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/google/android/gms/measurement/internal/zzht;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    .line 106
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v12, :cond_1b

    :cond_1a
    move-object/from16 v21, v0

    move/from16 v16, v4

    move-object/from16 v23, v10

    goto/16 :goto_22

    .line 116
    :cond_1b
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgf;->zza()Ljava/util/List;

    move-result-object v12

    .line 107
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfu;

    .line 108
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()Lcom/google/android/gms/internal/measurement/zzhk;

    move-result-object v15

    .line 109
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfu;->zzb()I

    move-result v16

    .line 110
    sget-object v21, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    move-object/from16 v21, v0

    add-int/lit8 v0, v16, -0x1

    move/from16 v16, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1e

    const/4 v4, 0x4

    move-object/from16 v23, v10

    const/4 v10, 0x3

    if-eq v0, v10, :cond_1d

    if-eq v0, v4, :cond_1c

    const/4 v0, 0x1

    goto :goto_20

    :cond_1c
    const/4 v0, 0x5

    goto :goto_20

    :cond_1d
    move v0, v4

    goto :goto_20

    :cond_1e
    move-object/from16 v23, v10

    const/4 v10, 0x3

    move v0, v10

    goto :goto_20

    :cond_1f
    move-object/from16 v23, v10

    const/4 v10, 0x3

    const/4 v0, 0x2

    .line 109
    :goto_20
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(I)Lcom/google/android/gms/internal/measurement/zzhk;

    .line 111
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfu;->zzd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_20

    const/4 v4, 0x2

    if-eq v0, v4, :cond_21

    const/4 v10, 0x1

    goto :goto_21

    :cond_20
    const/4 v10, 0x2

    :cond_21
    :goto_21
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/measurement/zzhk;->zzb(I)Lcom/google/android/gms/internal/measurement/zzhk;

    .line 112
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 113
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v16

    move-object/from16 v0, v21

    move-object/from16 v10, v23

    goto :goto_1f

    .line 114
    :goto_22
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzhh;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhh;

    .line 115
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzic;->zzaQ(Lcom/google/android/gms/internal/measurement/zzhh;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 116
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzid;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v16

    move-object/from16 v0, v21

    move-object/from16 v10, v23

    goto/16 :goto_1e

    :cond_22
    move-object v11, v7

    goto :goto_24

    :goto_23
    if-eqz v13, :cond_23

    .line 97
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_23
    throw v0

    :cond_24
    move-object/from16 v16, v11

    .line 151
    :goto_24
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_25

    :cond_25
    move-object/from16 v16, v11

    .line 152
    :goto_25
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    .line 153
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 154
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 155
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzid;

    .line 156
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_26

    .line 157
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzG()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_27
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_2a

    const/4 v9, 0x0

    .line 158
    :goto_27
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_2a

    .line 159
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzid;

    .line 160
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_28

    goto :goto_28

    .line 161
    :cond_28
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    const/4 v14, 0x0

    .line 162
    invoke-interface {v11, v14, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    goto :goto_29

    :cond_29
    :goto_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 163
    :cond_2a
    :goto_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    .line 164
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    new-instance v7, Ljava/util/ArrayList;

    .line 165
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzC(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 167
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v9

    .line 168
    invoke-virtual {v9, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v9

    if-eqz v9, :cond_2b

    const/4 v9, 0x1

    goto :goto_2a

    :cond_2b
    const/4 v9, 0x0

    .line 169
    :goto_2a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v10

    .line 170
    invoke-virtual {v10, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v4

    .line 171
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 172
    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v10

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrb;->zza()Z

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzfy;->zzaM:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 175
    invoke-virtual {v12, v6, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v12

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzl:Lcom/google/android/gms/measurement/internal/zzou;

    .line 176
    invoke-virtual {v13, v6}, Lcom/google/android/gms/measurement/internal/zzou;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzot;

    move-result-object v14

    const/4 v15, 0x0

    :goto_2b
    if-ge v15, v5, :cond_3d

    .line 177
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v21, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzic;

    .line 178
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v22, v5

    move-object/from16 v5, v16

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()J

    move v5, v9

    move/from16 v16, v10

    const-wide/32 v9, 0x2078d

    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzO(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 180
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzs(J)Lcom/google/android/gms/internal/measurement/zzic;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 181
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzic;->zzaU()Lcom/google/android/gms/measurement/internal/zzae;

    const/4 v9, 0x0

    .line 182
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzae(Z)Lcom/google/android/gms/internal/measurement/zzic;

    if-nez v5, :cond_2c

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzan()Lcom/google/android/gms/internal/measurement/zzic;

    :cond_2c
    if-nez v21, :cond_2d

    .line 184
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzR()Lcom/google/android/gms/internal/measurement/zzic;

    .line 185
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzU()Lcom/google/android/gms/internal/measurement/zzic;

    :cond_2d
    if-nez v16, :cond_2e

    .line 186
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzX()Lcom/google/android/gms/internal/measurement/zzic;

    .line 187
    :cond_2e
    invoke-virtual {v1, v6, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzS(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V

    if-nez v12, :cond_2f

    .line 188
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzav()Lcom/google/android/gms/internal/measurement/zzic;

    :cond_2f
    if-nez v16, :cond_30

    .line 189
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzag()Lcom/google/android/gms/internal/measurement/zzic;

    .line 190
    :cond_30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzP()Ljava/lang/String;

    move-result-object v10

    .line 191
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_32

    const-string v9, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    goto :goto_2c

    :cond_31
    move/from16 v25, v5

    move-object/from16 v28, v11

    move/from16 v27, v12

    move/from16 v29, v15

    goto/16 :goto_2f

    :cond_32
    :goto_2c
    new-instance v9, Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v25, v5

    move-object/from16 v26, v10

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 194
    :goto_2d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_37

    .line 195
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v11

    move-object/from16 v11, v27

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhs;

    move/from16 v27, v12

    .line 196
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v15

    const-string v15, "_fx"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    .line 197
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->remove()V

    move/from16 v12, v27

    move-object/from16 v11, v28

    move/from16 v15, v29

    const/16 v23, 0x1

    :goto_2e
    const/16 v24, 0x1

    goto :goto_2d

    .line 198
    :cond_33
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhs;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 199
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    const-string v12, "_pfo"

    .line 200
    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v12

    if-eqz v12, :cond_34

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v30

    .line 201
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 202
    :cond_34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    const-string v12, "_uwa"

    .line 203
    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzF(Lcom/google/android/gms/internal/measurement/zzhs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v11

    if-eqz v11, :cond_35

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v10

    .line 204
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_35
    move/from16 v12, v27

    move-object/from16 v11, v28

    move/from16 v15, v29

    goto :goto_2e

    :cond_36
    move/from16 v12, v27

    move-object/from16 v11, v28

    move/from16 v15, v29

    goto :goto_2d

    :cond_37
    move-object/from16 v28, v11

    move/from16 v27, v12

    move/from16 v29, v15

    if-eqz v23, :cond_38

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzi()Lcom/google/android/gms/internal/measurement/zzic;

    .line 206
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    :cond_38
    if-eqz v24, :cond_39

    .line 207
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    .line 208
    invoke-virtual {v1, v9, v11, v5, v10}, Lcom/google/android/gms/measurement/internal/zzpg;->zzR(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 209
    :cond_39
    :goto_2f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_30

    .line 210
    :cond_3a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzfy;->zzaC:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 211
    invoke-virtual {v5, v6, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 212
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v5

    .line 213
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzt([B)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzas(J)Lcom/google/android/gms/internal/measurement/zzic;

    :cond_3b
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzot;->zzd()Lcom/google/android/gms/internal/measurement/zzis;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 214
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzaN(Lcom/google/android/gms/internal/measurement/zzis;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 215
    :cond_3c
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhz;->zze(Lcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;

    :goto_30
    add-int/lit8 v15, v29, 0x1

    move/from16 v10, v16

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v9, v25

    move/from16 v12, v27

    move-object/from16 v11, v28

    goto/16 :goto_2b

    .line 216
    :cond_3d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zzb()I

    move-result v4

    if-nez v4, :cond_3e

    .line 217
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzL(Ljava/util/List;)V

    const/4 v5, 0x0

    .line 218
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    .line 219
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzV(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    return-void

    .line 220
    :cond_3e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzib;

    new-instance v5, Ljava/util/ArrayList;

    .line 221
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzot;->zzc()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzls;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    if-ne v8, v9, :cond_3f

    const/4 v8, 0x1

    goto :goto_31

    :cond_3f
    const/4 v8, 0x0

    :goto_31
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzot;->zzc()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzls;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    if-eq v9, v10, :cond_41

    if-eqz v8, :cond_40

    const/4 v4, 0x1

    goto :goto_33

    :cond_40
    const/4 v13, 0x0

    :goto_32
    move-object v0, v5

    goto/16 :goto_3d

    :cond_41
    move v4, v8

    .line 222
    :goto_33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzib;

    .line 223
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_42
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzid;

    .line 224
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzid;->zzY()Z

    move-result v9

    if-eqz v9, :cond_42

    .line 222
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    :cond_43
    const/4 v8, 0x0

    .line 225
    :goto_34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzib;

    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 228
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzib;->zzi(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v10

    .line 229
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_44

    .line 230
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/measurement/zzhz;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhz;

    .line 231
    :cond_44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzht;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 232
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_45

    .line 233
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzhz;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhz;

    :cond_45
    new-instance v11, Ljava/util/ArrayList;

    .line 234
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzid;

    .line 236
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzaF(Lcom/google/android/gms/internal/measurement/zzid;)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v12

    .line 237
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzic;->zzan()Lcom/google/android/gms/internal/measurement/zzic;

    .line 238
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 239
    :cond_46
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhz;->zzg()Lcom/google/android/gms/internal/measurement/zzhz;

    .line 240
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzhz;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhz;

    .line 241
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v9

    .line 242
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v9

    .line 243
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_47

    const-string v11, "null"

    goto :goto_36

    :cond_47
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhz;->zzh()Ljava/lang/String;

    move-result-object v11

    :goto_36
    const-string v12, "[sgtm] Processed MeasurementBatch for sGTM with sgtmJoinId: "

    .line 244
    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzib;

    .line 246
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4c

    .line 247
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    .line 248
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 250
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v10

    .line 251
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v11

    const-string v12, "[sgtm] Processing Google Signal, sgtmJoinId:"

    invoke-virtual {v11, v12, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/measurement/zzhz;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhz;

    .line 253
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzid;

    .line 254
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzaE()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v11

    .line 255
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzid;->zzZ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzic;->zzam(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 256
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzid;->zzav()I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzaJ(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 257
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzhz;->zze(Lcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;

    goto :goto_37

    .line 258
    :cond_48
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 259
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v8

    .line 260
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzht;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4a

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzfy;->zzr:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v11, 0x0

    .line 262
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 263
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 264
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 265
    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    new-instance v15, Ljava/lang/StringBuilder;

    add-int/2addr v12, v13

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzot;

    .line 266
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_49

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzls;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    goto :goto_38

    .line 303
    :cond_49
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzls;->zzb:Lcom/google/android/gms/measurement/internal/zzls;

    .line 267
    :goto_38
    sget-object v12, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v13, 0x0

    invoke-direct {v8, v10, v12, v11, v13}, Lcom/google/android/gms/measurement/internal/zzot;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/internal/measurement/zzis;)V

    goto :goto_3a

    :cond_4a
    const/4 v13, 0x0

    .line 303
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzot;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzfy;->zzr:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 268
    invoke-virtual {v10, v13}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 269
    check-cast v10, Ljava/lang/String;

    if-eqz v4, :cond_4b

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzls;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    goto :goto_39

    .line 270
    :cond_4b
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzls;->zzb:Lcom/google/android/gms/measurement/internal/zzls;

    :goto_39
    sget-object v12, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v8, v10, v12, v11, v13}, Lcom/google/android/gms/measurement/internal/zzot;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/internal/measurement/zzis;)V

    .line 271
    :goto_3a
    invoke-static {v0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 272
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_4c
    const/4 v13, 0x0

    :goto_3b
    if-eqz v4, :cond_4e

    .line 273
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    const/4 v4, 0x0

    .line 274
    :goto_3c
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()I

    move-result v8

    if-ge v4, v8, :cond_4d

    .line 275
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzic;

    .line 276
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzt()Lcom/google/android/gms/internal/measurement/zzic;

    .line 277
    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzaO(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 278
    invoke-virtual {v0, v4, v8}, Lcom/google/android/gms/internal/measurement/zzhz;->zzd(ILcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 279
    :cond_4d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-static {v0, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzL(Ljava/util/List;)V

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xcc

    .line 281
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzV(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzot;->zza()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 283
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "[sgtm] Sending sgtm batches available notification to app"

    .line 285
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    .line 286
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 287
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 289
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v2

    .line 290
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaQ(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_4e
    move-object v4, v9

    goto/16 :goto_32

    .line 291
    :goto_3d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 292
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 293
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzpk;->zzi(Lcom/google/android/gms/internal/measurement/zzib;)Ljava/lang/String;

    move-result-object v13

    .line 295
    :cond_4f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 296
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v5

    .line 297
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzL(Ljava/util/List;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 298
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zznn;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 299
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    array-length v3, v5

    .line 301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Uploading data. app, uncompressed size, data"

    invoke-virtual {v2, v5, v6, v3, v13}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    .line 302
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzow;

    invoke-direct {v3, v1, v6, v0}, Lcom/google/android/gms/measurement/internal/zzow;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;Ljava/lang/String;Ljava/util/List;)V

    .line 303
    invoke-virtual {v2, v6, v14, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzot;Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/measurement/internal/zzgw;)V

    :cond_50
    :goto_3e
    return-void

    :catchall_6
    move-exception v0

    move-object v13, v10

    :goto_3f
    if-eqz v13, :cond_51

    .line 16
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_51
    throw v0
.end method

.method final zzO(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzF:Ljava/util/Map;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzF:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzpe;

    if-nez p1, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpe;->zzb()Z

    move-result p1

    return p1
.end method

.method final zzP(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaU()Lcom/google/android/gms/measurement/internal/zzae;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzJ()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Upload called in the client side when service should be used"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Network not connected, ignoring upload request"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto/16 :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzD(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "[sgtm] Upload queue has no batches for appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    new-array v3, v0, [Lcom/google/android/gms/measurement/internal/zzls;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzls;->zzb:Lcom/google/android/gms/measurement/internal/zzls;

    aput-object v4, v3, v1

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v3

    .line 20
    invoke-virtual {v2, p1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoo;I)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzpj;

    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzd()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "[sgtm] Uploading data from upload queue. appId, type, url"

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzf()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zze()Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v4

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzpk;->zzi(Lcom/google/android/gms/internal/measurement/zzib;)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v7, "[sgtm] Uploading data from upload queue. appId, uncompressed size, data"

    array-length v4, v4

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 32
    invoke-virtual {v6, v7, p1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zza()Lcom/google/android/gms/measurement/internal/zzot;

    move-result-object v4

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzox;

    invoke-direct {v5, p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzox;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpj;)V

    .line 34
    invoke-virtual {v0, p1, v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzot;Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/measurement/internal/zzgw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    return-void

    .line 34
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzw:Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    .line 37
    throw p1
.end method

.method final zzQ(Ljava/lang/String;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzpj;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    const/16 v1, 0xcc

    if-ne p2, v1, :cond_3

    move p2, v1

    :cond_1
    if-nez p3, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p3

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzpj;->zzc()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/zzav;->zzE(Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p3

    const-string p4, "Successfully uploaded batch from upload queue. appId, status"

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzD(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzP(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    .line 11
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v2, 0x20

    .line 12
    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual {v1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Network upload failed. Will retry later. appId, status, error"

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p3, :cond_4

    move-object p3, p4

    .line 16
    :cond_4
    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzpj;->zzc()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzK(Ljava/lang/Long;)V

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    return-void

    .line 18
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    .line 20
    throw p1
.end method

.method final zzR(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzh;->zzar(Z)V

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzh;->zzat(Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzh;->zzav(Ljava/lang/Long;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zza()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p2, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    :cond_0
    return-void
.end method

.method final zzS(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzl(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaw(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzG()Lcom/google/android/gms/internal/measurement/zzic;

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzq(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzD()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "."

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_id"

    .line 12
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzx(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzr(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzan()Lcom/google/android/gms/internal/measurement/zzic;

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzX()Lcom/google/android/gms/internal/measurement/zzic;

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzE:Ljava/util/Map;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzpd;

    if-eqz v1, :cond_5

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzpd;->zzb:J

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzak:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzl(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    :cond_5
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpd;

    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzpd;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;[B)V

    .line 24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzpd;->zza:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 26
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzu(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzic;->zzav()Lcom/google/android/gms/internal/measurement/zzic;

    :cond_8
    return-void
.end method

.method final zzT(Lcom/google/android/gms/internal/measurement/zzic;Lcom/google/android/gms/measurement/internal/zzpc;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzd(I)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzb()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->zzar()I

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzfy;->zzal:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v6

    if-lt v5, v6, :cond_5

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzfy;->zzay:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v5

    const-string v6, "Generated trigger URI. appId, uri"

    const-string v7, "_tr"

    const/4 v8, 0x0

    const-string v9, "_tu"

    const-wide/16 v10, 0x1

    if-lez v5, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v12

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzC()J

    move-result-wide v13

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v15

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 12
    invoke-virtual/range {v12 .. v22}, Lcom/google/android/gms/measurement/internal/zzav;->zzw(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v12

    iget-wide v12, v12, Lcom/google/android/gms/measurement/internal/zzar;->zzg:J

    int-to-long v14, v5

    cmp-long v5, v12, v14

    if-lez v5, :cond_1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v5

    const-string v6, "_tnr"

    .line 14
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 15
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    goto/16 :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzfy;->zzaR:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 19
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaw()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 23
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 25
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 26
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v5

    .line 27
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 28
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 30
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v4, v8}, Lcom/google/android/gms/measurement/internal/zzpk;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzoh;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 35
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzoh;->zza:Ljava/lang/String;

    .line 36
    invoke-virtual {v7, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzY(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoh;)Z

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzr:Ljava/util/Deque;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 40
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzfy;->zzaR:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 41
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaw()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v5

    .line 44
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 45
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 46
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 47
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 48
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v5

    .line 49
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 50
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf(J)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 52
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v4, v8}, Lcom/google/android/gms/measurement/internal/zzpk;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzoh;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzoh;->zza:Ljava/lang/String;

    .line 57
    invoke-virtual {v7, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzY(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoh;)Z

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzr:Ljava/util/Deque;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 59
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zze(ILcom/google/android/gms/internal/measurement/zzhs;)Lcom/google/android/gms/internal/measurement/zzic;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method final zzU(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhv;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "_sc"

    const-string v1, "_si"

    const-string v2, "_o"

    const-string v3, "_sn"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzZ(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzZ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Z)I

    move-result p1

    :goto_0
    int-to-long v3, p1

    goto :goto_2

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzf(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    .line 5
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v5, p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    const/16 v7, 0x28

    invoke-virtual {p1, v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzpp;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zzc()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p4, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzf(Ljava/lang/String;Z)I

    move-result p4

    .line 13
    invoke-virtual {p1, p2, p4, v2}, Lcom/google/android/gms/measurement/internal/zzpp;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p4

    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p4

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Param value is too long; discarded. Name, value length"

    .line 18
    invoke-virtual {p4, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    const-string p4, "_err"

    invoke-virtual {p3, p4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_3

    const-wide/16 v2, 0x4

    .line 20
    invoke-virtual {p3, p4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 21
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    .line 22
    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_el"

    .line 23
    invoke-virtual {p3, p1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 24
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method final zzV(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    const/4 v9, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array v3, v9, [B

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v3, p4

    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzz:Ljava/util/List;

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzz:Ljava/util/List;

    if-eqz p1, :cond_5

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_1

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_2

    move v0, v4

    :cond_1
    if-eqz v2, :cond_5

    :cond_2
    new-instance v4, Ljava/lang/String;

    .line 68
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x20

    .line 69
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Network upload failed. Will retry later. code, error"

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 73
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 74
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznn;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 75
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznn;->zzc:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 76
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzav;->zzJ(Ljava/util/List;)V

    .line 77
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto/16 :goto_a

    .line 4
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Network upload successful with code, uploadAttempted"

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_6
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznn;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Successful upload. Got network response. code, size"

    array-length v3, v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Purged empty bundles"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 16
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 19
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzot;

    .line 21
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzot;->zzc()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzls;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    if-eq v2, v6, :cond_8

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    move-wide v6, v3

    move-object v4, v5

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzot;->zza()Ljava/lang/String;

    move-result-object v5

    move-wide v7, v6

    .line 24
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzot;->zzb()Ljava/util/Map;

    move-result-object v6

    move-wide/from16 v16, v7

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzot;->zzc()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p5

    move-wide/from16 v12, v16

    .line 26
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzav;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzib;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzls;Ljava/lang/Long;)J

    move-result-wide v5

    .line 27
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzot;->zzc()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzls;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    if-ne v2, v3, :cond_9

    cmp-long v2, v5, v12

    if-eqz v2, :cond_9

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-wide/16 v12, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_a
    move-wide v12, v3

    .line 30
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 31
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzib;

    .line 32
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzot;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzot;->zzc()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzls;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    if-ne v3, v5, :cond_b

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Long;

    move-object v3, v2

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzot;->zza()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzot;->zzb()Ljava/util/Map;

    move-result-object v6

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzot;->zzc()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v7

    move-object/from16 v3, p5

    .line 39
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzav;->zzA(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzib;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzls;Ljava/lang/Long;)J

    goto :goto_4

    :cond_b
    move-object/from16 v3, p5

    goto :goto_4

    :cond_c
    move-object/from16 v3, p5

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    const/4 v2, 0x1

    new-array v4, v2, [Lcom/google/android/gms/measurement/internal/zzls;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzls;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    aput-object v5, v4, v9

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v4

    .line 42
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoo;I)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 44
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzpj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpj;->zzg()J

    move-result-wide v4

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzE:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 46
    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v14, v4

    cmp-long v0, v6, v14

    if-lez v0, :cond_d

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "[sgtm] client batches are queued too long. appId, creationTime"

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 51
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_d
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzH(J)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 58
    :try_start_4
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzA:Ljava/util/List;

    if-eqz v5, :cond_e

    .line 54
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_5

    .line 55
    :cond_e
    throw v0

    .line 56
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzA:Ljava/util/List;

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzP(Ljava/lang/String;)V

    :goto_6
    const-wide/16 v2, 0x0

    goto :goto_7

    .line 61
    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaJ()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzM()V

    goto :goto_6

    :cond_11
    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzB:J

    .line 62
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto :goto_6

    .line 64
    :goto_7
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    goto :goto_a

    .line 57
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 58
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :goto_9
    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Disable upload, time"

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zza:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    :goto_a
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    .line 78
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    return-void

    .line 15
    :goto_b
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzv:Z

    .line 78
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    .line 79
    throw v0
.end method

.method final zzW(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0xcc

    const/4 v3, 0x0

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzX(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    move-object v0, p0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Fetching remote configuration"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    .line 11
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzht;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v4, :cond_2

    .line 14
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v4, v2

    :cond_2
    const-string v2, "If-None-Match"

    .line 15
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzpg;->zzu:Z

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpf;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzpf;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 17
    invoke-virtual {v1, p1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgz;->zzd(Lcom/google/android/gms/measurement/internal/zzh;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzgw;)V

    return-void
.end method

.method final zzX(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v4, 0x130

    if-eq p2, v2, :cond_2

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_2

    if-ne p2, v4, :cond_1

    move p2, v4

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p3, :cond_1

    const/4 v2, 0x1

    :goto_2
    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_3

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzh;->zzK(J)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p4

    .line 33
    invoke-virtual {p4, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 36
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznn;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznn;->zzc:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 39
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    goto/16 :goto_7

    .line 43
    :cond_7
    :goto_3
    const-string p3, "Last-Modified"

    .line 10
    invoke-static {p5, p3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaK(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "ETag"

    .line 11
    invoke-static {p5, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaK(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-eq p2, v5, :cond_9

    if-ne p2, v4, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    invoke-virtual {v2, p1, p4, p3, p5}, Lcom/google/android/gms/measurement/internal/zzht;->zzi(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 12
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p3

    if-nez p3, :cond_a

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p4, p4}, Lcom/google/android/gms/measurement/internal/zzht;->zzi(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    .line 15
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzh;->zzI(J)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p3

    .line 17
    invoke-virtual {p3, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    if-ne p2, v5, :cond_b

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 20
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 21
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p3, p2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaJ()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzM()V

    goto :goto_7

    .line 26
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzD(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzP(Ljava/lang/String;)V

    goto :goto_7

    .line 28
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    .line 40
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzu:Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    return-void

    .line 41
    :goto_8
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 42
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzu:Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaM()V

    .line 44
    throw p1
.end method

.method final zzY(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzq:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzq:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzq:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzZ()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzp:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzp:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaa()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzy:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    const-string v2, "Bad channel to read from"

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzm()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    if-le v6, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    if-ge v6, v1, :cond_8

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzy:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    if-eqz v7, :cond_7

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_5

    .line 24
    :cond_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    :try_start_1
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 30
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 38
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 32
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 23
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 33
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 37
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final zzaU()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaU()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public final zzaV()Lcom/google/android/gms/measurement/internal/zzgu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    return-object v0
.end method

.method public final zzaW()Lcom/google/android/gms/measurement/internal/zzhz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    return-object v0
.end method

.method public final zzaY()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzaZ()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzaa()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzx:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zze:Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbv;->zza()Lcom/google/android/gms/internal/measurement/zzbw;

    .line 7
    sget v4, Lcom/google/android/gms/internal/measurement/zzca;->$r8$clinit:I

    new-instance v4, Ljava/io/File;

    const-string v5, "google_app_measurement.db"

    .line 8
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 9
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzy:Ljava/nio/channels/FileChannel;

    .line 10
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzx:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 15
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method final zzab(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 10

    .line 1
    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzz:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzA:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzz:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 7
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "apps"

    .line 8
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 9
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "events_snapshot"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "trigger_uris"

    .line 19
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "upload_queue"

    .line 20
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    .line 21
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzfy;->zzbh:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v9, 0x0

    .line 23
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "no_data_mode_events"

    .line 24
    invoke-virtual {v3, v7, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-lez v5, :cond_2

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 31
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 29
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :cond_2
    :goto_2
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzah(Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_3
    return-void
.end method

.method final zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "_id"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaR(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzpp;->zzp(Ljava/lang/String;)I

    move-result v12

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v0

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    .line 9
    invoke-virtual {v0, v8, v5, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    :cond_2
    move v15, v13

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    const-string v13, "_ev"

    .line 11
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzpp;->zzK(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v17

    if-eqz v17, :cond_6

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v3

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    .line 15
    invoke-virtual {v3, v8, v5, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v19

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_5

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v20, v13

    goto :goto_2

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    goto :goto_0

    .line 19
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    const-string v18, "_ev"

    move-object/from16 v16, v0

    .line 20
    invoke-virtual/range {v14 .. v20}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 21
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v4

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/google/android/gms/measurement/internal/zzpp;->zzL(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 23
    const-string v4, "_sid"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 24
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzpl;->zzc:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzpl;->zzf:Ljava/lang/String;

    .line 25
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v10

    const-string v12, "_sno"

    invoke-virtual {v10, v9, v12}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 27
    instance-of v14, v12, Ljava/lang/Long;

    if-eqz v14, :cond_7

    .line 35
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_3

    :cond_7
    if-eqz v10, :cond_8

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v12

    const-string v14, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 30
    invoke-virtual {v12, v14, v10}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v10

    const-string v12, "_s"

    invoke-virtual {v10, v9, v12}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v10

    .line 33
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v10

    iget-wide v14, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    const-string v9, "Backfill the session number. Last used session number"

    .line 34
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v9, v14

    goto :goto_3

    :cond_9
    const-wide/16 v9, 0x0

    .line 35
    :goto_3
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzpl;

    const-wide/16 v15, 0x1

    add-long/2addr v9, v15

    .line 36
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "_sno"

    move-wide/from16 v16, v5

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_a
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 38
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 39
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzpl;->zzf:Ljava/lang/String;

    .line 40
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzpl;->zzc:J

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 43
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v9

    .line 44
    invoke-virtual {v9, v7}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Setting user property"

    .line 45
    invoke-virtual {v0, v10, v9, v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 47
    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    const-string v3, "_lair"

    .line 52
    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 53
    :cond_b
    :goto_4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    move-result v0

    .line 55
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzpk;->zzu(Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 58
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzan(J)V

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zza()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v4, v13, v13}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 62
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V

    if-nez v0, :cond_d

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    .line 65
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 67
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x9

    const/16 v18, 0x0

    move-object/from16 v16, v12

    .line 69
    invoke-virtual/range {v14 .. v20}, Lcom/google/android/gms/measurement/internal/zzpp;->zzN(Lcom/google/android/gms/measurement/internal/zzpo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return-void

    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 71
    throw v0

    :cond_e
    :goto_6
    return-void
.end method

.method final zzad(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaR(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaT(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "_npa"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 31
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpl;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 p1, 0x1

    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    const-string v3, "_npa"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Removing user property"

    .line 12
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 14
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    const-string v0, "_id"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_lair"

    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 19
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string v0, "User property removed"

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 29
    throw p1
.end method

.method final zzae()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzs:I

    return-void
.end method

.method final zzaf()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzt:I

    return-void
.end method

.method final zzag()Lcom/google/android/gms/measurement/internal/zzic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    return-object v0
.end method

.method final zzah(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v0, "com.android.vending"

    const-string v6, "_npa"

    const-string v7, "_uwa"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaR(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_1

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    .line 8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 9
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzh;->zzI(J)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v13

    .line 11
    invoke-virtual {v13, v9, v10, v10}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzht;->zzh(Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v9, :cond_2

    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 15
    :cond_2
    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzl:J

    cmp-long v9, v13, v11

    if-nez v9, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v13

    :cond_3
    move-wide/from16 v17, v13

    .line 17
    iget v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzm:I

    const/4 v13, 0x1

    if-eqz v9, :cond_4

    if-eq v9, v13, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v14

    .line 19
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v14

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 20
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "Incorrect app type, assuming installed app. appId, appType"

    .line 21
    invoke-virtual {v14, v11, v15, v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v9, v10

    .line 22
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 23
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v11

    .line 24
    invoke-virtual {v11, v8, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v11

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaT(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v11, :cond_6

    const-string v14, "auto"

    iget-object v15, v11, Lcom/google/android/gms/measurement/internal/zzpn;->zzb:Ljava/lang/String;

    .line 26
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_0

    :cond_5
    move-wide/from16 v12, v17

    const-wide/16 v24, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_6
    :goto_0
    if-eqz v12, :cond_9

    .line 27
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzpl;

    const-string v16, "_npa"

    .line 28
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v13, v6, :cond_7

    const-wide/16 v23, 0x0

    goto :goto_1

    :cond_7
    const-wide/16 v23, 0x1

    :goto_1
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v23, 0x1

    const-string v20, "auto"

    move-object/from16 v19, v6

    move-wide/from16 v13, v23

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v24, v13

    move-wide/from16 v12, v17

    if-eqz v11, :cond_8

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    iget-object v11, v15, Lcom/google/android/gms/measurement/internal/zzpl;->zzd:Ljava/lang/Long;

    .line 29
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 30
    :cond_8
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_2

    :cond_9
    move-wide/from16 v12, v17

    const-wide/16 v24, 0x1

    if-eqz v11, :cond_a

    .line 31
    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzad(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 32
    :cond_a
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzfy;->zzbb:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v14, 0x0

    .line 33
    invoke-virtual {v6, v14, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 34
    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzD:J

    invoke-virtual {v1, v2, v14, v15}, Lcom/google/android/gms/measurement/internal/zzpg;->zzan(Lcom/google/android/gms/measurement/internal/zzr;J)V

    goto :goto_3

    .line 35
    :cond_b
    invoke-virtual {v1, v2, v12, v13}, Lcom/google/android/gms/measurement/internal/zzpg;->zzan(Lcom/google/android/gms/measurement/internal/zzr;J)V

    .line 36
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    if-nez v9, :cond_c

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v9

    const-string v11, "_f"

    .line 40
    invoke-virtual {v9, v8, v11}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v9

    move v11, v10

    goto :goto_4

    .line 37
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v9

    const-string v11, "_v"

    .line 38
    invoke-virtual {v9, v8, v11}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v9

    const/4 v11, 0x1

    :goto_4
    if-nez v9, :cond_23

    const-wide/32 v14, 0x36ee80

    .line 40
    div-long v17, v12, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v17, v17, v24

    mul-long v17, v17, v14

    const-string v9, "_elt"

    const-string v14, "_dac"

    const-string v15, "_et"

    const-string v6, "_r"

    const-string v10, "_c"

    if-nez v11, :cond_20

    move-object v11, v15

    .line 57
    :try_start_1
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzpl;

    const-string v16, "_fot"

    .line 58
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-wide/from16 v17, v12

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzm:Lcom/google/android/gms/measurement/internal/zzhk;

    .line 61
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzhk;

    if-eqz v8, :cond_d

    .line 62
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_d
    move-object/from16 v26, v9

    goto/16 :goto_7

    .line 132
    :cond_e
    iget-object v15, v13, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    .line 66
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 67
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhk;->zza()Z

    move-result v12

    if-nez v12, :cond_f

    .line 68
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v8, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    move-object/from16 v26, v9

    goto/16 :goto_8

    :cond_f
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzhj;

    .line 69
    invoke-direct {v12, v13, v8}, Lcom/google/android/gms/measurement/internal/zzhj;-><init>(Lcom/google/android/gms/measurement/internal/zzhk;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    new-instance v8, Landroid/content/Intent;

    move-object/from16 v16, v15

    const-string v15, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 71
    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v26, v9

    const-string v9, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 72
    invoke-direct {v15, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-nez v9, :cond_10

    .line 74
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzf()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v8, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 76
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_10
    const/4 v15, 0x0

    .line 77
    invoke-virtual {v9, v8, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 78
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_13

    .line 82
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 83
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_14

    .line 84
    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 85
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_12

    .line 86
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 87
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhk;->zza()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    .line 91
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v8

    .line 93
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v9

    const/4 v15, 0x1

    .line 94
    invoke-virtual {v8, v9, v0, v12, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 95
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v8

    .line 96
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    const-string v9, "Install Referrer Service is"

    if-eqz v0, :cond_11

    const-string v0, "available"

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    .line 97
    :cond_11
    const-string v0, "not available"

    :goto_5
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 139
    :goto_6
    :try_start_3
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v8

    .line 99
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 88
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v8, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 90
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_8

    .line 79
    :cond_13
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v8, "Play Service for fetching Install Referrer is unavailable on device"

    .line 81
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_8

    .line 62
    :goto_7
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzf()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v8, "Install Referrer Reporter was called with invalid app package name"

    .line 65
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 102
    :cond_14
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    new-instance v8, Landroid/os/Bundle;

    .line 104
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-wide/from16 v12, v24

    .line 105
    invoke-virtual {v8, v10, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 106
    invoke-virtual {v8, v6, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v9, 0x0

    .line 107
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 108
    invoke-virtual {v8, v5, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 109
    invoke-virtual {v8, v4, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 110
    invoke-virtual {v8, v3, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 111
    invoke-virtual {v8, v11, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 112
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzo:Z

    if-eqz v0, :cond_15

    .line 113
    invoke-virtual {v8, v14, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 114
    :cond_15
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 116
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    const-string v6, "first_open_count"

    .line 119
    invoke-virtual {v0, v9, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzN(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_17

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 146
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_16
    :goto_9
    const-wide/16 v21, 0x0

    goto/16 :goto_10

    .line 122
    :cond_17
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v9, v15}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 124
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    .line 125
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 126
    invoke-virtual {v6, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_1c

    .line 127
    iget-wide v12, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v21, 0x0

    cmp-long v0, v12, v21

    if-eqz v0, :cond_1c

    .line 128
    iget-wide v14, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v12, v14

    if-eqz v0, :cond_1a

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzfy;->zzaI:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v12, 0x0

    .line 130
    invoke-virtual {v0, v12, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/16 v21, 0x0

    cmp-long v0, v10, v21

    if-nez v0, :cond_18

    const-wide/16 v12, 0x1

    .line 131
    invoke-virtual {v8, v7, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v10, 0x0

    :cond_18
    :goto_b
    const/4 v12, 0x0

    goto :goto_c

    :cond_19
    const-wide/16 v12, 0x1

    .line 132
    invoke-virtual {v8, v7, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b

    :cond_1a
    const/4 v12, 0x1

    .line 131
    :goto_c
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzpl;

    const-string v16, "_fi"

    const/4 v7, 0x1

    if-eq v7, v12, :cond_1b

    const-wide/16 v13, 0x0

    goto :goto_d

    :cond_1b
    const-wide/16 v13, 0x1

    .line 133
    :goto_d
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1c
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v9, v15}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    :catch_2
    move-exception v0

    .line 137
    :try_start_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    .line 138
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 139
    invoke-virtual {v7, v13, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_16

    .line 140
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v12, 0x1

    and-int/2addr v7, v12

    if-eqz v7, :cond_1d

    const-wide/16 v12, 0x1

    .line 141
    invoke-virtual {v8, v4, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_f

    :cond_1d
    const-wide/16 v12, 0x1

    .line 142
    :goto_f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    .line 143
    invoke-virtual {v8, v3, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9

    :goto_10
    cmp-long v0, v10, v21

    if-ltz v0, :cond_1e

    .line 147
    invoke-virtual {v8, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 148
    :cond_1e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzbj:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v6, 0x0

    .line 149
    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v5, v26

    invoke-virtual {v8, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 151
    :cond_1f
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v16, "_f"

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v0, v8}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v19, v17

    const-string v18, "auto"

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 152
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzE(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto/16 :goto_11

    :cond_20
    move-object v5, v9

    move-wide/from16 v19, v12

    move-object v11, v15

    .line 41
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzpl;

    const-string v16, "_fvt"

    .line 42
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-wide/from16 v17, v19

    const-string v20, "auto"

    move-object/from16 v19, v0

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzac(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    new-instance v0, Landroid/os/Bundle;

    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v12, 0x1

    .line 47
    invoke-virtual {v0, v10, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 48
    invoke-virtual {v0, v6, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 49
    invoke-virtual {v0, v11, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 50
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzo:Z

    if-eqz v3, :cond_21

    .line 51
    invoke-virtual {v0, v14, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 52
    :cond_21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzbj:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v6, 0x0

    .line 53
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 55
    :cond_22
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v16, "_v"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v19, v17

    const-string v18, "auto"

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 56
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzE(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_11

    :cond_23
    move-wide/from16 v17, v12

    .line 153
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzi:Z

    if-eqz v0, :cond_24

    new-instance v0, Landroid/os/Bundle;

    .line 154
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v16, "_cd"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v19, v17

    const-string v18, "auto"

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 156
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzE(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 157
    :cond_24
    :goto_11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return-void

    :goto_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 159
    throw v0
.end method

.method final zzai(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzaz:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzfy;->zzai:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzF()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaG(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzH()J

    move-result-wide v4

    :goto_1
    int-to-long v6, v2

    cmp-long v1, v6, v4

    if-gez v1, :cond_1

    const-wide/16 v6, 0x0

    .line 12
    invoke-direct {p0, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaG(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzaA:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaF()V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzl:Lcom/google/android/gms/measurement/internal/zzou;

    .line 17
    iget p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzE:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzin;->zzb(I)Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object p1

    .line 18
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/measurement/internal/zzou;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzin;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v1, "[sgtm] Going background, trigger client side upload. appId"

    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzN(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method final zzaj(Lcom/google/android/gms/measurement/internal/zzah;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaO(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzak(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_0
    return-void
.end method

.method final zzak(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaR(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzah;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Lcom/google/android/gms/measurement/internal/zzah;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zze:Z

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzq(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 20
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzah;->zze:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzah;->zze:Z

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 25
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzpl;->zzc:J

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpl;->zzf:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    goto :goto_1

    .line 39
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzf:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 23
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzd:J

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzpl;->zzf:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzah;->zze:Z

    move p1, v2

    .line 26
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zze:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpn;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzpl;->zzc:J

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v3, "User property updated immediately"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 34
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 35
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v3, "(2)Too many active user properties, ignoring"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 37
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 38
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 34
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz p1, :cond_6

    .line 40
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbg;J)V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzH(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 42
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzp(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 46
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 48
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 49
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 52
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpl;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 57
    throw p1
.end method

.method final zzal(Lcom/google/android/gms/measurement/internal/zzah;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaO(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzam(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_0
    return-void
.end method

.method final zzam(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaR(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzq(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 17
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzr(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zze:Z

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzk:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zzf()Landroid/os/Bundle;

    move-result-object v1

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 22
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 24
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzpp;->zzac(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzH(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_3

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v2

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 33
    throw p1
.end method

.method final zzan(Lcom/google/android/gms/measurement/internal/zzr;J)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v0, "app_id=?"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzpp;->zzB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "New GMP App Id passed in. Removing cached database data. appId"

    .line 6
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "events"

    .line 12
    invoke-virtual {v6, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string v9, "user_attributes"

    .line 13
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "conditional_properties"

    .line 14
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "apps"

    .line 15
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events"

    .line 16
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events_metadata"

    .line 17
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "event_filters"

    .line 18
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "property_filters"

    .line 19
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "audience_filter_values"

    .line 20
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "consent_settings"

    .line 21
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "default_event_params"

    .line 22
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "trigger_uris"

    .line 23
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 25
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    .line 24
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzfy;->zzbh:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 26
    invoke-virtual {v10, v4, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "no_data_mode_events"

    .line 27
    invoke-virtual {v6, v10, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-lez v8, :cond_1

    .line 28
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v6, "Deleted application data. app, records"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v3, v4

    goto :goto_3

    .line 44
    :goto_2
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "Error deleting application data. appId, error"

    .line 32
    invoke-virtual {v5, v6, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v3, :cond_6

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v0, v5, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_4

    :cond_3
    move v0, v6

    .line 35
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v10

    cmp-long v3, v10, v7

    if-nez v3, :cond_4

    if-eqz v9, :cond_4

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    .line 37
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    move v5, v6

    :goto_5
    or-int/2addr v0, v5

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    .line 39
    invoke-virtual {v0, v3, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v12, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    const-string v13, "auto"

    const-string v11, "_au"

    move-wide/from16 v14, p2

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzbc:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 42
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzE(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    .line 44
    :cond_5
    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzF(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_6
    return-void
.end method

.method final zzao(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzE:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzpd;

    .line 6
    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/measurement/internal/zzpd;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;Ljava/lang/String;[B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    const/16 v4, 0x64

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v1

    .line 11
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 12
    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    .line 13
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/measurement/internal/zznn;->zzf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 23
    :cond_1
    const-string v4, ""

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzh;

    .line 14
    invoke-direct {v5, v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzK(Lcom/google/android/gms/measurement/internal/zzjl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzk(Ljava/lang/String;)V

    :cond_3
    move-object v0, v5

    :cond_4
    :goto_1
    move v11, v10

    goto/16 :goto_3

    .line 19
    :cond_5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 25
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzk(Ljava/lang/String;)V

    .line 26
    iget-boolean v4, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 27
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/measurement/internal/zznn;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v5, "00000000-0000-0000-0000-000000000000"

    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 32
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzK(Lcom/google/android/gms/measurement/internal/zzjl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    move v11, v10

    goto :goto_2

    :cond_6
    move v11, v9

    .line 34
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    const-string v3, "_id"

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    const-string v3, "_lair"

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v1

    if-nez v1, :cond_9

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpn;

    const-wide/16 v3, 0x1

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    const-string v4, "_lair"

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    goto :goto_3

    .line 29
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzK(Lcom/google/android/gms/measurement/internal/zzjl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 21
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzK(Lcom/google/android/gms/measurement/internal/zzjl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 41
    :cond_9
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzg(Ljava/lang/String;)V

    .line 42
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzm(Ljava/lang/String;)V

    .line 44
    :cond_a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzy(J)V

    .line 46
    :cond_b
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzs(Ljava/lang/String;)V

    .line 48
    :cond_c
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzu(J)V

    .line 49
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzw(Ljava/lang/String;)V

    .line 51
    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzA(J)V

    .line 52
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzE(Z)V

    .line 53
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzab(Ljava/lang/String;)V

    .line 55
    :cond_e
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzad(Z)V

    .line 56
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf(Ljava/lang/Boolean;)V

    .line 57
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzq:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzC(J)V

    .line 58
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzi(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpr;->zza()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzaL:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 60
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 64
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzr:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzah(Ljava/util/List;)V

    goto :goto_4

    .line 61
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpr;->zza()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzaK:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 62
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 63
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzah(Ljava/util/List;)V

    .line 65
    :cond_10
    :goto_4
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzv:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj(Z)V

    .line 66
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaz(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqp;->zza()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 68
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 69
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzz:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzap(I)V

    .line 70
    :cond_11
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzw:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzal(J)V

    .line 71
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaG(Ljava/lang/String;)V

    .line 72
    iget p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzE:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaK(I)V

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zza()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz v11, :cond_12

    goto :goto_5

    :cond_12
    return-object v0

    :cond_13
    move v9, v11

    .line 74
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    invoke-virtual {p1, v0, v9, v10}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    return-object v0
.end method

.method final zzap(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzoz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzoz;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    .line 3
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzaq(Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)Ljava/util/List;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqp;->zza()Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz v0, :cond_3

    .line 5
    const-string v4, "uriSources"

    .line 6
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "uriTimestamps"

    .line 7
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    array-length v0, v5

    array-length v6, v4

    if-eq v0, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 42
    :goto_0
    array-length v0, v4

    if-ge v6, v0, :cond_3

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v7

    aget v0, v4, v6

    aget-wide v8, v5, v6

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    const-string v10, " trigger URIs. appId, source, timestamp"

    const-string v11, "Pruned "

    .line 12
    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "trigger_uris"

    const-string v14, "app_id=? and source=? and timestamp_millis<=?"

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v15, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v12, v13, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 15
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v12

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x2e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 19
    invoke-virtual {v12, v2, v3, v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 43
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Error pruning trigger URIs. appId"

    .line 22
    invoke-virtual {v2, v8, v7, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 23
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Uri sources and timestamps do not match"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 24
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    new-instance v0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 29
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "trigger_uris"

    const-string v6, "trigger_uri"

    const-string v7, "timestamp_millis"

    const-string v8, "source"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_id=?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v11, "rowid"

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 30
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 31
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 32
    :cond_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, ""

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x1

    .line 33
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    .line 34
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 35
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzoh;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzoh;-><init>(Ljava/lang/String;JI)V

    .line 36
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_4

    goto :goto_5

    .line 19
    :goto_4
    :try_start_2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Error querying trigger uris. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    invoke-virtual {v2, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 42
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :goto_6
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_8
    throw v0

    .line 4
    :cond_9
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method final zzar(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzB(J)Lcom/google/android/gms/measurement/internal/zzpj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "[sgtm] Queued batch doesn\'t exist. appId, rowId"

    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpj;->zze()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v3, p2, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:I

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzlr;->zzb:Lcom/google/android/gms/measurement/internal/zzlr;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzlr;->zza()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzF:Ljava/util/Map;

    .line 8
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzE(Ljava/lang/Long;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "[sgtm] queued batch deleted after successful client upload. appId, rowId"

    .line 13
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-wide v0, p2, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/ContentValues;

    .line 19
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzls;->zzb:Lcom/google/android/gms/measurement/internal/zzls;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzls;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "upload_type"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 22
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "creation_timestamp"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "upload_queue"

    const-string v8, "rowid=? AND app_id=? AND upload_type=?"

    .line 24
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzls;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzls;->zza()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v9, p1, v10}, [Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Google Signal pending batch not updated. appId, rowId"

    .line 29
    invoke-virtual {v4, v5, p1, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:J

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "[sgtm] queued Google Signal batch updated. appId, signalRowId"

    .line 38
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzP(Ljava/lang/String;)V

    return-void

    .line 53
    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Failed to update google Signal pending batch. appid, rowId"

    .line 33
    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    throw p2

    :cond_3
    return-void

    .line 40
    :cond_4
    iget v1, p2, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:I

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzlr;->zzd:Lcom/google/android/gms/measurement/internal/zzlr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzlr;->zza()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzF:Ljava/util/Map;

    .line 41
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzpe;

    if-nez v2, :cond_5

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpe;

    .line 42
    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzpe;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 43
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 44
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpe;->zza()V

    .line 45
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpe;->zzc()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds"

    .line 49
    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzK(Ljava/lang/Long;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "[sgtm] increased batch retry count after failed client upload. appId, rowId"

    .line 53
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzas(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    return-void
.end method

.method public final zzat(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlu;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzH:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzH:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzG:Lcom/google/android/gms/measurement/internal/zzlu;

    return-void
.end method

.method final synthetic zzau(Lcom/google/android/gms/measurement/internal/zzph;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhk;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzm:Lcom/google/android/gms/measurement/internal/zzhk;

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzav;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zze:Lcom/google/android/gms/measurement/internal/zzav;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzak;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zznn;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zznn;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzad;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzh:Lcom/google/android/gms/measurement/internal/zzad;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzlp;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzlp;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzj:Lcom/google/android/gms/measurement/internal/zzlp;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzok;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzax()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzg:Lcom/google/android/gms/measurement/internal/zzok;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhb;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzs:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzt:I

    if-eq p1, v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzs:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzt:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "UploadController is now fully initialized"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzav()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaF()V

    return-void
.end method

.method final synthetic zzax()Lcom/google/android/gms/measurement/internal/zzic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    return-object v0
.end method

.method final synthetic zzay()Ljava/util/Deque;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzr:Ljava/util/Deque;

    return-object v0
.end method

.method final synthetic zzaz(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzJ:J

    return-void
.end method

.method protected final zzc()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzI()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzag()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfy;->zzav:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "trigger_uris"

    const-string v6, "abs(timestamp_millis - ?) > cast(? as integer)"

    .line 13
    invoke-virtual {v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v4, "Deleted stale trigger uris. rowsDeleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 16
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznn;->zzd:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaL()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzou;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzl:Lcom/google/android/gms/measurement/internal/zzou;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzht;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzgz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzav;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zze:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzhb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzok;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzg:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzh:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzlp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzj:Lcom/google/android/gms/measurement/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzpk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzi:Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaS(Lcom/google/android/gms/measurement/internal/zzos;)Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zznn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzk:Lcom/google/android/gms/measurement/internal/zznn;

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzgn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v0

    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzpp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzn:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v0

    return-object v0
.end method

.method final zzu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzv(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzx:I

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object p1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Setting storage consent for package"

    .line 10
    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)V

    return-void
.end method

.method final zzw(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzy:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Setting DMA consent for package"

    .line 8
    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 11
    invoke-virtual {p0, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzy(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x64

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzh(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzD:Ljava/util/Map;

    .line 13
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzab(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;)V

    .line 15
    invoke-virtual {p0, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzy(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 16
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzh(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 20
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzji;->zzc:Lcom/google/android/gms/measurement/internal/zzji;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzji;->zzd:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne p1, v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzji;->zzd:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne v0, v6, :cond_1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    return-void

    .line 21
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Generated _dcu event for"

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    .line 22
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzC()J

    move-result-wide v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 25
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/zzav;->zzw(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzf:J

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    .line 27
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzam:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const-string v0, "_r"

    const-wide/16 v1, 0x1

    .line 28
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzC()J

    move-result-wide v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 31
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/zzav;->zzw(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzf:J

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_dcu realtime event count"

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzK:Lcom/google/android/gms/measurement/internal/zzpo;

    const-string v1, "_dcu"

    .line 35
    invoke-interface {v0, v4, v1, p1}, Lcom/google/android/gms/measurement/internal/zzpo;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzD:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method final zzy(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjl;->zzn()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/zzan;-><init>()V

    .line 8
    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzz(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjl;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzf()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    const-string v2, "_npa"

    .line 11
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpn;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    const-wide/16 v1, 0x1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzan;

    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzan;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzan;)I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq v1, p1, :cond_2

    .line 12
    const-string p1, "granted"

    goto :goto_1

    .line 14
    :cond_2
    const-string p1, "denied"

    .line 12
    :goto_1
    const-string v1, "ad_personalization"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final zzz(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjl;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v0

    const-string v1, "-"

    const/16 v2, 0x5a

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzji;->zzc:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne p1, p3, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()I

    move-result v2

    .line 4
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(Lcom/google/android/gms/measurement/internal/zzjk;I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzjk;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    .line 4
    :goto_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaz;

    .line 6
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v2, p3, v1}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v0

    .line 9
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzji;->zzd:Lcom/google/android/gms/measurement/internal/zzji;

    if-eq v0, v3, :cond_8

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzji;->zzc:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne v0, v4, :cond_2

    goto :goto_2

    .line 28
    :cond_2
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzji;->zzb:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne v0, p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    .line 12
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 13
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjk;)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object p2

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    if-eq p2, v5, :cond_3

    .line 20
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p4, v0, p3}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    move-object v0, p2

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    .line 14
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 15
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzw(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjk;)Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v5

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzp()Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object p3

    const/4 v6, 0x1

    if-eq p3, v3, :cond_4

    if-ne p3, v4, :cond_5

    :cond_4
    move v7, v6

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    if-ne v5, v8, :cond_6

    if-eqz v7, :cond_6

    .line 19
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzam;->zzc:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    move-object v0, p3

    goto :goto_3

    .line 17
    :cond_6
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzam;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {p4, v0, p3}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzam;)V

    .line 18
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzv(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result p2

    if-eq v6, p2, :cond_7

    move-object v0, v4

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_3

    .line 10
    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()I

    move-result v2

    .line 11
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {p4, p2, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(Lcom/google/android/gms/measurement/internal/zzjk;I)V

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzc:Lcom/google/android/gms/measurement/internal/zzht;

    .line 21
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzy(Ljava/lang/String;)Z

    move-result p2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzz(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzji;->zzc:Lcom/google/android/gms/measurement/internal/zzji;

    if-eq v0, p3, :cond_b

    .line 23
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_4

    .line 25
    :cond_9
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzaz;

    .line 26
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_a

    .line 28
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-direct {p3, p4, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    .line 23
    :cond_b
    :goto_4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaz;

    .line 24
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p3, v2, p2, v1}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method
