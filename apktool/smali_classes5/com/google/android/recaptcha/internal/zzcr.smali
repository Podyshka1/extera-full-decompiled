.class public final Lcom/google/android/recaptcha/internal/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcr;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcr;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcr;->zza:Lcom/google/android/recaptcha/internal/zzcr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 4

    .line 1
    array-length p1, p3

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move-object p1, v2

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v0

    .line 6
    aget-object p3, p3, v3

    invoke-virtual {v0, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 9
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    instance-of v0, p3, Ljava/lang/Short;

    if-nez v0, :cond_3

    .line 11
    instance-of v0, p3, Ljava/lang/Byte;

    if-nez v0, :cond_3

    .line 12
    instance-of v0, p3, Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 13
    instance-of v0, p3, Ljava/lang/Double;

    if-nez v0, :cond_3

    .line 14
    instance-of v0, p3, Ljava/lang/Float;

    if-nez v0, :cond_3

    .line 15
    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 16
    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_3

    .line 9
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x7

    .line 19
    invoke-direct {p1, v1, p2, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 20
    throw p1

    .line 17
    :cond_3
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzi()Lcom/google/android/recaptcha/internal/zzcd;

    move-result-object p2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzcd;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 7
    invoke-direct {p1, v1, v1, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 8
    throw p1

    .line 2
    :cond_5
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x5

    .line 4
    invoke-direct {p1, v1, p2, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p1

    .line 20
    :cond_6
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x3

    .line 21
    invoke-direct {p1, v1, p2, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 22
    throw p1
.end method
