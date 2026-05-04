.class public final Lcom/google/android/recaptcha/internal/zzcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcp;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcp;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcp;->zza:Lcom/google/android/recaptcha/internal/zzcp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 7

    .line 1
    array-length p1, p3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p1

    const/4 v2, 0x0

    .line 2
    aget-object v2, p3, v2

    .line 3
    invoke-virtual {p1, v2}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    const/4 v2, 0x5

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v4

    .line 8
    aget-object v5, p3, v3

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v5

    if-eq v3, v5, :cond_1

    move-object v4, v1

    :cond_1
    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v5

    const/4 v6, 0x2

    .line 12
    aget-object p3, p3, v6

    .line 13
    invoke-virtual {v5, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v5

    if-eq v3, v5, :cond_2

    move-object p3, v1

    :cond_2
    if-eqz p3, :cond_4

    .line 16
    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zza()I

    move-result p3

    add-int/2addr p3, p1

    .line 17
    invoke-virtual {p2, p3}, Lcom/google/android/recaptcha/internal/zzcj;->zzg(I)V

    :cond_3
    return-void

    .line 13
    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 14
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 15
    throw p1

    .line 9
    :cond_5
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 10
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 11
    throw p1

    .line 2
    :cond_6
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x6

    .line 6
    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 7
    throw p1

    .line 3
    :cond_7
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 4
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p1

    .line 17
    :cond_8
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 18
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 19
    throw p1
.end method
