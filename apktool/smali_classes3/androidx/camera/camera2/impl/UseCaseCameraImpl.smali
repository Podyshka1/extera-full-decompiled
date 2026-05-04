.class public final Landroidx/camera/camera2/impl/UseCaseCameraImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCamera;


# instance fields
.field private final capturePipeline$delegate:Lkotlin/Lazy;

.field private final capturePipelineProvider:Ljavax/inject/Provider;

.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final debugId:I

.field private final requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final sessionConfigAdapter$delegate:Lkotlin/Lazy;

.field private final sessionConfigAdapterProvider:Ljavax/inject/Provider;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

.field private final useCaseSurfaceManager$delegate:Lkotlin/Lazy;

.field private final useCaseSurfaceManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public static synthetic $r8$lambda$CfKAdXTgtHJW4L4tTKAd9BOZDbI(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseSurfaceManager_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D-_OQXyeg10yZNQLenFuuH53P_8(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->capturePipeline_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d9EeqiQ4ZL__GvVM0t5iDA-Oay4(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapter_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    const-string/jumbo p3, "useCaseGraphContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "threads"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "requestControl"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "useCaseSurfaceManagerProvider"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "sessionConfigAdapterProvider"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "capturePipelineProvider"

    invoke-static {p7, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 77
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 79
    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 80
    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseSurfaceManagerProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapterProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p7, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->capturePipelineProvider:Ljavax/inject/Provider;

    .line 84
    invoke-static {}, Landroidx/camera/camera2/impl/UseCaseCameraKt;->getUseCaseCameraIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->debugId:I

    const/4 p1, 0x0

    .line 85
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 88
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Configured "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseSurfaceManager$delegate:Lkotlin/Lazy;

    .line 92
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapter$delegate:Lkotlin/Lazy;

    .line 93
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->capturePipeline$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$findStillCaptureStreamId-4TVKcYk(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/pipe/StreamId;
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->findStillCaptureStreamId-4TVKcYk()Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClosed$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Lkotlinx/atomicfu/AtomicBoolean;
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getSessionConfigAdapter(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->getSessionConfigAdapter()Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSessionProcessor$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    return-object p0
.end method

.method public static final synthetic access$getUseCaseSurfaceManager(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->getUseCaseSurfaceManager()Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCaptureSessionRequestProcessor-9O56998(Landroidx/camera/camera2/impl/UseCaseCameraImpl;Landroidx/camera/camera2/pipe/StreamId;Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->setCaptureSessionRequestProcessor-9O56998(Landroidx/camera/camera2/pipe/StreamId;Landroidx/camera/camera2/pipe/CameraGraph;)V

    return-void
.end method

.method private static final capturePipeline_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 0

    .line 93
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->capturePipelineProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipeline;

    return-object p0
.end method

.method private final findStillCaptureStreamId-4TVKcYk()Landroidx/camera/camera2/pipe/StreamId;
    .locals 5

    .line 139
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->getSessionConfigAdapter()Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidSessionConfigOrNull()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 140
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v2

    const-string v3, "getSurfaces(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/core/impl/DeferrableSurface;

    .line 144
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    if-nez v3, :cond_3

    return-object v1

    .line 147
    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 148
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getStreamIdsFromSurfaces(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/StreamId;

    return-object v0
.end method

.method private final getSessionConfigAdapter()Landroidx/camera/camera2/adapter/SessionConfigAdapter;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    return-object v0
.end method

.method private final getUseCaseSurfaceManager()Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseSurfaceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    return-object v0
.end method

.method private static final sessionConfigAdapter_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->sessionConfigAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    return-object p0
.end method

.method private final setCaptureSessionRequestProcessor-9O56998(Landroidx/camera/camera2/pipe/StreamId;Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 0

    return-void
.end method

.method private static final useCaseSurfaceManager_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
    .locals 0

    .line 91
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseSurfaceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    return-object p0
.end method


# virtual methods
.method public close()Lkotlinx/coroutines/Job;
    .locals 7

    .line 181
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->close()V

    .line 183
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 194
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraImpl$close$$inlined$confineLaunch$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0, p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$close$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    return-object v0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object v0
.end method

.method public setActiveResumeMode(Z)V
    .locals 7

    .line 195
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 194
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0, p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;Z)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public start()V
    .locals 7

    .line 96
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 194
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0, p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$start$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UseCaseCamera-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRepeatingRequestAsync(ZLjava/util/Collection;)Lkotlinx/coroutines/Job;
    .locals 1

    const-string v0, "runningUseCases"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->updateRepeatingRequestAsync(ZLjava/util/Collection;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method
