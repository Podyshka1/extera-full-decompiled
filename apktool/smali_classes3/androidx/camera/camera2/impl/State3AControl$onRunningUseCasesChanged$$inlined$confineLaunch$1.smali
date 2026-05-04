.class public final Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/State3AControl;->onRunningUseCasesChanged(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $useCasesSnapshot$inlined:Ljava/util/Set;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/State3AControl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Ljava/util/Set;Landroidx/camera/camera2/impl/State3AControl;)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->$useCasesSnapshot$inlined:Ljava/util/Set;

    iput-object p3, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->$useCasesSnapshot$inlined:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/util/Set;Landroidx/camera/camera2/impl/State3AControl;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 125
    iget v0, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->$useCasesSnapshot$inlined:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 203
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->$useCasesSnapshot$inlined:Ljava/util/Set;

    invoke-static {p1, v0}, Landroidx/camera/camera2/impl/State3AControl;->access$calculateTemplateFromUseCases(Landroidx/camera/camera2/impl/State3AControl;Ljava/util/Set;)I

    move-result p1

    .line 206
    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    invoke-static {v0}, Landroidx/camera/camera2/impl/State3AControl;->access$getLock$p(Landroidx/camera/camera2/impl/State3AControl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    invoke-static {v1}, Landroidx/camera/camera2/impl/State3AControl;->access$get_template$p(Landroidx/camera/camera2/impl/State3AControl;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 208
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    invoke-static {v1, p1}, Landroidx/camera/camera2/impl/State3AControl;->access$set_template$p(Landroidx/camera/camera2/impl/State3AControl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 206
    :goto_0
    monitor-exit v0

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/State3AControl;->access$update(Landroidx/camera/camera2/impl/State3AControl;)Lkotlinx/coroutines/Deferred;

    goto :goto_2

    .line 206
    :goto_1
    monitor-exit v0

    throw p1

    .line 194
    :cond_1
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
