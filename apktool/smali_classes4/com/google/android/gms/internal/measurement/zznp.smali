.class final Lcom/google/android/gms/internal/measurement/zznp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznx;


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/measurement/zznm;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/measurement/zzoi;

.field private final zzm:Lcom/google/android/gms/internal/measurement/zzls;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznp;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzop;->zzq()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zznm;Z[IIILcom/google/android/gms/internal/measurement/zznr;Lcom/google/android/gms/internal/measurement/zzmy;Lcom/google/android/gms/internal/measurement/zzoi;Lcom/google/android/gms/internal/measurement/zzls;Lcom/google/android/gms/internal/measurement/zznh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zznp;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzf:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzi:[I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzj:I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzk:I

    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzl:Lcom/google/android/gms/internal/measurement/zzoi;

    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzm:Lcom/google/android/gms/internal/measurement/zzls;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzg:Lcom/google/android/gms/internal/measurement/zznm;

    return-void
.end method

.method private static zzA(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static zzB(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

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

.method private static zzC(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzD(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzE(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzF(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzG(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzI(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

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

.method private final zzJ(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzy(I)I

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
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzlh;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

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
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzlh;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzh(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzj(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzl(Ljava/lang/Object;J)D

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
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

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

.method private final zzK(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzy(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzL(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzy(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzM(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzy(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzN(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static final zzO([BIILcom/google/android/gms/internal/measurement/zzot;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzot;->zza:Lcom/google/android/gms/internal/measurement/zzot;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 21
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlj;->zzc(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p0

    .line 5
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p0

    .line 19
    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzg([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    return p0

    .line 7
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzh(Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    return p0

    .line 2
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzf([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    return p0

    .line 20
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p2

    .line 11
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p0

    .line 9
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    return p2

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
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final zzP(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzov;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzov;->zzm(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzov;->zzn(ILcom/google/android/gms/internal/measurement/zzlh;)V

    return-void
.end method

.method static zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzoj;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zzb()Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zznj;Lcom/google/android/gms/internal/measurement/zznr;Lcom/google/android/gms/internal/measurement/zzmy;Lcom/google/android/gms/internal/measurement/zzoi;Lcom/google/android/gms/internal/measurement/zzls;Lcom/google/android/gms/internal/measurement/zznh;)Lcom/google/android/gms/internal/measurement/zznp;
    .locals 32

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zznw;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->zzd()Ljava/lang/String;

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

    sget-object v7, Lcom/google/android/gms/internal/measurement/zznp;->zza:[I

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
    sget-object v14, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Lcom/google/android/gms/internal/measurement/zznm;

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
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zznw;->zzc()I

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

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzm(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/measurement/zznp;->zzm(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzm(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zznw;->zzc()I

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

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/measurement/zznp;->zzm(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznp;

    .line 71
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Lcom/google/android/gms/internal/measurement/zznm;

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

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/measurement/zznp;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zznm;Z[IIILcom/google/android/gms/internal/measurement/zznr;Lcom/google/android/gms/internal/measurement/zzmy;Lcom/google/android/gms/internal/measurement/zzoi;Lcom/google/android/gms/internal/measurement/zzls;Lcom/google/android/gms/internal/measurement/zznh;)V

    return-object v9

    .line 72
    :cond_37
    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 73
    throw v0
.end method

.method private static zzm(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final zzn(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzo(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    aget v1, v0, p3

    .line 2
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    int-to-long v4, v2

    .line 4
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzM(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    aget p3, v0, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source subfield "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzp(I)Lcom/google/android/gms/internal/measurement/zznx;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zznx;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v1

    .line 3
    aput-object v1, v0, p1

    return-object v1
.end method

.method private final zzq(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzr(I)Lcom/google/android/gms/internal/measurement/zzmk;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmk;

    return-object p1
.end method

.method private final zzs(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzt(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzu(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzv(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zznp;->zzM(Ljava/lang/Object;II)V

    return-void
.end method

.method private static zzw(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zznx;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/zznx;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzx(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzy(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzz(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzg:Lcom/google/android/gms/internal/measurement/zznm;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzch()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzy(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznz;->zzB(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznz;->zzB(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznz;->zzB(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznz;->zzB(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznz;->zzB(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznz;->zzB(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznz;->zzB(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzl(Ljava/lang/Object;J)D

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

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 54
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

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

.method public final zzc(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

    move-result v3

    .line 2
    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzG(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzmp;->zzb(Z)I

    move-result v2

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzD(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzC(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzmp;->zzb(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmp;->zzb:[B

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

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

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznp;->zzB(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

    move-result v2

    .line 3
    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzM(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzM(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 21
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zznh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmo;

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmo;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    .line 9
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmo;->zzg(I)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 11
    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzn(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzg(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzg(Ljava/lang/Object;JJ)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 43
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzn(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 47
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzh(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzi(Ljava/lang/Object;JZ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 53
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto :goto_2

    .line 56
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzg(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto :goto_2

    .line 59
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zze(Ljava/lang/Object;JI)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto :goto_2

    .line 62
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzg(Ljava/lang/Object;JJ)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto :goto_2

    .line 65
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzg(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto :goto_2

    .line 68
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzj(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzop;->zzk(Ljava/lang/Object;JF)V

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    goto :goto_2

    .line 71
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzl(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzop;->zzm(Ljava/lang/Object;JD)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzK(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzl:Lcom/google/android/gms/internal/measurement/zzoi;

    .line 74
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznz;->zzD(Lcom/google/android/gms/internal/measurement/zzoi;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzm:Lcom/google/android/gms/internal/measurement/zzls;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznz;->zzC(Lcom/google/android/gms/internal/measurement/zzls;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public final zze(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v6, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    move v2, v7

    move v4, v2

    move v9, v4

    move v3, v8

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    array-length v10, v5

    if-ge v2, v10, :cond_1c

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

    move-result v11

    .line 2
    aget v12, v5, v2

    add-int/lit8 v13, v2, 0x2

    .line 3
    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

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
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    and-int/2addr v10, v8

    .line 5
    sget-object v13, Lcom/google/android/gms/internal/measurement/zzlx;->zzJ:Lcom/google/android/gms/internal/measurement/zzlx;

    .line 6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzlx;->zza()I

    move-result v13

    if-lt v11, v13, :cond_3

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzlx;->zzW:Lcom/google/android/gms/internal/measurement/zzlx;

    .line 5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzlx;->zza()I

    :cond_3
    int-to-long v13, v10

    const/16 v10, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1d

    .line 7
    :pswitch_0
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 8
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zznm;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    .line 10
    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzG(ILcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v5

    :goto_3
    add-int/2addr v9, v5

    goto/16 :goto_1d

    .line 11
    :pswitch_1
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 12
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v10, v11, v10

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    xor-long/2addr v10, v13

    .line 14
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v10

    :goto_4
    add-int/2addr v5, v10

    goto :goto_3

    .line 15
    :pswitch_2
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 16
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v10

    add-int v11, v10, v10

    shr-int/lit8 v10, v10, 0x1f

    .line 17
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    xor-int/2addr v10, v11

    .line 18
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    goto :goto_4

    .line 19
    :pswitch_3
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    :goto_5
    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 21
    :pswitch_4
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    :goto_6
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 23
    :pswitch_5
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 24
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v10

    int-to-long v10, v10

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 26
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v10

    goto :goto_4

    .line 27
    :pswitch_6
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 28
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v10

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 30
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    goto :goto_4

    .line 31
    :pswitch_7
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result v10

    .line 35
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    :goto_7
    add-int/2addr v11, v10

    add-int/2addr v5, v11

    goto/16 :goto_3

    .line 36
    :pswitch_8
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 37
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/measurement/zznz;->zzz(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v5

    goto/16 :goto_3

    .line 39
    :pswitch_9
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 40
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz v11, :cond_4

    .line 41
    check-cast v10, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 42
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 43
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result v10

    .line 44
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_7

    .line 45
    :cond_4
    check-cast v10, Ljava/lang/String;

    .line 46
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 47
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzB(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 48
    :pswitch_a
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 49
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_3

    .line 50
    :pswitch_b
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 51
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    goto/16 :goto_6

    .line 52
    :pswitch_c
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 53
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    goto/16 :goto_5

    .line 54
    :pswitch_d
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 55
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v10

    int-to-long v10, v10

    .line 56
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 57
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v10

    goto/16 :goto_4

    .line 58
    :pswitch_e
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 59
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 61
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v10

    goto/16 :goto_4

    .line 62
    :pswitch_f
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 63
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 64
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    .line 65
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v10

    goto/16 :goto_4

    .line 66
    :pswitch_10
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 67
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    goto/16 :goto_6

    .line 68
    :pswitch_11
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v12, 0x3

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    goto/16 :goto_5

    .line 70
    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzq(I)Ljava/lang/Object;

    move-result-object v10

    .line 71
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzng;

    .line 72
    check-cast v10, Lcom/google/android/gms/internal/measurement/zznf;

    .line 73
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    :goto_8
    move v11, v7

    goto :goto_a

    .line 74
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzng;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v11, v7

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v12, v14, v13}, Lcom/google/android/gms/internal/measurement/zznf;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v11, v13

    goto :goto_9

    :cond_6
    :goto_a
    add-int/2addr v9, v11

    goto/16 :goto_1d

    .line 76
    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 77
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    .line 78
    sget v11, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 79
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_7

    move v14, v7

    goto :goto_c

    :cond_7
    move v13, v7

    move v14, v13

    :goto_b
    if-ge v13, v11, :cond_8

    .line 80
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zznm;

    invoke-static {v12, v15, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzG(ILcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_8
    :goto_c
    add-int/2addr v9, v14

    goto/16 :goto_1d

    .line 81
    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 82
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzq(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 83
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 84
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    :goto_d
    add-int/2addr v10, v11

    add-int/2addr v10, v5

    :cond_9
    :goto_e
    add-int/2addr v9, v10

    goto/16 :goto_1d

    .line 85
    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 86
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzu(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 87
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 88
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_d

    .line 89
    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 90
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 91
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 92
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_d

    .line 93
    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 94
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 95
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 96
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_d

    .line 97
    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 98
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzr(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 99
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 100
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_d

    .line 101
    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 102
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzt(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 103
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 104
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_d

    .line 105
    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 106
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 107
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 108
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 109
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 110
    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 111
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 112
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 113
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 114
    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 115
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 116
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 117
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 118
    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 119
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzs(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 120
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 121
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 122
    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 123
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzp(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 124
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 125
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 126
    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 127
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzo(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 128
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 129
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 130
    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 131
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 132
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 133
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 134
    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 135
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v10, v12, 0x3

    .line 136
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_d

    .line 138
    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 139
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 140
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    :goto_f
    move v5, v7

    goto/16 :goto_3

    :cond_a
    shl-int/lit8 v11, v12, 0x3

    .line 141
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzq(Ljava/util/List;)I

    move-result v5

    .line 142
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    :goto_10
    mul-int/2addr v10, v11

    goto/16 :goto_4

    .line 143
    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 144
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 145
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_b

    goto :goto_f

    :cond_b
    shl-int/lit8 v11, v12, 0x3

    .line 146
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzu(Ljava/util/List;)I

    move-result v5

    .line 147
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_10

    .line 148
    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 149
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zznz;->zzy(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 150
    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 151
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zznz;->zzw(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 152
    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 153
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 154
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_c

    goto :goto_f

    :cond_c
    shl-int/lit8 v11, v12, 0x3

    .line 155
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzr(Ljava/util/List;)I

    move-result v5

    .line 156
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_10

    .line 157
    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 158
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 159
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_d

    goto :goto_f

    :cond_d
    shl-int/lit8 v11, v12, 0x3

    .line 160
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzt(Ljava/util/List;)I

    move-result v5

    .line 161
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto :goto_10

    .line 162
    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 163
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 164
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    move v10, v7

    goto/16 :goto_e

    :cond_e
    shl-int/lit8 v11, v12, 0x3

    .line 165
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    mul-int/2addr v10, v11

    move v11, v7

    .line 166
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 167
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 168
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result v12

    .line 169
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v10, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 170
    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    .line 171
    sget v11, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 172
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_f

    move v12, v7

    goto :goto_13

    :cond_f
    shl-int/lit8 v12, v12, 0x3

    .line 173
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v12

    mul-int/2addr v12, v11

    move v13, v7

    :goto_12
    if-ge v13, v11, :cond_10

    .line 174
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 178
    check-cast v14, Lcom/google/android/gms/internal/measurement/zznm;

    invoke-static {v14, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzD(Lcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v14

    add-int/2addr v12, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_10
    :goto_13
    add-int/2addr v9, v12

    goto/16 :goto_1d

    .line 179
    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 180
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_8

    :cond_11
    shl-int/lit8 v11, v12, 0x3

    .line 181
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    mul-int/2addr v11, v10

    instance-of v12, v5, Lcom/google/android/gms/internal/measurement/zzmx;

    if-eqz v12, :cond_13

    .line 187
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzmx;

    move v12, v7

    :goto_14
    if-ge v12, v10, :cond_6

    .line 188
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzmx;->zzc()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz v14, :cond_12

    .line 189
    check-cast v13, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 190
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result v13

    .line 191
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v11, v14

    goto :goto_15

    .line 192
    :cond_12
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzlm;->zzB(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v11, v13

    :goto_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_13
    move v12, v7

    :goto_16
    if-ge v12, v10, :cond_6

    .line 182
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz v14, :cond_14

    .line 183
    check-cast v13, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 184
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result v13

    .line 185
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v11, v14

    goto :goto_17

    .line 186
    :cond_14
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzlm;->zzB(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v11, v13

    :goto_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 193
    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 194
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 195
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_f

    :cond_15
    shl-int/lit8 v10, v12, 0x3

    .line 196
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    add-int/2addr v10, v15

    mul-int/2addr v5, v10

    goto/16 :goto_3

    .line 197
    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 198
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zznz;->zzw(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 199
    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 200
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zznz;->zzy(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 201
    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 202
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 203
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_f

    :cond_16
    shl-int/lit8 v11, v12, 0x3

    .line 204
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzs(Ljava/util/List;)I

    move-result v5

    .line 205
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_10

    .line 206
    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 207
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 208
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_f

    :cond_17
    shl-int/lit8 v11, v12, 0x3

    .line 209
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzp(Ljava/util/List;)I

    move-result v5

    .line 210
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v11

    goto/16 :goto_10

    .line 211
    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 212
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    .line 213
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_18

    goto/16 :goto_8

    :cond_18
    shl-int/lit8 v10, v12, 0x3

    .line 214
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznz;->zzo(Ljava/util/List;)I

    move-result v11

    .line 215
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 216
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    mul-int/2addr v5, v10

    add-int/2addr v11, v5

    goto/16 :goto_a

    .line 217
    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 218
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zznz;->zzw(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 219
    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 220
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zznz;->zzy(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_3

    .line 221
    :pswitch_33
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 222
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zznm;

    .line 223
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    .line 224
    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzG(ILcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v5

    goto/16 :goto_3

    .line 225
    :pswitch_34
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 226
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v10, v11, v10

    .line 227
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    xor-long/2addr v10, v13

    .line 228
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v5

    :goto_18
    add-int/2addr v0, v5

    :goto_19
    add-int/2addr v9, v0

    :cond_19
    move-object/from16 v0, p0

    goto/16 :goto_1d

    .line 229
    :pswitch_35
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 230
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v10, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    .line 231
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    xor-int/2addr v5, v10

    .line 232
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    goto :goto_18

    .line 233
    :pswitch_36
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 234
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    :goto_1a
    add-int/lit8 v0, v0, 0x8

    goto :goto_19

    .line 235
    :pswitch_37
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 236
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    :goto_1b
    add-int/lit8 v0, v0, 0x4

    goto :goto_19

    .line 237
    :pswitch_38
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 238
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v10, v5

    .line 239
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 240
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v5

    goto :goto_18

    .line 241
    :pswitch_39
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 242
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 243
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 244
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v5

    goto :goto_18

    .line 245
    :pswitch_3a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 246
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 247
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 248
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result v5

    .line 249
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    :goto_1c
    add-int/2addr v10, v5

    add-int/2addr v0, v10

    goto/16 :goto_19

    .line 250
    :pswitch_3b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 251
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 252
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/measurement/zznz;->zzz(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v5

    goto/16 :goto_3

    .line 253
    :pswitch_3c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 254
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz v10, :cond_1a

    .line 255
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 256
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 257
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result v5

    .line 258
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v10

    goto :goto_1c

    .line 259
    :cond_1a
    check-cast v5, Ljava/lang/String;

    .line 260
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 261
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzB(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_18

    .line 262
    :pswitch_3d
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 263
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    add-int/2addr v0, v15

    goto/16 :goto_19

    .line 264
    :pswitch_3e
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 265
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    goto/16 :goto_1b

    .line 266
    :pswitch_3f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 267
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    goto/16 :goto_1a

    .line 268
    :pswitch_40
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 269
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v10, v5

    .line 270
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 271
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v5

    goto/16 :goto_18

    .line 272
    :pswitch_41
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 273
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 274
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 275
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v5

    goto/16 :goto_18

    .line 276
    :pswitch_42
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 277
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 278
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    .line 279
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzA(J)I

    move-result v5

    goto/16 :goto_18

    .line 280
    :pswitch_43
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    .line 281
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    goto/16 :goto_1b

    .line 282
    :pswitch_44
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v1, v12, 0x3

    .line 283
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v9, v1

    :cond_1b
    :goto_1d
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 284
    :cond_1c
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 286
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzoj;->zzi()I

    move-result v1

    add-int/2addr v9, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

    if-nez v1, :cond_1d

    return v9

    .line 287
    :cond_1d
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    throw v1

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

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzov;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

    if-nez v2, :cond_6

    .line 4
    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    sget-object v8, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    const v9, 0xfffff

    move v3, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v7

    if-ge v2, v5, :cond_5

    .line 5
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

    move-result v11

    .line 6
    aget v12, v7, v2

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v11, v13, :cond_2

    add-int/lit8 v13, v2, 0x2

    .line 7
    aget v13, v7, v13

    and-int v15, v13, v9

    if-eq v15, v3, :cond_1

    if-ne v15, v9, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v15

    .line 8
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v15

    :cond_1
    ushr-int/lit8 v13, v13, 0x14

    shl-int v13, v14, v13

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    and-int/2addr v5, v9

    int-to-long v9, v5

    packed-switch v11, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 117
    :pswitch_0
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v9

    .line 119
    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/measurement/zzov;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)V

    goto :goto_3

    .line 120
    :pswitch_1
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzq(IJ)V

    goto :goto_3

    .line 122
    :pswitch_2
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzp(II)V

    goto :goto_3

    .line 124
    :pswitch_3
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzd(IJ)V

    goto :goto_3

    .line 126
    :pswitch_4
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzb(II)V

    goto :goto_3

    .line 128
    :pswitch_5
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzg(II)V

    goto :goto_3

    .line 130
    :pswitch_6
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzo(II)V

    goto :goto_3

    .line 132
    :pswitch_7
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzn(ILcom/google/android/gms/internal/measurement/zzlh;)V

    goto :goto_3

    .line 134
    :pswitch_8
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 136
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v9

    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/measurement/zzov;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)V

    goto/16 :goto_3

    .line 137
    :pswitch_9
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/zznp;->zzP(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzov;)V

    goto/16 :goto_3

    .line 139
    :pswitch_a
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzG(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzl(IZ)V

    goto/16 :goto_3

    .line 141
    :pswitch_b
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzk(II)V

    goto/16 :goto_3

    .line 143
    :pswitch_c
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzj(IJ)V

    goto/16 :goto_3

    .line 145
    :pswitch_d
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzE(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzi(II)V

    goto/16 :goto_3

    .line 147
    :pswitch_e
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzh(IJ)V

    goto/16 :goto_3

    .line 149
    :pswitch_f
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzF(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzc(IJ)V

    goto/16 :goto_3

    .line 151
    :pswitch_10
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzD(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v6, v12, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zze(IF)V

    goto/16 :goto_3

    .line 153
    :pswitch_11
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzC(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzf(ID)V

    goto/16 :goto_3

    .line 155
    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 156
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzq(I)Ljava/lang/Object;

    move-result-object v9

    .line 157
    check-cast v9, Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zznf;->zze()Lcom/google/android/gms/internal/measurement/zzne;

    move-result-object v9

    .line 158
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzng;

    .line 159
    invoke-interface {v6, v12, v9, v5}, Lcom/google/android/gms/internal/measurement/zzov;->zzM(ILcom/google/android/gms/internal/measurement/zzne;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 110
    :pswitch_13
    aget v5, v7, v2

    .line 111
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 112
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    .line 113
    sget v11, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    if-eqz v9, :cond_3

    .line 114
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    .line 115
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 116
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v6

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {v13, v5, v12, v10}, Lcom/google/android/gms/internal/measurement/zzln;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 107
    :pswitch_14
    aget v5, v7, v2

    .line 108
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 109
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 104
    :pswitch_15
    aget v5, v7, v2

    .line 105
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 106
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 101
    :pswitch_16
    aget v5, v7, v2

    .line 102
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 103
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 98
    :pswitch_17
    aget v5, v7, v2

    .line 99
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 100
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 95
    :pswitch_18
    aget v5, v7, v2

    .line 96
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 97
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 92
    :pswitch_19
    aget v5, v7, v2

    .line 93
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 94
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 89
    :pswitch_1a
    aget v5, v7, v2

    .line 90
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 91
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 86
    :pswitch_1b
    aget v5, v7, v2

    .line 87
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 88
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 83
    :pswitch_1c
    aget v5, v7, v2

    .line 84
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 85
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 80
    :pswitch_1d
    aget v5, v7, v2

    .line 81
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 82
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 77
    :pswitch_1e
    aget v5, v7, v2

    .line 78
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 79
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 74
    :pswitch_1f
    aget v5, v7, v2

    .line 75
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 76
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 71
    :pswitch_20
    aget v5, v7, v2

    .line 72
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 73
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 68
    :pswitch_21
    aget v5, v7, v2

    .line 69
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 70
    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/measurement/zznz;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_3

    .line 65
    :pswitch_22
    aget v5, v7, v2

    .line 66
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v11, 0x0

    .line 67
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_23
    const/4 v11, 0x0

    .line 62
    aget v5, v7, v2

    .line 63
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 64
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_24
    const/4 v11, 0x0

    .line 59
    aget v5, v7, v2

    .line 60
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 61
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_25
    const/4 v11, 0x0

    .line 56
    aget v5, v7, v2

    .line 57
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 58
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_26
    const/4 v11, 0x0

    .line 53
    aget v5, v7, v2

    .line 54
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 55
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_27
    const/4 v11, 0x0

    .line 50
    aget v5, v7, v2

    .line 51
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    .line 45
    :pswitch_28
    aget v5, v7, v2

    .line 46
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 47
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    if-eqz v9, :cond_3

    .line 48
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 49
    invoke-interface {v6, v5, v9}, Lcom/google/android/gms/internal/measurement/zzov;->zzG(ILjava/util/List;)V

    goto/16 :goto_3

    .line 38
    :pswitch_29
    aget v5, v7, v2

    .line 39
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 40
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v10

    .line 41
    sget v11, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    if-eqz v9, :cond_3

    .line 42
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    .line 43
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 44
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v6

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {v13, v5, v12, v10}, Lcom/google/android/gms/internal/measurement/zzln;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 33
    :pswitch_2a
    aget v5, v7, v2

    .line 34
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 35
    sget v10, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    if-eqz v9, :cond_3

    .line 36
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 37
    invoke-interface {v6, v5, v9}, Lcom/google/android/gms/internal/measurement/zzov;->zzF(ILjava/util/List;)V

    goto/16 :goto_3

    .line 30
    :pswitch_2b
    aget v5, v7, v2

    .line 31
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v11, 0x0

    .line 32
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_2c
    const/4 v11, 0x0

    .line 27
    aget v5, v7, v2

    .line 28
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 29
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_2d
    const/4 v11, 0x0

    .line 24
    aget v5, v7, v2

    .line 25
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 26
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_2e
    const/4 v11, 0x0

    .line 21
    aget v5, v7, v2

    .line 22
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 23
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_2f
    const/4 v11, 0x0

    .line 18
    aget v5, v7, v2

    .line 19
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 20
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_30
    const/4 v11, 0x0

    .line 15
    aget v5, v7, v2

    .line 16
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 17
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_31
    const/4 v11, 0x0

    .line 12
    aget v5, v7, v2

    .line 13
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 14
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_32
    const/4 v11, 0x0

    .line 9
    aget v5, v7, v2

    .line 10
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 11
    invoke-static {v5, v9, v6, v11}, Lcom/google/android/gms/internal/measurement/zznz;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzov;Z)V

    goto/16 :goto_6

    :pswitch_33
    move v5, v13

    const/4 v11, 0x0

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v9

    .line 162
    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/measurement/zzov;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)V

    goto/16 :goto_6

    :pswitch_34
    move v5, v13

    const/4 v11, 0x0

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzq(IJ)V

    goto/16 :goto_6

    :pswitch_35
    move v5, v13

    const/4 v11, 0x0

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 166
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzp(II)V

    goto/16 :goto_6

    :pswitch_36
    move v5, v13

    const/4 v11, 0x0

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzd(IJ)V

    goto/16 :goto_6

    :pswitch_37
    move v5, v13

    const/4 v11, 0x0

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzb(II)V

    goto/16 :goto_6

    :pswitch_38
    move v5, v13

    const/4 v11, 0x0

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzg(II)V

    goto/16 :goto_6

    :pswitch_39
    move v5, v13

    const/4 v11, 0x0

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzo(II)V

    goto/16 :goto_6

    :pswitch_3a
    move v5, v13

    const/4 v11, 0x0

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzn(ILcom/google/android/gms/internal/measurement/zzlh;)V

    goto/16 :goto_6

    :pswitch_3b
    move v5, v13

    const/4 v11, 0x0

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 179
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v9

    invoke-interface {v6, v12, v5, v9}, Lcom/google/android/gms/internal/measurement/zzov;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;)V

    goto/16 :goto_6

    :pswitch_3c
    move v5, v13

    const/4 v11, 0x0

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/measurement/zznp;->zzP(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzov;)V

    goto/16 :goto_6

    :pswitch_3d
    move v5, v13

    const/4 v11, 0x0

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 183
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzop;->zzh(Ljava/lang/Object;J)Z

    move-result v0

    .line 184
    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzl(IZ)V

    goto/16 :goto_6

    :pswitch_3e
    move v5, v13

    const/4 v11, 0x0

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 186
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzk(II)V

    goto :goto_6

    :pswitch_3f
    move v5, v13

    const/4 v11, 0x0

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 188
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzj(IJ)V

    goto :goto_6

    :pswitch_40
    move v5, v13

    const/4 v11, 0x0

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 190
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zzi(II)V

    goto :goto_6

    :pswitch_41
    move v5, v13

    const/4 v11, 0x0

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 192
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzh(IJ)V

    goto :goto_6

    :pswitch_42
    move v5, v13

    const/4 v11, 0x0

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 194
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzc(IJ)V

    goto :goto_6

    :pswitch_43
    move v5, v13

    const/4 v11, 0x0

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 196
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzop;->zzj(Ljava/lang/Object;J)F

    move-result v0

    .line 197
    invoke-interface {v6, v12, v0}, Lcom/google/android/gms/internal/measurement/zzov;->zze(IF)V

    goto :goto_6

    :pswitch_44
    move v5, v13

    const/4 v11, 0x0

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzop;->zzl(Ljava/lang/Object;J)D

    move-result-wide v9

    .line 200
    invoke-interface {v6, v12, v9, v10}, Lcom/google/android/gms/internal/measurement/zzov;->zzf(ID)V

    :cond_4
    :goto_6
    add-int/lit8 v2, v2, 0x3

    const v9, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 201
    :cond_5
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 203
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzoj;->zzg(Lcom/google/android/gms/internal/measurement/zzov;)V

    return-void

    .line 1
    :cond_6
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

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

.method final zzh(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zznp;->zzB(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    move/from16 v6, p3

    move v9, v11

    move v14, v9

    move v15, v14

    const/4 v8, -0x1

    const v10, 0xfffff

    :goto_0
    const v16, 0xfffff

    :goto_1
    const-string v13, "Failed to parse the message."

    const/16 v18, 0x0

    const/16 p3, 0x3

    if-ge v6, v5, :cond_7c

    add-int/lit8 v15, v6, 0x1

    .line 2
    aget-byte v6, v4, v6

    if-gez v6, :cond_0

    .line 3
    invoke-static {v6, v4, v15, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb(I[BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v15

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    :cond_0
    move v7, v15

    move v15, v6

    ushr-int/lit8 v6, v15, 0x3

    if-le v6, v8, :cond_1

    div-int/lit8 v9, v9, 0x3

    iget v8, v1, Lcom/google/android/gms/internal/measurement/zznp;->zze:I

    if-lt v6, v8, :cond_2

    iget v8, v1, Lcom/google/android/gms/internal/measurement/zznp;->zzf:I

    if-gt v6, v8, :cond_2

    .line 5
    invoke-direct {v1, v6, v9}, Lcom/google/android/gms/internal/measurement/zznp;->zzN(II)I

    move-result v8

    :goto_2
    const/4 v9, -0x1

    goto :goto_3

    .line 270
    :cond_1
    iget v8, v1, Lcom/google/android/gms/internal/measurement/zznp;->zze:I

    if-lt v6, v8, :cond_2

    iget v8, v1, Lcom/google/android/gms/internal/measurement/zznp;->zzf:I

    if-gt v6, v8, :cond_2

    .line 4
    invoke-direct {v1, v6, v11}, Lcom/google/android/gms/internal/measurement/zznp;->zzN(II)I

    move-result v8

    goto :goto_2

    :cond_2
    const/4 v8, -0x1

    goto :goto_2

    :goto_3
    if-ne v8, v9, :cond_3

    move/from16 v1, p5

    move-object v0, v2

    move/from16 v17, v9

    move/from16 v19, v10

    move v9, v11

    move-object/from16 v27, v13

    move/from16 v22, v14

    move-object/from16 v10, p6

    move-object v14, v3

    move-object v3, v4

    move v11, v6

    move v4, v7

    goto/16 :goto_52

    :cond_3
    and-int/lit8 v9, v15, 0x7

    .line 277
    iget-object v11, v1, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    add-int/lit8 v19, v8, 0x1

    .line 6
    aget v12, v11, v19

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

    move-result v4

    and-int v5, v12, v16

    move/from16 v19, v6

    int-to-long v5, v5

    move-wide/from16 v21, v5

    const-wide/16 v23, 0x0

    const/high16 v25, 0x20000000

    const-string v6, ""

    const-string v5, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v28, v11

    const/16 v11, 0x11

    const/16 v29, 0x1

    if-gt v4, v11, :cond_16

    add-int/lit8 v11, v8, 0x2

    .line 7
    aget v11, v28, v11

    ushr-int/lit8 v27, v11, 0x14

    shl-int v27, v29, v27

    and-int v11, v11, v16

    move/from16 v30, v7

    if-eq v11, v10, :cond_6

    move/from16 v7, v16

    move/from16 v31, v8

    if-eq v10, v7, :cond_4

    int-to-long v7, v10

    .line 8
    invoke-virtual {v2, v3, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v7, 0xfffff

    :cond_4
    if-ne v11, v7, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    int-to-long v7, v11

    .line 9
    invoke-virtual {v2, v3, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    :goto_4
    move v14, v7

    goto :goto_5

    :cond_6
    move/from16 v31, v8

    move v11, v10

    :goto_5
    packed-switch v4, :pswitch_data_0

    move/from16 v4, p3

    if-ne v9, v4, :cond_7

    or-int v14, v14, v27

    move/from16 v8, v31

    .line 10
    invoke-direct {v1, v3, v8}, Lcom/google/android/gms/internal/measurement/zznp;->zzs(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v19, 0x3

    or-int/lit8 v9, v5, 0x4

    .line 11
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v5

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    move v12, v8

    move/from16 v7, v30

    const/16 v17, -0x1

    move/from16 v8, p4

    .line 12
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    move-object v8, v6

    .line 13
    invoke-direct {v1, v3, v12, v4}, Lcom/google/android/gms/internal/measurement/zznp;->zzt(Ljava/lang/Object;ILjava/lang/Object;)V

    move v6, v5

    move-object v4, v8

    move-object v7, v10

    move v10, v11

    move v9, v12

    :goto_6
    move/from16 v8, v19

    const/4 v11, 0x0

    const v16, 0xfffff

    move/from16 v5, p4

    goto/16 :goto_1

    :cond_7
    const/16 v17, -0x1

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    move-object/from16 v8, p2

    move/from16 v22, v14

    move/from16 v21, v15

    move/from16 v7, v30

    move-object/from16 v15, p6

    goto/16 :goto_18

    :pswitch_0
    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move/from16 v5, v30

    move/from16 v12, v31

    const/16 v17, -0x1

    if-nez v9, :cond_8

    or-int v14, v14, v27

    .line 14
    invoke-static {v8, v5, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v9

    iget-wide v4, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 15
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzlj;->zzc(J)J

    move-result-wide v6

    move-wide/from16 v4, v21

    .line 16
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move/from16 v5, p4

    move-object v4, v8

    move v6, v9

    :goto_7
    move-object v7, v10

    move v10, v11

    move v9, v12

    move/from16 v8, v19

    :goto_8
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    :cond_9
    move v7, v5

    move/from16 v31, v12

    :goto_9
    move/from16 v22, v14

    move/from16 v21, v15

    move-object v15, v10

    goto/16 :goto_18

    :pswitch_1
    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move-wide/from16 v6, v21

    move/from16 v5, v30

    move/from16 v12, v31

    const/16 v17, -0x1

    if-nez v9, :cond_9

    or-int v14, v14, v27

    .line 17
    invoke-static {v8, v5, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v4

    iget v5, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb(I)I

    move-result v5

    .line 19
    invoke-virtual {v3, v2, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    move/from16 v5, p4

    move v6, v4

    move-object v4, v8

    goto :goto_7

    :pswitch_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move-wide/from16 v6, v21

    move/from16 v5, v30

    move/from16 v4, v31

    const/16 v17, -0x1

    if-nez v9, :cond_c

    .line 20
    invoke-static {v8, v5, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    iget v9, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 21
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zznp;->zzr(I)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v13

    const/high16 v18, -0x80000000

    and-int v12, v12, v18

    if-eqz v12, :cond_b

    if-eqz v13, :cond_b

    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(I)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_b

    .line 23
    :cond_a
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object v6

    int-to-long v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v15, v7}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    :goto_a
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    move v9, v4

    move v6, v5

    move-object v4, v8

    move-object v7, v10

    move v10, v11

    goto/16 :goto_6

    :cond_b
    :goto_b
    or-int v14, v14, v27

    .line 22
    invoke-virtual {v3, v2, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :cond_c
    move/from16 v31, v4

    move v7, v5

    goto :goto_9

    :pswitch_3
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move-wide/from16 v6, v21

    move/from16 v5, v30

    move/from16 v4, v31

    const/4 v12, 0x2

    const/16 v17, -0x1

    if-ne v9, v12, :cond_c

    or-int v14, v14, v27

    .line 24
    invoke-static {v8, v5, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzg([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    iget-object v9, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v3, v2, v6, v7, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_4
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move/from16 v5, v30

    move/from16 v4, v31

    const/4 v12, 0x2

    const/16 v17, -0x1

    if-ne v9, v12, :cond_d

    or-int v14, v14, v27

    move-object v6, v2

    .line 26
    invoke-direct {v1, v6, v4}, Lcom/google/android/gms/internal/measurement/zznp;->zzs(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v3

    .line 27
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v3

    move-object v9, v10

    move-object v10, v7

    move-object v7, v9

    move v9, v4

    move-object v4, v8

    move-object v8, v6

    move/from16 v6, p4

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    move-object v5, v2

    move-object v2, v4

    move-object v4, v7

    .line 29
    invoke-direct {v1, v8, v9, v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzt(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v5, p4

    move v6, v3

    move-object v3, v8

    move/from16 v8, v19

    :goto_c
    const v16, 0xfffff

    :goto_d
    move-object v4, v2

    move-object v2, v10

    move v10, v11

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_d
    move-object v7, v8

    move-object v8, v2

    move-object v2, v7

    move v7, v5

    move-object/from16 v21, v8

    move-object v8, v2

    move-object/from16 v2, v21

    move/from16 v31, v4

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v4, p6

    move-object v10, v2

    move-object v8, v3

    move/from16 v7, v30

    const/4 v3, 0x2

    const/16 v17, -0x1

    move-object/from16 v2, p2

    move-wide/from16 v33, v21

    move/from16 v22, v14

    move/from16 v21, v15

    move-wide/from16 v14, v33

    if-ne v9, v3, :cond_11

    and-int v3, v12, v25

    if-eqz v3, :cond_e

    or-int v3, v22, v27

    .line 32
    invoke-static {v2, v7, v4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzf([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    move v6, v5

    move v5, v3

    goto :goto_f

    .line 30
    :cond_e
    invoke-static {v2, v7, v4}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v7, v4, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v7, :cond_10

    or-int v5, v22, v27

    if-nez v7, :cond_f

    .line 283
    iput-object v6, v4, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    :goto_e
    move v6, v3

    goto :goto_f

    :cond_f
    new-instance v6, Ljava/lang/String;

    .line 31
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v3, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v4, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    add-int/2addr v3, v7

    goto :goto_e

    .line 32
    :goto_f
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 33
    invoke-virtual {v10, v8, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v4

    move v14, v5

    move-object v3, v8

    move/from16 v8, v19

    move/from16 v15, v21

    move/from16 v9, v31

    const v16, 0xfffff

    move/from16 v5, p4

    goto :goto_d

    .line 30
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 282
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 283
    throw v0

    :cond_11
    move-object v3, v8

    move-object v8, v2

    move-object v2, v3

    move-object v15, v4

    :goto_10
    move-object v3, v10

    goto/16 :goto_18

    :pswitch_6
    move-object/from16 v4, p6

    move-object v10, v2

    move-object v8, v3

    move/from16 v7, v30

    const/16 v17, -0x1

    move-object/from16 v2, p2

    move-wide/from16 v33, v21

    move/from16 v22, v14

    move/from16 v21, v15

    move-wide/from16 v14, v33

    if-nez v9, :cond_11

    or-int v3, v22, v27

    .line 34
    invoke-static {v2, v7, v4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v6

    iget-wide v12, v4, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    cmp-long v5, v12, v23

    if-eqz v5, :cond_12

    move/from16 v5, v29

    goto :goto_11

    :cond_12
    const/4 v5, 0x0

    .line 35
    :goto_11
    invoke-static {v8, v14, v15, v5}, Lcom/google/android/gms/internal/measurement/zzop;->zzi(Ljava/lang/Object;JZ)V

    :goto_12
    move/from16 v5, p4

    move v14, v3

    move-object v7, v4

    move-object v3, v8

    move/from16 v8, v19

    move/from16 v15, v21

    move/from16 v9, v31

    goto/16 :goto_c

    :pswitch_7
    move-object/from16 v4, p6

    move-object v10, v2

    move-object v8, v3

    move/from16 v7, v30

    const/4 v3, 0x5

    const/16 v17, -0x1

    move-object/from16 v2, p2

    move-wide/from16 v33, v21

    move/from16 v22, v14

    move/from16 v21, v15

    move-wide/from16 v14, v33

    if-ne v9, v3, :cond_11

    add-int/lit8 v6, v7, 0x4

    or-int v3, v22, v27

    .line 36
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v5

    invoke-virtual {v10, v8, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_12

    :pswitch_8
    move-object/from16 v4, p6

    move-object v10, v2

    move-object v8, v3

    move/from16 v3, v29

    move/from16 v7, v30

    const/16 v17, -0x1

    move-object/from16 v2, p2

    move-wide/from16 v33, v21

    move/from16 v22, v14

    move/from16 v21, v15

    move-wide/from16 v14, v33

    if-ne v9, v3, :cond_13

    add-int/lit8 v9, v7, 0x8

    or-int v12, v22, v27

    .line 37
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v6

    move-wide/from16 v33, v14

    move-object v15, v4

    move-wide/from16 v4, v33

    move-object v3, v8

    move-object v8, v2

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v4, v8

    move v6, v9

    move v10, v11

    move v14, v12

    :goto_13
    move-object v7, v15

    move/from16 v8, v19

    move/from16 v15, v21

    :goto_14
    move/from16 v9, v31

    goto/16 :goto_8

    :cond_13
    move-object v15, v4

    move-object v3, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_10

    :pswitch_9
    move-object/from16 v8, p2

    move-wide/from16 v4, v21

    move/from16 v7, v30

    const/16 v17, -0x1

    move/from16 v22, v14

    move/from16 v21, v15

    move-object/from16 v15, p6

    if-nez v9, :cond_14

    or-int v14, v22, v27

    .line 38
    invoke-static {v8, v7, v15}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v6

    iget v7, v15, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 39
    invoke-virtual {v2, v3, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_15
    move/from16 v5, p4

    move-object v4, v8

    :goto_16
    move v10, v11

    goto :goto_13

    :cond_14
    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_18

    :pswitch_a
    move-object/from16 v8, p2

    move-wide/from16 v4, v21

    move/from16 v7, v30

    const/16 v17, -0x1

    move/from16 v22, v14

    move/from16 v21, v15

    move-object/from16 v15, p6

    if-nez v9, :cond_14

    or-int v14, v22, v27

    .line 40
    invoke-static {v8, v7, v15}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v9

    iget-wide v6, v15, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 41
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move/from16 v5, p4

    move-object v4, v8

    move v6, v9

    goto :goto_16

    :pswitch_b
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v8, p2

    move-wide/from16 v4, v21

    move/from16 v7, v30

    const/4 v6, 0x5

    const/16 v17, -0x1

    move/from16 v22, v14

    move/from16 v21, v15

    move-object/from16 v15, p6

    if-ne v9, v6, :cond_15

    add-int/lit8 v6, v7, 0x4

    or-int v14, v22, v27

    .line 42
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 43
    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/measurement/zzop;->zzk(Ljava/lang/Object;JF)V

    :goto_17
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_15

    :pswitch_c
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v8, p2

    move-wide/from16 v4, v21

    move/from16 v6, v29

    move/from16 v7, v30

    const/16 v17, -0x1

    move/from16 v22, v14

    move/from16 v21, v15

    move-object/from16 v15, p6

    if-ne v9, v6, :cond_15

    add-int/lit8 v6, v7, 0x8

    or-int v14, v22, v27

    .line 44
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 45
    invoke-static {v2, v4, v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzop;->zzm(Ljava/lang/Object;JD)V

    goto :goto_17

    :cond_15
    :goto_18
    move/from16 v0, v19

    move/from16 v19, v11

    move v11, v0

    move/from16 v1, p5

    move-object v14, v2

    move-object v0, v3

    move v4, v7

    move-object v3, v8

    move-object/from16 v27, v13

    move-object v10, v15

    move/from16 v15, v21

    :goto_19
    move/from16 v9, v31

    goto/16 :goto_52

    :cond_16
    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    move/from16 v30, v7

    move/from16 v11, v19

    const/16 v17, -0x1

    move/from16 v19, v10

    move v10, v8

    move-wide/from16 v7, v21

    move/from16 v22, v14

    move/from16 v21, v15

    move-object/from16 v15, p6

    const/16 v14, 0x1b

    if-ne v4, v14, :cond_1a

    const/4 v14, 0x2

    if-ne v9, v14, :cond_19

    .line 46
    invoke-virtual {v3, v2, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzmo;

    .line 47
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v5

    if-nez v5, :cond_18

    .line 48
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_17

    const/16 v5, 0xa

    goto :goto_1a

    :cond_17
    add-int/2addr v5, v5

    .line 49
    :goto_1a
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/measurement/zzmo;->zzg(I)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v4

    .line 50
    invoke-virtual {v3, v2, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v7, v4

    .line 51
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    move-object/from16 v14, p1

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object v8, v15

    move/from16 v5, v30

    move-object v15, v3

    move/from16 v3, v21

    .line 52
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzkx;->zzn(Lcom/google/android/gms/internal/measurement/zznx;I[BIILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v6, v2

    move v9, v10

    move v8, v11

    move-object v2, v15

    move/from16 v10, v19

    const/4 v11, 0x0

    const v16, 0xfffff

    move v15, v3

    move-object v3, v14

    move/from16 v14, v22

    goto/16 :goto_1

    :cond_19
    move-object v15, v3

    move/from16 v4, v30

    move/from16 v30, v11

    move-object v11, v13

    move v13, v4

    move-object/from16 v4, p6

    move-object v14, v2

    move-object v9, v15

    move/from16 v15, v21

    move-object/from16 v2, p2

    :goto_1b
    move/from16 v5, p4

    goto/16 :goto_45

    :cond_1a
    move-object v14, v2

    move-object v15, v3

    move/from16 v3, v21

    const/16 v2, 0x31

    const-string v3, "Protocol message had invalid UTF-8."

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v4, v2, :cond_5f

    move-object/from16 v27, v13

    int-to-long v12, v12

    .line 53
    invoke-virtual {v15, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmo;

    .line 54
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v25

    if-nez v25, :cond_1b

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v25

    move-wide/from16 v31, v12

    add-int v12, v25, v25

    .line 56
    invoke-interface {v2, v12}, Lcom/google/android/gms/internal/measurement/zzmo;->zzg(I)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v2

    .line 57
    invoke-virtual {v15, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1c
    move-object v8, v2

    goto :goto_1d

    :cond_1b
    move-wide/from16 v31, v12

    goto :goto_1c

    :goto_1d
    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x3

    if-ne v9, v4, :cond_1d

    and-int/lit8 v0, v21, -0x8

    or-int/lit8 v6, v0, 0x4

    .line 58
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v12, v21

    move/from16 v4, v30

    .line 59
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzi(Lcom/google/android/gms/internal/measurement/zznx;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    move v13, v4

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 60
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e
    if-ge v0, v5, :cond_1c

    .line 61
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v4

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v12, v9, :cond_1c

    .line 62
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzi(Lcom/google/android/gms/internal/measurement/zznx;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 63
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_1c
    move v6, v0

    move-object v2, v3

    move/from16 v30, v11

    move-object/from16 v21, v15

    move-object v11, v7

    move v15, v12

    goto/16 :goto_40

    :cond_1d
    move/from16 v2, v21

    move-object/from16 v21, v15

    move v15, v2

    move-object/from16 v2, p2

    move/from16 v5, p4

    move/from16 v13, v30

    move/from16 v30, v11

    move-object/from16 v11, p6

    goto/16 :goto_3f

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v12, v21

    move/from16 v13, v30

    const/4 v2, 0x2

    if-ne v9, v2, :cond_20

    .line 64
    sget v2, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 65
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzna;

    .line 66
    invoke-static {v3, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int/2addr v4, v2

    :goto_1f
    if-ge v2, v4, :cond_1e

    .line 67
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v2

    move-object/from16 v21, v15

    iget-wide v14, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 68
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/measurement/zzlj;->zzc(J)J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    move-object/from16 v14, p1

    move-object/from16 v15, v21

    goto :goto_1f

    :cond_1e
    move-object/from16 v21, v15

    if-ne v2, v4, :cond_1f

    :goto_20
    move-object/from16 v14, p1

    move v6, v2

    :goto_21
    move-object v2, v3

    move/from16 v30, v11

    move v15, v12

    :goto_22
    move-object v11, v7

    goto/16 :goto_40

    .line 327
    :cond_1f
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 284
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 285
    throw v2

    :cond_20
    move-object/from16 v21, v15

    if-nez v9, :cond_22

    .line 69
    sget v0, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 70
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzna;

    .line 71
    invoke-static {v3, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget-wide v14, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 72
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/measurement/zzlj;->zzc(J)J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    :goto_23
    if-ge v0, v5, :cond_21

    .line 73
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v12, v4, :cond_21

    .line 74
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget-wide v14, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/measurement/zzlj;->zzc(J)J

    move-result-wide v14

    .line 75
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    goto :goto_23

    :cond_21
    move-object/from16 v14, p1

    move v6, v0

    goto :goto_21

    :cond_22
    :goto_24
    move-object/from16 v14, p1

    move-object v2, v3

    move/from16 v30, v11

    move v15, v12

    :goto_25
    move-object v11, v7

    goto/16 :goto_3f

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v12, v21

    move/from16 v13, v30

    const/4 v14, 0x2

    move-object/from16 v21, v15

    if-ne v9, v14, :cond_25

    .line 76
    sget v2, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 77
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzmg;

    .line 78
    invoke-static {v3, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int/2addr v4, v2

    :goto_26
    if-ge v2, v4, :cond_23

    .line 79
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v2

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 80
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb(I)I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    goto :goto_26

    :cond_23
    if-ne v2, v4, :cond_24

    goto :goto_20

    .line 285
    :cond_24
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 286
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 287
    throw v2

    :cond_25
    if-nez v9, :cond_22

    .line 81
    sget v0, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 82
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzmg;

    .line 83
    invoke-static {v3, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 84
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    :goto_27
    if-ge v0, v5, :cond_21

    .line 85
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v12, v4, :cond_21

    .line 86
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb(I)I

    move-result v2

    .line 87
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    goto :goto_27

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v12, v21

    move/from16 v13, v30

    const/4 v14, 0x2

    move-object/from16 v21, v15

    if-ne v9, v14, :cond_26

    .line 88
    invoke-static {v3, v13, v8, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzm([BILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    move v2, v12

    move v4, v13

    :goto_28
    move v6, v5

    goto :goto_29

    :cond_26
    if-nez v9, :cond_2e

    move-object v6, v8

    move v2, v12

    move v4, v13

    .line 89
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzl(I[BIILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    goto :goto_28

    .line 90
    :goto_29
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzr(I)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v5

    iget-object v9, v1, Lcom/google/android/gms/internal/measurement/zznp;->zzl:Lcom/google/android/gms/internal/measurement/zzoi;

    .line 91
    sget v12, Lcom/google/android/gms/internal/measurement/zznz;->$r8$clinit:I

    if-eqz v5, :cond_2c

    .line 92
    invoke-static {v8}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 93
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v15, v18

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2a
    if-ge v13, v12, :cond_29

    .line 94
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v0

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(I)Z

    move-result v23

    if-eqz v23, :cond_28

    if-eq v13, v14, :cond_27

    .line 95
    invoke-interface {v8, v14, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_27
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    goto :goto_2b

    :cond_28
    move-object/from16 v0, p1

    .line 96
    invoke-static {v0, v11, v1, v15, v9}, Lcom/google/android/gms/internal/measurement/zznz;->zzE(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzoi;)Ljava/lang/Object;

    move-result-object v15

    :goto_2b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move/from16 v0, v24

    goto :goto_2a

    :cond_29
    move/from16 v24, v0

    move-object/from16 v0, p1

    if-eq v14, v12, :cond_2d

    .line 97
    invoke-interface {v8, v14, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2d

    :cond_2a
    move/from16 v24, v0

    move-object/from16 v0, p1

    .line 98
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v8, v18

    :cond_2b
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v5, v12}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(I)Z

    move-result v13

    if-nez v13, :cond_2b

    .line 100
    invoke-static {v0, v11, v12, v8, v9}, Lcom/google/android/gms/internal/measurement/zznz;->zzE(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzoi;)Ljava/lang/Object;

    move-result-object v8

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2c

    :cond_2c
    move/from16 v24, v0

    move-object/from16 v0, p1

    :cond_2d
    :goto_2d
    move-object/from16 v1, p0

    move-object v14, v0

    move v15, v2

    move-object v2, v3

    move v13, v4

    move v5, v6

    move/from16 v30, v11

    move/from16 v6, v24

    goto/16 :goto_22

    :cond_2e
    move-object/from16 v1, p0

    goto/16 :goto_24

    :pswitch_10
    move-object/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v2, v21

    move/from16 v4, v30

    const/4 v12, 0x2

    move-object/from16 v21, v15

    if-ne v9, v12, :cond_36

    .line 102
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v1

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v9, :cond_35

    .line 103
    array-length v12, v3

    sub-int/2addr v12, v1

    if-gt v9, v12, :cond_34

    if-nez v9, :cond_2f

    .line 104
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 105
    :cond_2f
    invoke-static {v3, v1, v9}, Lcom/google/android/gms/internal/measurement/zzlh;->zzh([BII)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/2addr v1, v9

    :goto_2f
    if-ge v1, v6, :cond_33

    .line 106
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v9

    iget v12, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v2, v12, :cond_33

    .line 107
    invoke-static {v3, v9, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v1

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v9, :cond_32

    .line 108
    array-length v12, v3

    sub-int/2addr v12, v1

    if-gt v9, v12, :cond_31

    if-nez v9, :cond_30

    .line 295
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    .line 109
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 110
    :cond_30
    invoke-static {v3, v1, v9}, Lcom/google/android/gms/internal/measurement/zzlh;->zzh([BII)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 108
    :cond_31
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 294
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 295
    throw v1

    .line 107
    :cond_32
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 292
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 293
    throw v0

    :cond_33
    move v15, v2

    move-object v2, v3

    move v13, v4

    move v5, v6

    move/from16 v30, v11

    move v6, v1

    move-object v11, v7

    move-object/from16 v1, p0

    goto/16 :goto_40

    .line 103
    :cond_34
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 290
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 291
    throw v1

    .line 102
    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 288
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 289
    throw v0

    :cond_36
    move-object/from16 v1, p0

    move v15, v2

    move-object v2, v3

    move v13, v4

    move v5, v6

    move/from16 v30, v11

    goto/16 :goto_25

    :pswitch_11
    move-object/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v2, v21

    move/from16 v4, v30

    const/4 v12, 0x2

    move-object/from16 v21, v15

    if-ne v9, v12, :cond_36

    move-object/from16 v1, p0

    move v3, v2

    .line 111
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    move-object v5, v8

    move-object v8, v7

    move-object v7, v5

    move v5, v4

    move-object/from16 v4, p2

    .line 112
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzkx;->zzn(Lcom/google/android/gms/internal/measurement/zznx;I[BIILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    move v15, v3

    move-object v2, v4

    move v13, v5

    move v5, v6

    move/from16 v30, v11

    move v6, v0

    move-object v11, v8

    goto/16 :goto_40

    :pswitch_12
    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move/from16 v2, v21

    move/from16 v13, v30

    const/4 v12, 0x2

    move-object/from16 v21, v15

    move-object v15, v8

    move/from16 v8, p4

    if-ne v9, v12, :cond_44

    const-wide/32 v25, 0x20000000

    and-long v25, v31, v25

    cmp-long v0, v25, v23

    if-nez v0, :cond_3c

    .line 113
    invoke-static {v4, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v3, :cond_3b

    if-nez v3, :cond_37

    .line 114
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 121
    :cond_37
    new-instance v9, Ljava/lang/String;

    .line 115
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v4, v0, v3, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 116
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    add-int/2addr v0, v3

    :goto_31
    if-ge v0, v8, :cond_3a

    .line 117
    invoke-static {v4, v0, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v2, v9, :cond_3a

    .line 118
    invoke-static {v4, v3, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v3, :cond_39

    if-nez v3, :cond_38

    .line 119
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_38
    new-instance v9, Ljava/lang/String;

    .line 120
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v4, v0, v3, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 121
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 118
    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 298
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 299
    throw v0

    :cond_3a
    move v6, v0

    move v15, v2

    move-object v2, v4

    move v5, v8

    move/from16 v30, v11

    goto/16 :goto_22

    .line 113
    :cond_3b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 296
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 297
    throw v0

    .line 122
    :cond_3c
    invoke-static {v4, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v9, :cond_43

    if-nez v9, :cond_3d

    .line 123
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v30, v11

    goto :goto_33

    :cond_3d
    add-int v12, v0, v9

    .line 124
    invoke-static {v4, v0, v12}, Lcom/google/android/gms/internal/measurement/zzos;->zza([BII)Z

    move-result v23

    if-eqz v23, :cond_42

    move/from16 v23, v12

    .line 303
    new-instance v12, Ljava/lang/String;

    move/from16 v30, v11

    .line 125
    sget-object v11, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v12, v4, v0, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 126
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_32
    move/from16 v0, v23

    :goto_33
    if-ge v0, v8, :cond_41

    .line 127
    invoke-static {v4, v0, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v9

    iget v11, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v2, v11, :cond_41

    .line 128
    invoke-static {v4, v9, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v9, :cond_40

    if-nez v9, :cond_3e

    .line 129
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_3e
    add-int v11, v0, v9

    .line 130
    invoke-static {v4, v0, v11}, Lcom/google/android/gms/internal/measurement/zzos;->zza([BII)Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 307
    new-instance v12, Ljava/lang/String;

    move/from16 v23, v11

    .line 131
    sget-object v11, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v12, v4, v0, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 132
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 130
    :cond_3f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 306
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 307
    throw v0

    .line 128
    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 304
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 305
    throw v0

    :cond_41
    :goto_34
    move v6, v0

    move v15, v2

    :goto_35
    move-object v2, v4

    :goto_36
    move-object v11, v7

    move v5, v8

    goto/16 :goto_40

    .line 124
    :cond_42
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 302
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 303
    throw v0

    .line 122
    :cond_43
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 300
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 301
    throw v0

    :cond_44
    move/from16 v30, v11

    :cond_45
    :goto_37
    move v15, v2

    move-object v2, v4

    move-object v11, v7

    move v5, v8

    goto/16 :goto_3f

    :pswitch_13
    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move/from16 v2, v21

    move/from16 v13, v30

    const/4 v12, 0x2

    move/from16 v30, v11

    move-object/from16 v21, v15

    move-object v15, v8

    move/from16 v8, p4

    if-ne v9, v12, :cond_48

    .line 133
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 134
    invoke-static {v15}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 135
    invoke-static {v4, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v5, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int/2addr v5, v3

    if-lt v3, v5, :cond_47

    if-ne v3, v5, :cond_46

    move v15, v2

    move v6, v3

    goto :goto_35

    .line 287
    :cond_46
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 308
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 309
    throw v2

    .line 136
    :cond_47
    invoke-static {v4, v3, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 137
    throw v18

    :cond_48
    if-eqz v9, :cond_49

    goto :goto_37

    .line 138
    :cond_49
    sget v0, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 139
    invoke-static {v15}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 140
    invoke-static {v4, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    iget-wide v2, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 141
    throw v18

    :pswitch_14
    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move/from16 v2, v21

    move/from16 v13, v30

    const/4 v12, 0x2

    move/from16 v30, v11

    move-object/from16 v21, v15

    move-object v15, v8

    move/from16 v8, p4

    if-ne v9, v12, :cond_4d

    .line 145
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 146
    move-object v3, v15

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzmg;

    .line 147
    invoke-static {v4, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int v9, v5, v6

    .line 148
    array-length v11, v4

    if-gt v9, v11, :cond_4c

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmg;->size()I

    move-result v11

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v11, v6

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzmg;->zzi(I)V

    :goto_38
    if-ge v5, v9, :cond_4a

    .line 150
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    add-int/lit8 v5, v5, 0x4

    goto :goto_38

    :cond_4a
    if-ne v5, v9, :cond_4b

    :goto_39
    move v15, v2

    move-object v2, v4

    move v6, v5

    goto/16 :goto_36

    .line 309
    :cond_4b
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 312
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 313
    throw v2

    .line 148
    :cond_4c
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 310
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 311
    throw v2

    :cond_4d
    const/4 v3, 0x5

    if-ne v9, v3, :cond_45

    add-int/lit8 v0, v13, 0x4

    .line 151
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 152
    move-object v3, v15

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzmg;

    .line 153
    invoke-static {v4, v13}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    :goto_3a
    if-ge v0, v8, :cond_41

    .line 154
    invoke-static {v4, v0, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v2, v6, :cond_41

    .line 155
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_3a

    :pswitch_15
    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move/from16 v2, v21

    move/from16 v13, v30

    const/4 v12, 0x2

    move/from16 v30, v11

    move-object/from16 v21, v15

    move-object v15, v8

    move/from16 v8, p4

    if-ne v9, v12, :cond_51

    .line 156
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 157
    move-object v3, v15

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzna;

    .line 158
    invoke-static {v4, v13, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int v9, v5, v6

    .line 159
    array-length v11, v4

    if-gt v9, v11, :cond_50

    .line 160
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzna;->size()I

    move-result v11

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v11, v6

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzna;->zzh(I)V

    :goto_3b
    if-ge v5, v9, :cond_4e

    .line 161
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    add-int/lit8 v5, v5, 0x8

    goto :goto_3b

    :cond_4e
    if-ne v5, v9, :cond_4f

    goto :goto_39

    .line 313
    :cond_4f
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 316
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 317
    throw v2

    .line 159
    :cond_50
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 314
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 315
    throw v2

    :cond_51
    const/4 v3, 0x1

    if-ne v9, v3, :cond_45

    add-int/lit8 v0, v13, 0x8

    .line 162
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 163
    move-object v3, v15

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzna;

    .line 164
    invoke-static {v4, v13}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    :goto_3c
    if-ge v0, v8, :cond_41

    .line 165
    invoke-static {v4, v0, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v5

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v2, v6, :cond_41

    .line 166
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    add-int/lit8 v0, v5, 0x8

    goto :goto_3c

    :pswitch_16
    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move/from16 v2, v21

    move/from16 v13, v30

    const/4 v12, 0x2

    move/from16 v30, v11

    move-object/from16 v21, v15

    move-object v15, v8

    move/from16 v8, p4

    if-ne v9, v12, :cond_52

    .line 167
    invoke-static {v4, v13, v15, v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzm([BILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    goto/16 :goto_34

    :cond_52
    if-nez v9, :cond_45

    move-object v3, v4

    move v5, v8

    move v4, v13

    move-object v6, v15

    .line 168
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzl(I[BIILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    move v15, v2

    move-object v2, v3

    move-object v11, v7

    :cond_53
    move v6, v0

    goto/16 :goto_40

    :pswitch_17
    move/from16 v2, v21

    move-object/from16 v21, v15

    move v15, v2

    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object v6, v8

    move/from16 v13, v30

    const/4 v12, 0x2

    move/from16 v30, v11

    move-object/from16 v11, p6

    if-ne v9, v12, :cond_56

    .line 169
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 170
    move-object v8, v6

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzna;

    .line 171
    invoke-static {v2, v13, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int/2addr v4, v3

    :goto_3d
    if-ge v3, v4, :cond_54

    .line 172
    invoke-static {v2, v3, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget-wide v6, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 173
    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    goto :goto_3d

    :cond_54
    if-ne v3, v4, :cond_55

    move v6, v3

    goto/16 :goto_40

    .line 317
    :cond_55
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 318
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 319
    throw v2

    :cond_56
    if-nez v9, :cond_5c

    .line 174
    sget v0, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 175
    move-object v8, v6

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzna;

    .line 176
    invoke-static {v2, v13, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 177
    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    :goto_3e
    if-ge v0, v5, :cond_53

    .line 178
    invoke-static {v2, v0, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ne v15, v4, :cond_53

    .line 179
    invoke-static {v2, v3, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 180
    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzna;->zzf(J)V

    goto :goto_3e

    :pswitch_18
    move/from16 v2, v21

    move-object/from16 v21, v15

    move v15, v2

    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object v6, v8

    move/from16 v13, v30

    const/4 v12, 0x2

    move/from16 v30, v11

    move-object/from16 v11, p6

    if-ne v9, v12, :cond_58

    .line 181
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 182
    invoke-static {v6}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 183
    invoke-static {v2, v13, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int/2addr v3, v4

    .line 184
    array-length v2, v2

    if-le v3, v2, :cond_57

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 320
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 321
    throw v2

    .line 185
    :cond_57
    throw v18

    :cond_58
    const/4 v3, 0x5

    if-eq v9, v3, :cond_59

    goto :goto_3f

    .line 188
    :cond_59
    sget v0, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 189
    invoke-static {v6}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 190
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 191
    throw v18

    :pswitch_19
    move/from16 v2, v21

    move-object/from16 v21, v15

    move v15, v2

    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object v6, v8

    move/from16 v13, v30

    const/4 v12, 0x2

    move/from16 v30, v11

    move-object/from16 v11, p6

    if-ne v9, v12, :cond_5b

    .line 195
    sget v3, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 196
    invoke-static {v6}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 197
    invoke-static {v2, v13, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    add-int/2addr v3, v4

    .line 198
    array-length v2, v2

    if-le v3, v2, :cond_5a

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 324
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 325
    throw v2

    .line 199
    :cond_5a
    throw v18

    :cond_5b
    const/4 v3, 0x1

    if-eq v9, v3, :cond_5e

    :cond_5c
    :goto_3f
    move v6, v13

    :goto_40
    if-eq v6, v13, :cond_5d

    move-object v4, v2

    move v9, v10

    move-object v7, v11

    move-object v3, v14

    move/from16 v10, v19

    move-object/from16 v2, v21

    move/from16 v14, v22

    move/from16 v8, v30

    goto/16 :goto_8

    :cond_5d
    move/from16 v1, p5

    move-object v3, v2

    move v4, v6

    move v9, v10

    move-object v10, v11

    move-object/from16 v0, v21

    :goto_41
    move/from16 v11, v30

    goto/16 :goto_52

    .line 202
    :cond_5e
    sget v0, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 203
    invoke-static {v6}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 204
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 205
    throw v18

    :cond_5f
    move/from16 v2, v21

    move-object/from16 v21, v15

    move v15, v2

    move-object/from16 v2, p2

    move-object/from16 v27, v13

    move/from16 v13, v30

    move/from16 v30, v11

    move-object/from16 v11, p6

    const/16 v5, 0x32

    if-ne v4, v5, :cond_6b

    const/4 v5, 0x2

    if-ne v9, v5, :cond_6a

    .line 209
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzq(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v9, v21

    .line 210
    invoke-virtual {v9, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 211
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzng;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzng;->zze()Z

    move-result v5

    if-nez v5, :cond_60

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzng;->zza()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v5

    .line 212
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzng;->zzc()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v5

    .line 213
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zznh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v9, v14, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    .line 215
    :cond_60
    check-cast v3, Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zznf;->zze()Lcom/google/android/gms/internal/measurement/zzne;

    move-result-object v8

    .line 216
    move-object v12, v4

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzng;

    .line 217
    invoke-static {v2, v13, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-ltz v4, :cond_69

    sub-int v5, p4, v3

    if-gt v4, v5, :cond_69

    add-int v0, v3, v4

    .line 329
    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Ljava/lang/Object;

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zzne;->zzd:Ljava/lang/Object;

    move-object v6, v5

    :goto_42
    if-ge v3, v0, :cond_66

    add-int/lit8 v7, v3, 0x1

    .line 218
    aget-byte v3, v2, v3

    if-gez v3, :cond_61

    .line 219
    invoke-static {v3, v2, v7, v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb(I[BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v7

    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    :cond_61
    ushr-int/lit8 v2, v3, 0x3

    move-object/from16 v21, v4

    and-int/lit8 v4, v3, 0x7

    move-object/from16 v23, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_64

    const/4 v5, 0x2

    if-eq v2, v5, :cond_62

    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object v4, v11

    move-object/from16 v11, v21

    goto/16 :goto_44

    .line 224
    :cond_62
    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zzne;->zzc:Lcom/google/android/gms/internal/measurement/zzot;

    .line 220
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzot;->zzb()I

    move-result v2

    if-ne v4, v2, :cond_63

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v3, v7

    move-object v7, v11

    move-object/from16 v11, v21

    .line 221
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zznp;->zzO([BIILcom/google/android/gms/internal/measurement/zzot;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    move-object v4, v11

    move-object/from16 v5, v23

    move-object v11, v7

    goto :goto_42

    :cond_63
    move v2, v7

    move-object v7, v11

    move-object/from16 v11, v21

    move/from16 v5, p4

    move-object v4, v7

    move v7, v2

    move-object/from16 v2, p2

    goto :goto_44

    :cond_64
    move v2, v7

    move-object v7, v11

    move-object/from16 v11, v21

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzot;

    move/from16 v21, v2

    .line 222
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzot;->zzb()I

    move-result v2

    if-ne v4, v2, :cond_65

    move-object v2, v6

    const/4 v6, 0x0

    move/from16 v4, p4

    move-object v11, v2

    move/from16 v3, v21

    move-object/from16 v2, p2

    .line 223
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zznp;->zzO([BIILcom/google/android/gms/internal/measurement/zzot;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    move v5, v4

    move-object v4, v7

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    move-object v5, v11

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    :goto_43
    move-object/from16 v5, v23

    goto :goto_42

    :cond_65
    move-object/from16 v2, p2

    move/from16 v5, p4

    move-object v4, v7

    move/from16 v7, v21

    .line 224
    :goto_44
    invoke-static {v3, v2, v7, v5, v4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzp(I[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    move-object v5, v11

    move-object v11, v4

    move-object v4, v5

    goto :goto_43

    :cond_66
    move-object v5, v11

    move-object v11, v4

    move-object v4, v5

    move/from16 v5, p4

    if-ne v3, v0, :cond_68

    .line 225
    invoke-interface {v12, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v13, :cond_67

    move v6, v0

    move-object v7, v4

    move-object v3, v14

    move/from16 v14, v22

    move/from16 v8, v30

    const/4 v11, 0x0

    const v16, 0xfffff

    move-object v4, v2

    move-object v2, v9

    move v9, v10

    move/from16 v10, v19

    goto/16 :goto_1

    :cond_67
    move-object v1, v4

    move v4, v0

    move-object v0, v9

    move v9, v10

    move-object v10, v1

    move/from16 v1, p5

    move-object v3, v2

    goto/16 :goto_41

    .line 223
    :cond_68
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    move-object/from16 v11, v27

    .line 330
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 331
    throw v0

    .line 217
    :cond_69
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 328
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 329
    throw v2

    :cond_6a
    move-object v4, v11

    move-object/from16 v9, v21

    move-object/from16 v11, v27

    goto/16 :goto_1b

    :goto_45
    move/from16 v1, p5

    move-object v3, v2

    move-object v0, v9

    move v9, v10

    move-object/from16 v27, v11

    move/from16 v11, v30

    move-object v10, v4

    move v4, v13

    goto/16 :goto_52

    :cond_6b
    move/from16 v5, p4

    move-object/from16 v0, v21

    move-object/from16 v11, v27

    add-int/lit8 v21, v10, 0x2

    .line 226
    aget v21, v28, v21

    const v16, 0xfffff

    and-int v2, v21, v16

    move/from16 v21, v4

    int-to-long v4, v2

    packed-switch v21, :pswitch_data_2

    :cond_6c
    move-object/from16 v3, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    :goto_46
    move-object/from16 v10, p6

    goto/16 :goto_50

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v9, v4, :cond_6c

    and-int/lit8 v2, v15, -0x8

    or-int/lit8 v7, v2, 0x4

    move/from16 v12, v30

    .line 227
    invoke-direct {v1, v14, v12, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzu(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 228
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p6

    move v5, v13

    .line 229
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzkx;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    move-object v6, v8

    .line 230
    invoke-direct {v1, v14, v12, v10, v4}, Lcom/google/android/gms/internal/measurement/zznp;->zzv(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v11, v12

    move v12, v13

    move-object v10, v6

    :goto_47
    move v6, v3

    move-object v3, v2

    goto/16 :goto_51

    :pswitch_1b
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v12, v30

    if-nez v9, :cond_6d

    .line 231
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    move/from16 v31, v10

    iget-wide v9, v6, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 232
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzlj;->zzc(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v14, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 233
    invoke-virtual {v0, v14, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_48
    move-object v10, v6

    move-object/from16 v27, v11

    move v11, v12

    move v12, v13

    goto :goto_47

    :cond_6d
    move-object v3, v2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v11, v12

    move v12, v13

    move-object v10, v6

    goto/16 :goto_50

    :pswitch_1c
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v31, v10

    move/from16 v12, v30

    if-nez v9, :cond_6e

    .line 234
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v9, v6, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 235
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v14, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 236
    invoke-virtual {v0, v14, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :cond_6e
    move-object v3, v2

    move-object v10, v6

    move-object/from16 v27, v11

    move v11, v12

    move v12, v13

    goto/16 :goto_50

    :pswitch_1d
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v31, v10

    move/from16 v12, v30

    if-nez v9, :cond_6e

    .line 237
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget v9, v6, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    move/from16 v21, v3

    move/from16 v10, v31

    .line 238
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzr(I)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v3

    if-eqz v3, :cond_70

    invoke-interface {v3, v9}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    goto :goto_49

    .line 241
    :cond_6f
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object v3

    int-to-long v4, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    goto :goto_4a

    .line 239
    :cond_70
    :goto_49
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v14, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 240
    invoke-virtual {v0, v14, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4a
    move-object v3, v2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v11, v12

    move v12, v13

    move-object v10, v6

    move/from16 v6, v21

    goto/16 :goto_51

    :pswitch_1e
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v12, v30

    const/4 v3, 0x2

    if-ne v9, v3, :cond_6d

    .line 242
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/measurement/zzkx;->zzg([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v9

    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 243
    invoke-virtual {v0, v14, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 244
    invoke-virtual {v0, v14, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v3, v2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v11, v12

    move v12, v13

    move-object v10, v6

    :goto_4b
    move v6, v9

    goto/16 :goto_51

    :pswitch_1f
    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v12, v30

    const/4 v3, 0x2

    if-ne v9, v3, :cond_71

    .line 245
    invoke-direct {v1, v14, v12, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzu(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    move/from16 v20, v3

    .line 246
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v3

    move-object/from16 v4, p2

    move-object v7, v6

    move v5, v13

    move/from16 v13, v20

    move/from16 v6, p4

    .line 247
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    move-object/from16 v33, v4

    move-object v4, v2

    move-object/from16 v2, v33

    .line 248
    invoke-direct {v1, v14, v12, v10, v4}, Lcom/google/android/gms/internal/measurement/zznp;->zzv(Ljava/lang/Object;IILjava/lang/Object;)V

    move v6, v3

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v11, v12

    move-object/from16 v10, p6

    move-object v3, v2

    move v12, v5

    goto/16 :goto_51

    :cond_71
    move-object v3, v2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v11, v12

    move v12, v13

    goto/16 :goto_46

    :pswitch_20
    move-object/from16 v2, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move/from16 v21, v12

    move v12, v13

    move/from16 v11, v30

    const/4 v13, 0x2

    move-object/from16 v10, p6

    if-ne v9, v13, :cond_75

    .line 249
    invoke-static {v2, v12, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v9

    iget v13, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    if-nez v13, :cond_72

    .line 250
    invoke-virtual {v0, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4d

    :cond_72
    and-int v6, v21, v25

    move/from16 v21, v6

    add-int v6, v9, v13

    if-eqz v21, :cond_74

    .line 251
    invoke-static {v2, v9, v6}, Lcom/google/android/gms/internal/measurement/zzos;->zza([BII)Z

    move-result v21

    if-eqz v21, :cond_73

    goto :goto_4c

    .line 4
    :cond_73
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 332
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 333
    throw v0

    .line 251
    :cond_74
    :goto_4c
    new-instance v3, Ljava/lang/String;

    move/from16 v21, v6

    .line 252
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v9, v13, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 253
    invoke-virtual {v0, v14, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v9, v21

    .line 254
    :goto_4d
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v3, v2

    goto/16 :goto_4b

    :cond_75
    move-object v3, v2

    goto/16 :goto_50

    :pswitch_21
    move-object/from16 v2, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    move-object/from16 v10, p6

    if-nez v9, :cond_77

    .line 255
    invoke-static {v2, v12, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v3

    iget-wide v1, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    cmp-long v1, v1, v23

    if-eqz v1, :cond_76

    const/16 v29, 0x1

    goto :goto_4e

    :cond_76
    const/16 v29, 0x0

    .line 256
    :goto_4e
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 257
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v6, v3

    move-object/from16 v3, p2

    goto/16 :goto_51

    :cond_77
    move-object/from16 v3, p2

    goto/16 :goto_50

    :pswitch_22
    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    const/4 v3, 0x5

    move-object/from16 v10, p6

    if-ne v9, v3, :cond_77

    add-int/lit8 v1, v12, 0x4

    move-object/from16 v3, p2

    .line 258
    invoke-static {v3, v12}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 259
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4f
    move v6, v1

    goto/16 :goto_51

    :pswitch_23
    move-object/from16 v3, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    const/4 v6, 0x1

    move-object/from16 v10, p6

    if-ne v9, v6, :cond_78

    add-int/lit8 v1, v12, 0x8

    .line 260
    invoke-static {v3, v12}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 261
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :pswitch_24
    move-object/from16 v3, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    move-object/from16 v10, p6

    if-nez v9, :cond_78

    .line 262
    invoke-static {v3, v12, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :pswitch_25
    move-object/from16 v3, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    move-object/from16 v10, p6

    if-nez v9, :cond_78

    .line 265
    invoke-static {v3, v12, v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v1

    move v6, v1

    iget-wide v1, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 266
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 267
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_51

    :pswitch_26
    move-object/from16 v3, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    const/4 v6, 0x5

    move-object/from16 v10, p6

    if-ne v9, v6, :cond_78

    add-int/lit8 v1, v12, 0x4

    .line 268
    invoke-static {v3, v12}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 269
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 270
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :pswitch_27
    move-object/from16 v3, p2

    move/from16 v31, v10

    move-object/from16 v27, v11

    move v12, v13

    move/from16 v11, v30

    const/4 v6, 0x1

    move-object/from16 v10, p6

    if-ne v9, v6, :cond_78

    add-int/lit8 v1, v12, 0x8

    .line 271
    invoke-static {v3, v12}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v23

    .line 272
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 273
    invoke-virtual {v0, v14, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :cond_78
    :goto_50
    move v6, v12

    :goto_51
    if-eq v6, v12, :cond_79

    move-object/from16 v1, p0

    move/from16 v5, p4

    move-object v2, v0

    move-object v4, v3

    move-object v7, v10

    move v8, v11

    move-object v3, v14

    move/from16 v10, v19

    move/from16 v14, v22

    goto/16 :goto_14

    :cond_79
    move/from16 v1, p5

    move v4, v6

    goto/16 :goto_19

    :goto_52
    if-ne v15, v1, :cond_7a

    if-eqz v1, :cond_7a

    move-object/from16 v8, p0

    move/from16 v5, p4

    move-object v2, v0

    move v6, v4

    move/from16 v10, v19

    :goto_53
    move/from16 v0, v22

    const v7, 0xfffff

    goto/16 :goto_56

    :cond_7a
    move-object/from16 v8, p0

    .line 364
    iget-boolean v2, v8, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

    if-eqz v2, :cond_7b

    iget-object v2, v10, Lcom/google/android/gms/internal/measurement/zzkw;->zzd:Lcom/google/android/gms/internal/measurement/zzlr;

    .line 274
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzlr;->zza:Lcom/google/android/gms/internal/measurement/zzlr;

    .line 275
    sget v5, Lcom/google/android/gms/internal/measurement/zznu;->$r8$clinit:I

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzlr;->zza:Lcom/google/android/gms/internal/measurement/zzlr;

    if-eq v2, v5, :cond_7b

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zznp;->zzg:Lcom/google/android/gms/internal/measurement/zznm;

    .line 278
    sget v6, Lcom/google/android/gms/internal/measurement/zzkx;->$r8$clinit:I

    .line 279
    invoke-virtual {v2, v5, v11}, Lcom/google/android/gms/internal/measurement/zzlr;->zzb(Lcom/google/android/gms/internal/measurement/zznm;I)Lcom/google/android/gms/internal/measurement/zzme;

    .line 280
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object v6

    move/from16 v5, p4

    move-object v7, v10

    move v2, v15

    .line 281
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzo(I[BIILcom/google/android/gms/internal/measurement/zzoj;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v4

    :goto_54
    move v6, v4

    goto :goto_55

    :cond_7b
    move v2, v15

    .line 276
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zznp;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object v6

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 277
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzo(I[BIILcom/google/android/gms/internal/measurement/zzoj;Lcom/google/android/gms/internal/measurement/zzkw;)I

    move-result v4

    goto :goto_54

    :goto_55
    move-object/from16 v4, p2

    move-object/from16 v7, p6

    move v15, v2

    move-object v1, v8

    move v8, v11

    move-object v3, v14

    move/from16 v10, v19

    move/from16 v14, v22

    const/4 v11, 0x0

    const v16, 0xfffff

    move-object v2, v0

    goto/16 :goto_1

    :cond_7c
    move-object v8, v1

    move/from16 v19, v10

    move-object/from16 v27, v13

    move/from16 v22, v14

    move/from16 v1, p5

    move-object v14, v3

    goto :goto_53

    :goto_56
    if-eq v10, v7, :cond_7d

    int-to-long v3, v10

    .line 334
    invoke-virtual {v2, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7d
    iget v0, v8, Lcom/google/android/gms/internal/measurement/zznp;->zzj:I

    move-object/from16 v2, v18

    :goto_57
    iget v3, v8, Lcom/google/android/gms/internal/measurement/zznp;->zzk:I

    if-ge v0, v3, :cond_81

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zznp;->zzi:[I

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zznp;->zzl:Lcom/google/android/gms/internal/measurement/zzoi;

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    .line 335
    aget v3, v3, v0

    .line 336
    aget v7, v7, v3

    .line 337
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v9

    const v16, 0xfffff

    and-int v9, v9, v16

    int-to-long v9, v9

    .line 338
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_80

    .line 339
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/measurement/zznp;->zzr(I)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v10

    if-eqz v10, :cond_80

    .line 340
    check-cast v9, Lcom/google/android/gms/internal/measurement/zzng;

    .line 341
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/measurement/zznp;->zzq(I)Ljava/lang/Object;

    move-result-object v3

    .line 342
    check-cast v3, Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zznf;->zze()Lcom/google/android/gms/internal/measurement/zzne;

    move-result-object v3

    .line 343
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_58
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_80

    .line 344
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v10, v12}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(I)Z

    move-result v12

    if-nez v12, :cond_7f

    if-nez v2, :cond_7e

    .line 346
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/zzoi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    :cond_7e
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zznf;->zzc(Lcom/google/android/gms/internal/measurement/zzne;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 348
    sget-object v13, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    .line 349
    new-array v13, v12, [B

    .line 350
    sget v17, Lcom/google/android/gms/internal/measurement/zzlm;->$r8$clinit:I

    move/from16 v17, v0

    .line 351
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlk;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-direct {v0, v13, v4, v12}, Lcom/google/android/gms/internal/measurement/zzlk;-><init>([BII)V

    .line 352
    :try_start_0
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v0, v3, v12, v11}, Lcom/google/android/gms/internal/measurement/zznf;->zzb(Lcom/google/android/gms/internal/measurement/zzlm;Lcom/google/android/gms/internal/measurement/zzne;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Lcom/google/android/gms/internal/measurement/zzlm;[B)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    const/4 v11, 0x3

    shl-int/lit8 v12, v7, 0x3

    .line 354
    move-object v13, v2

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzoj;

    const/16 v20, 0x2

    or-int/lit8 v12, v12, 0x2

    .line 355
    invoke-virtual {v13, v12, v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    .line 356
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    move/from16 v0, v17

    move-object/from16 v4, v18

    goto :goto_58

    :catch_0
    move-exception v0

    .line 333
    new-instance v1, Ljava/lang/RuntimeException;

    .line 358
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7f
    const/16 v20, 0x2

    goto :goto_58

    :cond_80
    move/from16 v17, v0

    const/4 v4, 0x0

    const/4 v11, 0x3

    const/16 v20, 0x2

    .line 357
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzoj;

    add-int/lit8 v0, v17, 0x1

    goto/16 :goto_57

    :cond_81
    if-eqz v2, :cond_82

    .line 360
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    :cond_82
    if-nez v1, :cond_84

    if-ne v6, v5, :cond_83

    goto :goto_59

    :cond_83
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    move-object/from16 v11, v27

    .line 361
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 362
    throw v0

    :cond_84
    move-object/from16 v11, v27

    if-gt v6, v5, :cond_85

    if-ne v15, v1, :cond_85

    :goto_59
    return v6

    :cond_85
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 363
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 364
    throw v0

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

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzkw;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zznp;->zzh(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I

    return-void
.end method

.method public final zzj(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznp;->zzA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzmf;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcm(I)V

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcg()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

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
    sget-object v2, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    .line 11
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzng;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzng;->zzd()V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmo;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzmo;->zzb()V

    goto :goto_1

    .line 8
    :cond_2
    aget v2, v0, v1

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zznx;->zzj(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzJ(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zznx;->zzj(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzl:Lcom/google/android/gms/internal/measurement/zzoi;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzoi;->zzb(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzm:Lcom/google/android/gms/internal/measurement/zzls;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzls;->zza(Ljava/lang/Object;)V

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
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzj:I

    const/4 v9, 0x0

    const/4 v4, 0x1

    if-ge v8, v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzi:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzc:[I

    aget v3, v3, v8

    .line 2
    aget v10, v5, v3

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zznp;->zzx(I)I

    move-result v11

    add-int/lit8 v12, v3, 0x2

    .line 4
    aget v5, v5, v12

    and-int v12, v5, v7

    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v4, v5

    if-eq v12, v0, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v13, v12

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznp;->zzb:Lsun/misc/Unsafe;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    return v6

    :cond_3
    move v2, v3

    move v3, v0

    :goto_2
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zznp;->zzz(I)I

    move-result v12

    const/16 v13, 0x9

    if-eq v12, v13, :cond_a

    const/16 v13, 0x11

    if-eq v12, v13, :cond_a

    const/16 v5, 0x1b

    if-eq v12, v5, :cond_8

    const/16 v5, 0x3c

    if-eq v12, v5, :cond_7

    const/16 v5, 0x44

    if-eq v12, v5, :cond_7

    const/16 v5, 0x31

    if-eq v12, v5, :cond_8

    const/16 v5, 0x32

    if-eq v12, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v5, v11, v7

    int-to-long v10, v5

    .line 13
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 14
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzng;

    .line 15
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 16
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzq(I)Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zznf;->zze()Lcom/google/android/gms/internal/measurement/zzne;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzne;->zzc:Lcom/google/android/gms/internal/measurement/zzot;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzot;->zza()Lcom/google/android/gms/internal/measurement/zzou;

    move-result-object v2

    sget-object v10, Lcom/google/android/gms/internal/measurement/zzou;->zzi:Lcom/google/android/gms/internal/measurement/zzou;

    if-ne v2, v10, :cond_b

    .line 19
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v9, :cond_6

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v9

    .line 21
    :cond_6
    invoke-interface {v9, v5}, Lcom/google/android/gms/internal/measurement/zznx;->zzk(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    return v6

    .line 22
    :cond_7
    invoke-direct {p0, v1, v10, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzL(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 23
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzw(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zznx;)Z

    move-result v2

    if-nez v2, :cond_b

    return v6

    :cond_8
    and-int v5, v11, v7

    int-to-long v9, v5

    .line 7
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzop;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    move v9, v6

    .line 10
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 11
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 12
    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/measurement/zznx;->zzk(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    return v6

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    move-object v0, p0

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznp;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 25
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzp(I)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/google/android/gms/internal/measurement/zznp;->zzw(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zznx;)Z

    move-result v2

    if-nez v2, :cond_b

    return v6

    :cond_b
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v0, v3

    move v2, v4

    goto/16 :goto_0

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zznp;->zzh:Z

    if-nez v2, :cond_d

    return v4

    .line 26
    :cond_d
    invoke-static {v1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v9
.end method
