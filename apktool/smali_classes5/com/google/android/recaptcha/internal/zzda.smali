.class public final Lcom/google/android/recaptcha/internal/zzda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzda;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzda;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzda;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzda;->zza:Lcom/google/android/recaptcha/internal/zzda;

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

    if-ne v0, v1, :cond_5

    .line 3
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v1, p3, v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eq v4, v1, :cond_0

    move-object v0, v3

    :cond_0
    const/4 v1, 0x5

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v5

    .line 8
    aget-object p3, p3, v4

    .line 9
    invoke-virtual {v5, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    instance-of v5, p3, Ljava/lang/Integer;

    if-eq v4, v5, :cond_1

    move-object p3, v3

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 12
    :try_start_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 13
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzh()Lcom/google/android/recaptcha/internal/zzag;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/recaptcha/internal/zzag;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    .line 15
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzci;->zza(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p3, 0x6

    const/16 v0, 0x15

    .line 17
    invoke-direct {p2, p3, v0, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 10
    invoke-direct {p1, v2, v1, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 11
    throw p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 6
    invoke-direct {p1, v2, v1, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 7
    throw p1

    .line 1
    :cond_5
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x3

    .line 2
    invoke-direct {p1, v2, p2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 3
    throw p1
.end method
