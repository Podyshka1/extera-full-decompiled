.class public interface abstract Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;
    }
.end annotation


# virtual methods
.method public abstract awaitSurfaceSetup(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract cancelFocusAndMeteringAsync()Lkotlinx/coroutines/Deferred;
.end method

.method public abstract close()V
.end method

.method public abstract issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;
.end method

.method public abstract removeParametersAsync(Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract setParametersAsync(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract setTorchOnAsync()Lkotlinx/coroutines/Deferred;
.end method

.method public abstract startFocusAndMeteringAsync-NxRnBj4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract updateRepeatingRequestAsync(ZLjava/util/Collection;)Lkotlinx/coroutines/Deferred;
.end method
