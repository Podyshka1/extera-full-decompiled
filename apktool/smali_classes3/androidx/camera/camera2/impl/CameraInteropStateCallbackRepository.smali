.class public final Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;,
        Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;
    }
.end annotation


# instance fields
.field private final _deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

.field private final _sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    .line 39
    new-instance v0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    return-void
.end method


# virtual methods
.method public final getDeviceStateCallback()Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    return-object v0
.end method

.method public final getSessionStateCallback()Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    return-object v0
.end method

.method public final updateCallbacks(Landroidx/camera/core/impl/SessionConfig;)V
    .locals 1

    const-string/jumbo v0, "sessionConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;->updateCallbacks$camera_camera2(Landroidx/camera/core/impl/SessionConfig;)V

    .line 51
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->updateCallbacks$camera_camera2(Landroidx/camera/core/impl/SessionConfig;)V

    return-void
.end method
