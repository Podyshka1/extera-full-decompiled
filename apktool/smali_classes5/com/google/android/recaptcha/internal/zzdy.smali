.class public final Lcom/google/android/recaptcha/internal/zzdy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzdy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzdy;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzdy;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzdy;->zza:Lcom/google/android/recaptcha/internal/zzdy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 6

    .line 1
    array-length v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    new-instance p3, Lcom/google/android/recaptcha/internal/zzz;

    .line 15
    invoke-direct {p3}, Lcom/google/android/recaptcha/internal/zzz;-><init>()V

    .line 16
    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V

    return-void

    .line 14
    :cond_0
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x3

    .line 17
    invoke-direct {p1, v2, p2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 18
    throw p1

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-object v1, p3, v0

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    const/4 v4, 0x1

    if-eq v4, v1, :cond_2

    move-object p1, v3

    .line 2
    :cond_2
    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x5

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v5

    .line 6
    aget-object p3, p3, v4

    .line 7
    invoke-virtual {v5, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    instance-of v5, p3, Lcom/google/android/recaptcha/internal/zzz;

    if-eq v4, v5, :cond_3

    move-object p3, v3

    .line 6
    :cond_3
    check-cast p3, Lcom/google/android/recaptcha/internal/zzz;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzb()Lcom/google/android/recaptcha/internal/zzz;

    move-result-object v1

    .line 10
    invoke-static {v1, p3}, Lcom/google/android/recaptcha/internal/zzbp;->zza(Lcom/google/android/recaptcha/internal/zzz;Lcom/google/android/recaptcha/internal/zzz;)Lcom/google/android/recaptcha/internal/zzno;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/google/android/recaptcha/internal/zzgf;->zzd()[B

    move-result-object p3

    array-length v1, p3

    .line 12
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzfy;->zzh()Lcom/google/android/recaptcha/internal/zzfy;

    move-result-object v2

    .line 13
    invoke-virtual {v2, p3, v0, v1}, Lcom/google/android/recaptcha/internal/zzfy;->zzi([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzi()Lcom/google/android/recaptcha/internal/zzcd;

    move-result-object p2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzcd;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 8
    invoke-direct {p1, v2, v1, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 9
    throw p1

    .line 2
    :cond_5
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 4
    invoke-direct {p1, v2, v1, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p1
.end method
