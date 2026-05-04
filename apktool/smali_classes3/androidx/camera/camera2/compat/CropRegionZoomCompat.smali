.class public final Landroidx/camera/camera2/compat/CropRegionZoomCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/ZoomCompat;


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private currentCropRect:Landroid/graphics/Rect;

.field private final sensorRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;)V
    .locals 2

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    .line 112
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "SENSOR_INFO_ACTIVE_ARRAY_SIZE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->sensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method private final computeCropRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    .line 134
    sget-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/internal/ZoomMath;->nearZero$camera_camera2(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string p2, "CXCP"

    invoke-static {p2}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    .line 136
    const-string v0, "ZoomCompat: Invalid zoom ratio of 0.0f passed in, defaulting to 1.0f"

    .line 120
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    .line 144
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, p2

    float-to-int v4, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {v2, v3, v4, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method


# virtual methods
.method public applyAsync(FLandroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
    .locals 6

    const-string v0, "requestControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->sensorRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->computeCropRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->currentCropRect:Landroid/graphics/Rect;

    .line 120
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    .line 119
    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$-CC;->setParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public getCropSensorRegion()Landroid/graphics/Rect;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->currentCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->sensorRect:Landroid/graphics/Rect;

    :cond_0
    return-object v0
.end method

.method public getMaxZoomRatio()F
    .locals 4

    .line 97
    iget-object v0, p0, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    .line 98
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "SCALER_AVAILABLE_MAX_DIGITAL_ZOOM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/CropRegionZoomCompat;->getMinZoomRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 97
    invoke-interface {v0, v1, v2}, Landroidx/camera/camera2/pipe/CameraMetadata;->getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 101
    sget-object v1, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/ZoomMath;->nearZero$camera_camera2(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid max zoom ratio of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " detected, defaulting to 1.0f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public resetAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
    .locals 3

    const-string v0, "requestControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 125
    invoke-static {p1, v0, v1, v2, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$-CC;->removeParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method
