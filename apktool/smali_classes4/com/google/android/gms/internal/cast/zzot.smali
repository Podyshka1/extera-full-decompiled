.class public final Lcom/google/android/gms/internal/cast/zzot;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zztv;

.field private static final zzd:Lcom/google/android/gms/internal/cast/zzot;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/cast/zzra;

.field private zzj:Z

.field private zzk:Lcom/google/android/gms/internal/cast/zztu;

.field private zzl:J

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzor;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzor;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzot;->zzb:Lcom/google/android/gms/internal/cast/zztv;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzot;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzot;->zzd:Lcom/google/android/gms/internal/cast/zzot;

    const-class v1, Lcom/google/android/gms/internal/cast/zzot;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzot;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzy()Lcom/google/android/gms/internal/cast/zztu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzot;->zzk:Lcom/google/android/gms/internal/cast/zztu;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzot;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzot;->zzd:Lcom/google/android/gms/internal/cast/zzot;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzot;->zzd:Lcom/google/android/gms/internal/cast/zzot;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzos;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzos;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzot;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzot;-><init>()V

    return-object p1

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmf;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "zze"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "zzf"

    aput-object v4, v3, p2

    const-string p2, "zzg"

    aput-object p2, v3, v2

    const-string p2, "zzi"

    aput-object p2, v3, v1

    const-string p2, "zzj"

    aput-object p2, v3, v0

    const-string p2, "zzk"

    aput-object p2, v3, p3

    const/4 p2, 0x6

    aput-object p1, v3, p2

    const-string p1, "zzh"

    const/4 p2, 0x7

    aput-object p1, v3, p2

    const-string p1, "zzl"

    const/16 p2, 0x8

    aput-object p1, v3, p2

    const-string p1, "zzm"

    const/16 p2, 0x9

    aput-object p1, v3, p2

    sget-object p1, Lcom/google/android/gms/internal/cast/zzot;->zzd:Lcom/google/android/gms/internal/cast/zzot;

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1009\u0003\u0004\u1007\u0004\u0005\u082c\u0006\u1007\u0002\u0007\u1002\u0005\u0008\u1002\u0006"

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
