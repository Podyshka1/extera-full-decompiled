.class public final Lcom/google/android/gms/internal/measurement/zziy;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/zziy;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/measurement/zzmo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zziy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziy;->zzf:Lcom/google/android/gms/internal/measurement/zziy;

    const-class v1, Lcom/google/android/gms/internal/measurement/zziy;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcv()Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/measurement/zziy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zziy;->zzf:Lcom/google/android/gms/internal/measurement/zziy;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zze:Lcom/google/android/gms/internal/measurement/zzmo;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zziy;->zzf:Lcom/google/android/gms/internal/measurement/zziy;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzix;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzix;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zziy;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zziy;-><init>()V

    return-object p1

    .line 1
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzb"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-string p3, "zzd"

    aput-object p3, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/gms/internal/measurement/zzje;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zziy;->zzf:Lcom/google/android/gms/internal/measurement/zziy;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

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
