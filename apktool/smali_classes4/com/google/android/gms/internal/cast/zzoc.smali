.class public final Lcom/google/android/gms/internal/cast/zzoc;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzoc;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:Lcom/google/android/gms/internal/cast/zztx;

.field private zzi:I

.field private zzj:Z

.field private zzk:Ljava/lang/String;

.field private zzl:J

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzoc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzoc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzoc;->zzb:Lcom/google/android/gms/internal/cast/zzoc;

    const-class v1, Lcom/google/android/gms/internal/cast/zzoc;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzoc;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzoc;->zzh:Lcom/google/android/gms/internal/cast/zztx;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzoc;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzoc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzoc;->zzb:Lcom/google/android/gms/internal/cast/zzoc;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzoc;->zzb:Lcom/google/android/gms/internal/cast/zzoc;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzob;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzob;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzoc;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzoc;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/cast/zzoa;

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

    const-string p2, "zzm"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/cast/zzoc;->zzb:Lcom/google/android/gms/internal/cast/zzoc;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u001b\u0005\u1004\u0003\u0006\u1007\u0004\u0007\u1008\u0005\u0008\u1002\u0006\t\u1002\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
