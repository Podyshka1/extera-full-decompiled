.class public final Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 3

    .line 59
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->access$isSamsungExynos7570Device$cp()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->access$isSamsungExynos7870Device$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v2, v0, :cond_2

    const/16 v2, 0x22

    if-ge v0, v2, :cond_2

    .line 66
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isOppoDevice()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isOnePlusDevice()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isRealmeDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 72
    :cond_2
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isVivoDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 76
    :cond_3
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->access$isXiaomiProblematicDevice$cp()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 80
    :cond_4
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->access$isSamsungProblematicDevice$cp()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 84
    :cond_5
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->access$isSonyProblematicDevice$cp()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_7
    :goto_0
    return v1
.end method
