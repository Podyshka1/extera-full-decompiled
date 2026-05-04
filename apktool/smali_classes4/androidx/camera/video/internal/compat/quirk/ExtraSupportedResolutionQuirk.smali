.class public Landroidx/camera/video/internal/compat/quirk/ExtraSupportedResolutionQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMotoE5Play()Z
    .locals 2

    .line 40
    const-string v0, "motorola"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moto e5 play"

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

    .line 36
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedResolutionQuirk;->isMotoE5Play()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic workaroundBySurfaceProcessing()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk$-CC;->$default$workaroundBySurfaceProcessing(Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;)Z

    move-result v0

    return v0
.end method
