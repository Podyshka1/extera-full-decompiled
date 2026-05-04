.class public final Landroidx/camera/camera2/adapter/CaptureConfigAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;


# instance fields
.field private final isLegacyDevice:Z

.field private final templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

.field private final zslControl:Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseGraphContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zslControl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateParamsOverride"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 58
    iput-object p3, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    .line 59
    iput-object p4, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 60
    iput-object p5, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 62
    sget-object p2, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->isLegacyDevice:Z

    return-void
.end method

.method public static final synthetic access$buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 52
    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method private final buildImageClosingRequestListener(Landroidx/camera/core/ImageProxy;)Landroidx/camera/camera2/pipe/Request$Listener;
    .locals 1

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 179
    new-instance p1, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;

    invoke-direct {p1, v0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p1
.end method

.method private static final buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageProxy;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final mapToRequest-nAberiA(Landroidx/camera/core/impl/CaptureConfig;ILandroidx/camera/core/impl/Config;Ljava/util/List;)Landroidx/camera/camera2/pipe/Request;
    .locals 9

    const-string v0, "captureConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionConfigOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalListeners"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v0

    const-string v1, "getSurfaces(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 83
    check-cast v0, Ljava/lang/Iterable;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 84
    iget-object v3, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {v3}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getSurfaceToStreamMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v1

    .line 86
    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    .line 1635
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to issue a capture with an unrecognized surface: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 90
    :cond_1
    new-instance v0, Landroidx/camera/camera2/impl/CameraCallbackMap;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraCallbackMap;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v1

    const-string v3, "getCameraCaptureCallbacks(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 92
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v4}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/camera/camera2/impl/CameraCallbackMap;->addCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    const-string v3, "getImplementationOptions(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v3, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 102
    invoke-virtual {v3, p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 103
    invoke-virtual {v3, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 106
    sget-object p3, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "JPEG_ORIENTATION"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v3, v4, p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 112
    :cond_3
    sget-object p3, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "JPEG_QUALITY"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    int-to-byte p3, p3

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    .line 113
    invoke-virtual {v3, v4, p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 121
    :cond_4
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p3

    invoke-static {p3}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p3

    .line 123
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v1

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ne v1, v4, :cond_9

    .line 124
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v1}, Landroidx/camera/camera2/adapter/ZslControl;->isZslDisabledByUserCaseConfig()Z

    move-result v1

    if-nez v1, :cond_9

    .line 125
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v1}, Landroidx/camera/camera2/adapter/ZslControl;->isZslDisabledByFlashMode()Z

    move-result v1

    if-nez v1, :cond_9

    .line 127
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v1}, Landroidx/camera/camera2/adapter/ZslControl;->dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 128
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/core/impl/CameraCaptureResults;->retrieveCameraCaptureResult(Landroidx/camera/core/ImageInfo;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 130
    instance-of v5, v4, Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    if-eqz v5, :cond_7

    .line 133
    new-instance v5, Landroidx/camera/camera2/pipe/media/AndroidImage;

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v6

    const-string v7, "Required value was null."

    if-eqz v6, :cond_6

    invoke-direct {v5, v6}, Landroidx/camera/camera2/pipe/media/AndroidImage;-><init>(Landroid/media/Image;)V

    .line 134
    check-cast v4, Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    const-class v6, Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    check-cast v4, Landroidx/camera/camera2/pipe/FrameInfo;

    .line 135
    new-instance v6, Landroidx/camera/camera2/pipe/InputRequest;

    invoke-direct {v6, v5, v4}, Landroidx/camera/camera2/pipe/InputRequest;-><init>(Landroidx/camera/camera2/pipe/media/ImageWrapper;Landroidx/camera/camera2/pipe/FrameInfo;)V

    .line 142
    invoke-direct {p0, v1}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->buildImageClosingRequestListener(Landroidx/camera/core/ImageProxy;)Landroidx/camera/camera2/pipe/Request$Listener;

    move-result-object v5

    move-object v1, v5

    move-object v5, v6

    goto :goto_2

    .line 134
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected capture result type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    move-object v1, v5

    :goto_2
    move-object v7, v5

    move-object v5, v1

    goto :goto_3

    :cond_9
    move-object v7, v5

    :goto_3
    if-nez v7, :cond_a

    .line 150
    sget-object p3, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->isLegacyDevice:Z

    invoke-virtual {p3, p1, p2, v1}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;->getStillCaptureTemplate-CMLptTo$camera_camera2(Landroidx/camera/core/impl/CaptureConfig;IZ)I

    move-result p3

    .line 154
    :cond_a
    iget-object p2, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    invoke-static {p3}, Landroidx/camera/camera2/pipe/RequestTemplate;->box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v1

    invoke-interface {p2, v1}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;->getOverrideParams-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)Ljava/util/Map;

    move-result-object p2

    .line 155
    invoke-virtual {v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfigKt;->toParameters(Landroidx/camera/core/impl/Config;)Ljava/util/Map;

    move-result-object v1

    .line 154
    invoke-static {p2, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 156
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p2

    .line 157
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_b

    .line 158
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_b
    check-cast p4, Ljava/util/Collection;

    invoke-interface {p2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 166
    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 162
    new-instance v1, Landroidx/camera/camera2/pipe/Request;

    .line 167
    invoke-static {p3}, Landroidx/camera/camera2/pipe/RequestTemplate;->box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v6

    const/4 v8, 0x0

    .line 162
    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 79
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to issue a capture without surfaces using "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
