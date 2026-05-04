.class public final Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk$Companion;-><init>()V

    return-void
.end method

.method private final isJioPhoneNext()Z
    .locals 3

    .line 47
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isJioDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "LS1542QW"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isSamsungA2s()Z
    .locals 3

    .line 50
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SM-A025"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "SM-S124DL"

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final isVivo2039()Z
    .locals 3

    .line 55
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isVivoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "VIVO 2039"

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

    .line 44
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk$Companion;->isJioPhoneNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk$Companion;->isSamsungA2s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk$Companion;->isVivo2039()Z

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
