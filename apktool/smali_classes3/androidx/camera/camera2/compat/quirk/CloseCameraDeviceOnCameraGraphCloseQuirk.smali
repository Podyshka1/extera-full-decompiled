.class public final Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;

.field private static final isSamsungExynos7570Device:Z

.field private static final isSamsungExynos7870Device:Z

.field private static final isSamsungProblematicDevice:Z

.field private static final isSonyProblematicDevice:Z

.field private static final isXiaomiProblematicDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;

    .line 90
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "samsungexynos7570"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7570Device:Z

    .line 91
    const-string v1, "samsungexynos7870"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7870Device:Z

    .line 95
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isXiaomiDevice()Z

    move-result v1

    const-string v2, "DEVICE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const-string v1, "aurora"

    const-string v5, "houji"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isXiaomiProblematicDevice:Z

    .line 98
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSonyDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "SO"

    .line 102
    const-string v1, "A301SO"

    const-string v5, "XQ-DQ"

    filled-new-array {v5, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1761
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1762
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    .line 98
    :goto_2
    sput-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSonyProblematicDevice:Z

    .line 108
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    const/16 v1, 0x22

    if-gt v0, v1, :cond_4

    move v3, v4

    .line 108
    :cond_4
    sput-boolean v3, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungProblematicDevice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isSamsungExynos7570Device$cp()Z
    .locals 1

    .line 39
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7570Device:Z

    return v0
.end method

.method public static final synthetic access$isSamsungExynos7870Device$cp()Z
    .locals 1

    .line 39
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7870Device:Z

    return v0
.end method

.method public static final synthetic access$isSamsungProblematicDevice$cp()Z
    .locals 1

    .line 39
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungProblematicDevice:Z

    return v0
.end method

.method public static final synthetic access$isSonyProblematicDevice$cp()Z
    .locals 1

    .line 39
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSonyProblematicDevice:Z

    return v0
.end method

.method public static final synthetic access$isXiaomiProblematicDevice$cp()Z
    .locals 1

    .line 39
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isXiaomiProblematicDevice:Z

    return v0
.end method


# virtual methods
.method public final shouldCloseCameraDevice(Z)Z
    .locals 1

    .line 44
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isXiaomiProblematicDevice:Z

    if-nez v0, :cond_1

    .line 45
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungProblematicDevice:Z

    if-eqz v0, :cond_0

    .line 46
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7570Device:Z

    if-nez v0, :cond_0

    .line 47
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7870Device:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method
