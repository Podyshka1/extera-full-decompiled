.class public final Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/quirk/UseTorchAsFlashQuirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk$Companion;
    }
.end annotation


# static fields
.field private static final BUILD_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk$Companion;

    .line 49
    const-string/jumbo v6, "sm-g610f"

    .line 50
    const-string/jumbo v7, "sm-j710mn"

    const-string/jumbo v2, "sm-a260f"

    const-string/jumbo v3, "sm-j530f"

    const-string/jumbo v4, "sm-j600g"

    const-string/jumbo v5, "sm-j701f"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;->BUILD_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUILD_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 39
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;->BUILD_MODELS:Ljava/util/List;

    return-object v0
.end method
