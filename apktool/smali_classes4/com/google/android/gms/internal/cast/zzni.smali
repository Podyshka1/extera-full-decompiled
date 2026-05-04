.class public final Lcom/google/android/gms/internal/cast/zzni;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzni;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzni;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzni;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzni;->zzb:Lcom/google/android/gms/internal/cast/zzni;

    const-class v1, Lcom/google/android/gms/internal/cast/zzni;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzni;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzni;->zzb:Lcom/google/android/gms/internal/cast/zzni;

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzni;->zzb:Lcom/google/android/gms/internal/cast/zzni;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zznh;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zznh;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzni;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzni;-><init>()V

    return-object p1

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzji;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "zzd"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "zze"

    aput-object v4, v3, p2

    const-string p2, "zzf"

    aput-object p2, v3, v2

    const-string p2, "zzg"

    aput-object p2, v3, v1

    aput-object p1, v3, v0

    const-string p1, "zzh"

    aput-object p1, v3, p3

    sget-object p1, Lcom/google/android/gms/internal/cast/zzni;->zzb:Lcom/google/android/gms/internal/cast/zzni;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100b\u0000\u0002\u100b\u0001\u0003\u180c\u0002\u0004\u1004\u0003"

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
