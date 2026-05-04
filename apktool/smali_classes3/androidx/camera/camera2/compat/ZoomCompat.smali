.class public interface abstract Landroidx/camera/camera2/compat/ZoomCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/ZoomCompat$Bindings;
    }
.end annotation


# virtual methods
.method public abstract applyAsync(FLandroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract getCropSensorRegion()Landroid/graphics/Rect;
.end method

.method public abstract getMaxZoomRatio()F
.end method

.method public abstract getMinZoomRatio()F
.end method

.method public abstract resetAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;
.end method
