.class public final Landroidx/camera/camera2/pipe/CameraMetadata$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

.field private static final CAMERA_AVAILABLE_COLOR_SPACE_PROFILES:Landroidx/camera/camera2/pipe/Metadata$Key;

.field private static final CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

.field private static final CAMERA_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

.field private static EMPTY_INT_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 83
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    .line 47
    const-class v1, Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.scalar.streamConfigurationMap"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    .line 83
    sput-object v1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 47
    const-class v1, Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.scalar.multiResolutionStreamConfigurationMap"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    .line 96
    sput-object v1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 47
    const-class v1, Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.request.availableColorSpaceProfilesMap"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    .line 108
    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_AVAILABLE_COLOR_SPACE_PROFILES:Landroidx/camera/camera2/pipe/Metadata$Key;

    const/4 v0, 0x0

    .line 116
    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAvailableCapabilities(Landroidx/camera/camera2/pipe/CameraMetadata;)[I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "REQUEST_AVAILABLE_CAPABILITIES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_0

    sget-object p1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    :cond_0
    return-object p1
.end method

.method public final getAvailableVideoStabilizationModes(Landroidx/camera/camera2/pipe/CameraMetadata;)[I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_0

    .line 147
    sget-object p1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    :cond_0
    return-object p1
.end method

.method public final getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 336
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 319
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getSupportsAutoFocusTrigger(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "LENS_INFO_MINIMUM_FOCUS_DISTANCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 279
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "CONTROL_AF_AVAILABLE_MODES"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_2

    return v1

    .line 280
    :cond_2
    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    .line 281
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 282
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    .line 283
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public final getSupportsHighSpeedVideo(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getAvailableCapabilities(Landroidx/camera/camera2/pipe/CameraMetadata;)[I

    move-result-object p1

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p1

    return p1
.end method

.method public final getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "CONTROL_AE_AVAILABLE_MODES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x6

    .line 344
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p1

    return p1
.end method

.method public final getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 354
    sget-object v0, Landroidx/camera/camera2/pipe/compat/Api33Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api33Compat;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->supportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getSupportsPrivateReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getAvailableCapabilities(Landroidx/camera/camera2/pipe/CameraMetadata;)[I

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p1

    return p1
.end method

.method public final getSupportsTorchStrength(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 303
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->isTorchStrengthSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getSupportsZoomOverride(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 293
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api34Compat;->isZoomOverrideSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isHardwareLevelExternal(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isHardwareLevelLimited(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
