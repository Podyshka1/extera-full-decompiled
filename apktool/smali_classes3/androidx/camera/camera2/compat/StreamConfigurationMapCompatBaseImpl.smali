.class public Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;


# instance fields
.field private final streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-void
.end method


# virtual methods
.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 1

    const-string v0, "fpsRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOutputFormats()[Ljava/lang/Integer;
    .locals 4

    .line 34
    const-string v0, "Failed to get output formats from StreamConfigurationMap"

    const-string v1, "StreamConfigurationMapCompatBaseImpl"

    const/4 v2, 0x0

    .line 35
    :try_start_0
    iget-object v3, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_2

    .line 40
    :goto_0
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    move-object v0, v2

    goto :goto_3

    .line 37
    :goto_2
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_1

    .line 44
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toTypedArray([I)[Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public unwrap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object v0
.end method
