.class public final Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComboCameraCaptureCallback"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->mCallbacks:Ljava/util/List;

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 79
    instance-of v1, v0, Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCaptureCancelled(I)V
    .locals 2

    .line 109
    iget-object v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 110
    invoke-virtual {v1, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCancelled(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2

    .line 95
    iget-object v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 96
    invoke-virtual {v1, p1, p2}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureFailed(ILandroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 2

    .line 102
    iget-object v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 103
    invoke-virtual {v1, p1, p2}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureFailed(ILandroidx/camera/core/impl/CameraCaptureFailure;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureProcessProgressed(II)V
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 121
    invoke-virtual {v1, p1, p2}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureProcessProgressed(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureStarted(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 88
    invoke-virtual {v1, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureStarted(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
