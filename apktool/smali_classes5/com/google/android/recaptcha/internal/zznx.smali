.class public final Lcom/google/android/recaptcha/internal/zznx;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zznx;


# instance fields
.field private zzd:Lcom/google/android/recaptcha/internal/zzjb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zznx;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zznx;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zznx;->zzb:Lcom/google/android/recaptcha/internal/zznx;

    const-class v1, Lcom/google/android/recaptcha/internal/zznx;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzit;->zzx()Lcom/google/android/recaptcha/internal/zzjb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zznx;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zznx;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zznx;->zzb:Lcom/google/android/recaptcha/internal/zznx;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/recaptcha/internal/zznx;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zznx;->zzb:Lcom/google/android/recaptcha/internal/zznx;

    return-object v0
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Lcom/google/android/recaptcha/internal/zznx;->zzb:Lcom/google/android/recaptcha/internal/zznx;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zznw;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/recaptcha/internal/zznw;-><init>(Lcom/google/android/recaptcha/internal/zznv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zznx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zznx;-><init>()V

    return-object p1

    .line 2
    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "zzd"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/recaptcha/internal/zznx;->zzb:Lcom/google/android/recaptcha/internal/zznx;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u021a"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zznx;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    return-object v0
.end method
