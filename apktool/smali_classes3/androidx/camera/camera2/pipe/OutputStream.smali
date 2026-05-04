.class public interface abstract Landroidx/camera/camera2/pipe/OutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/OutputStream$Config;,
        Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;,
        Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;,
        Landroidx/camera/camera2/pipe/OutputStream$OutputType;,
        Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;,
        Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;,
        Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
    }
.end annotation


# virtual methods
.method public abstract getCamera-Dz_R5H8()Ljava/lang/String;
.end method

.method public abstract getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;
.end method

.method public abstract getFormat-8FPWQzE()I
.end method

.method public abstract getId-4LaLFng()I
.end method

.method public abstract getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;
.end method

.method public abstract getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;
.end method

.method public abstract getSize()Landroid/util/Size;
.end method

.method public abstract getStream()Landroidx/camera/camera2/pipe/CameraStream;
.end method

.method public abstract getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
.end method

.method public abstract getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;
.end method

.method public abstract getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
.end method

.method public abstract isValidForHighSpeedOperatingMode()Z
.end method
