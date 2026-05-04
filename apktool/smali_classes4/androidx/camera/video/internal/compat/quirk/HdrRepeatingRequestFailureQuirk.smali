.class public Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSamsungS25Ultra()Z
    .locals 2

    .line 43
    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pa3q"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

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
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;->isSamsungS25Ultra()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public workaroundBySurfaceProcessing(Landroidx/camera/core/DynamicRange;)Z
    .locals 3

    .line 59
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 60
    :goto_0
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;->isSamsungS25Ultra()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1
.end method
