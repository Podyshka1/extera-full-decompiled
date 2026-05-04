.class public final Landroidx/camera/camera2/pipe/compat/Api31Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api31Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api31Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api31Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api31Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api31Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createExtensionCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V
    .locals 1

    const-string v0, "cameraDevice"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createExtensionSession(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V

    return-void
.end method

.method public static final getCameraExtensionCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 1

    const-string v0, "cameraManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p0

    const-string p1, "getCameraExtensionCharacteristics(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getPhysicalCameraTotalResults(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;
    .locals 1

    const-string/jumbo v0, "totalCaptureResult"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final getSupportedExtensions(Landroid/hardware/camera2/CameraExtensionCharacteristics;)Ljava/util/List;
    .locals 1

    const-string v0, "extensionCharacteristics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedExtensions()Ljava/util/List;

    move-result-object p0

    const-string v0, "getSupportedExtensions(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final newExtensionSessionConfiguration(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .locals 1

    const-string v0, "outputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/Api31Compat$$ExternalSyntheticApiModelOutline0;->m(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)Landroid/hardware/camera2/params/ExtensionSessionConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final newInputConfiguration(Ljava/util/List;Ljava/lang/String;)Landroid/hardware/camera2/params/InputConfiguration;
    .locals 4

    const-string v0, "inputConfigData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 296
    new-instance p1, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getFormat()I

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    return-object p1

    .line 299
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 300
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Api31Compat$$ExternalSyntheticApiModelOutline3;->m()V

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getHeight()I

    move-result v2

    invoke-static {v3, v2, p1}, Landroidx/camera/camera2/pipe/compat/Api31Compat$$ExternalSyntheticApiModelOutline1;->m(IILjava/lang/String;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    move-result-object v2

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Api31Compat$$ExternalSyntheticApiModelOutline4;->m()V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getFormat()I

    move-result p0

    invoke-static {v1, p0}, Landroidx/camera/camera2/pipe/compat/Api31Compat$$ExternalSyntheticApiModelOutline2;->m(Ljava/util/Collection;I)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object p0

    return-object p0

    .line 290
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to create InputConfiguration but list of InputConfigData is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
