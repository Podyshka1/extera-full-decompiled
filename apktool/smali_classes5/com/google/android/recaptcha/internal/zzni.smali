.class public final Lcom/google/android/recaptcha/internal/zzni;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzni;


# instance fields
.field private zzd:Lcom/google/android/recaptcha/internal/zzjb;

.field private zze:Lcom/google/android/recaptcha/internal/zzjb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzni;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzni;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzni;->zzb:Lcom/google/android/recaptcha/internal/zzni;

    const-class v1, Lcom/google/android/recaptcha/internal/zzni;

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

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    .line 3
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzit;->zzx()Lcom/google/android/recaptcha/internal/zzjb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zze:Lcom/google/android/recaptcha/internal/zzjb;

    return-void
.end method

.method static synthetic zzI(Lcom/google/android/recaptcha/internal/zzni;Lcom/google/android/recaptcha/internal/zznf;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/recaptcha/internal/zzjb;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzy(Lcom/google/android/recaptcha/internal/zzjb;)Lcom/google/android/recaptcha/internal/zzjb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    :cond_0
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzni;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzJ(Lcom/google/android/recaptcha/internal/zzni;Lcom/google/android/recaptcha/internal/zznu;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zze:Lcom/google/android/recaptcha/internal/zzjb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/recaptcha/internal/zzjb;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzy(Lcom/google/android/recaptcha/internal/zzjb;)Lcom/google/android/recaptcha/internal/zzjb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zze:Lcom/google/android/recaptcha/internal/zzjb;

    :cond_0
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzni;->zze:Lcom/google/android/recaptcha/internal/zzjb;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static zzi()Lcom/google/android/recaptcha/internal/zznh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzni;->zzb:Lcom/google/android/recaptcha/internal/zzni;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzp()Lcom/google/android/recaptcha/internal/zzin;

    move-result-object v0

    check-cast v0, Lcom/google/android/recaptcha/internal/zznh;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/recaptcha/internal/zzni;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzni;->zzb:Lcom/google/android/recaptcha/internal/zzni;

    return-object v0
.end method

.method public static zzk([B)Lcom/google/android/recaptcha/internal/zzni;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzni;->zzb:Lcom/google/android/recaptcha/internal/zzni;

    invoke-static {v0, p0}, Lcom/google/android/recaptcha/internal/zzit;->zzu(Lcom/google/android/recaptcha/internal/zzit;[B)Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p0

    check-cast p0, Lcom/google/android/recaptcha/internal/zzni;

    return-object p0
.end method


# virtual methods
.method public final zzH()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzni;->zze:Lcom/google/android/recaptcha/internal/zzjb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    sget-object p1, Lcom/google/android/recaptcha/internal/zzni;->zzb:Lcom/google/android/recaptcha/internal/zzni;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zznh;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zznh;-><init>(Lcom/google/android/recaptcha/internal/zzng;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzni;

    .line 4
    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzni;-><init>()V

    return-object p1

    .line 2
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-class p3, Lcom/google/android/recaptcha/internal/zznf;

    aput-object p3, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/recaptcha/internal/zznu;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/recaptcha/internal/zzni;->zzb:Lcom/google/android/recaptcha/internal/zzni;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
