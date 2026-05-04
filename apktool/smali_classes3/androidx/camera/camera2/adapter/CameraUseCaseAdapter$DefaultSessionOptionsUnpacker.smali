.class public final Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSessionOptionsUnpacker"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;-><init>()V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;->INSTANCE:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unpack(Landroid/util/Size;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 4

    const-string v0, "resolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 213
    invoke-interface {p2, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    .line 215
    invoke-static {}, Landroidx/camera/core/impl/OptionsBundle;->emptyBundle()Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v2

    const-string v3, "emptyBundle(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Landroidx/camera/core/impl/SessionConfig;->defaultEmptySessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getTemplateType()I

    move-result v3

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getTemplateType()I

    move-result v3

    .line 221
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getDeviceStateCallbacks()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addAllDeviceStateCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 222
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSessionStateCallbacks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addAllSessionStateCallbacks(Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 224
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 223
    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addAllRepeatingCameraCaptureCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 226
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v2

    const-string v1, "getImplementationOptions(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 232
    instance-of v1, p2, Landroidx/camera/core/impl/PreviewConfig;

    if-eqz v1, :cond_1

    .line 234
    invoke-static {p3, p1}, Landroidx/camera/camera2/compat/workaround/PreviewPixelHDRnetKt;->setupHDRnet(Landroidx/camera/core/impl/SessionConfig$Builder;Landroid/util/Size;)V

    .line 238
    :cond_1
    new-instance p1, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    invoke-direct {p1, p2}, Landroidx/camera/camera2/impl/Camera2ImplConfig;-><init>(Landroidx/camera/core/impl/Config;)V

    .line 241
    invoke-virtual {p1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getCaptureRequestTemplate(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    const/4 v1, 0x1

    .line 244
    invoke-static {p1, v0, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getDeviceStateCallback$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Landroid/hardware/camera2/CameraDevice$StateCallback;ILjava/lang/Object;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 245
    :cond_2
    invoke-static {p1, v0, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getSessionStateCallback$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;ILjava/lang/Object;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 246
    :cond_3
    invoke-static {p1, v0, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getSessionCaptureCallback$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILjava/lang/Object;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 247
    sget-object v3, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->Companion:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;

    invoke-virtual {v3, v2}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;->create(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 250
    :cond_4
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->getPreviewStabilizationMode()I

    move-result v2

    invoke-virtual {p3, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setPreviewStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 251
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->getVideoStabilizationMode()I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setVideoStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 255
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p2

    .line 256
    invoke-static {p1, v0, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getPhysicalCameraId$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 258
    sget-object v3, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_PHYSICAL_CAMERA_ID_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 257
    invoke-virtual {p2, v3, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 263
    :cond_5
    invoke-static {p1, v0, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getStreamUseCase$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 264
    sget-object v2, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 255
    :cond_6
    const-string v0, "apply(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 270
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void
.end method
