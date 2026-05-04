.class public final Lcom/google/android/recaptcha/internal/zzco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzco;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzco;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzco;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzco;->zza:Lcom/google/android/recaptcha/internal/zzco;

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
    array-length p1, p3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 3
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    aget-object v2, p3, v2

    .line 5
    invoke-virtual {p1, v2}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    move-object p1, v1

    :cond_0
    const/4 v2, 0x5

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v4

    .line 8
    aget-object v5, p3, v3

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eq v3, v5, :cond_1

    move-object v4, v1

    :cond_1
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 8
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    const/4 v5, 0x2

    .line 12
    aget-object p3, p3, v5

    .line 13
    invoke-virtual {p2, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result p3

    if-eq v3, p3, :cond_2

    move-object p2, v1

    :cond_2
    if-eqz p2, :cond_4

    .line 14
    :try_start_0
    invoke-static {p1, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    instance-of p2, p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz p2, :cond_3

    .line 17
    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p3, 0x16

    .line 16
    invoke-direct {p2, v0, p3, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    .line 14
    :cond_3
    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p3, 0x19

    .line 17
    invoke-direct {p2, v0, p3, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 18
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 19
    throw p1

    .line 9
    :cond_5
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 10
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 11
    throw p1

    .line 5
    :cond_6
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 6
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 7
    throw p1

    .line 1
    :cond_7
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 2
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 3
    throw p1
.end method
