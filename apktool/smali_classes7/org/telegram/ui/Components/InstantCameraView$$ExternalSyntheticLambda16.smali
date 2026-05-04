.class public final synthetic Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/InstantCameraView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Components/InstantCameraView;

    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;->f$2:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda16;->f$2:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->$r8$lambda$3iIrvyNp3Veb5bw6QkfQ8M2Svd0(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method
