.class public final Lcom/google/android/gms/internal/measurement/zzii;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzii;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/zzmn;

.field private zzd:Lcom/google/android/gms/internal/measurement/zzmn;

.field private zze:Lcom/google/android/gms/internal/measurement/zzmo;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzmo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzii;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzii;->zzg:Lcom/google/android/gms/internal/measurement/zzii;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzii;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzct()Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:Lcom/google/android/gms/internal/measurement/zzmn;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzct()Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzd:Lcom/google/android/gms/internal/measurement/zzmn;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzf:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzih;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzii;->zzg:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzck()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzih;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzii;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzii;->zzg:Lcom/google/android/gms/internal/measurement/zzii;

    return-object v0
.end method

.method static synthetic zzt()Lcom/google/android/gms/internal/measurement/zzii;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzii;->zzg:Lcom/google/android/gms/internal/measurement/zzii;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:Lcom/google/android/gms/internal/measurement/zzmn;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzd:Lcom/google/android/gms/internal/measurement/zzmn;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzd:Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzf:Lcom/google/android/gms/internal/measurement/zzmo;

    return-object v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzf:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final synthetic zzk(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcu(Lcom/google/android/gms/internal/measurement/zzmn;)Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:Lcom/google/android/gms/internal/measurement/zzmn;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:Lcom/google/android/gms/internal/measurement/zzmn;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzce(Ljava/lang/Iterable;Ljava/util/List;)V

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzii;->zzg:Lcom/google/android/gms/internal/measurement/zzii;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzih;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzih;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzii;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzii;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zzd"

    aput-object v3, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, v2

    const-class p2, Lcom/google/android/gms/internal/measurement/zzhq;

    aput-object p2, p1, v1

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/measurement/zzik;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzii;->zzg:Lcom/google/android/gms/internal/measurement/zzii;

    const-string p3, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

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

.method final synthetic zzm()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzct()Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:Lcom/google/android/gms/internal/measurement/zzmn;

    return-void
.end method

.method final synthetic zzn(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzd:Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcu(Lcom/google/android/gms/internal/measurement/zzmn;)Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzd:Lcom/google/android/gms/internal/measurement/zzmn;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzd:Lcom/google/android/gms/internal/measurement/zzmn;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzce(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method final synthetic zzo()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzct()Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzd:Lcom/google/android/gms/internal/measurement/zzmn;

    return-void
.end method

.method final synthetic zzp(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcw(Lcom/google/android/gms/internal/measurement/zzmo;)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzce(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method final synthetic zzq()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method

.method final synthetic zzr(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzf:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcw(Lcom/google/android/gms/internal/measurement/zzmo;)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzf:Lcom/google/android/gms/internal/measurement/zzmo;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzf:Lcom/google/android/gms/internal/measurement/zzmo;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzce(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method final synthetic zzs()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzf:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method
