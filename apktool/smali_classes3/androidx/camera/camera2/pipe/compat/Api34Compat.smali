.class public final Landroidx/camera/camera2/pipe/compat/Api34Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api34Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api34Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api34Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api34Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api34Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isCaptureProcessProgressAvailable(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Z
    .locals 1

    const-string v0, "extensionCharacteristics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isCaptureProcessProgressAvailable(I)Z

    move-result p0

    return p0
.end method

.method public static final isPostviewAvailable(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Z
    .locals 1

    const-string v0, "extensionCharacteristics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isPostviewAvailable(I)Z

    move-result p0

    return p0
.end method

.method public static final isZoomOverrideSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "cameraMetadata"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Api34Compat$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    const-string v1, "CONTROL_AVAILABLE_SETTINGS_OVERRIDES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static final setColorSpace(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/graphics/ColorSpace$Named;)V
    .locals 1

    const-string/jumbo v0, "sessionConfiguration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorSpace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    return-void
.end method

.method public static final setPostviewOutputConfiguration(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 1

    const-string v0, "extensionSessionConfiguration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postviewOutputConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->setPostviewOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V

    return-void
.end method
