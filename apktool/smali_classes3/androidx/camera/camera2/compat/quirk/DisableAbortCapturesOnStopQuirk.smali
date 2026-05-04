.class public final Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;
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
        Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;

.field private static final isPocoX3ProDevice:Z

.field private static final isSamsungNote10PlusDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;

    .line 42
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "d2q"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->isSamsungNote10PlusDevice:Z

    .line 45
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isPocoDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "M2102J20SG"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    sput-boolean v2, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->isPocoX3ProDevice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isPocoX3ProDevice$cp()Z
    .locals 1

    .line 33
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->isPocoX3ProDevice:Z

    return v0
.end method

.method public static final synthetic access$isSamsungNote10PlusDevice$cp()Z
    .locals 1

    .line 33
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->isSamsungNote10PlusDevice:Z

    return v0
.end method
