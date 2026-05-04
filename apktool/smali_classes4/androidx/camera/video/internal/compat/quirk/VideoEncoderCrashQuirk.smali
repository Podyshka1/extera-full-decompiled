.class public Landroidx/camera/video/internal/compat/quirk/VideoEncoderCrashQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPositivoTwist2Pro()Z
    .locals 2

    .line 43
    const-string v0, "positivo"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "twist 2 pro"

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

    .line 39
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/VideoEncoderCrashQuirk;->isPositivoTwist2Pro()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isProblematicVideoQuality(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/Quality;)Z
    .locals 2

    .line 51
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/VideoEncoderCrashQuirk;->isPositivoTwist2Pro()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
