.class public final Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;
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
        Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk$Companion;
    }
.end annotation


# static fields
.field private static final BUILD_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk$Companion;

    .line 40
    const-string v0, "Pixel 3"

    const-string v1, "Pixel 3 XL"

    const-string v2, "Pixel 2"

    const-string v3, "Pixel 2 XL"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;->BUILD_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUILD_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;->BUILD_MODELS:Ljava/util/List;

    return-object v0
.end method
