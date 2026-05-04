.class public final Landroidx/camera/camera2/adapter/ZslControlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/adapter/ZslControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private isZslDisabledByFlashMode:Z

.field private isZslDisabledByQuirks:Z

.field private isZslDisabledByUseCaseConfig:Z

.field private metadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field private final streamConfigurationMap$delegate:Lkotlin/Lazy;

.field private final zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;


# direct methods
.method public static synthetic $r8$lambda$7lfc5XsGJyHuvsU6TFnj5hkeOqY(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->addZslConfig$lambda$6(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HjVdnBFbCz6juHI-elcMFwa4YdI(Landroidx/camera/camera2/adapter/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/ZslControlImpl;->addZslConfig$lambda$5(Landroidx/camera/camera2/adapter/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1SuIs8xKcwXeqIjEU3appq_RmM(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset$lambda$0(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LKuaWDI4O8yhkS0DoPfPSTmRaJI(Landroidx/camera/camera2/adapter/ZslControlImpl;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/ZslControlImpl;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i5aP0xhWzFmN8Aev1pir-7yn51c(Landroidx/camera/core/ImageProxy;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer$lambda$0(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/ZslControlImpl;->Companion:Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;)V
    .locals 2

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    .line 115
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 116
    new-instance p1, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/adapter/ZslControlImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap$delegate:Lkotlin/Lazy;

    .line 122
    new-instance p1, Landroidx/camera/core/internal/utils/ZslRingBuffer;

    new-instance v0, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Landroidx/camera/core/internal/utils/ZslRingBuffer;-><init>(ILandroidx/camera/core/internal/utils/RingBuffer$OnRemoveCallback;)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    .line 126
    sget-object p1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByQuirks:Z

    return-void
.end method

.method private static final addZslConfig$lambda$5(Landroidx/camera/camera2/adapter/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {p0, p1}, Landroidx/camera/core/internal/utils/ZslRingBuffer;->enqueue(Landroidx/camera/core/ImageProxy;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 180
    :catch_0
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 136
    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 137
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    .line 180
    const-string p1, "Failed to acquire latest image"

    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final addZslConfig$lambda$6(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    return-void
.end method

.method private final clearRingBuffer()V
    .locals 2

    .line 277
    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    .line 278
    :goto_0
    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ImageProxy;

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object v0
.end method

.method private final reset()V
    .locals 6

    .line 257
    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 263
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 261
    invoke-interface {v3, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 266
    invoke-virtual {v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->clearOnImageAvailableListener()V

    .line 267
    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 270
    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 273
    :cond_1
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->clearRingBuffer()V

    return-void
.end method

.method private static final reset$lambda$0(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    .line 262
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    return-void
.end method

.method private static final streamConfigurationMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/ZslControlImpl;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 2

    .line 117
    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "SCALER_STREAM_CONFIGURATION_MAP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zslRingBuffer$lambda$0(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    const-string v0, "imageProxy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    return-void
.end method


# virtual methods
.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 8

    const-string/jumbo v0, "sessionConfigBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset()V

    .line 139
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void

    .line 144
    :cond_0
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByQuirks:Z

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void

    .line 149
    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPrivateReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    const-string v2, "CXCP"

    if-nez v0, :cond_3

    .line 150
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 102
    invoke-static {v2}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v2, "ZslControlImpl: Private reprocessing isn\'t supported"

    .line 103
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void

    .line 155
    :cond_3
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    const-string v3, "getInputSizes(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1969
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1970
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1971
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1972
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 1973
    :cond_4
    move-object v4, v3

    check-cast v4, Landroid/util/Size;

    .line 155
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Landroidx/camera/camera2/impl/SizesKt;->area(Landroid/util/Size;)I

    move-result v4

    .line 1975
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1976
    move-object v6, v5

    check-cast v6, Landroid/util/Size;

    .line 155
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Landroidx/camera/camera2/impl/SizesKt;->area(Landroid/util/Size;)I

    move-result v6

    if-ge v4, v6, :cond_6

    move-object v3, v5

    move v4, v6

    .line 1981
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 155
    :goto_0
    check-cast v3, Landroid/util/Size;

    if-nez v3, :cond_7

    .line 157
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    invoke-static {v2}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 157
    const-string v0, "ZslControlImpl: Unable to find a supported size for ZSL"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_7
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZslControlImpl: Selected ZSL size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_8
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v0

    const-string v4, "getValidOutputFormatsForInput(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-static {v0, v4}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 119
    invoke-static {v2}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 165
    const-string v0, "ZslControlImpl: JPEG isn\'t valid output for ZSL format"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 169
    :cond_a
    new-instance v0, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x9

    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    .line 170
    invoke-virtual {v0}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v2

    const-string v3, "getCameraCaptureCallback(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v3, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v3, v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 172
    new-instance v4, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/camera2/adapter/ZslControlImpl;)V

    .line 183
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 172
    invoke-virtual {v0, v4, v5}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 188
    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    .line 189
    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 190
    new-instance v5, Landroid/util/Size;

    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 188
    invoke-direct {v0, v4, v5, v1}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    .line 194
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 196
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 194
    invoke-interface {v1, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 198
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 201
    invoke-virtual {p1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 205
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    .line 206
    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v4

    .line 207
    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v5

    .line 208
    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getImageFormat()I

    move-result v6

    .line 205
    invoke-direct {v1, v4, v5, v6}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 204
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 212
    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->metadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 213
    iput-object v3, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 214
    iput-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    return-void

    .line 189
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1970
    :cond_c
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public clearZslConfig()V
    .locals 0

    .line 253
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset()V

    return-void
.end method

.method public dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;
    .locals 2

    .line 245
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 247
    :catch_0
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, "ZslControlImpl#dequeueImageFromBuffer: No such element"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isZslDisabledByFlashMode()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByFlashMode:Z

    return v0
.end method

.method public isZslDisabledByUserCaseConfig()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    return v0
.end method

.method public isZslSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 2

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedStreamFormat()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 220
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setZslDisabledByFlashMode(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByFlashMode:Z

    return-void
.end method

.method public setZslDisabledByUserCaseConfig(Z)V
    .locals 1

    .line 225
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 226
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->clearRingBuffer()V

    .line 228
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    return-void
.end method
