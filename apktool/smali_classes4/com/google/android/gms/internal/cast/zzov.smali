.class public final Lcom/google/android/gms/internal/cast/zzov;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzov;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/cast/zztu;

.field private zzh:Lcom/google/android/gms/internal/cast/zztu;

.field private zzi:Lcom/google/android/gms/internal/cast/zztx;

.field private zzj:Lcom/google/android/gms/internal/cast/zztx;

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzov;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzov;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    const-class v1, Lcom/google/android/gms/internal/cast/zzov;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzg:Lcom/google/android/gms/internal/cast/zztu;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzy()Lcom/google/android/gms/internal/cast/zztu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzh:Lcom/google/android/gms/internal/cast/zztu;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzi:Lcom/google/android/gms/internal/cast/zztx;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzj:Lcom/google/android/gms/internal/cast/zztx;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzov;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzou;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzou;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzov;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzov;-><init>()V

    return-object p1

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zziz;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzin;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "zzd"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "zze"

    aput-object v5, v4, p2

    const-string p2, "zzf"

    aput-object p2, v4, v2

    aput-object p1, v4, v1

    const-string p1, "zzg"

    aput-object p1, v4, v0

    const-string p1, "zzh"

    aput-object p1, v4, p3

    const-string p1, "zzi"

    const/4 p2, 0x6

    aput-object p1, v4, p2

    const-string p1, "zzj"

    const/4 p2, 0x7

    aput-object p1, v4, p2

    const-string p1, "zzk"

    const/16 p2, 0x8

    aput-object p1, v4, p2

    const/16 p1, 0x9

    aput-object v3, v4, p1

    sget-object p1, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001\u1004\u0000\u0002\u180c\u0001\u0003\u0016\u0004\u0016\u0005\u001a\u0006\u001a\u0007\u180c\u0002"

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
