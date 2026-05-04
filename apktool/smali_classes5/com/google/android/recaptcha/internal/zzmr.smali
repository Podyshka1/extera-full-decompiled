.class public final Lcom/google/android/recaptcha/internal/zzmr;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzmr;


# instance fields
.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzmr;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzmr;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzmr;->zzb:Lcom/google/android/recaptcha/internal/zzmr;

    const-class v1, Lcom/google/android/recaptcha/internal/zzmr;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzmr;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/recaptcha/internal/zzmr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzI(Lcom/google/android/recaptcha/internal/zzmr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzJ(Lcom/google/android/recaptcha/internal/zzmr;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzf:I

    return-void
.end method

.method public static zzg()Lcom/google/android/recaptcha/internal/zzmq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzmr;->zzb:Lcom/google/android/recaptcha/internal/zzmr;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzp()Lcom/google/android/recaptcha/internal/zzin;

    move-result-object v0

    check-cast v0, Lcom/google/android/recaptcha/internal/zzmq;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/recaptcha/internal/zzmr;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzmr;->zzb:Lcom/google/android/recaptcha/internal/zzmr;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/recaptcha/internal/zzmr;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzmr;->zzb:Lcom/google/android/recaptcha/internal/zzmr;

    return-object v0
.end method


# virtual methods
.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzf:I

    return v0
.end method

.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/recaptcha/internal/zzmr;->zzb:Lcom/google/android/recaptcha/internal/zzmr;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzmq;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zzmq;-><init>(Lcom/google/android/recaptcha/internal/zzmp;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzmr;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzmr;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zzmr;->zzb:Lcom/google/android/recaptcha/internal/zzmr;

    const-string p3, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0004\u0003\u0208\u0004\u0004\u0005\u0208\u0006\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzmr;->zzd:Ljava/lang/String;

    return-object v0
.end method
