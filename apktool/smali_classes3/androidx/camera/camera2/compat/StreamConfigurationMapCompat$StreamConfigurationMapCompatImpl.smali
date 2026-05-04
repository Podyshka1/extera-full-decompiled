.class public interface abstract Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamConfigurationMapCompatImpl"
.end annotation


# virtual methods
.method public abstract getHighResolutionOutputSizes(I)[Landroid/util/Size;
.end method

.method public abstract getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
.end method

.method public abstract getHighSpeedVideoSizes()[Landroid/util/Size;
.end method

.method public abstract getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
.end method

.method public abstract getOutputFormats()[Ljava/lang/Integer;
.end method

.method public abstract getOutputMinFrameDuration(ILandroid/util/Size;)J
.end method

.method public abstract getOutputSizes(I)[Landroid/util/Size;
.end method

.method public abstract unwrap()Landroid/hardware/camera2/params/StreamConfigurationMap;
.end method
