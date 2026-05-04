.class public final Lcom/google/android/recaptcha/internal/zzcy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcy;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcy;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcy;->zza:Lcom/google/android/recaptcha/internal/zzcy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 11

    .line 1
    array-length v0, p3

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 30
    invoke-direct {p1, v4, v1, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 31
    throw p1

    .line 1
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v5

    const/4 v6, 0x0

    .line 2
    aget-object v7, p3, v6

    .line 3
    invoke-virtual {v5, v7}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Ljava/lang/String;

    const/4 v8, 0x1

    if-eq v8, v7, :cond_2

    move-object v5, v3

    .line 2
    :cond_2
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 5
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v7

    .line 6
    aget-object v9, p3, v8

    .line 7
    invoke-virtual {v7, v9}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v9

    if-eq v8, v9, :cond_3

    move-object v7, v3

    :cond_3
    if-eqz v7, :cond_a

    .line 9
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v9

    const/4 v10, 0x2

    .line 10
    aget-object v10, p3, v10

    .line 11
    invoke-virtual {v9, v10}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-eq v8, v10, :cond_4

    move-object v9, v3

    :cond_4
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 13
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzh()Lcom/google/android/recaptcha/internal/zzag;

    move-result-object v10

    .line 14
    invoke-virtual {v10, v9}, Lcom/google/android/recaptcha/internal/zzag;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v10

    .line 15
    aget-object v1, p3, v1

    invoke-virtual {v10, v1}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v2, :cond_7

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v0

    .line 16
    aget-object p3, p3, v4

    .line 17
    invoke-virtual {v0, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Ljava/lang/Integer;

    if-eq v8, v0, :cond_5

    move-object p3, v3

    :cond_5
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_6

    .line 19
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    goto :goto_1

    .line 17
    :cond_6
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 18
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 19
    throw p1

    :cond_7
    const/4 p3, -0x1

    .line 20
    :goto_1
    :try_start_0
    instance-of v0, v7, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 21
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzh()Lcom/google/android/recaptcha/internal/zzag;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v7}, Lcom/google/android/recaptcha/internal/zzag;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 23
    :cond_8
    :goto_2
    invoke-static {v7}, Lcom/google/android/recaptcha/internal/zzci;->zza(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    new-instance v2, Lcom/google/android/recaptcha/internal/zzcx;

    invoke-direct {v2, p2, v5, p3}, Lcom/google/android/recaptcha/internal/zzcx;-><init>(Lcom/google/android/recaptcha/internal/zzcj;Ljava/lang/String;I)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    new-array v3, v8, [Ljava/lang/Class;

    aput-object v0, v3, v6

    .line 26
    new-instance v0, Lcom/google/android/recaptcha/internal/zzcf;

    invoke-direct {v0, v2, v9, v1}, Lcom/google/android/recaptcha/internal/zzcf;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-static {p3, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    .line 28
    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p3, 0x6

    const/16 v0, 0x14

    .line 29
    invoke-direct {p2, p3, v0, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_9
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 12
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 13
    throw p1

    .line 7
    :cond_a
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 8
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 9
    throw p1

    .line 2
    :cond_b
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 4
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p1
.end method
