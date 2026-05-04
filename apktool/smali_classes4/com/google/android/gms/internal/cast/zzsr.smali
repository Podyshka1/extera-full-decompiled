.class Lcom/google/android/gms/internal/cast/zzsr;
.super Lcom/google/android/gms/internal/cast/zzsq;
.source "SourceFile"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzsq;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/cast/zzsu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/cast/zzsu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/internal/cast/zzsr;

    if-eqz v1, :cond_a

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/cast/zzsr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsu;->zzk()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzsu;->zzk()I

    move-result v3

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_9

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_8

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    .line 8
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzsr;->zzc()I

    move p1, v2

    move v5, p1

    :goto_1
    if-ge p1, v1, :cond_7

    .line 10
    aget-byte v6, v3, p1

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_6

    return v2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    return v0

    .line 6
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzsu;->zzd()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ran off end of other: 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    array-length v0, v0

    return v0
.end method

.method protected final zze(III)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/cast/zzty;->zzb(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/cast/zzsu;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/cast/zzsu;->zzj(III)I

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/cast/zzsu;->zzb:Lcom/google/android/gms/internal/cast/zzsu;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    new-instance v1, Lcom/google/android/gms/internal/cast/zzso;

    .line 2
    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzso;-><init>([BII)V

    return-object v1
.end method

.method protected final zzg(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zzh(Lcom/google/android/gms/internal/cast/zzsk;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/cast/zzsz;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzsz;->zzc([BII)V

    return-void
.end method

.method public final zzi()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzsr;->zzd()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzsr;->zza:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzwn;->zze([BII)Z

    move-result v0

    return v0
.end method
