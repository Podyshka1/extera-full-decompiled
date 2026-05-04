.class public final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;,
        Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;

.field private static final canceledResult:Lkotlinx/coroutines/CompletableDeferred;

.field private static final submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;


# instance fields
.field private final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private final capturePipeline$delegate:Lkotlin/Lazy;

.field private final capturePipelineProvider:Ljavax/inject/Provider;

.field private volatile closed:Z

.field private final infoBundleMap:Ljava/util/Map;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final useCaseCameraState$delegate:Lkotlin/Lazy;

.field private final useCaseCameraStateProvider:Ljavax/inject/Provider;

.field private final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

.field private final useCaseSurfaceManager$delegate:Lkotlin/Lazy;

.field private final useCaseSurfaceManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public static synthetic $r8$lambda$PW1fyHjBvJXB2LDe-VExEgiiT1Y(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManager_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RsnhUcJE9gACxjjcxyIxEdGH9O8(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraState_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tOqWGcRII-tUePQCg5ICkQwXHS4(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipeline_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->Companion:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;

    .line 694
    new-instance v0, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v2, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getSUBMIT_FAILED-JvTi9ms()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v0, 0x1

    .line 695
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    invoke-static {v2, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sput-object v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)V
    .locals 1

    const-string v0, "capturePipelineProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseCameraStateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseGraphContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseSurfaceManagerProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipelineProvider:Ljavax/inject/Provider;

    .line 279
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraStateProvider:Ljavax/inject/Provider;

    .line 280
    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 281
    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManagerProvider:Ljavax/inject/Provider;

    .line 282
    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 283
    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 287
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Configured "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipeline$delegate:Lkotlin/Lazy;

    .line 293
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManager$delegate:Lkotlin/Lazy;

    .line 294
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraState$delegate:Lkotlin/Lazy;

    .line 343
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$failedResults(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->failedResults(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCapturePipeline(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 0

    .line 274
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->getCapturePipeline()Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInfoBundleMap$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Ljava/util/Map;
    .locals 0

    .line 274
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getSubmitFailedResult$cp()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 274
    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseThreads;
    .locals 0

    .line 274
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    return-object p0
.end method

.method public static final synthetic access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;
    .locals 0

    .line 274
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    return-object p0
.end method

.method public static final synthetic access$hasInvalidSurface(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;)Z
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->hasInvalidSurface(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$merge(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/Map;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->merge(Ljava/util/Map;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setParametersInternal(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->setParametersInternal(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$withoutParameters(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/List;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->withoutParameters(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/List;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p0

    return-object p0
.end method

.method private static final capturePipeline_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 0

    .line 292
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipelineProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipeline;

    return-object p0
.end method

.method private final failedResults(ILjava/lang/String;)Ljava/util/List;
    .locals 6

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 574
    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    .line 576
    new-instance v4, Landroidx/camera/core/ImageCaptureException;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p2, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    invoke-interface {v3, v4}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 573
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final getCapturePipeline()Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipeline$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipeline;

    return-object v0
.end method

.method private final getUseCaseCameraState()Landroidx/camera/camera2/impl/UseCaseCameraState;
    .locals 1

    .line 294
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraState$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    return-object v0
.end method

.method private final getUseCaseSurfaceManager()Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
    .locals 1

    .line 293
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    return-object v0
.end method

.method private final hasInvalidSurface(Ljava/util/List;)Z
    .locals 4

    .line 582
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CaptureConfig;

    .line 583
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 586
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v0

    const-string v1, "getSurfaces(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 587
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {v3}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getSurfaceToStreamMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private final merge(Ljava/util/Map;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 7

    .line 604
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 605
    invoke-static {}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    .line 606
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    if-eqz v2, :cond_0

    .line 609
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 610
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTags()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 611
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 612
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/RequestTemplate;->box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->setTemplate-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;
    .locals 8

    .line 664
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->determineStartStrategy$camera_camera2(Landroidx/camera/camera2/impl/UseCaseThreads;)Lkotlinx/coroutines/CoroutineStart;

    move-result-object v3

    .line 665
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v7

    .line 152
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1;

    invoke-direct {v4, p1, v7, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v7
.end method

.method private final runOnSequentialList(ILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 8

    .line 672
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->determineStartStrategy$camera_camera2(Landroidx/camera/camera2/impl/UseCaseThreads;)Lkotlinx/coroutines/CoroutineStart;

    move-result-object v3

    .line 673
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 177
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    const/4 v4, 0x1

    invoke-static {v2, v4, v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;

    invoke-direct {v4, p2, v7, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v7
.end method

.method private final setParametersInternal(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 374
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UseCaseCameraRequestControlImpl#setParametersAsync: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    const-string v2, ", optionPriority = "

    .line 375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/Map;

    .line 384
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 378
    new-instance v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 755
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 378
    :cond_1
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 379
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/Map;

    invoke-direct {p0, v1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->withParameters(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->merge(Ljava/util/Map;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateCameraStateAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final toTagBundle(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;)Landroidx/camera/core/impl/TagBundle;
    .locals 3

    .line 619
    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object v0

    .line 620
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTags()Ljava/util/Map;

    move-result-object p1

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 620
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/MutableTagBundle;->putTag(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 619
    :cond_0
    const-string p1, "also(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;

    iget v1, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p3, v9, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 623
    iget v1, v9, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 650
    iget-boolean p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    if-nez p3, :cond_6

    .line 627
    iget-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    if-eqz p3, :cond_3

    .line 628
    invoke-static {p3}, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;->getCamera2CaptureRequestConfigurator(Landroidx/camera/core/CameraXConfig;)Landroidx/camera/camera2/interop/Camera2CaptureRequestConfigurator;

    .line 631
    :cond_3
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->getCapturePipeline()Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p3

    .line 632
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 633
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 631
    :goto_2
    invoke-interface {p3, v1}, Landroidx/camera/camera2/impl/CapturePipeline;->setTemplate(I)V

    .line 638
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->getUseCaseCameraState()Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object v1

    .line 639
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p3

    invoke-static {p3}, Landroidx/camera/camera2/impl/Camera2ImplConfigKt;->toParameters(Landroidx/camera/core/impl/Config;)Ljava/util/Map;

    move-result-object p3

    .line 641
    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v3

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->toTagBundle(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;)Landroidx/camera/core/impl/TagBundle;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 644
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v7

    .line 645
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getListeners()Ljava/util/Set;

    move-result-object v8

    .line 638
    iput v2, v9, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v9}, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateAsync-Tp9XwKQ(Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_5

    return-object v0

    .line 623
    :cond_5
    :goto_3
    check-cast p3, Lkotlinx/coroutines/Deferred;

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    :goto_4
    if-nez p3, :cond_7

    .line 647
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object p1

    :cond_7
    return-object p3
.end method

.method static synthetic updateCameraStateAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 623
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final useCaseCameraState_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;
    .locals 0

    .line 294
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraStateProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    return-object p0
.end method

.method private static final useCaseSurfaceManager_delegate$lambda$0(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
    .locals 0

    .line 293
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    return-object p0
.end method

.method private final withParameters(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 7

    .line 312
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 313
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 315
    invoke-virtual {v1, p2, p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->addAllCaptureRequestOptionsWithPriority(Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 320
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTags()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 321
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getListeners()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 318
    invoke-static/range {v0 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->copy-0am55g4$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILjava/lang/Object;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p1

    return-object p1
.end method

.method private final withoutParameters(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/List;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 7

    .line 331
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 332
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 333
    invoke-virtual {v1, p2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->removeCaptureRequestOptions(Ljava/util/List;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 338
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTags()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 339
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getListeners()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 336
    invoke-static/range {v0 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->copy-0am55g4$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILjava/lang/Object;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public awaitSurfaceSetup(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 564
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->getUseCaseSurfaceManager()Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->awaitSetupCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cancelFocusAndMeteringAsync()Lkotlinx/coroutines/Deferred;
    .locals 2

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1;

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 507
    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 568
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v1, "UseCaseCameraRequestControl: closed"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->getUseCaseCameraState()Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->close()V

    return-void
.end method

.method public final determineStartStrategy$camera_camera2(Landroidx/camera/camera2/impl/UseCaseThreads;)Lkotlinx/coroutines/CoroutineStart;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->isOnSequentialThread()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    return-object p1

    :cond_0
    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    return-object p1
.end method

.method public issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;
    .locals 8

    const-string v0, "captureSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    if-nez v0, :cond_0

    .line 516
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;IIILkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequentialList(ILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 542
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    .line 543
    const-string p2, "Capture request is cancelled on closed CameraGraph"

    .line 541
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->failedResults(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public removeParametersAsync(Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)Lkotlinx/coroutines/Deferred;
    .locals 2

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$removeParametersAsync$1$1;

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$removeParametersAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 396
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public setParametersAsync(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
    .locals 7

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionPriority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    if-nez v0, :cond_0

    .line 351
    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setParametersAsync$1$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setParametersAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v2, p0

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 352
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferred;

    :cond_1
    return-object p1
.end method

.method public setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;
    .locals 2

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1;

    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;ILkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 459
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public setTorchOnAsync()Lkotlinx/coroutines/Deferred;
    .locals 2

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1;

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 451
    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public startFocusAndMeteringAsync-NxRnBj4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lkotlinx/coroutines/Deferred;
    .locals 12

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;JLkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 488
    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;

    :cond_1
    return-object v0
.end method

.method public submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
    .locals 10

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionPriority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 361
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object p1

    .line 363
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->checkOnSequentialThread()V

    .line 364
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$submitParameters$1;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v7, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$submitParameters$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;
    .locals 7

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    if-nez v0, :cond_0

    .line 552
    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v2, p0

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 562
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferred;

    :cond_1
    return-object p1
.end method

.method public updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lkotlinx/coroutines/Deferred;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1;

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/core/impl/Config;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 443
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public updateRepeatingRequestAsync(ZLjava/util/Collection;)Lkotlinx/coroutines/Deferred;
    .locals 2

    const-string v0, "runningUseCases"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;

    invoke-direct {v0, p2, p1, p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;-><init>(Ljava/util/Collection;ZLandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 430
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object p1

    :cond_1
    return-object v1
.end method
