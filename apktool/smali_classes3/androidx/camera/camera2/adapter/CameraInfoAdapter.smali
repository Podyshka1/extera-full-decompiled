.class public final Landroidx/camera/camera2/adapter/CameraInfoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInfoInternal;
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;


# instance fields
.field private final _physicalCameraInfos$delegate:Lkotlin/Lazy;

.field private final camera2CameraInfo$delegate:Lkotlin/Lazy;

.field private final cameraCallbackMap:Landroidx/camera/camera2/impl/CameraCallbackMap;

.field private final cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

.field private final cameraControlStateAdapter:Landroidx/camera/camera2/adapter/CameraControlStateAdapter;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field private final encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

.field private final intrinsicZoomCalculator:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

.field private final isLegacyDevice$delegate:Lkotlin/Lazy;

.field private final streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

.field private final streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;


# direct methods
.method public static synthetic $r8$lambda$8g70NABhA3_822vIurrdbS-08FA(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->_physicalCameraInfos_delegate$lambda$0(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fgry69gZOm7VnDY-P995-fW1f-Q(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->isLegacyDevice_delegate$lambda$0(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qd-sqass8XyIp3pPSJzEyEBqz3M(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->camera2CameraInfo_delegate$lambda$0(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/CameraControlStateAdapter;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraStateAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraControlStateAdapter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraCallbackMap"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusMeteringControl"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraQuirks"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoderProfilesProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamConfigurationMapCompat"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intrinsicZoomCalculator"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamSpecsCalculator"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    .line 90
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    .line 91
    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 92
    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraControlStateAdapter:Landroidx/camera/camera2/adapter/CameraControlStateAdapter;

    .line 93
    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraCallbackMap:Landroidx/camera/camera2/impl/CameraCallbackMap;

    .line 94
    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

    .line 95
    iput-object p7, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 96
    iput-object p8, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 97
    iput-object p9, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 98
    iput-object p10, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->intrinsicZoomCalculator:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

    .line 99
    iput-object p11, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    .line 102
    sget-object p2, Landroidx/camera/camera2/impl/DeviceInfoLogger;->INSTANCE:Landroidx/camera/camera2/impl/DeviceInfoLogger;

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/impl/DeviceInfoLogger;->logDeviceInfo(Landroidx/camera/camera2/impl/CameraProperties;)V

    .line 105
    new-instance p1, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->_physicalCameraInfos$delegate:Lkotlin/Lazy;

    .line 117
    new-instance p1, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->isLegacyDevice$delegate:Lkotlin/Lazy;

    .line 120
    new-instance p1, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->camera2CameraInfo$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final _physicalCameraInfos_delegate$lambda$0(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Ljava/util/Set;
    .locals 6

    .line 106
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v3, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 110
    new-instance v4, Landroidx/camera/camera2/config/CameraConfig;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroidx/camera/camera2/config/CameraConfig;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    iget-object v5, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v5}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v5

    invoke-interface {v5, v2}, Landroidx/camera/camera2/pipe/CameraMetadata;->awaitPhysicalMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v2

    .line 109
    invoke-direct {v3, v4, v2}, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;-><init>(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 113
    new-instance v2, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;

    invoke-direct {v2, v3}, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;-><init>(Landroidx/camera/camera2/impl/CameraProperties;)V

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static final camera2CameraInfo_delegate$lambda$0(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 1

    .line 121
    sget-object v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->Companion:Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;->create(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getCameraSelectorLensFacing(I)I
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 162
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized lens facing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static final isLegacyDevice_delegate$lambda$0(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Z
    .locals 1

    .line 117
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAvailableCapabilities()Ljava/util/Set;
    .locals 3

    .line 385
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "REQUEST_AVAILABLE_CAPABILITIES"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 386
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([I)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getCamera2CameraInfo$camera_camera2()Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->camera2CameraInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    return-object v0
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public bridge synthetic getCameraCharacteristics()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    invoke-virtual {v0}, Landroidx/camera/camera2/config/CameraConfig;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getCameraIdentifier()Landroidx/camera/core/CameraIdentifier;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInfoInternal$-CC;->$default$getCameraIdentifier(Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getCameraQuirks()Landroidx/camera/core/impl/Quirks;
    .locals 1

    .line 277
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object v0

    return-object v0
.end method

.method public getCameraState()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->getCameraState$camera_camera2()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    return-object v0
.end method

.method public synthetic getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInfoInternal$-CC;->$default$getImplementation(Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    return-object v0
.end method

.method public getLensFacing()I
    .locals 3

    .line 133
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "LENS_FACING"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->getCameraSelectorLensFacing(I)I

    move-result v0

    return v0
.end method

.method public getSensorRect()Landroid/graphics/Rect;
    .locals 4

    .line 327
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "SENSOR_INFO_ACTIVE_ARRAY_SIZE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 328
    const-string v1, "robolectric"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xfa0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 331
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSensorRotationDegrees()I
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->getSensorRotationDegrees(I)I

    move-result v0

    return v0
.end method

.method public getSensorRotationDegrees(I)I
    .locals 3

    .line 174
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "SENSOR_ORIENTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 176
    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result p1

    .line 180
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->getLensFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-static {p1, v0, v2}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->getRelativeImageRotation(IIZ)I

    move-result p1

    return p1
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 2

    .line 297
    sget-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;->fromCameraMetaData(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHighResolutions(I)Ljava/util/List;
    .locals 1

    .line 260
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 261
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedHighSpeedResolutions()Ljava/util/List;
    .locals 1

    .line 315
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHighSpeedResolutionsFor(Landroid/util/Range;)Ljava/util/List;
    .locals 2

    const-string v0, "fpsRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 319
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 320
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    .line 319
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    move-object v0, p1

    :goto_3
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getSupportedOutputFormats()Ljava/util/Set;
    .locals 1

    .line 252
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getOutputFormats()[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedResolutions(I)Ljava/util/List;
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTimebase()Landroidx/camera/core/impl/Timebase;
    .locals 3

    .line 243
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "SENSOR_INFO_TIMESTAMP_SOURCE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 247
    sget-object v0, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    return-object v0

    .line 245
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/Timebase;->REALTIME:Landroidx/camera/core/impl/Timebase;

    return-object v0

    .line 246
    :cond_1
    sget-object v0, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    return-object v0
.end method

.method public getZoomState()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraControlStateAdapter:Landroidx/camera/camera2/adapter/CameraControlStateAdapter;

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->getZoomStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public hasFlashUnit()Z
    .locals 4

    .line 170
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/camera/camera2/compat/workaround/FlashAvailabilityCheckerKt;->isFlashAvailable$default(Landroidx/camera/camera2/impl/CameraProperties;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isExternalCamera()Z
    .locals 3

    .line 137
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->getLensFacing()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 138
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public isHighSpeedSupported()Z
    .locals 2

    .line 301
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsHighSpeedVideo(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    return v0
.end method

.method public isPreviewStabilizationSupported()Z
    .locals 2

    .line 341
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    return v0
.end method

.method public synthetic isResolvedFeatureGroupSupported(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraInfoInternal$-CC;->$default$isResolvedFeatureGroupSupported(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)Z

    move-result p1

    return p1
.end method

.method public isVideoStabilizationSupported()Z
    .locals 3

    .line 346
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    .line 347
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 349
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic setCameraUseCaseAdapterProvider(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraInfoInternal$-CC;->$default$setCameraUseCaseAdapterProvider(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/CameraUseCaseAdapterProvider;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraInfoAdapter<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".cameraId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    const-class v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.CameraInfoAdapter.unwrapAs"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->getCamera2CameraInfo$camera_camera2()Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 269
    :cond_0
    const-class v0, Landroidx/camera/camera2/impl/CameraProperties;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 270
    :cond_1
    const-class v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 271
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
