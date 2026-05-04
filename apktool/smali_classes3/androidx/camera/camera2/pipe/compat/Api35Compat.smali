.class public final Landroidx/camera/camera2/pipe/compat/Api35Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api35Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api35Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api35Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api35Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api35Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAvailableSessionCharacteristicsKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1

    const-string v0, "cameraCharacteristics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionCharacteristicsKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 2

    const-string v0, "cameraMetadata"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Api35Compat$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    const-string v1, "FLASH_TORCH_STRENGTH_DEFAULT_LEVEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 514
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 2

    const-string v0, "cameraMetadata"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Api35Compat$$ExternalSyntheticApiModelOutline3;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    const-string v1, "FLASH_TORCH_STRENGTH_MAX_LEVEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final isTorchStrengthSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "cameraMetadata"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Api35Compat$$ExternalSyntheticApiModelOutline3;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    const-string v1, "FLASH_TORCH_STRENGTH_MAX_LEVEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 508
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final newImageReaderOutputConfiguration(ILandroid/util/Size;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    const-string/jumbo v0, "surfaceSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat$$ExternalSyntheticApiModelOutline0;->m(ILandroid/util/Size;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final newSessionConfiguration(ILjava/util/List;)Landroid/hardware/camera2/params/SessionConfiguration;
    .locals 1

    const-string v0, "outputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat$$ExternalSyntheticApiModelOutline1;->m(ILjava/util/List;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object p0

    return-object p0
.end method
