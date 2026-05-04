.class public abstract synthetic Landroidx/camera/core/internal/TargetConfig$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getTargetName(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static $default$getTargetName(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
