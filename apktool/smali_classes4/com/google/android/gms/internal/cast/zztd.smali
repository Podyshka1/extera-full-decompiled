.class final Lcom/google/android/gms/internal/cast/zztd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzwq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/cast/zztc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cast/zztc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    iput-object p0, p1, Lcom/google/android/gms/internal/cast/zztc;->zza:Lcom/google/android/gms/internal/cast/zztd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zztc;)Lcom/google/android/gms/internal/cast/zztd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztc;->zza:Lcom/google/android/gms/internal/cast/zztd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zztd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zztd;-><init>(Lcom/google/android/gms/internal/cast/zztc;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v1, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v1

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzB(IJ)V
    .locals 3

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzr(IJ)V

    return-void
.end method

.method public final zzC(ILjava/util/List;Z)V
    .locals 6

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v2, 0x2

    invoke-virtual {p3, p1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v1

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v2

    add-int/2addr p3, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    .line 10
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zztc;->zzs(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    .line 3
    invoke-virtual {p3, p1, v2, v3}, Lcom/google/android/gms/internal/cast/zztc;->zzr(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzD(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzm(ILjava/lang/String;)V

    return-void
.end method

.method public final zzE(ILjava/util/List;)V
    .locals 4

    .line 3
    instance-of v0, p2, Lcom/google/android/gms/internal/cast/zzuf;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/cast/zzuf;

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/zzuf;->zze(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzm(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/cast/zzsu;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zze(ILcom/google/android/gms/internal/cast/zzsu;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzm(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzF(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzp(II)V

    return-void
.end method

.method public final zzG(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zztc;->zzx(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzH(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzr(IJ)V

    return-void
.end method

.method public final zzI(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzd(IZ)V

    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 9
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzb(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzd(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/cast/zzsu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zze(ILcom/google/android/gms/internal/cast/zzsu;)V

    return-void
.end method

.method public final zze(ILjava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/cast/zzsu;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zze(ILcom/google/android/gms/internal/cast/zzsu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzh(IJ)V

    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzh(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzj(II)V

    return-void
.end method

.method public final zzi(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzj(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzf(II)V

    return-void
.end method

.method public final zzk(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzl(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzh(IJ)V

    return-void
.end method

.method public final zzm(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzn(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzf(II)V

    return-void
.end method

.method public final zzo(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 10
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzp(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/cast/zzux;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zztc;->zza:Lcom/google/android/gms/internal/cast/zztd;

    .line 3
    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/cast/zzvi;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    return-void
.end method

.method public final zzq(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzj(II)V

    return-void
.end method

.method public final zzr(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zztc;->zzu(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzs(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzr(IJ)V

    return-void
.end method

.method public final zzt(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzy(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzu(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/zzvi;)V
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/cast/zzux;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzsz;

    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzsz;->zzq(I)V

    .line 3
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/cast/zzsh;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zzsh;->zzq(Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzsz;->zzq(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zztc;->zza:Lcom/google/android/gms/internal/cast/zztd;

    .line 4
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/cast/zzvi;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    return-void
.end method

.method public final zzv(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzf(II)V

    return-void
.end method

.method public final zzw(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzx(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzh(IJ)V

    return-void
.end method

.method public final zzy(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/cast/zztc;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zztc;->zzq(I)V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/cast/zztc;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzz(II)V
    .locals 1

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztd;->zza:Lcom/google/android/gms/internal/cast/zztc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zztc;->zzp(II)V

    return-void
.end method
