.class final Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/core/WakeLock;->startTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/core/WakeLock;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/core/WakeLock;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;-><init>(Landroidx/camera/camera2/pipe/core/WakeLock;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 115
    iget v1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getTimeout$p(Landroidx/camera/camera2/pipe/core/WakeLock;)J

    move-result-wide v3

    iput v2, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 118
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getLock$p(Landroidx/camera/camera2/pipe/core/WakeLock;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    monitor-enter p1

    .line 119
    :try_start_0
    invoke-static {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getClosed$p(Landroidx/camera/camera2/pipe/core/WakeLock;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getCount$p(Landroidx/camera/camera2/pipe/core/WakeLock;)I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$setTimeoutJob$p(Landroidx/camera/camera2/pipe/core/WakeLock;Lkotlinx/coroutines/Job;)V

    .line 123
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$setClosed$p(Landroidx/camera/camera2/pipe/core/WakeLock;Z)V

    .line 124
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p1

    .line 127
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getCallback$p(Landroidx/camera/camera2/pipe/core/WakeLock;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 120
    :cond_4
    :goto_1
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p1

    return-object v0

    :goto_2
    monitor-exit p1

    throw v0
.end method
