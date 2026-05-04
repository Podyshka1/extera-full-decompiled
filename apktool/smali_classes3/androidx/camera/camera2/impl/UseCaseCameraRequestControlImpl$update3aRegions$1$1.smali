.class final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $aeRegions:Ljava/util/List;

.field final synthetic $afRegions:Ljava/util/List;

.field final synthetic $awbRegions:Ljava/util/List;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$aeRegions:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$afRegions:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$awbRegions:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$aeRegions:Ljava/util/List;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$afRegions:Ljava/util/List;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$awbRegions:Ljava/util/List;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 552
    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->label:I

    const-string v2, "CXCP"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 553
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 553
    const-string v1, "UseCaseCameraRequestControlImpl#update3aRegions"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$aeRegions:Ljava/util/List;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$afRegions:Ljava/util/List;

    iget-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->$awbRegions:Ljava/util/List;

    .line 657
    :try_start_1
    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p1

    iput-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;->label:I

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    move-object v1, v4

    move-object v0, v5

    .line 552
    :goto_0
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v4, p1

    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    if-nez v3, :cond_4

    .line 556
    sget-object v3, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_4
    move-object v8, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :goto_1
    if-nez v1, :cond_5

    .line 557
    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_5
    move-object v9, v1

    if-nez v0, :cond_6

    .line 558
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_6
    move-object v10, v0

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 555
    invoke-static/range {v4 .. v12}, Landroidx/camera/camera2/pipe/CameraControls3A$-CC;->update3A-ydBZfZg$default(Landroidx/camera/camera2/pipe/CameraControls3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    .line 242
    :try_start_3
    invoke-static {p1, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {p1, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 659
    :goto_3
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 95
    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 659
    const-string v1, "Cannot acquire the CameraGraph.Session"

    .line 96
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    :cond_7
    invoke-static {}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getSubmitFailedResult$cp()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    return-object p1
.end method
