.class public final Lcom/google/android/recaptcha/internal/zzpd;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzpd;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzpd;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzpd;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzpd;->zzb:Lcom/google/android/recaptcha/internal/zzpd;

    const-class v1, Lcom/google/android/recaptcha/internal/zzpd;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/recaptcha/internal/zzpd;->zzd:I

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/recaptcha/internal/zzpd;Lcom/google/android/recaptcha/internal/zznf;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzpd;->zze:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/recaptcha/internal/zzpd;->zzd:I

    return-void
.end method

.method static synthetic zzI(Lcom/google/android/recaptcha/internal/zzpd;Lcom/google/android/recaptcha/internal/zznu;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzpd;->zze:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/recaptcha/internal/zzpd;->zzd:I

    return-void
.end method

.method public static zzi()Lcom/google/android/recaptcha/internal/zzpc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzpd;->zzb:Lcom/google/android/recaptcha/internal/zzpd;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzp()Lcom/google/android/recaptcha/internal/zzin;

    move-result-object v0

    check-cast v0, Lcom/google/android/recaptcha/internal/zzpc;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/recaptcha/internal/zzpd;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzpd;->zzb:Lcom/google/android/recaptcha/internal/zzpd;

    return-object v0
.end method

.method public static zzk([B)Lcom/google/android/recaptcha/internal/zzpd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzpd;->zzb:Lcom/google/android/recaptcha/internal/zzpd;

    invoke-static {v0, p0}, Lcom/google/android/recaptcha/internal/zzit;->zzu(Lcom/google/android/recaptcha/internal/zzit;[B)Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p0

    check-cast p0, Lcom/google/android/recaptcha/internal/zzpd;

    return-object p0
.end method


# virtual methods
.method public final zzJ()I
    .locals 2

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzpd;->zzd:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public final zzf()Lcom/google/android/recaptcha/internal/zznf;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzpd;->zzd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzpd;->zze:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/recaptcha/internal/zznf;

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zznf;->zzH()Lcom/google/android/recaptcha/internal/zznf;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/recaptcha/internal/zznu;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzpd;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzpd;->zze:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/recaptcha/internal/zznu;

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zznu;->zzg()Lcom/google/android/recaptcha/internal/zznu;

    move-result-object v0

    return-object v0
.end method

.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/recaptcha/internal/zzpd;->zzb:Lcom/google/android/recaptcha/internal/zzpd;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzpc;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zzpc;-><init>(Lcom/google/android/recaptcha/internal/zzor;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzpd;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzpd;-><init>()V

    return-object p1

    .line 2
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zze"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-string p3, "zzd"

    aput-object p3, p1, p2

    const-class p2, Lcom/google/android/recaptcha/internal/zznf;

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/recaptcha/internal/zznu;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/recaptcha/internal/zzpd;->zzb:Lcom/google/android/recaptcha/internal/zzpd;

    const-string p3, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
