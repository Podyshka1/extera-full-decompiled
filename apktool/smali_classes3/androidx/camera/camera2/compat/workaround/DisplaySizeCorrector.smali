.class public final Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final smallDisplaySizeQuirk:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    iput-object v0, p0, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;->smallDisplaySizeQuirk:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    return-void
.end method


# virtual methods
.method public final getDisplaySize()Landroid/util/Size;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;->smallDisplaySizeQuirk:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->getDisplaySize()Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
