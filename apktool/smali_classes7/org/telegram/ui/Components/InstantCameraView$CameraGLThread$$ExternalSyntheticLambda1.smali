.class public final synthetic Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->$r8$lambda$wDjNGoNkInUFcLsuF5CoYD8rNR0(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method
