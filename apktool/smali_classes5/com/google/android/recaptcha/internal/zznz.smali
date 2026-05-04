.class public final Lcom/google/android/recaptcha/internal/zznz;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zznz;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/recaptcha/internal/zznx;

.field private zzf:Lcom/google/android/recaptcha/internal/zznx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zznz;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zznz;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zznz;->zzb:Lcom/google/android/recaptcha/internal/zznz;

    const-class v1, Lcom/google/android/recaptcha/internal/zznz;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    return-void
.end method

.method static synthetic zzi()Lcom/google/android/recaptcha/internal/zznz;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zznz;->zzb:Lcom/google/android/recaptcha/internal/zznz;

    return-object v0
.end method

.method public static zzj([B)Lcom/google/android/recaptcha/internal/zznz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zznz;->zzb:Lcom/google/android/recaptcha/internal/zznz;

    invoke-static {v0, p0}, Lcom/google/android/recaptcha/internal/zzit;->zzu(Lcom/google/android/recaptcha/internal/zzit;[B)Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p0

    check-cast p0, Lcom/google/android/recaptcha/internal/zznz;

    return-object p0
.end method


# virtual methods
.method public final zzf()Lcom/google/android/recaptcha/internal/zznx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zznz;->zze:Lcom/google/android/recaptcha/internal/zznx;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/recaptcha/internal/zznx;->zzg()Lcom/google/android/recaptcha/internal/zznx;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzg()Lcom/google/android/recaptcha/internal/zznx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zznz;->zzf:Lcom/google/android/recaptcha/internal/zznx;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/recaptcha/internal/zznx;->zzg()Lcom/google/android/recaptcha/internal/zznx;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/recaptcha/internal/zznz;->zzb:Lcom/google/android/recaptcha/internal/zznz;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzny;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/recaptcha/internal/zzny;-><init>(Lcom/google/android/recaptcha/internal/zznv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zznz;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zznz;-><init>()V

    return-object p1

    .line 2
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v1, 0x0

    aput-object p3, p1, v1

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/recaptcha/internal/zznz;->zzb:Lcom/google/android/recaptcha/internal/zznz;

    const-string p3, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
