.class public final Lcom/google/android/gms/internal/cast/zzgq;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzgq;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzgq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzgq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzgq;->zzb:Lcom/google/android/gms/internal/cast/zzgq;

    const-class v1, Lcom/google/android/gms/internal/cast/zzgq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzgq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzgq;->zzb:Lcom/google/android/gms/internal/cast/zzgq;

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzgq;->zzb:Lcom/google/android/gms/internal/cast/zzgq;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzgl;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzgl;-><init>(Lcom/google/android/gms/internal/cast/zzgi;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzgq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzgq;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x13

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

    sget-object p2, Lcom/google/android/gms/internal/cast/zzgm;->zza:Lcom/google/android/gms/internal/cast/zztt;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/cast/zzgn;->zza:Lcom/google/android/gms/internal/cast/zztt;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "zzi"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/cast/zzgk;->zza:Lcom/google/android/gms/internal/cast/zztt;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/cast/zzgo;->zza:Lcom/google/android/gms/internal/cast/zztt;

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/cast/zzgp;->zza:Lcom/google/android/gms/internal/cast/zztt;

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/cast/zzgj;->zza:Lcom/google/android/gms/internal/cast/zztt;

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0x12

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/cast/zzgq;->zzb:Lcom/google/android/gms/internal/cast/zzgq;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u180c\u0005\u0007\u180c\u0006\u0008\u180c\u0007\t\u1004\u0008\n\u1004\t\u000b\u1004\n\u000c\u1007\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
