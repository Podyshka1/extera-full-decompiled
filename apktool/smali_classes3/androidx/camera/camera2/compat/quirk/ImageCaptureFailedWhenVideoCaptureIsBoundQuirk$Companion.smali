.class public final Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isBluStudioX10(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isBluStudioX10()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isItelW6004(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isItelW6004()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMotoE13(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isMotoE13()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPixel4XLApi29(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isPixel4XLApi29()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPositivoTwist2Pro(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isPositivoTwist2Pro()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSamsungA53(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isSamsungA53()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSamsungTabA8(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isSamsungTabA8()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isVivo1805(Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isVivo1805()Z

    move-result p0

    return p0
.end method

.method private final isBluStudioX10()Z
    .locals 3

    .line 62
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isBluDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "studio x10"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isItelW6004()Z
    .locals 3

    .line 65
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isItelDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "itel w6004"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isMotoE13()Z
    .locals 3

    .line 78
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isMotorolaDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moto e13"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isPixel4XLApi29()Z
    .locals 3

    .line 75
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "pixel 4 xl"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isPositivoTwist2Pro()Z
    .locals 3

    .line 71
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isPositivoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "twist 2 pro"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isSamsungA53()Z
    .locals 5

    .line 87
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "SM-A536"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private final isSamsungTabA8()Z
    .locals 3

    .line 82
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "gta8"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "gta8wifi"

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final isVivo1805()Z
    .locals 3

    .line 68
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isVivoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vivo 1805"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isBluStudioX10()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isItelW6004()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isVivo1805()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isPositivoTwist2Pro()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isPixel4XLApi29()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isMotoE13()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isSamsungTabA8()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isSamsungA53()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isUniSocChipsetDevice()Z

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
