.class public final Lcom/google/android/gms/internal/measurement/zzfl;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzfl;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfl;->zzi:Lcom/google/android/gms/internal/measurement/zzfl;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzfl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfl;->zzi:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/measurement/zzfl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfl;->zzi:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zze:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzh:Ljava/lang/String;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfl;->zzi:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfl;-><init>()V

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

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfj;->zza:Lcom/google/android/gms/internal/measurement/zzmk;

    aput-object p2, p1, v2

    const-string p2, "zze"

    aput-object p2, p1, v1

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const-string p2, "zzh"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfl;->zzi:Lcom/google/android/gms/internal/measurement/zzfl;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

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

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
