.class final Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/GraphLoop;->finalizeUnprocessedCommands(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $command:Landroidx/camera/camera2/pipe/graph/GraphCommand;

.field label:I


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphCommand;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->$command:Landroidx/camera/camera2/pipe/graph/GraphCommand;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->$command:Landroidx/camera/camera2/pipe/graph/GraphCommand;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;-><init>(Landroidx/camera/camera2/pipe/graph/GraphCommand;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 629
    iget v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 630
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->$command:Landroidx/camera/camera2/pipe/graph/GraphCommand;

    check-cast p1, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getOld()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object p1

    if-eqz p1, :cond_3

    iput v3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->label:I

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 631
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->$command:Landroidx/camera/camera2/pipe/graph/GraphCommand;

    check-cast p1, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getNew()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;->label:I

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 632
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
