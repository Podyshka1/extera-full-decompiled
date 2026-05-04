.class public final Lcom/google/android/gms/internal/measurement/zzhc;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzhc;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Lcom/google/android/gms/internal/measurement/zzhc;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzhc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Lcom/google/android/gms/internal/measurement/zzhc;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Lcom/google/android/gms/internal/measurement/zzhc;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhb;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhb;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhc;-><init>()V

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

    const-string p2, "zzj"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Lcom/google/android/gms/internal/measurement/zzhc;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006"

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
