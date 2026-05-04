.class public final Lcom/google/android/gms/internal/measurement/zzha;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/measurement/zzha;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/measurement/zzng;

.field private zzm:Lcom/google/android/gms/internal/measurement/zzng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzha;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzha;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzng;->zza()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzng;->zza()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzJ()Lcom/google/android/gms/internal/measurement/zzha;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    return-object v0
.end method

.method public static zzr()Lcom/google/android/gms/internal/measurement/zzgx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzck()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgx;

    return-object v0
.end method

.method public static zzs()Lcom/google/android/gms/internal/measurement/zzha;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    return-object v0
.end method


# virtual methods
.method final synthetic zzA(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzB()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzC(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzD()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzE(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzF()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzG(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:J

    return-void
.end method

.method final synthetic zzH()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzc()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    return-object v0
.end method

.method final synthetic zzI()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzc()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:J

    return-wide v0
.end method

.method public final zzi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    return-object p1

    .line 6
    :cond_0
    throw p2

    .line 3
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgx;

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgx;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzha;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzha;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xd

    .line 2
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

    const-string p2, "zzj"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgy;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgz;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const/16 p3, 0xc

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    const-string p3, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007\t2\n2"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcq(Lcom/google/android/gms/internal/measurement/zznm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzn()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:J

    return-wide v0
.end method

.method final synthetic zzt(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzu()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzv(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzw()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzx(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzy()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzz(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:J

    return-void
.end method
