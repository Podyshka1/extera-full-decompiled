.class public final Lcom/google/android/gms/internal/measurement/zzib;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzib;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/measurement/zzmo;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzib;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzck()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzck()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbd(Lcom/google/android/gms/internal/measurement/zzmf;)Lcom/google/android/gms/internal/measurement/zzmb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    return-object v0
.end method

.method static synthetic zzq()Lcom/google/android/gms/internal/measurement/zzib;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzib;

    return-object v0
.end method

.method private final zzr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcw(Lcom/google/android/gms/internal/measurement/zzmo;)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/measurement/zzid;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzid;

    return-object p1
.end method

.method public final zzd()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzj(ILcom/google/android/gms/internal/measurement/zzid;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/measurement/zzid;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzib;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhz;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zzd"

    aput-object v3, p1, p2

    const-class p2, Lcom/google/android/gms/internal/measurement/zzid;

    aput-object p2, p1, v2

    const-string p2, "zze"

    aput-object p2, p1, v1

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzia;->zza:Lcom/google/android/gms/internal/measurement/zzmk;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzib;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007\u1008\u0000\u0008\u1008\u0001\t\u180c\u0002"

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

.method final synthetic zzm(Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzce(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method final synthetic zzn()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method

.method final synthetic zzo(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzp(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzf:Ljava/lang/String;

    return-void
.end method
