.class final Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->withTokenInAsync$camera_camera2_pipe(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function2;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->$action:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->$action:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 64
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->access$getMutex$p(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v6

    .line 107
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    invoke-static {v6, p0}, Landroidx/camera/camera2/pipe/core/MutexesKt;->access$lockAndSuspend(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v6

    .line 108
    :goto_0
    new-instance v6, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {v6, v4}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lkotlinx/coroutines/sync/Mutex;)V

    .line 64
    new-instance v4, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1$deferred$1;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->$action:Lkotlin/jvm/functions/Function2;

    invoke-direct {v4, v7, v5}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1$deferred$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    invoke-static {v1, v6, v4, p0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->access$use(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    .line 61
    :goto_1
    check-cast p1, Lkotlinx/coroutines/Deferred;

    .line 66
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 67
    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    return-object p1
.end method
