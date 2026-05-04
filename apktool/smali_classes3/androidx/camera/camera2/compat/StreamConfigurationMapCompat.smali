.class public final Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;
    }
.end annotation


# instance fields
.field private final cachedClassOutputSizes:Ljava/util/Map;

.field private final cachedFormatHighResolutionOutputSizes:Ljava/util/Map;

.field private final cachedFormatOutputSizes:Ljava/util/Map;

.field private impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

.field private final outputSizesCorrector:Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V
    .locals 1

    const-string v0, "outputSizesCorrector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->outputSizesCorrector:Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    .line 41
    const-string p2, "StreamConfigurationMapCompat"

    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->tag:Ljava/lang/String;

    .line 42
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatOutputSizes:Ljava/util/Map;

    .line 43
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    .line 44
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedClassOutputSizes:Ljava/util/Map;

    .line 46
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p2, v0, :cond_0

    .line 47
    new-instance p2, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    goto :goto_0

    .line 49
    :cond_0
    new-instance p2, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 46
    :goto_0
    iput-object p2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    return-void
.end method


# virtual methods
.method public final getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 3

    .line 146
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1

    :cond_0
    return-object v1

    .line 150
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 153
    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    iget-object v2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->outputSizesCorrector:Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    invoke-virtual {v2, v0, p1}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->applyQuirks([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    .line 157
    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public final getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 1

    const-string v0, "fpsRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public final getOutputFormats()[Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getOutputFormats()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 4

    const-string/jumbo v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception v0

    .line 194
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 129
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get min frame duration for format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getOutputSizes(I)[Landroid/util/Size;
    .locals 5

    .line 75
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1

    :cond_0
    return-object v1

    .line 83
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 85
    iget-object v2, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get output sizes for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 89
    array-length v0, v1

    if-nez v0, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->outputSizesCorrector:Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->applyQuirks([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    .line 95
    iget-object v1, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->cachedFormatOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1

    .line 90
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved output sizes array is null or empty for format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    .line 203
    iget-object v0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->unwrap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    return-object v0
.end method
