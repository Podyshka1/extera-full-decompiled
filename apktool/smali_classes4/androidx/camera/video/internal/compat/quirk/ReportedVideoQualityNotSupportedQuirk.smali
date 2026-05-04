.class public Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;
.implements Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHuaweiMate20()Z
    .locals 2

    .line 77
    const-string v0, "Huawei"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HMA-L29"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isHuaweiMate20Pro()Z
    .locals 2

    .line 81
    const-string v0, "Huawei"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LYA-AL00"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isHuaweiP40Lite()Z
    .locals 8

    .line 89
    const-string v0, "Huawei"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "JNY-L22B"

    const-string v7, "JNY-LX1"

    const-string v1, "JNY-L21A"

    const-string v2, "JNY-L01A"

    const-string v3, "JNY-L21B"

    const-string v4, "JNY-L22A"

    const-string v5, "JNY-L02A"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isOppoPht110()Z
    .locals 2

    .line 95
    const-string v0, "OPPO"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PHT110"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isVivoY91i()Z
    .locals 2

    .line 85
    const-string v0, "Vivo"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vivo 1820"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static load()Z
    .locals 1

    .line 72
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20Pro()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isVivoY91i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiP40Lite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isOppoPht110()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public isProblematicVideoQuality(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/Quality;)Z
    .locals 3

    .line 102
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20Pro()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isVivoY91i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object p1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    if-eq p2, p1, :cond_2

    sget-object p1, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    .line 108
    :cond_3
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiP40Lite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    if-eq p2, p1, :cond_4

    sget-object p1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_5

    :cond_4
    return v1

    :cond_5
    return v2

    .line 111
    :cond_6
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isOppoPht110()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result p1

    if-ne p1, v1, :cond_7

    sget-object p1, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_7

    return v1

    :cond_7
    return v2

    .line 103
    :cond_8
    :goto_1
    sget-object p1, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method public workaroundBySurfaceProcessing()Z
    .locals 1

    .line 120
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20Pro()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiP40Lite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isOppoPht110()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
