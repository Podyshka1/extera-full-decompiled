.class public final Lcom/google/android/recaptcha/internal/zzcz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcz;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcz;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcz;->zza:Lcom/google/android/recaptcha/internal/zzcz;

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

    .line 28
    :cond_0
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 29
    invoke-direct {p1, v4, v1, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 30
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

    instance-of v7, v5, Ljava/lang/Integer;

    const/4 v8, 0x1

    if-eq v8, v7, :cond_2

    move-object v5, v3

    :cond_2
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 2
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v7

    .line 6
    aget-object v9, p3, v8

    .line 7
    invoke-virtual {v7, v9}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/lang/Integer;

    if-eq v8, v9, :cond_3

    move-object v7, v3

    :cond_3
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_9

    .line 6
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

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

    if-eqz v9, :cond_8

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

    .line 16
    invoke-virtual {v10, v1}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v1

    instance-of v10, v1, Ljava/lang/String;

    if-eq v8, v10, :cond_5

    move-object v1, v3

    :cond_5
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzh()Lcom/google/android/recaptcha/internal/zzag;

    move-result-object v10

    .line 19
    invoke-virtual {v10, v1}, Lcom/google/android/recaptcha/internal/zzag;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v2, :cond_6

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v0

    .line 20
    aget-object p3, p3, v4

    invoke-virtual {v0, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v3

    :cond_6
    new-instance p3, Lcom/google/android/recaptcha/internal/zzcg;

    .line 21
    invoke-direct {p3, v7}, Lcom/google/android/recaptcha/internal/zzcg;-><init>(I)V

    .line 22
    :try_start_0
    invoke-static {v9}, Lcom/google/android/recaptcha/internal/zzci;->zza(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v2

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v7, v8, [Ljava/lang/Class;

    aput-object v0, v7, v6

    .line 24
    new-instance v0, Lcom/google/android/recaptcha/internal/zzch;

    invoke-direct {v0, p3, v1, v3}, Lcom/google/android/recaptcha/internal/zzch;-><init>(Lcom/google/android/recaptcha/internal/zzcg;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-static {v4, v7, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-virtual {v2, v5, v0}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p3, 0x6

    const/16 v0, 0x14

    .line 28
    invoke-direct {p2, p3, v0, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    .line 16
    :cond_7
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 17
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 18
    throw p1

    .line 11
    :cond_8
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 12
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 13
    throw p1

    .line 7
    :cond_9
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 8
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 9
    throw p1

    .line 3
    :cond_a
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 4
    invoke-direct {p1, v4, v2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p1
.end method
