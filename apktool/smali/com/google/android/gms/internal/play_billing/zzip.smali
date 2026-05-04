.class final Lcom/google/android/gms/internal/play_billing/zzip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzix;


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/play_billing/zzim;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/play_billing/zzjj;

.field private final zzm:Lcom/google/android/gms/internal/play_billing/zzgx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzip;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzim;Z[IIILcom/google/android/gms/internal/play_billing/zzir;Lcom/google/android/gms/internal/play_billing/zzhz;Lcom/google/android/gms/internal/play_billing/zzjj;Lcom/google/android/gms/internal/play_billing/zzgx;Lcom/google/android/gms/internal/play_billing/zzih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzf:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzi:[I

    iput p8, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzj:I

    iput p9, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzk:I

    iput-object p12, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzl:Lcom/google/android/gms/internal/play_billing/zzjj;

    iput-object p13, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzm:Lcom/google/android/gms/internal/play_billing/zzgx;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzg:Lcom/google/android/gms/internal/play_billing/zzim;

    return-void
.end method

.method private static zzA(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzB(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzC(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzE(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    aget p1, p1, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzD(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzp(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzE(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzp(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzF(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzG(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzE(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzI(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzp(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzgk;->zzb:Lcom/google/android/gms/internal/play_billing/zzgk;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgk;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/zzgk;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzgk;->zzb:Lcom/google/android/gms/internal/play_billing/zzgk;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgk;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzJ(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzix;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzix;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzL(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzhk;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzA()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzp(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzN(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjw;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzG(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgk;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzd(ILcom/google/android/gms/internal/play_billing/zzgk;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzjk;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhk;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjk;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjk;->zzc()Lcom/google/android/gms/internal/play_billing/zzjk;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjk;->zzf()Lcom/google/android/gms/internal/play_billing/zzjk;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjk;

    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzij;Lcom/google/android/gms/internal/play_billing/zzir;Lcom/google/android/gms/internal/play_billing/zzhz;Lcom/google/android/gms/internal/play_billing/zzjj;Lcom/google/android/gms/internal/play_billing/zzgx;Lcom/google/android/gms/internal/play_billing/zzih;)Lcom/google/android/gms/internal/play_billing/zzip;
    .locals 32

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zziw;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zziw;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzip;->zza:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v17, v13

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 10
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 23
    new-array v7, v13, [I

    move v13, v12

    move v12, v9

    move v9, v13

    move v13, v10

    move/from16 v17, v14

    move/from16 v10, v16

    move-object/from16 v16, v7

    move v7, v4

    move v4, v15

    .line 6
    :goto_a
    sget-object v14, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zziw;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zziw;->zza()Lcom/google/android/gms/internal/play_billing/zzim;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v9

    add-int v9, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 26
    new-array v11, v11, [I

    .line 27
    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 29
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    .line 32
    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move-object/from16 v25, v0

    and-int/lit16 v0, v8, 0x800

    move/from16 v26, v0

    const/16 v0, 0x33

    if-lt v5, v0, :cond_23

    add-int/lit8 v0, v6, 0x1

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v6, v0, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v30, v27

    move/from16 v27, v6

    move/from16 v6, v30

    const/16 v30, 0xd

    :goto_10
    add-int/lit8 v31, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v0, :cond_1a

    and-int/lit16 v0, v6, 0x1fff

    shl-int v0, v0, v30

    or-int v27, v27, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v6, v31

    const v0, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v0, v6, v30

    or-int v6, v27, v0

    move/from16 v0, v31

    goto :goto_11

    :cond_1b
    move/from16 v0, v27

    :goto_11
    move/from16 v27, v0

    add-int/lit8 v0, v5, -0x33

    move/from16 v30, v2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1d

    :cond_1c
    const/4 v2, 0x1

    goto :goto_14

    :cond_1d
    const/16 v2, 0xc

    if-ne v0, v2, :cond_20

    .line 36
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/play_billing/zziw;->zzc()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    if-eqz v26, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v0, v10, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 37
    aget-object v10, v15, v10

    aput-object v10, v9, v24

    :goto_13
    move v10, v0

    :cond_20
    move/from16 v0, v26

    goto :goto_15

    :goto_14
    add-int/lit8 v0, v10, 0x1

    .line 34
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 35
    aget-object v2, v15, v10

    aput-object v2, v9, v28

    goto :goto_13

    :goto_15
    add-int/2addr v6, v6

    .line 38
    aget-object v2, v15, v6

    move/from16 v26, v0

    .line 39
    instance-of v0, v2, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_21

    .line 40
    check-cast v2, Ljava/lang/reflect/Field;

    :goto_16
    move/from16 v28, v6

    move v0, v7

    goto :goto_17

    .line 41
    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    aput-object v2, v15, v6

    goto :goto_16

    .line 43
    :goto_17
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v2, v6

    add-int/lit8 v6, v28, 0x1

    .line 44
    aget-object v7, v15, v6

    move/from16 v31, v0

    .line 45
    instance-of v0, v7, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_22

    .line 46
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_18

    .line 47
    :cond_22
    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/play_billing/zzip;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 48
    aput-object v7, v15, v6

    .line 49
    :goto_18
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v28, v0

    move-object v7, v1

    move/from16 v0, v26

    move/from16 v6, v27

    const/4 v1, 0x0

    const v23, 0xd800

    goto/16 :goto_25

    :cond_23
    move/from16 v30, v2

    move/from16 v31, v7

    add-int/lit8 v0, v10, 0x1

    .line 50
    aget-object v2, v15, v10

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/16 v7, 0x9

    if-eq v5, v7, :cond_24

    const/16 v7, 0x11

    if-ne v5, v7, :cond_25

    :cond_24
    move/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_25
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_2d

    const/16 v7, 0x31

    if-ne v5, v7, :cond_26

    add-int/lit8 v10, v10, 0x2

    move/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1c

    :cond_26
    const/16 v7, 0xc

    if-eq v5, v7, :cond_2a

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_2a

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v7, 0x32

    if-ne v5, v7, :cond_29

    add-int/lit8 v7, v10, 0x2

    add-int/lit8 v28, v21, 0x1

    .line 55
    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    .line 56
    aget-object v0, v15, v0

    add-int v21, v21, v21

    aput-object v0, v9, v21

    if-eqz v26, :cond_28

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v0, v10, 0x3

    .line 57
    aget-object v7, v15, v7

    aput-object v7, v9, v21

    move v10, v0

    move-object v7, v1

    move/from16 v21, v28

    goto :goto_1f

    :cond_28
    move v10, v7

    move/from16 v21, v28

    const/16 v26, 0x0

    :goto_19
    move-object v7, v1

    goto :goto_1f

    :cond_29
    move/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1e

    .line 53
    :cond_2a
    :goto_1a
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/play_billing/zziw;->zzc()I

    move-result v7

    move/from16 v28, v0

    const/4 v0, 0x1

    if-eq v7, v0, :cond_2c

    if-eqz v26, :cond_2b

    goto :goto_1b

    :cond_2b
    move-object v7, v1

    move/from16 v10, v28

    const/16 v26, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1b
    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 54
    aget-object v24, v15, v28

    aput-object v24, v9, v7

    goto :goto_19

    :cond_2d
    move/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 65
    :goto_1c
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 52
    aget-object v24, v15, v28

    aput-object v24, v9, v7

    goto :goto_19

    .line 50
    :goto_1d
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 51
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v7

    :goto_1e
    move-object v7, v1

    move/from16 v10, v28

    .line 58
    :goto_1f
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v2, v0

    and-int/lit16 v0, v8, 0x1000

    const v1, 0xfffff

    if-eqz v0, :cond_31

    const/16 v0, 0x11

    if-gt v5, v0, :cond_31

    add-int/lit8 v0, v6, 0x1

    .line 59
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v6, 0xd800

    if-lt v1, v6, :cond_2f

    and-int/lit16 v1, v1, 0x1fff

    const/16 v23, 0xd

    :goto_20
    add-int/lit8 v28, v0, 0x1

    .line 60
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_2e

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v23

    or-int/2addr v1, v0

    add-int/lit8 v23, v23, 0xd

    move/from16 v0, v28

    goto :goto_20

    :cond_2e
    shl-int v0, v0, v23

    or-int/2addr v1, v0

    goto :goto_21

    :cond_2f
    move/from16 v28, v0

    :goto_21
    add-int v0, v31, v31

    div-int/lit8 v23, v1, 0x20

    add-int v0, v0, v23

    .line 61
    aget-object v6, v15, v0

    move/from16 v29, v0

    .line 62
    instance-of v0, v6, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 63
    check-cast v6, Ljava/lang/reflect/Field;

    :goto_22
    move/from16 v29, v1

    goto :goto_23

    .line 64
    :cond_30
    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/play_billing/zzip;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 65
    aput-object v6, v15, v29

    goto :goto_22

    .line 66
    :goto_23
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v1, v29, 0x20

    move/from16 v6, v28

    const v23, 0xd800

    move/from16 v28, v0

    goto :goto_24

    :cond_31
    const v23, 0xd800

    move/from16 v28, v1

    const/4 v1, 0x0

    :goto_24
    const/16 v0, 0x12

    if-lt v5, v0, :cond_32

    const/16 v0, 0x31

    if-gt v5, v0, :cond_32

    add-int/lit8 v0, v22, 0x1

    .line 67
    aput v2, v16, v22

    move/from16 v22, v0

    :cond_32
    move/from16 v0, v26

    :goto_25
    add-int/lit8 v26, v20, 0x1

    .line 68
    aput v4, v11, v20

    add-int/lit8 v4, v20, 0x2

    move/from16 v27, v0

    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_33

    const/high16 v0, 0x20000000

    goto :goto_26

    :cond_33
    const/4 v0, 0x0

    :goto_26
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_27

    :cond_34
    const/4 v8, 0x0

    :goto_27
    if-eqz v27, :cond_35

    const/high16 v27, -0x80000000

    goto :goto_28

    :cond_35
    const/16 v27, 0x0

    :goto_28
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v0, v8

    or-int v0, v0, v27

    or-int/2addr v0, v5

    or-int/2addr v0, v2

    .line 69
    aput v0, v11, v26

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v1, 0x14

    or-int v0, v0, v28

    .line 70
    aput v0, v11, v4

    move v4, v6

    move-object v1, v7

    move/from16 v5, v23

    move-object/from16 v0, v25

    move/from16 v2, v30

    move/from16 v7, v31

    goto/16 :goto_b

    :cond_36
    move-object/from16 v25, v0

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzip;

    .line 71
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/play_billing/zziw;->zza()Lcom/google/android/gms/internal/play_billing/zzim;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object v10, v11

    move-object v11, v9

    move-object v9, v0

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzim;Z[IIILcom/google/android/gms/internal/play_billing/zzir;Lcom/google/android/gms/internal/play_billing/zzhz;Lcom/google/android/gms/internal/play_billing/zzjj;Lcom/google/android/gms/internal/play_billing/zzgx;Lcom/google/android/gms/internal/play_billing/zzih;)V

    return-object v9

    .line 72
    :cond_37
    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 73
    throw v0
.end method

.method private static zzm(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzn(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzo(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzq(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static zzr(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzs(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzt(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzu(I)Lcom/google/android/gms/internal/play_billing/zzhm;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhm;

    return-object p1
.end method

.method private final zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzix;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziu;->zza()Lcom/google/android/gms/internal/play_billing/zziu;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zziu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzw(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzx(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzy(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzix;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    move v2, v7

    move v4, v2

    move v9, v4

    move v3, v8

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    array-length v5, v5

    const/4 v10, 0x0

    if-ge v2, v5, :cond_1c

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    add-int/lit8 v13, v2, 0x2

    .line 2
    aget v14, v12, v2

    .line 3
    aget v12, v12, v13

    and-int v13, v12, v8

    const/16 v15, 0x11

    const/16 v16, 0x1

    if-gt v11, v15, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    .line 4
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v16, v12

    goto :goto_2

    :cond_2
    move v12, v7

    :goto_2
    and-int/2addr v5, v8

    .line 5
    sget-object v13, Lcom/google/android/gms/internal/play_billing/zzhc;->zzJ:Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzhc;->zza()I

    move-result v13

    if-lt v11, v13, :cond_3

    sget-object v13, Lcom/google/android/gms/internal/play_billing/zzhc;->zzW:Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzhc;->zza()I

    :cond_3
    move v15, v9

    int-to-long v8, v5

    const/16 v17, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1c

    .line 7
    :pswitch_0
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 8
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v8

    .line 10
    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzw(ILcom/google/android/gms/internal/play_billing/zzim;Lcom/google/android/gms/internal/play_billing/zzix;)I

    move-result v5

    :goto_3
    add-int v9, v15, v5

    goto/16 :goto_1d

    .line 11
    :pswitch_1
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 12
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v10, v8, v8

    shr-long v8, v8, v17

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    xor-long/2addr v8, v10

    .line 14
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v8

    :goto_4
    add-int/2addr v5, v8

    goto :goto_3

    .line 15
    :pswitch_2
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 16
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v8

    add-int v9, v8, v8

    shr-int/lit8 v8, v8, 0x1f

    .line 17
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    xor-int/2addr v8, v9

    .line 18
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    goto :goto_4

    .line 19
    :pswitch_3
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    :goto_5
    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 21
    :pswitch_4
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    :goto_6
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 23
    :pswitch_5
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 24
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v8

    int-to-long v8, v8

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 26
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v8

    goto :goto_4

    .line 27
    :pswitch_6
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 28
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v8

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 30
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    goto :goto_4

    .line 31
    :pswitch_7
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 32
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 34
    invoke-virtual {v8}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzd()I

    move-result v8

    .line 35
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    :goto_7
    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_3

    .line 36
    :pswitch_8
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 37
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v8

    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/play_billing/zziz;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)I

    move-result v5

    goto/16 :goto_3

    .line 39
    :pswitch_9
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 40
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/google/android/gms/internal/play_billing/zzgk;

    if-eqz v9, :cond_4

    .line 41
    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 42
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 43
    invoke-virtual {v8}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzd()I

    move-result v8

    .line 44
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_7

    .line 45
    :cond_4
    check-cast v8, Ljava/lang/String;

    .line 46
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 47
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzy(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_4

    .line 48
    :pswitch_a
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 49
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 50
    :pswitch_b
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 51
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    goto/16 :goto_6

    .line 52
    :pswitch_c
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 53
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    goto/16 :goto_5

    .line 54
    :pswitch_d
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 55
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v8

    int-to-long v8, v8

    .line 56
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 57
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v8

    goto/16 :goto_4

    .line 58
    :pswitch_e
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 59
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 61
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v8

    goto/16 :goto_4

    .line 62
    :pswitch_f
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 63
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 64
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    .line 65
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v8

    goto/16 :goto_4

    .line 66
    :pswitch_10
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 67
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    goto/16 :goto_6

    .line 68
    :pswitch_11
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v14, 0x3

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    goto/16 :goto_5

    .line 70
    :pswitch_12
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzw(I)Ljava/lang/Object;

    move-result-object v8

    .line 71
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzig;

    .line 72
    invoke-static {v8}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 74
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzig;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_1c

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 292
    throw v10

    .line 75
    :pswitch_13
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 76
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v8

    .line 77
    sget v9, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 78
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    move v11, v7

    goto :goto_9

    :cond_6
    move v10, v7

    move v11, v10

    :goto_8
    if-ge v10, v9, :cond_7

    .line 79
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/play_billing/zzim;

    invoke-static {v14, v12, v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzw(ILcom/google/android/gms/internal/play_billing/zzim;Lcom/google/android/gms/internal/play_billing/zzix;)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_7
    :goto_9
    add-int v9, v15, v11

    goto/16 :goto_1d

    .line 80
    :pswitch_14
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 82
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 83
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    :goto_a
    add-int/2addr v8, v9

    add-int/2addr v8, v5

    :cond_8
    :goto_b
    add-int v9, v15, v8

    goto/16 :goto_1d

    .line 84
    :pswitch_15
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 85
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 86
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 87
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_a

    .line 88
    :pswitch_16
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 89
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 90
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 91
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_a

    .line 92
    :pswitch_17
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 93
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 94
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_a

    .line 96
    :pswitch_18
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 98
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_a

    .line 100
    :pswitch_19
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 101
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzk(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 102
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 103
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_a

    .line 104
    :pswitch_1a
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 105
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 106
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 107
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 108
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 109
    :pswitch_1b
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 110
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 111
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 112
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 113
    :pswitch_1c
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 114
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 115
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 116
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 117
    :pswitch_1d
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 118
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 119
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 120
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 121
    :pswitch_1e
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 122
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzl(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 123
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 124
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 125
    :pswitch_1f
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 126
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 127
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 128
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 129
    :pswitch_20
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 130
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 131
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 132
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 133
    :pswitch_21
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 134
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v8, v14, 0x3

    .line 135
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    .line 136
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_a

    .line 137
    :pswitch_22
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 138
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 139
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    :goto_c
    move v5, v7

    goto/16 :goto_3

    :cond_9
    shl-int/lit8 v9, v14, 0x3

    .line 140
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzj(Ljava/util/List;)I

    move-result v5

    .line 141
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    :goto_d
    mul-int/2addr v8, v9

    goto/16 :goto_4

    .line 142
    :pswitch_23
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 143
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 144
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    goto :goto_c

    :cond_a
    shl-int/lit8 v9, v14, 0x3

    .line 145
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzi(Ljava/util/List;)I

    move-result v5

    .line 146
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_d

    .line 147
    :pswitch_24
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 148
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 149
    :pswitch_25
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 150
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 151
    :pswitch_26
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 152
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 153
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_c

    :cond_b
    shl-int/lit8 v9, v14, 0x3

    .line 154
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zza(Ljava/util/List;)I

    move-result v5

    .line 155
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_d

    .line 156
    :pswitch_27
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 157
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 158
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_c

    goto :goto_c

    :cond_c
    shl-int/lit8 v9, v14, 0x3

    .line 159
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzk(Ljava/util/List;)I

    move-result v5

    .line 160
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto :goto_d

    .line 161
    :pswitch_28
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 162
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 163
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_d

    move v8, v7

    goto/16 :goto_b

    :cond_d
    shl-int/lit8 v9, v14, 0x3

    .line 164
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    mul-int/2addr v8, v9

    move v9, v7

    .line 165
    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 166
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 167
    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzd()I

    move-result v10

    .line 168
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 169
    :pswitch_29
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v8

    .line 170
    sget v9, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 171
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_e

    move v10, v7

    goto :goto_10

    :cond_e
    shl-int/lit8 v10, v14, 0x3

    .line 172
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v10

    mul-int/2addr v10, v9

    move v11, v7

    :goto_f
    if-ge v11, v9, :cond_f

    .line 173
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 177
    check-cast v12, Lcom/google/android/gms/internal/play_billing/zzim;

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzx(Lcom/google/android/gms/internal/play_billing/zzim;Lcom/google/android/gms/internal/play_billing/zzix;)I

    move-result v12

    add-int/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_f
    :goto_10
    add-int v9, v15, v10

    goto/16 :goto_1d

    .line 178
    :pswitch_2a
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 179
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_10

    :goto_11
    move v9, v7

    goto :goto_16

    :cond_10
    shl-int/lit8 v9, v14, 0x3

    .line 180
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    mul-int/2addr v9, v8

    instance-of v10, v5, Lcom/google/android/gms/internal/play_billing/zzhy;

    if-eqz v10, :cond_12

    .line 186
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhy;

    move v10, v7

    :goto_12
    if-ge v10, v8, :cond_14

    .line 187
    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzc()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/play_billing/zzgk;

    if-eqz v12, :cond_11

    .line 188
    check-cast v11, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 189
    invoke-virtual {v11}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzd()I

    move-result v11

    .line 190
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v9, v12

    goto :goto_13

    .line 191
    :cond_11
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzy(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v9, v11

    :goto_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_12
    move v10, v7

    :goto_14
    if-ge v10, v8, :cond_14

    .line 181
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/play_billing/zzgk;

    if-eqz v12, :cond_13

    .line 182
    check-cast v11, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 183
    invoke-virtual {v11}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzd()I

    move-result v11

    .line 184
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v9, v12

    goto :goto_15

    .line 185
    :cond_13
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzy(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v9, v11

    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_14
    :goto_16
    add-int/2addr v9, v15

    goto/16 :goto_1d

    .line 192
    :pswitch_2b
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 193
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 194
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_c

    :cond_15
    shl-int/lit8 v8, v14, 0x3

    .line 195
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v5, v8

    goto/16 :goto_3

    .line 196
    :pswitch_2c
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 197
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 198
    :pswitch_2d
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 199
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 200
    :pswitch_2e
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 201
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 202
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_16

    goto/16 :goto_c

    :cond_16
    shl-int/lit8 v9, v14, 0x3

    .line 203
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzf(Ljava/util/List;)I

    move-result v5

    .line 204
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_d

    .line 205
    :pswitch_2f
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 206
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 207
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_17

    goto/16 :goto_c

    :cond_17
    shl-int/lit8 v9, v14, 0x3

    .line 208
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzl(Ljava/util/List;)I

    move-result v5

    .line 209
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v9

    goto/16 :goto_d

    .line 210
    :pswitch_30
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 211
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 212
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_18

    goto/16 :goto_11

    :cond_18
    shl-int/lit8 v8, v14, 0x3

    .line 213
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzg(Ljava/util/List;)I

    move-result v9

    .line 214
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 215
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    mul-int/2addr v5, v8

    add-int/2addr v9, v5

    goto/16 :goto_16

    .line 216
    :pswitch_31
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 217
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 218
    :pswitch_32
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 219
    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    :pswitch_33
    move v5, v12

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 221
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 222
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v8

    .line 223
    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzw(ILcom/google/android/gms/internal/play_billing/zzim;Lcom/google/android/gms/internal/play_billing/zzix;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    move v5, v12

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 225
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v10, v8, v8

    shr-long v8, v8, v17

    .line 226
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    xor-long/2addr v8, v10

    .line 227
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v5

    :goto_17
    add-int/2addr v0, v5

    :goto_18
    add-int v9, v15, v0

    move-object/from16 v0, p0

    goto/16 :goto_1d

    :cond_19
    move-object/from16 v0, p0

    goto/16 :goto_1c

    :pswitch_35
    move v5, v12

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 229
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v8, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    .line 230
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    xor-int/2addr v5, v8

    .line 231
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    goto :goto_17

    :pswitch_36
    move v5, v12

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 233
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    :goto_19
    add-int/lit8 v0, v0, 0x8

    goto :goto_18

    :pswitch_37
    move v5, v12

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    :goto_1a
    add-int/lit8 v0, v0, 0x4

    goto :goto_18

    :pswitch_38
    move v5, v12

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 237
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v8, v5

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 239
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v5

    goto :goto_17

    :pswitch_39
    move v5, v12

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 241
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 243
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v5

    goto :goto_17

    :pswitch_3a
    move v5, v12

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 245
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 247
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzd()I

    move-result v5

    .line 248
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    :goto_1b
    add-int/2addr v8, v5

    add-int/2addr v0, v8

    goto/16 :goto_18

    :pswitch_3b
    move v5, v12

    .line 249
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 250
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 251
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v8

    invoke-static {v14, v5, v8}, Lcom/google/android/gms/internal/play_billing/zziz;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_3c
    move v5, v12

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 253
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Lcom/google/android/gms/internal/play_billing/zzgk;

    if-eqz v8, :cond_1a

    .line 254
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 256
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzd()I

    move-result v5

    .line 257
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v8

    goto :goto_1b

    .line 258
    :cond_1a
    check-cast v5, Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 260
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzy(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_17

    :pswitch_3d
    move v5, v12

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 262
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :pswitch_3e
    move v5, v12

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 264
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    goto/16 :goto_1a

    :pswitch_3f
    move v5, v12

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_40
    move v5, v12

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 268
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v8, v5

    .line 269
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 270
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v5

    goto/16 :goto_17

    :pswitch_41
    move v5, v12

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 272
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 274
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v5

    goto/16 :goto_17

    :pswitch_42
    move v5, v12

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 276
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 277
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    .line 278
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzA(J)I

    move-result v5

    goto/16 :goto_17

    :pswitch_43
    move v5, v12

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v14, 0x3

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v0

    goto/16 :goto_1a

    :pswitch_44
    move v5, v12

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 282
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzgr;->zzz(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int v9, v15, v1

    goto :goto_1d

    :cond_1b
    :goto_1c
    move v9, v15

    :goto_1d
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v1, p1

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_1c
    move v15, v9

    .line 283
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjk;

    .line 285
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzjk;->zza()I

    move-result v1

    add-int v9, v15, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-nez v1, :cond_1d

    return v9

    .line 286
    :cond_1d
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v2

    .line 2
    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzN(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzhp;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzn(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzm(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzhp;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb:[B

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhk;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjk;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-nez v0, :cond_3

    return v1

    .line 66
    :cond_3
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzfz;)I
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzA(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    const/4 v12, -0x1

    move/from16 v5, p3

    move v8, v11

    move v14, v8

    move v15, v14

    move v7, v12

    const v9, 0xfffff

    :goto_0
    const/16 v16, 0x0

    if-ge v5, v4, :cond_7d

    add-int/lit8 v15, v5, 0x1

    .line 2
    aget-byte v5, v3, v5

    if-gez v5, :cond_0

    .line 3
    invoke-static {v5, v3, v15, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzi(I[BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v15

    iget v5, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    :cond_0
    move v6, v15

    move v15, v5

    ushr-int/lit8 v5, v15, 0x3

    const v17, 0xfffff

    const/4 v13, 0x3

    if-le v5, v7, :cond_1

    div-int/2addr v8, v13

    iget v7, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zze:I

    if-lt v5, v7, :cond_2

    iget v7, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzf:I

    if-gt v5, v7, :cond_2

    .line 5
    invoke-direct {v0, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzip;->zzq(II)I

    move-result v7

    goto :goto_1

    .line 264
    :cond_1
    iget v7, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zze:I

    if-lt v5, v7, :cond_2

    iget v7, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzf:I

    if-gt v5, v7, :cond_2

    .line 4
    invoke-direct {v0, v5, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzq(II)I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v12

    :goto_1
    if-ne v7, v12, :cond_3

    move/from16 v10, p5

    move-object/from16 v26, v1

    move/from16 v25, v9

    move v8, v11

    move/from16 v19, v8

    move/from16 v21, v14

    move v13, v15

    move-object/from16 v11, p6

    move-object v15, v2

    move-object v14, v3

    move v9, v5

    move v3, v6

    goto/16 :goto_43

    :cond_3
    and-int/lit8 v8, v15, 0x7

    .line 271
    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    add-int/lit8 v18, v7, 0x1

    .line 6
    aget v11, v12, v18

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v13

    and-int v3, v11, v17

    int-to-long v3, v3

    move-wide/from16 v20, v3

    const-wide/16 v22, 0x0

    const/high16 v18, 0x20000000

    const-string v4, "Protocol message had invalid UTF-8."

    const-string v3, ""

    move/from16 v26, v5

    const-string v5, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move/from16 v27, v6

    const/16 v28, 0x1

    const/16 v6, 0x11

    if-gt v13, v6, :cond_23

    add-int/lit8 v6, v7, 0x2

    .line 7
    aget v6, v12, v6

    ushr-int/lit8 v12, v6, 0x14

    shl-int v12, v28, v12

    and-int v6, v6, v17

    move/from16 v25, v12

    if-eq v6, v9, :cond_6

    move/from16 v12, v17

    move/from16 v30, v13

    if-eq v9, v12, :cond_4

    int-to-long v12, v9

    .line 8
    invoke-virtual {v1, v2, v12, v13, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v12, 0xfffff

    :cond_4
    if-ne v6, v12, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    int-to-long v12, v6

    .line 9
    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_2
    move v12, v6

    move v14, v9

    goto :goto_3

    :cond_6
    move/from16 v30, v13

    move v12, v9

    :goto_3
    packed-switch v30, :pswitch_data_0

    const/4 v6, 0x3

    if-ne v8, v6, :cond_7

    or-int v14, v14, v25

    .line 10
    invoke-direct {v0, v2, v7}, Lcom/google/android/gms/internal/play_billing/zzip;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v26, 0x3

    or-int/lit8 v8, v4, 0x4

    .line 11
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v4

    move-object/from16 v5, p2

    move-object/from16 v9, p6

    move v11, v7

    move/from16 v13, v26

    move/from16 v6, v27

    move/from16 v7, p4

    .line 12
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/play_billing/zzga;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;[BIIILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v4

    move-object v7, v5

    .line 13
    invoke-direct {v0, v2, v11, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move v5, v4

    move-object v3, v7

    move-object v6, v9

    move v8, v11

    :goto_4
    move v9, v12

    move v7, v13

    const/4 v11, 0x0

    const/4 v12, -0x1

    move/from16 v4, p4

    goto/16 :goto_0

    :cond_7
    move/from16 v13, v26

    move v10, v7

    move/from16 v20, v12

    move/from16 v24, v14

    move/from16 v21, v15

    move-object/from16 v7, p2

    move-object/from16 v12, p6

    move-object v15, v2

    move/from16 v2, v27

    goto/16 :goto_1b

    :pswitch_0
    move-object/from16 v9, p6

    move v11, v7

    move/from16 v13, v26

    move/from16 v4, v27

    move-object/from16 v7, p2

    if-nez v8, :cond_8

    or-int v14, v14, v25

    .line 14
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v8

    iget-wide v3, v9, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzc(J)J

    move-result-wide v5

    move-wide/from16 v3, v20

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v32, v2

    move-object v2, v1

    move-object/from16 v1, v32

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v4, p4

    move-object v3, v7

    move v5, v8

    :goto_5
    move-object v6, v9

    move v8, v11

    :goto_6
    move v9, v12

    move v7, v13

    :goto_7
    const/4 v11, 0x0

    :goto_8
    const/4 v12, -0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v32, v2

    move-object v2, v1

    move-object/from16 v1, v32

    :cond_9
    move v10, v11

    :goto_9
    move/from16 v20, v12

    move/from16 v24, v14

    move/from16 v21, v15

    move-object v15, v1

    move-object v1, v2

    move v2, v4

    move-object v12, v9

    goto/16 :goto_1b

    :pswitch_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p6

    move v11, v7

    move-wide/from16 v5, v20

    move/from16 v13, v26

    move/from16 v4, v27

    move-object/from16 v7, p2

    if-nez v8, :cond_9

    or-int v14, v14, v25

    .line 17
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v4, v9, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzb(I)I

    move-result v4

    .line 19
    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move/from16 v4, p4

    move v5, v3

    move-object v3, v7

    goto :goto_5

    :pswitch_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v9, p6

    move v3, v7

    move-wide/from16 v5, v20

    move/from16 v13, v26

    move/from16 v4, v27

    move-object/from16 v7, p2

    if-nez v8, :cond_c

    .line 20
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v4

    iget v8, v9, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    move/from16 p3, v4

    .line 21
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v4

    const/high16 v16, -0x80000000

    and-int v11, v11, v16

    if-eqz v11, :cond_b

    if-eqz v4, :cond_b

    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_b

    .line 23
    :cond_a
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzjk;

    move-result-object v4

    int-to-long v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v15, v5}, Lcom/google/android/gms/internal/play_billing/zzjk;->zzj(ILjava/lang/Object;)V

    :goto_a
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move/from16 v5, p3

    move/from16 v4, p4

    move v8, v3

    move-object v3, v7

    move-object v6, v9

    goto/16 :goto_6

    :cond_b
    :goto_b
    or-int v14, v14, v25

    .line 22
    invoke-virtual {v2, v1, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :cond_c
    move v10, v3

    goto :goto_9

    :pswitch_3
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v9, p6

    move v3, v7

    move-wide/from16 v5, v20

    move/from16 v13, v26

    move/from16 v4, v27

    const/4 v11, 0x2

    move-object/from16 v7, p2

    if-ne v8, v11, :cond_c

    or-int v14, v14, v25

    .line 24
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/play_billing/zzga;->zza([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v4

    iget-object v8, v9, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v2, v1, v5, v6, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move v8, v3

    move v5, v4

    move-object v3, v7

    move-object v6, v9

    goto/16 :goto_4

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v9, p6

    move v3, v7

    move/from16 v13, v26

    move/from16 v4, v27

    const/4 v11, 0x2

    move-object/from16 v7, p2

    if-ne v8, v11, :cond_d

    or-int v14, v14, v25

    move-object v5, v1

    .line 26
    invoke-direct {v0, v5, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v2

    .line 27
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    move-object v8, v9

    move-object v9, v6

    move-object v6, v8

    move v8, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;[BIILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v2

    move-object/from16 v32, v3

    move-object v3, v1

    move-object/from16 v1, v32

    .line 29
    invoke-direct {v0, v7, v8, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v4, p4

    move-object v3, v1

    move v5, v2

    move-object v2, v7

    move-object v1, v9

    goto/16 :goto_6

    :cond_d
    move-object v6, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v9

    move-object v9, v2

    move v2, v4

    move v10, v3

    move/from16 v20, v12

    move/from16 v24, v14

    move/from16 v21, v15

    :cond_e
    :goto_c
    move-object v12, v6

    move-object v15, v7

    move-object v7, v1

    :goto_d
    move-object v1, v9

    goto/16 :goto_1b

    :pswitch_5
    move-object/from16 v6, p6

    move-object v9, v1

    move/from16 v24, v14

    move/from16 v13, v26

    const/4 v10, 0x2

    move-object/from16 v1, p2

    move/from16 v32, v7

    move-object v7, v2

    move/from16 v2, v27

    move/from16 v33, v12

    move/from16 v12, v32

    move-wide/from16 v34, v20

    move/from16 v20, v33

    move/from16 v21, v15

    move-wide/from16 v14, v34

    if-ne v8, v10, :cond_1d

    and-int v8, v11, v18

    if-eqz v8, :cond_1a

    or-int v8, v24, v25

    .line 32
    invoke-static {v1, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v2

    iget v10, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v10, :cond_19

    if-nez v10, :cond_f

    .line 279
    iput-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    move/from16 v18, v8

    const/4 v11, 0x0

    goto/16 :goto_12

    .line 33
    :cond_f
    sget v3, Lcom/google/android/gms/internal/play_billing/zzjt;->$r8$clinit:I

    .line 34
    array-length v3, v1

    sub-int v5, v3, v2

    or-int v11, v2, v10

    sub-int/2addr v5, v10

    or-int/2addr v5, v11

    if-ltz v5, :cond_18

    add-int v3, v2, v10

    .line 280
    new-array v5, v10, [C

    const/4 v10, 0x0

    :goto_e
    if-ge v2, v3, :cond_10

    .line 35
    aget-byte v11, v1, v2

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzjr;->zzd(B)Z

    move-result v16

    if-eqz v16, :cond_10

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v16, v10, 0x1

    int-to-char v11, v11

    .line 36
    aput-char v11, v5, v10

    move/from16 v10, v16

    goto :goto_e

    :cond_10
    :goto_f
    if-ge v2, v3, :cond_17

    add-int/lit8 v11, v2, 0x1

    move/from16 v16, v2

    .line 37
    aget-byte v2, v1, v16

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzjr;->zzd(B)Z

    move-result v18

    if-eqz v18, :cond_11

    add-int/lit8 v16, v10, 0x1

    int-to-char v2, v2

    .line 41
    aput-char v2, v5, v10

    move v2, v11

    :goto_10
    move/from16 v10, v16

    if-ge v2, v3, :cond_10

    .line 42
    aget-byte v11, v1, v2

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzjr;->zzd(B)Z

    move-result v16

    if-eqz v16, :cond_10

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v16, v10, 0x1

    int-to-char v11, v11

    .line 43
    aput-char v11, v5, v10

    goto :goto_10

    :cond_11
    move/from16 v18, v8

    const/16 v8, -0x20

    if-ge v2, v8, :cond_13

    if-ge v11, v3, :cond_12

    add-int/lit8 v8, v10, 0x1

    add-int/lit8 v16, v16, 0x2

    .line 40
    aget-byte v11, v1, v11

    invoke-static {v2, v11, v5, v10}, Lcom/google/android/gms/internal/play_billing/zzjr;->zzc(BB[CI)V

    :goto_11
    move v10, v8

    move/from16 v2, v16

    move/from16 v8, v18

    goto :goto_f

    .line 43
    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 285
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 286
    throw v1

    :cond_13
    const/16 v8, -0x10

    if-ge v2, v8, :cond_15

    add-int/lit8 v8, v3, -0x1

    if-ge v11, v8, :cond_14

    add-int/lit8 v8, v10, 0x1

    add-int/lit8 v22, v16, 0x2

    .line 39
    aget-byte v11, v1, v11

    add-int/lit8 v16, v16, 0x3

    move/from16 p3, v3

    aget-byte v3, v1, v22

    invoke-static {v2, v11, v3, v5, v10}, Lcom/google/android/gms/internal/play_billing/zzjr;->zzb(BBB[CI)V

    move/from16 v3, p3

    goto :goto_11

    .line 40
    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 283
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 284
    throw v1

    :cond_15
    move/from16 p3, v3

    add-int/lit8 v3, p3, -0x2

    if-ge v11, v3, :cond_16

    add-int/lit8 v3, v16, 0x2

    .line 38
    aget-byte v23, v1, v11

    add-int/lit8 v8, v16, 0x3

    aget-byte v24, v1, v3

    add-int/lit8 v3, v16, 0x4

    aget-byte v25, v1, v8

    move/from16 v22, v2

    move-object/from16 v26, v5

    move/from16 v27, v10

    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/play_billing/zzjr;->zza(BBBB[CI)V

    move-object/from16 v2, v26

    add-int/lit8 v10, v10, 0x2

    move-object v5, v2

    move v2, v3

    move/from16 v8, v18

    move/from16 v3, p3

    goto/16 :goto_f

    .line 39
    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 281
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 282
    throw v1

    :cond_17
    move/from16 p3, v3

    move-object v2, v5

    move/from16 v18, v8

    .line 38
    new-instance v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v3, v2, v11, v10}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    move/from16 v2, p3

    :goto_12
    move v5, v2

    goto :goto_14

    :cond_18
    const/4 v11, 0x0

    .line 34
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 280
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v11

    aput-object v2, v5, v28

    const/16 v29, 0x2

    aput-object v4, v5, v29

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_19
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 278
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 279
    throw v1

    :cond_1a
    const/4 v11, 0x0

    .line 30
    invoke-static {v1, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v4, :cond_1c

    or-int v5, v24, v25

    if-nez v4, :cond_1b

    .line 277
    iput-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    :goto_13
    move/from16 v18, v5

    goto :goto_12

    :cond_1b
    new-instance v3, Ljava/lang/String;

    .line 31
    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzhp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v2, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    add-int/2addr v2, v4

    goto :goto_13

    .line 279
    :goto_14
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    .line 44
    invoke-virtual {v9, v7, v14, v15, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v4, p4

    move-object v3, v1

    move-object v2, v7

    move-object v1, v9

    move v8, v12

    move v7, v13

    move/from16 v14, v18

    move/from16 v9, v20

    move/from16 v15, v21

    goto/16 :goto_8

    .line 30
    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 276
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 277
    throw v1

    :cond_1d
    move-object v15, v7

    move v10, v12

    move-object v7, v1

    move-object v12, v6

    goto/16 :goto_d

    :pswitch_6
    move-object/from16 v6, p6

    move-object v9, v1

    move/from16 v24, v14

    move/from16 v13, v26

    const/4 v11, 0x0

    move-object/from16 v1, p2

    move/from16 v32, v7

    move-object v7, v2

    move/from16 v2, v27

    move/from16 v33, v12

    move/from16 v12, v32

    move-wide/from16 v34, v20

    move/from16 v20, v33

    move/from16 v21, v15

    move-wide/from16 v14, v34

    if-nez v8, :cond_1f

    or-int v3, v24, v25

    .line 45
    invoke-static {v1, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v5

    move v10, v12

    iget-wide v11, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    cmp-long v2, v11, v22

    if-eqz v2, :cond_1e

    move/from16 v2, v28

    goto :goto_15

    :cond_1e
    const/4 v2, 0x0

    .line 46
    :goto_15
    invoke-static {v7, v14, v15, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzm(Ljava/lang/Object;JZ)V

    :goto_16
    move/from16 v4, p4

    move v14, v3

    move-object v2, v7

    move v8, v10

    move v7, v13

    move/from16 v15, v21

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v3, v1

    move-object v1, v9

    move/from16 v9, v20

    goto/16 :goto_0

    :cond_1f
    move v10, v12

    goto/16 :goto_c

    :pswitch_7
    move-object/from16 v6, p6

    move-object v9, v1

    move v10, v7

    move/from16 v24, v14

    move/from16 v13, v26

    const/4 v3, 0x5

    move-object/from16 v1, p2

    move-object v7, v2

    move/from16 v2, v27

    move-wide/from16 v32, v20

    move/from16 v20, v12

    move/from16 v21, v15

    move-wide/from16 v14, v32

    if-ne v8, v3, :cond_e

    add-int/lit8 v5, v2, 0x4

    or-int v3, v24, v25

    .line 47
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v2

    invoke-virtual {v9, v7, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_16

    :pswitch_8
    move-object/from16 v6, p6

    move-object v9, v1

    move v10, v7

    move/from16 v24, v14

    move/from16 v13, v26

    move/from16 v3, v28

    move-object/from16 v1, p2

    move-object v7, v2

    move/from16 v2, v27

    move-wide/from16 v32, v20

    move/from16 v20, v12

    move/from16 v21, v15

    move-wide/from16 v14, v32

    if-ne v8, v3, :cond_20

    add-int/lit8 v8, v2, 0x8

    or-int v11, v24, v25

    .line 48
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzga;->zzn([BI)J

    move-result-wide v5

    move-object/from16 v12, p6

    move-object v2, v7

    move-wide v3, v14

    move-object v7, v1

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move-object v3, v7

    move v5, v8

    move v8, v10

    move v14, v11

    :goto_17
    move-object v6, v12

    move v7, v13

    :goto_18
    move/from16 v9, v20

    move/from16 v15, v21

    goto/16 :goto_7

    :cond_20
    move-object v12, v7

    move-object v7, v1

    move-object v1, v12

    move-object v12, v6

    :cond_21
    move-object v15, v1

    goto/16 :goto_d

    :pswitch_9
    move-object v9, v1

    move-object v1, v2

    move v10, v7

    move/from16 v24, v14

    move-wide/from16 v3, v20

    move/from16 v13, v26

    move/from16 v2, v27

    move-object/from16 v7, p2

    move/from16 v20, v12

    move/from16 v21, v15

    move-object/from16 v12, p6

    if-nez v8, :cond_21

    or-int v14, v24, v25

    .line 49
    invoke-static {v7, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v5

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    .line 50
    invoke-virtual {v9, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, p4

    move-object v2, v1

    move-object v3, v7

    move-object v1, v9

    :goto_19
    move v8, v10

    goto :goto_17

    :pswitch_a
    move-object v9, v1

    move-object v1, v2

    move v10, v7

    move/from16 v24, v14

    move-wide/from16 v3, v20

    move/from16 v13, v26

    move/from16 v2, v27

    move-object/from16 v7, p2

    move/from16 v20, v12

    move/from16 v21, v15

    move-object/from16 v12, p6

    if-nez v8, :cond_21

    or-int v14, v24, v25

    .line 51
    invoke-static {v7, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v8

    iget-wide v5, v12, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    move-object v2, v1

    move-object v1, v9

    .line 52
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move-object v3, v7

    move v5, v8

    goto :goto_19

    :pswitch_b
    move v10, v7

    move/from16 v24, v14

    move-wide/from16 v3, v20

    move/from16 v13, v26

    const/4 v5, 0x5

    move-object/from16 v7, p2

    move/from16 v20, v12

    move/from16 v21, v15

    move-object/from16 v12, p6

    move-object v15, v2

    move/from16 v2, v27

    if-ne v8, v5, :cond_22

    add-int/lit8 v5, v2, 0x4

    or-int v14, v24, v25

    .line 53
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 54
    invoke-static {v15, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzp(Ljava/lang/Object;JF)V

    :goto_1a
    move/from16 v4, p4

    move-object v3, v7

    move v8, v10

    move-object v6, v12

    move v7, v13

    move-object v2, v15

    goto/16 :goto_18

    :pswitch_c
    move v10, v7

    move/from16 v24, v14

    move-wide/from16 v3, v20

    move/from16 v13, v26

    move/from16 v5, v28

    move-object/from16 v7, p2

    move/from16 v20, v12

    move/from16 v21, v15

    move-object/from16 v12, p6

    move-object v15, v2

    move/from16 v2, v27

    if-ne v8, v5, :cond_22

    add-int/lit8 v5, v2, 0x8

    or-int v14, v24, v25

    .line 55
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zzga;->zzn([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 56
    invoke-static {v15, v3, v4, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzo(Ljava/lang/Object;JD)V

    goto :goto_1a

    :cond_22
    :goto_1b
    move-object/from16 v26, v1

    move v3, v2

    move-object v14, v7

    move v8, v10

    move-object v11, v12

    move v9, v13

    move/from16 v25, v20

    move/from16 v13, v21

    move/from16 v21, v24

    const/16 v19, 0x0

    move/from16 v10, p5

    goto/16 :goto_43

    :cond_23
    move v10, v7

    move/from16 v30, v13

    move-wide/from16 v6, v20

    move/from16 v13, v26

    const/16 v19, 0x0

    move-object/from16 v20, v12

    move/from16 v21, v15

    move-object/from16 v12, p6

    move-object v15, v2

    const/16 v2, 0x1b

    move/from16 v25, v9

    move/from16 v9, v30

    if-ne v9, v2, :cond_27

    const/4 v2, 0x2

    if-ne v8, v2, :cond_26

    .line 57
    invoke-virtual {v1, v15, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzho;

    .line 58
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzho;->zzc()Z

    move-result v3

    if-nez v3, :cond_25

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_24

    const/16 v3, 0xa

    goto :goto_1c

    :cond_24
    add-int/2addr v3, v3

    .line 60
    :goto_1c
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzho;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzho;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_25
    move-object v9, v1

    move-object v6, v2

    .line 62
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v7, v12

    move/from16 v2, v21

    move/from16 v4, v27

    move-object v12, v9

    .line 63
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzga;->zze(Lcom/google/android/gms/internal/play_billing/zzix;I[BIILcom/google/android/gms/internal/play_billing/zzho;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    move-object v3, v15

    move v15, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v5, v1

    move v8, v10

    move-object v1, v12

    move v7, v13

    move/from16 v11, v19

    move/from16 v9, v25

    goto/16 :goto_8

    :cond_26
    move-object/from16 v2, p2

    move-object/from16 v26, v1

    move v12, v10

    move/from16 v4, v27

    move/from16 v27, v13

    move/from16 v13, v21

    move/from16 v21, v14

    move-object/from16 v14, p6

    goto/16 :goto_39

    :cond_27
    move-object v12, v1

    move/from16 v2, v21

    const/16 v1, 0x31

    if-gt v9, v1, :cond_6c

    move/from16 v21, v2

    int-to-long v1, v11

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 64
    invoke-virtual {v11, v15, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v18

    move-wide/from16 v30, v1

    move-object/from16 v1, v18

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzho;

    .line 65
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzho;->zzc()Z

    move-result v2

    if-nez v2, :cond_28

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v2

    .line 67
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzho;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzho;

    move-result-object v1

    .line 68
    invoke-virtual {v11, v15, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_28
    move-object v7, v1

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v9, :pswitch_data_1

    const/4 v6, 0x3

    if-ne v8, v6, :cond_2a

    and-int/lit8 v1, v21, -0x8

    or-int/lit8 v5, v1, 0x4

    .line 69
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v9, v21

    move/from16 v3, v27

    .line 70
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzc(Lcom/google/android/gms/internal/play_billing/zzix;[BIIILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v8

    move v11, v3

    iget-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    .line 71
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    if-ge v8, v4, :cond_29

    .line 72
    invoke-static {v2, v8, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    move-object/from16 p3, v1

    iget v1, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ne v9, v1, :cond_29

    move-object/from16 v1, p3

    .line 73
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzc(Lcom/google/android/gms/internal/play_billing/zzix;[BIIILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v8

    iget-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    .line 74
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_29
    move v5, v8

    :goto_1e
    move v3, v11

    move-object/from16 v26, v12

    move/from16 v27, v13

    move/from16 v21, v14

    move-object v14, v6

    move v13, v9

    move v12, v10

    goto/16 :goto_36

    :cond_2a
    move/from16 v4, p4

    move-object/from16 v2, p2

    move-object/from16 v26, v12

    move/from16 v3, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v13, v21

    move/from16 v21, v14

    move-object/from16 v14, p6

    goto/16 :goto_35

    :pswitch_d
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v9, v21

    move/from16 v11, v27

    const/4 v3, 0x2

    if-ne v8, v3, :cond_2d

    .line 75
    sget v3, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 76
    invoke-static {v7}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 77
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v5, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int/2addr v5, v3

    if-lt v3, v5, :cond_2c

    if-ne v3, v5, :cond_2b

    :goto_1f
    move v5, v3

    goto :goto_1e

    .line 330
    :cond_2b
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 287
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 288
    throw v2

    .line 78
    :cond_2c
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    iget-wide v1, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    .line 79
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzc(J)J

    throw v16

    :cond_2d
    if-eqz v8, :cond_2f

    :cond_2e
    move v3, v11

    move-object/from16 v26, v12

    move/from16 v27, v13

    move/from16 v21, v14

    move-object v14, v6

    move v13, v9

    move v12, v10

    goto/16 :goto_35

    .line 80
    :cond_2f
    sget v1, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 81
    invoke-static {v7}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 82
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    iget-wide v1, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    .line 83
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzc(J)J

    throw v16

    :pswitch_e
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v9, v21

    move/from16 v11, v27

    const/4 v3, 0x2

    if-ne v8, v3, :cond_32

    .line 87
    sget v3, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 88
    check-cast v7, Lcom/google/android/gms/internal/play_billing/zzhl;

    .line 89
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v5, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int/2addr v5, v3

    :goto_20
    if-ge v3, v5, :cond_30

    .line 90
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    .line 91
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzb(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzg(I)V

    goto :goto_20

    :cond_30
    if-ne v3, v5, :cond_31

    goto :goto_1f

    .line 288
    :cond_31
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 289
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 290
    throw v2

    :cond_32
    if-nez v8, :cond_2e

    .line 92
    sget v1, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 93
    check-cast v7, Lcom/google/android/gms/internal/play_billing/zzhl;

    .line 94
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    .line 95
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzb(I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzg(I)V

    :goto_21
    if-ge v1, v4, :cond_33

    .line 96
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v5, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ne v9, v5, :cond_33

    .line 97
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v3, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzb(I)I

    move-result v3

    .line 98
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzg(I)V

    goto :goto_21

    :cond_33
    move v5, v1

    goto/16 :goto_1e

    :pswitch_f
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v9, v21

    move/from16 v11, v27

    const/4 v3, 0x2

    if-ne v8, v3, :cond_34

    .line 99
    invoke-static {v2, v11, v7, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzf([BILcom/google/android/gms/internal/play_billing/zzho;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    move v3, v11

    move-object v11, v7

    goto :goto_22

    :cond_34
    if-nez v8, :cond_3c

    move-object v5, v7

    move v1, v9

    move v3, v11

    .line 100
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzj(I[BIILcom/google/android/gms/internal/play_billing/zzho;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v7

    move-object v11, v5

    move v1, v7

    .line 101
    :goto_22
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzip;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzl:Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 102
    sget v8, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    if-eqz v5, :cond_3a

    .line 103
    invoke-static {v11}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 104
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    move/from16 p3, v1

    move-object/from16 v26, v12

    move/from16 v21, v14

    move-object/from16 v12, v16

    move/from16 v1, v19

    move v14, v1

    :goto_23
    if-ge v1, v8, :cond_37

    .line 105
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Integer;

    move/from16 v27, v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v10}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza(I)Z

    move-result v18

    if-eqz v18, :cond_36

    if-eq v1, v14, :cond_35

    .line 106
    invoke-interface {v11, v14, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 107
    :cond_36
    invoke-static {v15, v13, v10, v12, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjj;)Ljava/lang/Object;

    move-result-object v12

    :goto_24
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v27

    goto :goto_23

    :cond_37
    move/from16 v27, v10

    if-eq v14, v8, :cond_3b

    .line 108
    invoke-interface {v11, v14, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_26

    :cond_38
    move/from16 p3, v1

    move/from16 v27, v10

    move-object/from16 v26, v12

    move/from16 v21, v14

    .line 109
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v1, v16

    :cond_39
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza(I)Z

    move-result v10

    if-nez v10, :cond_39

    .line 111
    invoke-static {v15, v13, v8, v1, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjj;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    :cond_3a
    move/from16 p3, v1

    move/from16 v27, v10

    move-object/from16 v26, v12

    move/from16 v21, v14

    :cond_3b
    :goto_26
    move-object/from16 v0, p0

    move/from16 v5, p3

    move-object v14, v6

    move/from16 v12, v27

    :goto_27
    move/from16 v27, v13

    move v13, v9

    goto/16 :goto_36

    :cond_3c
    move-object/from16 v26, v12

    move/from16 v21, v14

    move-object/from16 v0, p0

    move-object v14, v6

    move v12, v10

    move v3, v11

    :goto_28
    move/from16 v27, v13

    move v13, v9

    goto/16 :goto_35

    :pswitch_10
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v11, v7

    move-object/from16 v26, v12

    move/from16 v9, v21

    move/from16 v3, v27

    move/from16 v27, v10

    move/from16 v21, v14

    const/4 v10, 0x2

    if-ne v8, v10, :cond_44

    .line 113
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v0

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v7, :cond_43

    .line 114
    array-length v8, v2

    sub-int/2addr v8, v0

    if-gt v7, v8, :cond_42

    if-nez v7, :cond_3d

    .line 115
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzgk;->zzb:Lcom/google/android/gms/internal/play_billing/zzgk;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 116
    :cond_3d
    invoke-static {v2, v0, v7}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzj([BII)Lcom/google/android/gms/internal/play_billing/zzgk;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    add-int/2addr v0, v7

    :goto_2a
    if-ge v0, v4, :cond_41

    .line 117
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ne v9, v8, :cond_41

    .line 118
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v0

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v7, :cond_40

    .line 119
    array-length v8, v2

    sub-int/2addr v8, v0

    if-gt v7, v8, :cond_3f

    if-nez v7, :cond_3e

    .line 298
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzgk;->zzb:Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 120
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 121
    :cond_3e
    invoke-static {v2, v0, v7}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzj([BII)Lcom/google/android/gms/internal/play_billing/zzgk;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 119
    :cond_3f
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 297
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 298
    throw v0

    .line 118
    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 295
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0

    :cond_41
    move v5, v0

    move-object v14, v6

    move/from16 v12, v27

    move-object/from16 v0, p0

    goto :goto_27

    .line 114
    :cond_42
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 293
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 294
    throw v0

    .line 113
    :cond_43
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 291
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 292
    throw v0

    :cond_44
    move-object/from16 v0, p0

    move-object v14, v6

    move/from16 v12, v27

    goto :goto_28

    :pswitch_11
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move-object v11, v7

    move-object/from16 v26, v12

    move/from16 v9, v21

    move/from16 v3, v27

    move/from16 v27, v10

    move/from16 v21, v14

    const/4 v10, 0x2

    if-ne v8, v10, :cond_45

    move-object/from16 v0, p0

    move/from16 v12, v27

    .line 122
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v1

    move v5, v4

    move-object v7, v6

    move-object v6, v11

    move v4, v3

    move-object v3, v2

    move v2, v9

    .line 123
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzga;->zze(Lcom/google/android/gms/internal/play_billing/zzix;I[BIILcom/google/android/gms/internal/play_billing/zzho;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    move-object v6, v7

    move v7, v5

    move v5, v1

    move-object v14, v6

    move/from16 v27, v13

    move v13, v2

    move-object v2, v3

    move v3, v4

    goto/16 :goto_36

    :cond_45
    move-object/from16 v0, p0

    move v7, v4

    move/from16 v12, v27

    move-object v14, v6

    goto/16 :goto_28

    :pswitch_12
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object/from16 v26, v12

    move/from16 v9, v21

    move/from16 v11, v27

    move v12, v10

    move/from16 v21, v14

    const/4 v10, 0x2

    move-object v14, v7

    move/from16 v7, p4

    if-ne v8, v10, :cond_53

    const-wide/32 v27, 0x20000000

    and-long v27, v30, v27

    cmp-long v1, v27, v22

    if-nez v1, :cond_4b

    .line 124
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v4, :cond_4a

    if-nez v4, :cond_46

    .line 125
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 132
    :cond_46
    new-instance v8, Ljava/lang/String;

    .line 126
    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzhp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 127
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/2addr v1, v4

    :goto_2c
    if-ge v1, v7, :cond_49

    .line 128
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v4

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ne v9, v8, :cond_49

    .line 129
    invoke-static {v2, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v4, :cond_48

    if-nez v4, :cond_47

    .line 130
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_47
    new-instance v8, Ljava/lang/String;

    .line 131
    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzhp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 132
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 129
    :cond_48
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 301
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 302
    throw v1

    :cond_49
    move v5, v1

    move-object v14, v6

    move v3, v11

    goto/16 :goto_27

    .line 124
    :cond_4a
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 299
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 300
    throw v1

    .line 133
    :cond_4b
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v8, :cond_52

    if-nez v8, :cond_4c

    .line 134
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v27, v13

    goto :goto_2e

    :cond_4c
    add-int v10, v1, v8

    .line 135
    invoke-static {v2, v1, v10}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzd([BII)Z

    move-result v18

    if-eqz v18, :cond_51

    move/from16 p3, v10

    .line 306
    new-instance v10, Ljava/lang/String;

    move/from16 v27, v13

    .line 136
    sget-object v13, Lcom/google/android/gms/internal/play_billing/zzhp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v10, v2, v1, v8, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 137
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2d
    move/from16 v1, p3

    :goto_2e
    if-ge v1, v7, :cond_50

    .line 138
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v8

    iget v10, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ne v9, v10, :cond_50

    .line 139
    invoke-static {v2, v8, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ltz v8, :cond_4f

    if-nez v8, :cond_4d

    .line 140
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4d
    add-int v10, v1, v8

    .line 141
    invoke-static {v2, v1, v10}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzd([BII)Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 310
    new-instance v13, Ljava/lang/String;

    move/from16 p3, v10

    .line 142
    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzhp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v13, v2, v1, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 143
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 141
    :cond_4e
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 309
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 310
    throw v1

    .line 139
    :cond_4f
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 307
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 308
    throw v1

    :cond_50
    :goto_2f
    move v5, v1

    :goto_30
    move-object v14, v6

    move v13, v9

    move v3, v11

    goto/16 :goto_36

    .line 135
    :cond_51
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 305
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 306
    throw v1

    .line 133
    :cond_52
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 303
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 304
    throw v1

    :cond_53
    move/from16 v27, v13

    :cond_54
    :goto_31
    move-object v14, v6

    move v13, v9

    move v3, v11

    goto/16 :goto_35

    :pswitch_13
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object/from16 v26, v12

    move/from16 v9, v21

    move/from16 v11, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v21, v14

    const/4 v10, 0x2

    move-object v14, v7

    move/from16 v7, p4

    if-ne v8, v10, :cond_57

    .line 144
    sget v3, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 145
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 146
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int/2addr v4, v3

    if-lt v3, v4, :cond_56

    if-ne v3, v4, :cond_55

    move v5, v3

    goto :goto_30

    .line 290
    :cond_55
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 311
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 312
    throw v2

    .line 147
    :cond_56
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    .line 148
    throw v16

    :cond_57
    if-eqz v8, :cond_58

    :goto_32
    goto :goto_31

    .line 149
    :cond_58
    sget v1, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 150
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 151
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    iget-wide v1, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    .line 152
    throw v16

    :pswitch_14
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object/from16 v26, v12

    move/from16 v9, v21

    move/from16 v11, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v21, v14

    const/4 v10, 0x2

    move-object v14, v7

    move/from16 v7, p4

    if-ne v8, v10, :cond_5c

    .line 156
    sget v3, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 157
    move-object v3, v14

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzhl;

    .line 158
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v4

    iget v5, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int v8, v4, v5

    .line 159
    array-length v10, v2

    if-gt v8, v10, :cond_5b

    .line 160
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzhl;->size()I

    move-result v10

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v10, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzh(I)V

    :goto_33
    if-ge v4, v8, :cond_59

    .line 161
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzg(I)V

    add-int/lit8 v4, v4, 0x4

    goto :goto_33

    :cond_59
    if-ne v4, v8, :cond_5a

    move v5, v4

    goto/16 :goto_30

    .line 312
    :cond_5a
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 315
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 316
    throw v2

    .line 159
    :cond_5b
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 313
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 314
    throw v2

    :cond_5c
    const/4 v3, 0x5

    if-ne v8, v3, :cond_54

    add-int/lit8 v1, v11, 0x4

    .line 162
    sget v3, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 163
    move-object v3, v14

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzhl;

    .line 164
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzg(I)V

    :goto_34
    if-ge v1, v7, :cond_50

    .line 165
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v4

    iget v5, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-ne v9, v5, :cond_50

    .line 166
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzg(I)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_34

    :pswitch_15
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object/from16 v26, v12

    move/from16 v9, v21

    move/from16 v11, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v21, v14

    const/4 v10, 0x2

    move-object v14, v7

    move/from16 v7, p4

    if-ne v8, v10, :cond_5e

    .line 167
    sget v3, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 168
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 169
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int/2addr v3, v4

    .line 170
    array-length v2, v2

    if-le v3, v2, :cond_5d

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 317
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 318
    throw v2

    .line 171
    :cond_5d
    throw v16

    :cond_5e
    const/4 v3, 0x1

    if-eq v8, v3, :cond_5f

    goto/16 :goto_32

    .line 173
    :cond_5f
    sget v1, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 174
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 175
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/zzga;->zzn([BI)J

    throw v16

    :pswitch_16
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object/from16 v26, v12

    move/from16 v9, v21

    move/from16 v11, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v21, v14

    const/4 v10, 0x2

    move-object v14, v7

    move/from16 v7, p4

    if-ne v8, v10, :cond_60

    .line 178
    invoke-static {v2, v11, v14, v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzf([BILcom/google/android/gms/internal/play_billing/zzho;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    goto/16 :goto_2f

    :cond_60
    if-nez v8, :cond_54

    move v4, v7

    move v1, v9

    move v3, v11

    move-object v5, v14

    .line 179
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzj(I[BIILcom/google/android/gms/internal/play_billing/zzho;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v5

    move v13, v1

    move-object v14, v6

    goto/16 :goto_36

    :pswitch_17
    move-object/from16 v2, p2

    move-object v5, v7

    move-object/from16 v26, v12

    move/from16 v3, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v13, v21

    const/4 v10, 0x2

    move/from16 v21, v14

    move-object/from16 v14, p6

    if-ne v8, v10, :cond_63

    .line 180
    sget v4, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 181
    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 182
    invoke-static {v2, v3, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v4

    iget v5, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int/2addr v5, v4

    if-lt v4, v5, :cond_62

    if-ne v4, v5, :cond_61

    move v5, v4

    goto/16 :goto_36

    .line 320
    :cond_61
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 321
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 322
    throw v2

    .line 183
    :cond_62
    invoke-static {v2, v4, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    .line 184
    throw v16

    :cond_63
    if-eqz v8, :cond_64

    goto/16 :goto_35

    .line 185
    :cond_64
    sget v1, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 186
    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 187
    invoke-static {v2, v3, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    iget-wide v1, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    .line 188
    throw v16

    :pswitch_18
    move-object/from16 v2, p2

    move-object v5, v7

    move-object/from16 v26, v12

    move/from16 v3, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v13, v21

    const/4 v10, 0x2

    move/from16 v21, v14

    move-object/from16 v14, p6

    if-ne v8, v10, :cond_66

    .line 192
    sget v4, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 193
    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 194
    invoke-static {v2, v3, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v4, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int/2addr v3, v4

    .line 195
    array-length v2, v2

    if-le v3, v2, :cond_65

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 323
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 324
    throw v2

    .line 196
    :cond_65
    throw v16

    :cond_66
    const/4 v1, 0x5

    if-eq v8, v1, :cond_67

    goto :goto_35

    .line 199
    :cond_67
    sget v1, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 200
    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 201
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 202
    throw v16

    :pswitch_19
    move-object/from16 v2, p2

    move-object v5, v7

    move-object/from16 v26, v12

    move/from16 v3, v27

    move v12, v10

    move/from16 v27, v13

    move/from16 v13, v21

    const/4 v10, 0x2

    move/from16 v21, v14

    move-object/from16 v14, p6

    if-ne v8, v10, :cond_69

    .line 206
    sget v4, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 207
    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 208
    invoke-static {v2, v3, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    iget v4, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    add-int/2addr v3, v4

    .line 209
    array-length v2, v2

    if-le v3, v2, :cond_68

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 327
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 328
    throw v2

    .line 210
    :cond_68
    throw v16

    :cond_69
    const/4 v1, 0x1

    if-eq v8, v1, :cond_6b

    :goto_35
    move v5, v3

    :goto_36
    if-eq v5, v3, :cond_6a

    move/from16 v4, p4

    move-object v3, v2

    move v8, v12

    move-object v6, v14

    move-object v2, v15

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v9, v25

    move-object/from16 v1, v26

    move/from16 v7, v27

    :goto_37
    const/4 v12, -0x1

    move v15, v13

    goto/16 :goto_0

    :cond_6a
    move/from16 v10, p5

    move v3, v5

    :goto_38
    move v8, v12

    move-object v11, v14

    move/from16 v9, v27

    move-object v14, v2

    goto/16 :goto_43

    .line 213
    :cond_6b
    sget v1, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 214
    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 215
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzga;->zzn([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 216
    throw v16

    :cond_6c
    move-object v1, v4

    move-object/from16 v26, v12

    move/from16 v21, v14

    move/from16 v4, v27

    move-object/from16 v14, p6

    move v12, v10

    move/from16 v27, v13

    move v13, v2

    move-object/from16 v2, p2

    const/16 v5, 0x32

    if-ne v9, v5, :cond_6f

    const/4 v10, 0x2

    if-ne v8, v10, :cond_6e

    .line 205
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 331
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/play_billing/zzip;->zzw(I)Ljava/lang/Object;

    move-result-object v2

    .line 332
    invoke-virtual {v1, v15, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 333
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzig;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzig;->zze()Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzig;->zza()Lcom/google/android/gms/internal/play_billing/zzig;

    move-result-object v4

    .line 334
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzig;->zzb()Lcom/google/android/gms/internal/play_billing/zzig;

    move-result-object v4

    .line 335
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/zzih;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v1, v15, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 337
    :cond_6d
    invoke-static {v2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 338
    throw v16

    :cond_6e
    :goto_39
    move/from16 v10, p5

    move v3, v4

    goto :goto_38

    :cond_6f
    add-int/lit8 v5, v12, 0x2

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 220
    aget v5, v20, v5

    const v17, 0xfffff

    and-int v5, v5, v17

    move/from16 v20, v4

    int-to-long v4, v5

    packed-switch v9, :pswitch_data_2

    move-object v11, v14

    move/from16 v9, v27

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    goto/16 :goto_41

    :pswitch_1a
    const/4 v6, 0x3

    if-ne v8, v6, :cond_70

    and-int/lit8 v1, v13, -0x8

    or-int/lit8 v6, v1, 0x4

    move/from16 v9, v27

    .line 221
    invoke-direct {v0, v15, v9, v12}, Lcom/google/android/gms/internal/play_billing/zzip;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 222
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v7, v14

    move/from16 v4, v20

    .line 223
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzga;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;[BIIILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v2

    move v11, v4

    .line 224
    invoke-direct {v0, v15, v9, v12, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move v5, v2

    :goto_3a
    move/from16 v27, v12

    move v12, v11

    move-object v11, v14

    move-object v14, v3

    goto/16 :goto_42

    :cond_70
    move/from16 v9, v27

    move/from16 v27, v12

    move-object v11, v14

    move/from16 v12, v20

    move-object v14, v2

    goto/16 :goto_41

    :pswitch_1b
    move-object v3, v2

    move/from16 v11, v20

    move/from16 v9, v27

    if-nez v8, :cond_71

    .line 225
    invoke-static {v3, v11, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    move/from16 p3, v1

    iget-wide v1, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    .line 226
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzc(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v15, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 227
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p3

    goto :goto_3a

    :cond_71
    move/from16 v27, v12

    move v12, v11

    move-object v11, v14

    move-object v14, v3

    goto/16 :goto_41

    :pswitch_1c
    move-object v3, v2

    move/from16 v11, v20

    move/from16 v9, v27

    if-nez v8, :cond_71

    .line 228
    invoke-static {v3, v11, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    .line 229
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzgn;->zzb(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 230
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3b
    move v5, v1

    goto :goto_3a

    :pswitch_1d
    move-object v3, v2

    move/from16 v11, v20

    move/from16 v9, v27

    if-nez v8, :cond_71

    .line 231
    invoke-static {v3, v11, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    .line 232
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/play_billing/zzip;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v8

    if-eqz v8, :cond_73

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza(I)Z

    move-result v8

    if-eqz v8, :cond_72

    goto :goto_3c

    .line 235
    :cond_72
    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/zzip;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzjk;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v13, v2}, Lcom/google/android/gms/internal/play_billing/zzjk;->zzj(ILjava/lang/Object;)V

    goto :goto_3b

    .line 233
    :cond_73
    :goto_3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_1e
    move-object v3, v2

    move/from16 v11, v20

    move/from16 v9, v27

    const/4 v2, 0x2

    if-ne v8, v2, :cond_71

    .line 236
    invoke-static {v3, v11, v14}, Lcom/google/android/gms/internal/play_billing/zzga;->zza([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget-object v2, v14, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc:Ljava/lang/Object;

    .line 237
    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 238
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_1f
    move-object v3, v2

    move/from16 v11, v20

    move/from16 v9, v27

    const/4 v2, 0x2

    if-ne v8, v2, :cond_74

    .line 239
    invoke-direct {v0, v15, v9, v12}, Lcom/google/android/gms/internal/play_billing/zzip;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 240
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    move/from16 v5, p4

    move v4, v11

    move-object v6, v14

    .line 241
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;[BIILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v2

    move-object v14, v3

    .line 242
    invoke-direct {v0, v15, v9, v12, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v11, p6

    move v5, v2

    move/from16 v27, v12

    move v12, v4

    goto/16 :goto_42

    :cond_74
    move-object v14, v3

    move/from16 v27, v12

    move v12, v11

    move-object/from16 v11, p6

    goto/16 :goto_41

    :pswitch_20
    move/from16 p3, v11

    move-object v11, v14

    move/from16 v9, v27

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    const/4 v2, 0x2

    if-ne v8, v2, :cond_79

    .line 243
    invoke-static {v14, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v2

    iget v8, v11, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    if-nez v8, :cond_75

    .line 244
    invoke-virtual {v10, v15, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3e

    :cond_75
    and-int v3, p3, v18

    move/from16 p3, v3

    add-int v3, v2, v8

    if-eqz p3, :cond_77

    .line 245
    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzd([BII)Z

    move-result v18

    if-eqz v18, :cond_76

    goto :goto_3d

    .line 4
    :cond_76
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 339
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 340
    throw v2

    .line 245
    :cond_77
    :goto_3d
    new-instance v1, Ljava/lang/String;

    move/from16 p3, v3

    .line 246
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzhp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v14, v2, v8, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 247
    invoke-virtual {v10, v15, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v2, p3

    .line 248
    :goto_3e
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v5, v2

    goto/16 :goto_42

    :pswitch_21
    move-object v11, v14

    move/from16 v9, v27

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    if-nez v8, :cond_79

    .line 249
    invoke-static {v14, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget-wide v2, v11, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    cmp-long v2, v2, v22

    if-eqz v2, :cond_78

    const/16 v28, 0x1

    goto :goto_3f

    :cond_78
    move/from16 v28, v19

    .line 250
    :goto_3f
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 251
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_40
    move v5, v1

    goto/16 :goto_42

    :pswitch_22
    move-object v11, v14

    move/from16 v9, v27

    const/4 v3, 0x5

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    if-ne v8, v3, :cond_79

    add-int/lit8 v1, v12, 0x4

    .line 252
    invoke-static {v14, v12}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 253
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_40

    :pswitch_23
    move-object v11, v14

    move/from16 v9, v27

    const/4 v3, 0x1

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    if-ne v8, v3, :cond_79

    add-int/lit8 v1, v12, 0x8

    .line 254
    invoke-static {v14, v12}, Lcom/google/android/gms/internal/play_billing/zzga;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 255
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_40

    :pswitch_24
    move-object v11, v14

    move/from16 v9, v27

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    if-nez v8, :cond_79

    .line 256
    invoke-static {v14, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzga;->zzh([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/zzfz;->zza:I

    .line 257
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 258
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_40

    :pswitch_25
    move-object v11, v14

    move/from16 v9, v27

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    if-nez v8, :cond_79

    .line 259
    invoke-static {v14, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzga;->zzk([BILcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v1

    iget-wide v2, v11, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:J

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 261
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_40

    :pswitch_26
    move-object v11, v14

    move/from16 v9, v27

    const/4 v3, 0x5

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    if-ne v8, v3, :cond_79

    add-int/lit8 v1, v12, 0x4

    .line 262
    invoke-static {v14, v12}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 263
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_40

    :pswitch_27
    move-object v11, v14

    move/from16 v9, v27

    const/4 v3, 0x1

    move-object v14, v2

    move/from16 v27, v12

    move/from16 v12, v20

    if-ne v8, v3, :cond_79

    add-int/lit8 v1, v12, 0x8

    .line 265
    invoke-static {v14, v12}, Lcom/google/android/gms/internal/play_billing/zzga;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v10, v15, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 267
    invoke-virtual {v10, v15, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_40

    :cond_79
    :goto_41
    move v5, v12

    :goto_42
    if-eq v5, v12, :cond_7a

    move/from16 v4, p4

    move v7, v9

    move-object v6, v11

    move-object v3, v14

    move-object v2, v15

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v9, v25

    move-object/from16 v1, v26

    move/from16 v8, v27

    goto/16 :goto_37

    :cond_7a
    move/from16 v10, p5

    move v3, v5

    move/from16 v8, v27

    :goto_43
    if-ne v13, v10, :cond_7b

    if-eqz v10, :cond_7b

    move/from16 v4, p4

    move v5, v3

    move-object v2, v15

    move v15, v13

    move/from16 v14, v21

    move/from16 v9, v25

    :goto_44
    const v12, 0xfffff

    goto :goto_47

    .line 357
    :cond_7b
    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-eqz v1, :cond_7c

    iget-object v1, v11, Lcom/google/android/gms/internal/play_billing/zzfz;->zzd:Lcom/google/android/gms/internal/play_billing/zzgw;

    .line 268
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzgw;->zza:Lcom/google/android/gms/internal/play_billing/zzgw;

    .line 269
    sget v2, Lcom/google/android/gms/internal/play_billing/zziu;->$r8$clinit:I

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzgw;->zza:Lcom/google/android/gms/internal/play_billing/zzgw;

    if-eq v1, v2, :cond_7c

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzg:Lcom/google/android/gms/internal/play_billing/zzim;

    .line 272
    sget v4, Lcom/google/android/gms/internal/play_billing/zzga;->$r8$clinit:I

    .line 273
    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/internal/play_billing/zzgw;->zzb(Lcom/google/android/gms/internal/play_billing/zzim;I)Lcom/google/android/gms/internal/play_billing/zzhj;

    .line 274
    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/zzip;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzjk;

    move-result-object v5

    move/from16 v4, p4

    move-object v6, v11

    move v1, v13

    move-object v2, v14

    .line 275
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzg(I[BIILcom/google/android/gms/internal/play_billing/zzjk;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    :goto_45
    move v5, v3

    goto :goto_46

    :cond_7c
    move v1, v13

    .line 270
    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/zzip;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzjk;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 271
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzga;->zzg(I[BIILcom/google/android/gms/internal/play_billing/zzjk;Lcom/google/android/gms/internal/play_billing/zzfz;)I

    move-result v3

    goto :goto_45

    :goto_46
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v7, v9

    move-object v2, v15

    move/from16 v11, v19

    move/from16 v14, v21

    move/from16 v9, v25

    const/4 v12, -0x1

    move v15, v1

    move-object/from16 v1, v26

    goto/16 :goto_0

    :cond_7d
    move/from16 v10, p5

    move-object/from16 v26, v1

    move/from16 v25, v9

    move/from16 v21, v14

    goto :goto_44

    :goto_47
    if-eq v9, v12, :cond_7e

    int-to-long v6, v9

    move-object/from16 v1, v26

    .line 341
    invoke-virtual {v1, v2, v6, v7, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7e
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzj:I

    :goto_48
    iget v3, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzk:I

    if-ge v1, v3, :cond_81

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzi:[I

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 342
    aget v3, v3, v1

    .line 343
    aget v6, v6, v3

    .line 344
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v6

    const v17, 0xfffff

    and-int v6, v6, v17

    int-to-long v6, v6

    .line 345
    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7f

    goto :goto_49

    .line 346
    :cond_7f
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v7

    if-nez v7, :cond_80

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 348
    :cond_80
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzig;

    .line 349
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 350
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 351
    throw v16

    .line 353
    :cond_81
    const-string v1, "Failed to parse the message."

    if-nez v10, :cond_83

    if-ne v5, v4, :cond_82

    goto :goto_4a

    :cond_82
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 354
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 355
    throw v2

    :cond_83
    if-gt v5, v4, :cond_84

    if-ne v15, v10, :cond_84

    :goto_4a
    return v5

    :cond_84
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 356
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>(Ljava/lang/String;)V

    .line 357
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzg:Lcom/google/android/gms/internal/play_billing/zzim;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzp()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzhk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhk;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzy(I)V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzfv;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzw()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 10
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 11
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzig;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzig;->zzc()V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzho;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzho;->zzb()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 8
    aget v2, v2, v1

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzl:Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjj;->zza(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzm:Lcom/google/android/gms/internal/play_billing/zzgx;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzgx;->zza(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzA(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v1

    .line 3
    aget v3, v3, v0

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzE(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzE(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzih;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :pswitch_5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzho;

    .line 5
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzho;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v3, :cond_1

    if-lez v6, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzho;->zzc()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v3

    .line 9
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/play_billing/zzho;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzho;

    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 11
    :goto_1
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzr(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzr(Ljava/lang/Object;JJ)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 43
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 47
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzm(Ljava/lang/Object;JZ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 53
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 56
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzr(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 59
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzq(Ljava/lang/Object;JI)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 62
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzr(Ljava/lang/Object;JJ)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 65
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzr(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 68
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzp(Ljava/lang/Object;JF)V

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 71
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzo(Ljava/lang/Object;JD)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;->zzD(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzl:Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 74
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zziz;->zzp(Lcom/google/android/gms/internal/play_billing/zzjj;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzm:Lcom/google/android/gms/internal/play_billing/zzgx;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zziz;->zzo(Lcom/google/android/gms/internal/play_billing/zzgx;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzfz;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzip;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzfz;)I

    return-void
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjw;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-nez v2, :cond_7

    .line 4
    iget-object v8, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    const v10, 0xfffff

    move v3, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v8

    if-ge v2, v5, :cond_6

    .line 5
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v5

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v13

    .line 6
    aget v14, v12, v2

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-gt v13, v15, :cond_2

    add-int/lit8 v15, v2, 0x2

    .line 7
    aget v12, v12, v15

    and-int v15, v12, v10

    if-eq v15, v3, :cond_1

    if-ne v15, v10, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v15

    .line 8
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v15

    :cond_1
    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v7, v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    and-int/2addr v5, v10

    int-to-long v10, v5

    packed-switch v13, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 117
    :pswitch_0
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v7

    .line 119
    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)V

    goto :goto_3

    .line 120
    :pswitch_1
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzD(IJ)V

    goto :goto_3

    .line 122
    :pswitch_2
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzB(II)V

    goto :goto_3

    .line 124
    :pswitch_3
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzz(IJ)V

    goto :goto_3

    .line 126
    :pswitch_4
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzx(II)V

    goto :goto_3

    .line 128
    :pswitch_5
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzi(II)V

    goto :goto_3

    .line 130
    :pswitch_6
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzI(II)V

    goto :goto_3

    .line 132
    :pswitch_7
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgk;

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzd(ILcom/google/android/gms/internal/play_billing/zzgk;)V

    goto :goto_3

    .line 134
    :pswitch_8
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 136
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v7

    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)V

    goto/16 :goto_3

    .line 137
    :pswitch_9
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzip;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjw;)V

    goto/16 :goto_3

    .line 139
    :pswitch_a
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzN(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzb(IZ)V

    goto/16 :goto_3

    .line 141
    :pswitch_b
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzk(II)V

    goto/16 :goto_3

    .line 143
    :pswitch_c
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzm(IJ)V

    goto/16 :goto_3

    .line 145
    :pswitch_d
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzo(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzr(II)V

    goto/16 :goto_3

    .line 147
    :pswitch_e
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzK(IJ)V

    goto/16 :goto_3

    .line 149
    :pswitch_f
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzt(IJ)V

    goto/16 :goto_3

    .line 151
    :pswitch_10
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzn(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzo(IF)V

    goto/16 :goto_3

    .line 153
    :pswitch_11
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzm(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzf(ID)V

    goto/16 :goto_3

    .line 155
    :pswitch_12
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 202
    :cond_4
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 203
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 204
    throw v16

    .line 109
    :pswitch_13
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 110
    aget v5, v5, v2

    .line 111
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 112
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v10

    .line 113
    sget v11, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 114
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    .line 115
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 116
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v6

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzgs;

    invoke-virtual {v13, v5, v12, v10}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 106
    :pswitch_14
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 107
    aget v5, v5, v2

    .line 108
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 109
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 103
    :pswitch_15
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 104
    aget v5, v5, v2

    .line 105
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 106
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 100
    :pswitch_16
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 101
    aget v5, v5, v2

    .line 102
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 103
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 97
    :pswitch_17
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 98
    aget v5, v5, v2

    .line 99
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 100
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 94
    :pswitch_18
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 95
    aget v5, v5, v2

    .line 96
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 97
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 91
    :pswitch_19
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 92
    aget v5, v5, v2

    .line 93
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 94
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 88
    :pswitch_1a
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 89
    aget v5, v5, v2

    .line 90
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 91
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 85
    :pswitch_1b
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 86
    aget v5, v5, v2

    .line 87
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 88
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 82
    :pswitch_1c
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 83
    aget v5, v5, v2

    .line 84
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 85
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 79
    :pswitch_1d
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 80
    aget v5, v5, v2

    .line 81
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 82
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 76
    :pswitch_1e
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 77
    aget v5, v5, v2

    .line 78
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 79
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 73
    :pswitch_1f
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 74
    aget v5, v5, v2

    .line 75
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 76
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 70
    :pswitch_20
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 71
    aget v5, v5, v2

    .line 72
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 73
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 67
    :pswitch_21
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 68
    aget v5, v5, v2

    .line 69
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 70
    invoke-static {v5, v10, v6, v7}, Lcom/google/android/gms/internal/play_billing/zziz;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_3

    .line 64
    :pswitch_22
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 65
    aget v5, v5, v2

    .line 66
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v12, 0x0

    .line 67
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_23
    const/4 v12, 0x0

    .line 61
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 62
    aget v5, v5, v2

    .line 63
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 64
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_24
    const/4 v12, 0x0

    .line 58
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 59
    aget v5, v5, v2

    .line 60
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 61
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_25
    const/4 v12, 0x0

    .line 55
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 56
    aget v5, v5, v2

    .line 57
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 58
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_26
    const/4 v12, 0x0

    .line 52
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 53
    aget v5, v5, v2

    .line 54
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 55
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_27
    const/4 v12, 0x0

    .line 49
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 50
    aget v5, v5, v2

    .line 51
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 52
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    .line 44
    :pswitch_28
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 45
    aget v5, v5, v2

    .line 46
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 47
    sget v10, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 48
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 49
    invoke-interface {v6, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzjw;->zze(ILjava/util/List;)V

    goto/16 :goto_3

    .line 37
    :pswitch_29
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 38
    aget v5, v5, v2

    .line 39
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 40
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v10

    .line 41
    sget v11, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 42
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v12, 0x0

    .line 43
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_3

    .line 44
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v6

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzgs;

    invoke-virtual {v13, v5, v11, v10}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 32
    :pswitch_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 33
    aget v5, v5, v2

    .line 34
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 35
    sget v10, Lcom/google/android/gms/internal/play_billing/zziz;->$r8$clinit:I

    if-eqz v7, :cond_3

    .line 36
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 37
    invoke-interface {v6, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzH(ILjava/util/List;)V

    goto/16 :goto_3

    .line 29
    :pswitch_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 30
    aget v5, v5, v2

    .line 31
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v12, 0x0

    .line 32
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_2c
    const/4 v12, 0x0

    .line 26
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 27
    aget v5, v5, v2

    .line 28
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 29
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_2d
    const/4 v12, 0x0

    .line 23
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 24
    aget v5, v5, v2

    .line 25
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 26
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_2e
    const/4 v12, 0x0

    .line 20
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 21
    aget v5, v5, v2

    .line 22
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 23
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_2f
    const/4 v12, 0x0

    .line 17
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 18
    aget v5, v5, v2

    .line 19
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 20
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_30
    const/4 v12, 0x0

    .line 14
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 15
    aget v5, v5, v2

    .line 16
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 17
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_31
    const/4 v12, 0x0

    .line 11
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 12
    aget v5, v5, v2

    .line 13
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 14
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_32
    const/4 v12, 0x0

    .line 7
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    .line 9
    aget v5, v5, v2

    .line 10
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 11
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/play_billing/zziz;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzjw;Z)V

    goto/16 :goto_6

    :pswitch_33
    move v5, v12

    const/4 v12, 0x0

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 157
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v7

    .line 158
    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)V

    goto/16 :goto_6

    :pswitch_34
    move v5, v12

    const/4 v12, 0x0

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 160
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzD(IJ)V

    goto/16 :goto_6

    :pswitch_35
    move v5, v12

    const/4 v12, 0x0

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzB(II)V

    goto/16 :goto_6

    :pswitch_36
    move v5, v12

    const/4 v12, 0x0

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 164
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzz(IJ)V

    goto/16 :goto_6

    :pswitch_37
    move v5, v12

    const/4 v12, 0x0

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzx(II)V

    goto/16 :goto_6

    :pswitch_38
    move v5, v12

    const/4 v12, 0x0

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzi(II)V

    goto/16 :goto_6

    :pswitch_39
    move v5, v12

    const/4 v12, 0x0

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzI(II)V

    goto/16 :goto_6

    :pswitch_3a
    move v5, v12

    const/4 v12, 0x0

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgk;

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzd(ILcom/google/android/gms/internal/play_billing/zzgk;)V

    goto/16 :goto_6

    :pswitch_3b
    move v5, v12

    const/4 v12, 0x0

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 174
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 175
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v7

    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzix;)V

    goto/16 :goto_6

    :pswitch_3c
    move v5, v12

    const/4 v12, 0x0

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzip;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjw;)V

    goto/16 :goto_6

    :pswitch_3d
    move v5, v12

    const/4 v12, 0x0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    .line 180
    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzb(IZ)V

    goto/16 :goto_6

    :pswitch_3e
    move v5, v12

    const/4 v12, 0x0

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 182
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzk(II)V

    goto :goto_6

    :pswitch_3f
    move v5, v12

    const/4 v12, 0x0

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 184
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzm(IJ)V

    goto :goto_6

    :pswitch_40
    move v5, v12

    const/4 v12, 0x0

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzr(II)V

    goto :goto_6

    :pswitch_41
    move v5, v12

    const/4 v12, 0x0

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 188
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzK(IJ)V

    goto :goto_6

    :pswitch_42
    move v5, v12

    const/4 v12, 0x0

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 190
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzt(IJ)V

    goto :goto_6

    :pswitch_43
    move v5, v12

    const/4 v12, 0x0

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 192
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 193
    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzo(IF)V

    goto :goto_6

    :pswitch_44
    move v5, v12

    const/4 v12, 0x0

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 196
    invoke-interface {v6, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjw;->zzf(ID)V

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x3

    const v10, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 197
    :cond_6
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhk;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjk;

    .line 199
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzjk;->zzl(Lcom/google/android/gms/internal/play_billing/zzjw;)V

    return-void

    :cond_7
    const/16 v16, 0x0

    .line 1
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzp(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zziz;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zziz;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zziz;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zziz;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zziz;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zziz;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zziz;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzip;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    .line 53
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjk;

    .line 54
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhk;

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjk;

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    iget-boolean p2, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-nez p2, :cond_4

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_4
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 15

    move-object/from16 v1, p1

    const/4 v6, 0x0

    const v7, 0xfffff

    move v2, v6

    move v8, v2

    move v0, v7

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzj:I

    const/4 v9, 0x0

    const/4 v4, 0x1

    if-ge v8, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzi:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    aget v3, v3, v8

    .line 2
    aget v10, v5, v3

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/play_billing/zzip;->zzs(I)I

    move-result v11

    iget-object v5, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzc:[I

    add-int/lit8 v12, v3, 0x2

    .line 4
    aget v5, v5, v12

    and-int v12, v5, v7

    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v4, v5

    if-eq v12, v0, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v13, v12

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v0, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :cond_0
    move v4, v2

    move v0, v12

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/high16 v2, 0x10000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_3

    move v2, v3

    move v3, v0

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    return v6

    :cond_3
    move v2, v3

    move v3, v0

    :goto_2
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzip;->zzr(I)I

    move-result v12

    const/16 v13, 0x9

    if-eq v12, v13, :cond_9

    const/16 v13, 0x11

    if-eq v12, v13, :cond_9

    const/16 v5, 0x1b

    if-eq v12, v5, :cond_7

    const/16 v5, 0x3c

    if-eq v12, v5, :cond_6

    const/16 v5, 0x44

    if-eq v12, v5, :cond_6

    const/16 v5, 0x31

    if-eq v12, v5, :cond_7

    const/16 v5, 0x32

    if-eq v12, v5, :cond_4

    goto :goto_4

    :cond_4
    and-int v5, v11, v7

    int-to-long v10, v5

    .line 13
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 14
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzig;

    .line 15
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 21
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 22
    throw v9

    .line 16
    :cond_6
    invoke-direct {p0, v1, v10, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 17
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzix;)Z

    move-result v2

    if-nez v2, :cond_a

    return v6

    :cond_7
    and-int v5, v11, v7

    int-to-long v9, v5

    .line 7
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    move v9, v6

    .line 10
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 11
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 12
    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/play_billing/zzix;->zzk(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    return v6

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzip;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 19
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzix;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/play_billing/zzip;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzix;)Z

    move-result v2

    if-nez v2, :cond_a

    return v6

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v0, v3

    move v2, v4

    goto/16 :goto_0

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Z

    if-nez v2, :cond_c

    return v4

    .line 23
    :cond_c
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v9
.end method
