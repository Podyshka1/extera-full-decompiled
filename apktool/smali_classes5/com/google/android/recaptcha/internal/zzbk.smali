.class final Lcom/google/android/recaptcha/internal/zzbk;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic zza:Lcom/google/android/recaptcha/internal/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzbm;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbk;->zza:Lcom/google/android/recaptcha/internal/zzbm;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/recaptcha/internal/zzbk;

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzbk;->zza:Lcom/google/android/recaptcha/internal/zzbm;

    invoke-direct {p1, v0, p2}, Lcom/google/android/recaptcha/internal/zzbk;-><init>(Lcom/google/android/recaptcha/internal/zzbm;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzbk;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p1, Lcom/google/android/recaptcha/internal/zzbk;

    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzbk;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzbk;->zza:Lcom/google/android/recaptcha/internal/zzbm;

    const-class v0, Lcom/google/android/recaptcha/internal/zzbh;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzbm;->zzb(Lcom/google/android/recaptcha/internal/zzbm;)Lcom/google/android/recaptcha/internal/zzaz;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzaz;->zzb()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzbm;->zzc()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Lcom/google/android/recaptcha/internal/zzbm;->zzf(Ljava/util/Timer;)V

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzbm;->zze(Lcom/google/android/recaptcha/internal/zzbm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_1
    monitor-exit v0

    throw p1
.end method
