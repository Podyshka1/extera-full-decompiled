.class public final Lcom/google/android/recaptcha/internal/zzht;
.super Lcom/google/android/recaptcha/internal/zzip;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzd:Lcom/google/android/recaptcha/internal/zzht;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzht;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzht;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzht;->zzd:Lcom/google/android/recaptcha/internal/zzht;

    const-class v1, Lcom/google/android/recaptcha/internal/zzht;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzip;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/recaptcha/internal/zzht;->zzl:B

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zzht;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzht;->zzd:Lcom/google/android/recaptcha/internal/zzht;

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
    iput-byte p3, p0, Lcom/google/android/recaptcha/internal/zzht;->zzl:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzht;->zzd:Lcom/google/android/recaptcha/internal/zzht;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzhm;

    .line 3
    invoke-direct {p1, v3}, Lcom/google/android/recaptcha/internal/zzhm;-><init>(Lcom/google/android/recaptcha/internal/zzhj;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzht;

    .line 4
    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzht;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0xd

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzho;->zza:Lcom/google/android/recaptcha/internal/zzix;

    aput-object p2, p1, v4

    const-string p2, "zzg"

    aput-object p2, p1, v3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzhn;->zza:Lcom/google/android/recaptcha/internal/zzix;

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzhr;->zza:Lcom/google/android/recaptcha/internal/zzix;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "zzi"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzhs;->zza:Lcom/google/android/recaptcha/internal/zzix;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzhq;->zza:Lcom/google/android/recaptcha/internal/zzix;

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzhp;->zza:Lcom/google/android/recaptcha/internal/zzix;

    const/16 p3, 0xc

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzht;->zzd:Lcom/google/android/recaptcha/internal/zzht;

    new-instance p3, Lcom/google/android/recaptcha/internal/zzkp;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u180c\u0005"

    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/recaptcha/internal/zzkp;-><init>(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_5
    iget-byte p1, p0, Lcom/google/android/recaptcha/internal/zzht;->zzl:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
