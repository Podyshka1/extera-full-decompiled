.class public final Lcom/google/android/gms/internal/cast/zzra;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zztv;

.field private static final zzd:Lcom/google/android/gms/internal/cast/zzra;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/cast/zztu;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/cast/zztx;

.field private zzk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzqy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzqy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzra;->zzb:Lcom/google/android/gms/internal/cast/zztv;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzra;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzra;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzra;->zzd:Lcom/google/android/gms/internal/cast/zzra;

    const-class v1, Lcom/google/android/gms/internal/cast/zzra;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzy()Lcom/google/android/gms/internal/cast/zztu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzra;->zzh:Lcom/google/android/gms/internal/cast/zztu;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzra;->zzj:Lcom/google/android/gms/internal/cast/zztx;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzra;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzra;->zzd:Lcom/google/android/gms/internal/cast/zzra;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzra;->zzd:Lcom/google/android/gms/internal/cast/zzra;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqz;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzqz;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzra;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzra;-><init>()V

    return-object p1

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmi;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzin;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmf;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzhv;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v5

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "zze"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "zzf"

    aput-object v7, v6, p2

    aput-object p1, v6, v2

    const-string p1, "zzg"

    aput-object p1, v6, v1

    aput-object v3, v6, v0

    const-string p1, "zzh"

    aput-object p1, v6, p3

    const/4 p1, 0x6

    aput-object v4, v6, p1

    const-string p1, "zzi"

    const/4 p2, 0x7

    aput-object p1, v6, p2

    const/16 p1, 0x8

    aput-object v5, v6, p1

    const-string p1, "zzj"

    const/16 p2, 0x9

    aput-object p1, v6, p2

    const-class p1, Lcom/google/android/gms/internal/cast/zzqx;

    const/16 p2, 0xa

    aput-object p1, v6, p2

    const-string p1, "zzk"

    const/16 p2, 0xb

    aput-object p1, v6, p2

    sget-object p1, Lcom/google/android/gms/internal/cast/zzra;->zzd:Lcom/google/android/gms/internal/cast/zzra;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u081e\u0005\u180c\u0002\u0006\u001b\u0007\u1002\u0003"

    invoke-static {p1, p2, v6}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
