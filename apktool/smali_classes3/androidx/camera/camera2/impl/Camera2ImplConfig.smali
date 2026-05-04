.class public final Landroidx/camera/camera2/impl/Camera2ImplConfig;
.super Landroidx/camera/camera2/interop/CaptureRequestOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;,
        Landroidx/camera/camera2/impl/Camera2ImplConfig$Companion;
    }
.end annotation


# static fields
.field public static final CAPTURE_REQUEST_TAG_OPTION:Landroidx/camera/core/impl/Config$Option;

.field public static final Companion:Landroidx/camera/camera2/impl/Camera2ImplConfig$Companion;

.field public static final DEVICE_STATE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

.field public static final SESSION_CAPTURE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

.field public static final SESSION_PHYSICAL_CAMERA_ID_OPTION:Landroidx/camera/core/impl/Config$Option;

.field public static final SESSION_STATE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

.field public static final STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

.field public static final STREAM_USE_HINT_OPTION:Landroidx/camera/core/impl/Config$Option;

.field public static final TEMPLATE_TYPE_OPTION:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->Companion:Landroidx/camera/camera2/impl/Camera2ImplConfig$Companion;

    .line 253
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    const-string v1, "camera2.captureRequest.templateType"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->TEMPLATE_TYPE_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 259
    const-string v0, "camera2.cameraDevice.stateCallback"

    .line 260
    const-class v2, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 258
    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->DEVICE_STATE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 267
    const-string v0, "camera2.cameraCaptureSession.stateCallback"

    .line 268
    const-class v2, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 266
    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_STATE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 274
    const-string v0, "camera2.cameraCaptureSession.captureCallback"

    .line 275
    const-class v2, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 273
    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_CAPTURE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 282
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    const-string v2, "camera2.cameraCaptureSession.streamUseCase"

    invoke-static {v2, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 289
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    const-string v2, "camera2.cameraCaptureSession.streamUseHint"

    invoke-static {v2, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_HINT_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 294
    const-string v0, "camera2.captureRequest.tag"

    const-class v2, Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->CAPTURE_REQUEST_TAG_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 299
    const-string v0, "camera2.cameraCaptureSession.physicalCameraId"

    .line 300
    const-class v2, Ljava/lang/String;

    .line 298
    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_PHYSICAL_CAMERA_ID_OPTION:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions;-><init>(Landroidx/camera/core/impl/Config;)V

    return-void
.end method

.method public static synthetic getDeviceStateCallback$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Landroid/hardware/camera2/CameraDevice$StateCallback;ILjava/lang/Object;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPhysicalCameraId$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getPhysicalCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSessionCaptureCallback$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILjava/lang/Object;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getSessionCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSessionStateCallback$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;ILjava/lang/Object;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getStreamUseCase$default(Landroidx/camera/camera2/impl/Camera2ImplConfig;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getStreamUseCase(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;
    .locals 2

    .line 47
    sget-object v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->Companion:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getCaptureRequestTemplate(I)I
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;->TEMPLATE_TYPE_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final getDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;->DEVICE_STATE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p1
.end method

.method public final getPhysicalCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 153
    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_PHYSICAL_CAMERA_ID_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getSessionCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_CAPTURE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p1
.end method

.method public final getSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_STATE_CALLBACK_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p1
.end method

.method public final getStreamUseCase(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method
