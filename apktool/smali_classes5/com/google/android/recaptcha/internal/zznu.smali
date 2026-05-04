.class public final Lcom/google/android/recaptcha/internal/zznu;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zznu;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/recaptcha/internal/zzib;

.field private zzj:Lcom/google/android/recaptcha/internal/zzlj;

.field private zzk:I

.field private zzl:Lcom/google/android/recaptcha/internal/zzna;

.field private zzm:Lcom/google/android/recaptcha/internal/zzjb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zznu;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zznu;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zznu;->zzb:Lcom/google/android/recaptcha/internal/zznu;

    const-class v1, Lcom/google/android/recaptcha/internal/zznu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zznu;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zznu;->zzh:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzit;->zzx()Lcom/google/android/recaptcha/internal/zzjb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zznu;->zzm:Lcom/google/android/recaptcha/internal/zzjb;

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zznu;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zznu;->zzb:Lcom/google/android/recaptcha/internal/zznu;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/recaptcha/internal/zznu;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zznu;->zzb:Lcom/google/android/recaptcha/internal/zznu;

    return-object v0
.end method

.method public static zzi([B)Lcom/google/android/recaptcha/internal/zznu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zznu;->zzb:Lcom/google/android/recaptcha/internal/zznu;

    invoke-static {v0, p0}, Lcom/google/android/recaptcha/internal/zzit;->zzu(Lcom/google/android/recaptcha/internal/zzit;[B)Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p0

    check-cast p0, Lcom/google/android/recaptcha/internal/zznu;

    return-object p0
.end method


# virtual methods
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
    sget-object p1, Lcom/google/android/recaptcha/internal/zznu;->zzb:Lcom/google/android/recaptcha/internal/zznu;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zznt;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zznt;-><init>(Lcom/google/android/recaptcha/internal/zzns;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zznu;

    .line 4
    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zznu;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const-string p2, "zzk"

    aput-object p2, p1, v0

    const-string p2, "zzm"

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/recaptcha/internal/zznl;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "zzf"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzg"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzh"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zznu;->zzb:Lcom/google/android/recaptcha/internal/zznu;

    const-string p3, "\u0000\t\u0000\u0001\u0001\u000b\t\u0000\u0001\u0000\u0001\u0004\u0003\u1009\u0000\u0004\u1009\u0001\u0005\u000c\u0007\u001b\u0008\u000c\t\u0208\n\u0208\u000b\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
