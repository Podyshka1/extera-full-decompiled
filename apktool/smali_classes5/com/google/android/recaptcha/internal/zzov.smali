.class public final Lcom/google/android/recaptcha/internal/zzov;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzov;


# instance fields
.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzov;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzov;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzov;->zzb:Lcom/google/android/recaptcha/internal/zzov;

    const-class v1, Lcom/google/android/recaptcha/internal/zzov;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzov;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzov;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzf()Lcom/google/android/recaptcha/internal/zzou;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzov;->zzb:Lcom/google/android/recaptcha/internal/zzov;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzp()Lcom/google/android/recaptcha/internal/zzin;

    move-result-object v0

    check-cast v0, Lcom/google/android/recaptcha/internal/zzou;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/recaptcha/internal/zzov;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzov;->zzb:Lcom/google/android/recaptcha/internal/zzov;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/recaptcha/internal/zzov;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzov;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/recaptcha/internal/zzov;->zzb:Lcom/google/android/recaptcha/internal/zzov;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzou;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/recaptcha/internal/zzou;-><init>(Lcom/google/android/recaptcha/internal/zzor;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzov;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzov;-><init>()V

    return-object p1

    .line 2
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/recaptcha/internal/zzov;->zzb:Lcom/google/android/recaptcha/internal/zzov;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
