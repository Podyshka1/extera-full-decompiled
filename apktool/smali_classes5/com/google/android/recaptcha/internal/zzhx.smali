.class public final Lcom/google/android/recaptcha/internal/zzhx;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzhx;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/recaptcha/internal/zzjb;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:D

.field private zzj:Lcom/google/android/recaptcha/internal/zzgw;

.field private zzk:Ljava/lang/String;

.field private zzl:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzhx;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzhx;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzhx;->zzb:Lcom/google/android/recaptcha/internal/zzhx;

    const-class v1, Lcom/google/android/recaptcha/internal/zzhx;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/recaptcha/internal/zzhx;->zzl:B

    .line 2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzko;->zze()Lcom/google/android/recaptcha/internal/zzko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzhx;->zze:Lcom/google/android/recaptcha/internal/zzjb;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzhx;->zzf:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/google/android/recaptcha/internal/zzgw;->zzb:Lcom/google/android/recaptcha/internal/zzgw;

    iput-object v1, p0, Lcom/google/android/recaptcha/internal/zzhx;->zzj:Lcom/google/android/recaptcha/internal/zzgw;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzhx;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zzhx;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzhx;->zzb:Lcom/google/android/recaptcha/internal/zzhx;

    return-object v0
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/recaptcha/internal/zzhx;->zzl:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzhx;->zzb:Lcom/google/android/recaptcha/internal/zzhx;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzhu;

    .line 3
    invoke-direct {p1, v3}, Lcom/google/android/recaptcha/internal/zzhu;-><init>(Lcom/google/android/recaptcha/internal/zzhj;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzhx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzhx;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x9

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/recaptcha/internal/zzhw;

    aput-object p2, p1, v4

    const-string p2, "zzf"

    aput-object p2, p1, v3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzhx;->zzb:Lcom/google/android/recaptcha/internal/zzhx;

    new-instance p3, Lcom/google/android/recaptcha/internal/zzkp;

    const-string v0, "\u0001\u0007\u0000\u0001\u0002\u0008\u0007\u0000\u0001\u0001\u0002\u041b\u0003\u1008\u0000\u0004\u1003\u0001\u0005\u1002\u0002\u0006\u1000\u0003\u0007\u100a\u0004\u0008\u1008\u0005"

    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/recaptcha/internal/zzkp;-><init>(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_5
    iget-byte p1, p0, Lcom/google/android/recaptcha/internal/zzhx;->zzl:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
