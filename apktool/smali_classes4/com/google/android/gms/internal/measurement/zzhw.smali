.class public final Lcom/google/android/gms/internal/measurement/zzhw;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzhw;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:F

.field private zzh:D

.field private zzi:Lcom/google/android/gms/internal/measurement/zzmo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhw;->zzj:Lcom/google/android/gms/internal/measurement/zzhw;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method

.method public static zzn()Lcom/google/android/gms/internal/measurement/zzhv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhw;->zzj:Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzck()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    return-object v0
.end method

.method static synthetic zzy()Lcom/google/android/gms/internal/measurement/zzhw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhw;->zzj:Lcom/google/android/gms/internal/measurement/zzhw;

    return-object v0
.end method

.method private final zzz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcw(Lcom/google/android/gms/internal/measurement/zzmo;)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzf:J

    return-wide v0
.end method

.method public final zzg()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzg:F

    return v0
.end method

.method public final zzi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzh:D

    return-wide v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhw;->zzj:Lcom/google/android/gms/internal/measurement/zzhw;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhv;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhw;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zzd"

    aput-object v3, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const-string p2, "zzi"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/measurement/zzhw;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhw;->zzj:Lcom/google/android/gms/internal/measurement/zzhw;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcq(Lcom/google/android/gms/internal/measurement/zznm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final synthetic zzo(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzp(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzq()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhw;->zzj:Lcom/google/android/gms/internal/measurement/zzhw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzr(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzf:J

    return-void
.end method

.method final synthetic zzs()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzf:J

    return-void
.end method

.method final synthetic zzt(D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzh:D

    return-void
.end method

.method final synthetic zzu()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzh:D

    return-void
.end method

.method final synthetic zzv(Lcom/google/android/gms/internal/measurement/zzhw;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzw(Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzce(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method final synthetic zzx()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzi:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method
