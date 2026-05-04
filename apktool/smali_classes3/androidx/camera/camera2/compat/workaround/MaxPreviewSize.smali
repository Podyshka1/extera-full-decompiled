.class public final Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 28
    sget-object p1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class p2, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;-><init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;)V

    return-void
.end method


# virtual methods
.method public final getMaxPreviewResolution(Landroid/util/Size;)Landroid/util/Size;
    .locals 4

    const-string v0, "defaultMaxPreviewResolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->getVerifiedResolution(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p1

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 47
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
