.class public interface abstract Landroidx/camera/video/VideoOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoOutput$SourceState;
    }
.end annotation


# virtual methods
.method public abstract getEncoderProfilesResolver(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;
.end method

.method public abstract getMediaCapabilities(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;
.end method

.method public abstract getMediaSpec()Landroidx/camera/core/impl/Observable;
.end method

.method public abstract getStreamInfo()Landroidx/camera/core/impl/Observable;
.end method

.method public abstract isQualitySelectorDefault()Z
.end method

.method public abstract isSourceStreamRequired()Landroidx/camera/core/impl/Observable;
.end method

.method public abstract onSourceStateChanged(Landroidx/camera/video/VideoOutput$SourceState;)V
.end method

.method public abstract onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
.end method

.method public abstract onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
.end method
