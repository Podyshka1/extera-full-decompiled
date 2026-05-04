.class public abstract synthetic Landroidx/camera/core/impl/ImageInputConfig$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getDynamicRange(Landroidx/camera/core/impl/ImageInputConfig;)Landroidx/camera/core/DynamicRange;
    .locals 2

    .line 78
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/Config$Option;

    sget-object v1, Landroidx/camera/core/DynamicRange;->UNSPECIFIED:Landroidx/camera/core/DynamicRange;

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/DynamicRange;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/DynamicRange;

    return-object p0
.end method

.method public static $default$getInputFormat(Landroidx/camera/core/impl/ImageInputConfig;)I
    .locals 1

    .line 52
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static $default$getSecondaryInputFormat(Landroidx/camera/core/impl/ImageInputConfig;)I
    .locals 2

    .line 65
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_SECONDARY_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static $default$hasDynamicRange(Landroidx/camera/core/impl/ImageInputConfig;)Z
    .locals 1

    .line 89
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result p0

    return p0
.end method
