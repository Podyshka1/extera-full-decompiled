.class public final Lcom/google/android/recaptcha/Recaptcha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/android/recaptcha/Recaptcha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/Recaptcha;

    invoke-direct {v0}, Lcom/google/android/recaptcha/Recaptcha;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/Recaptcha;->INSTANCE:Lcom/google/android/recaptcha/Recaptcha;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getClient-BWLJW6A$default(Lcom/google/android/recaptcha/Recaptcha;Landroid/app/Application;Ljava/lang/String;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const-wide/16 p3, 0x2710

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/recaptcha/Recaptcha;->getClient-BWLJW6A(Landroid/app/Application;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getTasksClient(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x2710

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/recaptcha/internal/zzam;->zzd(Landroid/app/Application;Ljava/lang/String;J)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static final getTasksClient(Landroid/app/Application;Ljava/lang/String;J)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzam;->zzd(Landroid/app/Application;Ljava/lang/String;J)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getClient-BWLJW6A(Landroid/app/Application;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/google/android/recaptcha/Recaptcha$getClient$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;

    iget v1, v0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzc:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzc:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;

    invoke-direct {v0, p0, p5}, Lcom/google/android/recaptcha/Recaptcha$getClient$1;-><init>(Lcom/google/android/recaptcha/Recaptcha;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    .line 0
    :goto_1
    iget-object p5, v6, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zza:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzc:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    :try_start_1
    sget-object p5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    sget-object p5, Lcom/google/android/recaptcha/internal/zzam;->zza:Lcom/google/android/recaptcha/internal/zzam;

    iput v2, v6, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzc:I

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/google/android/recaptcha/internal/zzam;->zzc(Landroid/app/Application;Ljava/lang/String;JLcom/google/android/recaptcha/internal/zzbq;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_3

    return-object v0

    .line 3
    :cond_3
    :goto_2
    check-cast p5, Lcom/google/android/recaptcha/internal/zzaw;

    .line 2
    invoke-static {p5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
