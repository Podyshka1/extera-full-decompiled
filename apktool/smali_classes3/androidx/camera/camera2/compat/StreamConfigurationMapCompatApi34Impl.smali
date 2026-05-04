.class public final Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;
.super Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    return-void
.end method

.method private final getHasJpegRQuirk()Z
    .locals 2

    .line 32
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 1

    const/16 v0, 0x1005

    if-ne p1, v0, :cond_0

    .line 54
    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public getOutputFormats()[Ljava/lang/Integer;
    .locals 8

    .line 35
    invoke-super {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getOutputFormats()[Ljava/lang/Integer;

    move-result-object v0

    .line 37
    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 3829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4344
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/16 v7, 0x1005

    if-eq v6, v7, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_1
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1005

    if-ne p1, v0, :cond_0

    .line 62
    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 1

    const/16 v0, 0x1005

    if-ne p1, v0, :cond_0

    .line 46
    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method
