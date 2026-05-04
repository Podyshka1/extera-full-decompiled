.class final Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->isSupported(Landroidx/camera/core/impl/SessionConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $creationResult:Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->this$0:Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->$creationResult:Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->this$0:Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->$creationResult:Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;-><init>(Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget v1, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->label:I

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

    .line 59
    iget-object p1, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->this$0:Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->access$getCameraPipe$p(Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->$creationResult:Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->getConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v1

    iput v2, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->label:I

    invoke-interface {p1, v1, p0}, Landroidx/camera/camera2/pipe/CameraPipe;->isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;->$creationResult:Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    check-cast p1, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->unbox-impl()I

    move-result v1

    .line 60
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->getConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1563
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 63
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 1563
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1635
    check-cast v8, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", format="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getFormat-8FPWQzE()I

    move-result v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/StreamFormat;->toString-impl(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", dynamicRangeProfile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v8

    .line 64
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1635
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1635
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FeatureCombinationQueryImpl#isSupported: result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for sessionParameters = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->getConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionParameters()Ljava/util/Map;

    move-result-object v0

    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, " and streams = "

    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_5
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->unbox-impl()I

    move-result p1

    .line 72
    sget-object v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getSUPPORTED-Xp6DSB4()I

    move-result v0

    .line 59
    invoke-static {p1, v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->equals-impl0(II)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
