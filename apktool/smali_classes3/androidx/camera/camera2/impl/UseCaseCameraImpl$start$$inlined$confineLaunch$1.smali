.class public final Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 95
    iget v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getClosed$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result p1

    const-string v0, "CXCP"

    if-eqz p1, :cond_0

    .line 202
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 205
    const-string v0, "UseCaseCamera is closed before starting the CameraGraph, skipping setup."

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 209
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v2

    .line 212
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->configureCameraStateListener()V

    .line 215
    invoke-interface {v2}, Landroidx/camera/camera2/pipe/CameraGraphBase;->start()V

    .line 217
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getSurfaceToStreamMap()Ljava/util/Map;

    move-result-object v4

    .line 220
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$findStillCaptureStreamId-4TVKcYk(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p1

    .line 222
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v3, "Setting up Surfaces with UseCaseSurfaceManager"

    .line 86
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {v1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getSessionConfigAdapter(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isSessionConfigValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getUseCaseSurfaceManager(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    move-result-object v1

    const-string v0, "access$getUseCaseSurfaceManager(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getSessionConfigAdapter(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    move-result-object v3

    const-string v0, "access$getSessionConfigAdapter(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupAsync$default(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;JILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 230
    sget-object v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$1$3;->INSTANCE:Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$1$3;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {v0}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "Unable to create capture session due to conflicting configurations"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {v0, p1, v2}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$setCaptureSessionRequestProcessor-9O56998(Landroidx/camera/camera2/impl/UseCaseCameraImpl;Landroidx/camera/camera2/pipe/StreamId;Landroidx/camera/camera2/pipe/CameraGraph;)V

    .line 194
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
