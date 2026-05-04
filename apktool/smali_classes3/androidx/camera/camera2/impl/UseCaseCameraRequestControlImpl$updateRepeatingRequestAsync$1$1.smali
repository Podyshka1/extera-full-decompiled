.class final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateRepeatingRequestAsync(ZLjava/util/Collection;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isPrimary:Z

.field final synthetic $runningUseCases:Ljava/util/Collection;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;


# direct methods
.method constructor <init>(Ljava/util/Collection;ZLandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->$runningUseCases:Ljava/util/Collection;

    iput-boolean p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->$isPrimary:Z

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->$runningUseCases:Ljava/util/Collection;

    iget-boolean v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->$isPrimary:Z

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;-><init>(Ljava/util/Collection;ZLandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 403
    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 404
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 404
    const-string v3, "UseCaseCameraRequestControlImpl: Building SessionConfig..."

    .line 86
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    new-instance v1, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->$runningUseCases:Ljava/util/Collection;

    iget-boolean v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->$isPrimary:Z

    invoke-direct {v1, v3, v4}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;-><init>(Ljava/util/Collection;Z)V

    .line 408
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidSessionConfigOrNull()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    if-nez v1, :cond_4

    .line 85
    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 410
    const-string v3, "Using default SessionConfig"

    .line 86
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    new-instance v1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    .line 412
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 413
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    const-string v3, "build(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    :cond_4
    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    .line 417
    const-string v4, "UseCaseCameraRequestControlImpl: SessionConfig built. Updating state..."

    .line 86
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_5
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-static {v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getInfoBundleMap$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->SESSION_CONFIG:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    .line 421
    sget-object v5, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->Companion:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;

    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-static {v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getThreads$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseThreads;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-static {v5, v1, v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;->access$toInfoBundle(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;Landroidx/camera/core/impl/SessionConfig;Ljava/util/concurrent/Executor;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-static {v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object v3

    .line 425
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v1

    const-string v4, "getSurfaces(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    .line 424
    invoke-virtual {v3, v1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getStreamIdsFromSurfaces(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 85
    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 427
    const-string v3, "UseCaseCameraRequestControlImpl: State update processing."

    .line 86
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getInfoBundleMap$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$merge(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/Map;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object v3

    iput v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;->label:I

    invoke-static {p1, v3, v1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    return-object p1
.end method
