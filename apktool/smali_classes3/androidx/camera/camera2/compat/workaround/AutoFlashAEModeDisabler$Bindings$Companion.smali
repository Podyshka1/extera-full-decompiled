.class public final Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler$Bindings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler$Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler$Bindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideAEModeDisabler(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;
    .locals 2

    const-string v0, "cameraQuirks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p1

    .line 44
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    :goto_0
    sget-object p1, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;->INSTANCE:Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;

    return-object p1

    .line 48
    :cond_1
    sget-object p1, Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;

    return-object p1
.end method
