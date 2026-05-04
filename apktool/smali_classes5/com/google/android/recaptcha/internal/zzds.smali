.class public final Lcom/google/android/recaptcha/internal/zzds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzds;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzds;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzds;->zza:Lcom/google/android/recaptcha/internal/zzds;

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

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p1

    const/4 v3, 0x0

    .line 2
    aget-object p3, p3, v3

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-eq v2, p3, :cond_0

    move-object p1, v1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/recaptcha/internal/zzcj;->zzf(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x5

    .line 4
    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p1

    .line 6
    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x3

    .line 7
    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 8
    throw p1
.end method
