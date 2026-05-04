.class final Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "PipePresenceSrc"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 117
    iget v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->label:I

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    :try_start_0
    iget-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-static {p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->access$getCameraManager$p(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    const-string v1, "getCameraIdList(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13472
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .line 123
    :try_start_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x6

    invoke-static {v4, v5, v5, v6, v5}, Landroidx/camera/core/CameraIdentifier$Factory;->create$default(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;ILjava/lang/Object;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 127
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create CameraIdentifier for system ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v0, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v5, :cond_0

    .line 160
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FetchData] Refreshed camera list from hardware: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-static {p1, v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->access$updateData(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/util/List;)V

    .line 136
    iget-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p1, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 138
    :goto_2
    const-string v1, "[FetchData] Failed to refresh camera list from hardware."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-static {v0, p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->access$updateError(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 142
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
