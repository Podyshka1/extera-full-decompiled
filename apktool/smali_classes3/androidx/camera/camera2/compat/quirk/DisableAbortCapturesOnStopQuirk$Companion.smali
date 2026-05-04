.class public final Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 38
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isTecnoDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->access$isSamsungNote10PlusDevice$cp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->access$isPocoX3ProDevice$cp()Z

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
