.class public final Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;
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
        Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMotoE5PlayExtraSupportedResolutions()[Landroid/util/Size;
    .locals 4

    .line 62
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 64
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x3c0

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Size;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final getExtraSupportedResolutions(I)[Landroid/util/Size;
    .locals 1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 40
    sget-object p1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;->isMotoE5Play$camera_camera2()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;->getMotoE5PlayExtraSupportedResolutions()[Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/util/Size;

    return-object p1
.end method
