.class public final synthetic Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/Preview$SurfaceProvider;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/InstantCameraView;

.field public final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/Surface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Components/InstantCameraView;

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda19;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda19;->f$1:Landroid/view/Surface;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/InstantCameraView;->$r8$lambda$IiWCjr66BWqR_2qv-FE6LxiokYg(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
