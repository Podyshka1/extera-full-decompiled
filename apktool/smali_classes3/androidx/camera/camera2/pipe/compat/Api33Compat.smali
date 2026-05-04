.class public final Landroidx/camera/camera2/pipe/compat/Api33Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api33Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api33Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api33Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api33Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api33Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAvailableCaptureRequestKeys(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Ljava/util/Set;
    .locals 1

    const-string v0, "extensionCharacteristics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureRequestKeys(I)Ljava/util/Set;

    move-result-object p0

    const-string p1, "getAvailableCaptureRequestKeys(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getAvailableCaptureResultKeys(Landroid/hardware/camera2/CameraExtensionCharacteristics;I)Ljava/util/Set;
    .locals 1

    const-string v0, "extensionCharacteristics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureResultKeys(I)Ljava/util/Set;

    move-result-object p0

    const-string p1, "getAvailableCaptureResultKeys(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final setDynamicRangeProfile(Landroid/hardware/camera2/params/OutputConfiguration;J)V
    .locals 1

    const-string v0, "outputConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V

    return-void
.end method

.method public static final setMirrorMode(Landroid/hardware/camera2/params/OutputConfiguration;I)V
    .locals 1

    const-string v0, "outputConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setMirrorMode(I)V

    return-void
.end method

.method public static final setStreamUseCase(Landroid/hardware/camera2/params/OutputConfiguration;J)V
    .locals 1

    const-string v0, "outputConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->setStreamUseCase(J)V

    return-void
.end method


# virtual methods
.method public final supportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getAvailableVideoStabilizationModes(Landroidx/camera/camera2/pipe/CameraMetadata;)[I

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p1

    return p1
.end method
