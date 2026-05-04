.class public final Lcom/google/android/gms/internal/cast/zznq;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zznq;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zznq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zznq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    const-class v1, Lcom/google/android/gms/internal/cast/zznq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/cast/zznp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzv()Lcom/google/android/gms/internal/cast/zztm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zznp;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/cast/zznq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzf:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzg:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzh:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzi:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zznp;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zznp;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zznq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zznq;-><init>()V

    return-object p1

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzle;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "zzd"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "zze"

    aput-object v4, v3, p2

    aput-object p1, v3, v2

    const-string p1, "zzf"

    aput-object p1, v3, v1

    const-string p1, "zzg"

    aput-object p1, v3, v0

    const-string p1, "zzh"

    aput-object p1, v3, p3

    const-string p1, "zzi"

    const/4 p2, 0x6

    aput-object p1, v3, p2

    sget-object p1, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004"

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
