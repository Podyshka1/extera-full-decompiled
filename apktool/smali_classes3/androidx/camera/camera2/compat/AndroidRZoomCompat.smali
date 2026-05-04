.class public final Landroidx/camera/camera2/compat/AndroidRZoomCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/ZoomCompat;


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final range:Landroid/util/Range;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroid/util/Range;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    .line 156
    iput-object p2, p0, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->range:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public applyAsync(FLandroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
    .locals 8

    const-string v0, "requestControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->getMinZoomRatio()F

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->getMaxZoomRatio()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    .line 170
    invoke-static {}, Landroidx/camera/camera2/compat/AndroidRZoomCompat$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 172
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    .line 173
    sget-object p1, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v0, p0, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsZoomOverride(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-static {v3}, Landroidx/camera/camera2/compat/Api34Compat;->setSettingsOverrideZoom(Ljava/util/Map;)V

    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    .line 177
    invoke-static/range {v2 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$-CC;->setParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCropSensorRegion()Landroid/graphics/Rect;
    .locals 3

    .line 190
    iget-object v0, p0, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "SENSOR_INFO_ACTIVE_ARRAY_SIZE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMaxZoomRatio()F
    .locals 2

    .line 162
    iget-object v0, p0, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->range:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    const-string v1, "getUpper(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/camera/camera2/compat/AndroidRZoomCompat;->range:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    const-string v1, "getLower(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public resetAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
    .locals 3

    const-string v0, "requestControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Landroidx/camera/camera2/compat/AndroidRZoomCompat$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    const-string v1, "CONTROL_ZOOM_RATIO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 184
    invoke-static {}, Landroidx/camera/camera2/compat/AndroidRZoomCompat$$ExternalSyntheticApiModelOutline1;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    const-string v2, "CONTROL_SETTINGS_OVERRIDE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 186
    invoke-static {p1, v0, v2, v1, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$-CC;->removeParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method
