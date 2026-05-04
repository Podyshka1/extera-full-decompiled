.class abstract Lcom/google/android/gms/internal/cast/zzvk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Ljava/lang/Class;

.field private static final zzc:Lcom/google/android/gms/internal/cast/zzvz;

.field private static final zzd:Lcom/google/android/gms/internal/cast/zzvz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "com.google.protobuf.GeneratedMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/cast/zzvk;->zzb:Ljava/lang/Class;

    :try_start_1
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzvz;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .line 2
    :catchall_2
    :goto_2
    sput-object v0, Lcom/google/android/gms/internal/cast/zzvk;->zzc:Lcom/google/android/gms/internal/cast/zzvz;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzwb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzwb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzvk;->zzd:Lcom/google/android/gms/internal/cast/zzvz;

    return-void
.end method

.method public static zzA(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzA(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzB(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzC(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzC(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzG(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzD(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzI(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static zzE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method static zza(Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/cast/zztq;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/cast/zztq;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zztq;->zzd(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzb(ILjava/util/List;Z)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzc(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static zzd(ILjava/util/List;Z)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr p1, p0

    return p1
.end method

.method static zze(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static zzf(Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/cast/zztq;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/cast/zztq;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zztq;->zzd(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzg(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/cast/zzum;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/cast/zzum;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zzum;->zzd(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/cast/zzux;

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzv(Lcom/google/android/gms/internal/cast/zzux;Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method static zzi(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/cast/zztq;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/cast/zztq;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zztq;->zzd(I)I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzj(Ljava/util/List;)I
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/cast/zzum;

    const/16 v3, 0x3f

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/cast/zzum;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zzum;->zzd(I)J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzk(Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/cast/zztq;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/cast/zztq;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zztq;->zzd(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzl(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/cast/zzum;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/cast/zzum;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zzum;->zzd(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static zzm()Lcom/google/android/gms/internal/cast/zzvz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzvk;->zzc:Lcom/google/android/gms/internal/cast/zzvz;

    return-object v0
.end method

.method public static zzn()Lcom/google/android/gms/internal/cast/zzvz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzvk;->zzd:Lcom/google/android/gms/internal/cast/zzvz;

    return-object v0
.end method

.method static zzo(Lcom/google/android/gms/internal/cast/zzvz;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/zzvz;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzvz;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzp(Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/cast/zztp;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzvk;->zzb:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static zzq(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzc(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzr(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzg(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzs(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzi(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzt(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzk(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzu(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzm(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzv(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzo(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzw(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzr(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzx(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzt(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzy(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzw(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzz(ILjava/util/List;Lcom/google/android/gms/internal/cast/zzwq;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/cast/zzwq;->zzy(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method
