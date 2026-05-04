.class public interface abstract Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncoderInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;
    }
.end annotation


# virtual methods
.method public abstract canSwapWidthHeight()Z
.end method

.method public abstract getHeightAlignment()I
.end method

.method public abstract getSupportedBitrateRange()Landroid/util/Range;
.end method

.method public abstract getSupportedHeights()Landroid/util/Range;
.end method

.method public abstract getSupportedHeightsFor(I)Landroid/util/Range;
.end method

.method public abstract getSupportedWidths()Landroid/util/Range;
.end method

.method public abstract getSupportedWidthsFor(I)Landroid/util/Range;
.end method

.method public abstract getWidthAlignment()I
.end method

.method public abstract isSizeSupported(II)Z
.end method

.method public abstract isSizeSupportedAllowSwapping(II)Z
.end method
