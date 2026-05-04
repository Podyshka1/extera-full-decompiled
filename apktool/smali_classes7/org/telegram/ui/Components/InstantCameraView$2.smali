.class Lorg/telegram/ui/Components/InstantCameraView$2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraXSession(Lorg/telegram/ui/Components/InstantCameraView;)Lcom/exteragram/messenger/camera/CameraXSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraXSession(Lorg/telegram/ui/Components/InstantCameraView;)Lcom/exteragram/messenger/camera/CameraXSession;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->setZoom(F)V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraXSession(Lorg/telegram/ui/Components/InstantCameraView;)Lcom/exteragram/messenger/camera/CameraXSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->getLinearZoom()F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraZoom(Lorg/telegram/ui/Components/InstantCameraView;F)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V

    .line 327
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
