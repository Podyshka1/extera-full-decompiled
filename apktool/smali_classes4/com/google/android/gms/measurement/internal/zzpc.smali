.class final Lcom/google/android/gms/measurement/internal/zzpc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzid;

.field zzb:Ljava/util/List;

.field zzc:Ljava/util/List;

.field zzd:J

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzpg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zze:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final zzb(Lcom/google/android/gms/internal/measurement/zzhs;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/measurement/zzhs;)Z
    .locals 7

    .line 1
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzb:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzb:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpc;->zzb(Lcom/google/android/gms/internal/measurement/zzhs;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzpc;->zzb(Lcom/google/android/gms/internal/measurement/zzhs;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzd:J

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcn()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zze:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzbd:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    .line 8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzG()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    goto :goto_1

    :cond_4
    return v1

    .line 9
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzG()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_6

    return v1

    .line 8
    :cond_6
    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzd:J

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    .line 10
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzb:Ljava/util/List;

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpc;->zzc:Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzfy;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 13
    invoke-virtual {p2, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_7

    return v1

    :cond_7
    return p3
.end method
