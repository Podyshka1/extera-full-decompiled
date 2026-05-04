.class public final Lcom/google/android/gms/internal/cast/zzpl;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzpl;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzpl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzpl;->zzb:Lcom/google/android/gms/internal/cast/zzpl;

    const-class v1, Lcom/google/android/gms/internal/cast/zzpl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzpl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzpl;->zzb:Lcom/google/android/gms/internal/cast/zzpl;

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzpl;->zzb:Lcom/google/android/gms/internal/cast/zzpl;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzpk;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzpk;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzpl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzpl;-><init>()V

    return-object p1

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjo;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzhj;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "zzd"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "zze"

    aput-object v5, v4, p2

    aput-object p1, v4, v2

    const-string p1, "zzf"

    aput-object p1, v4, v1

    const-string p1, "zzg"

    aput-object p1, v4, v0

    aput-object v3, v4, p3

    sget-object p1, Lcom/google/android/gms/internal/cast/zzpl;->zzb:Lcom/google/android/gms/internal/cast/zzpl;

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1002\u0001\u0003\u180c\u0002"

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
