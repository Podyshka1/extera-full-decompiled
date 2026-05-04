.class public final Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;


# instance fields
.field private final captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)V
    .locals 1

    const-string v0, "captureSessionState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    return-void
.end method


# virtual methods
.method public onClosed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    return-void
.end method

.method public onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    return-void
.end method

.method public onConfigured(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    return-void
.end method

.method public onSessionDisconnected()V
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionDisconnected()V

    return-void
.end method

.method public onSessionFinalized()V
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    return-void
.end method
