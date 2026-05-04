.class public final Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;
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
        Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk$Companion;
    }
.end annotation


# static fields
.field private static final BUILD_MODELS_FRONT_CAMERA:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk$Companion;

    .line 43
    const-string/jumbo v0, "sm-j710f"

    .line 44
    const-string/jumbo v1, "sm-j700m"

    const-string/jumbo v2, "sm-j700f"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;->BUILD_MODELS_FRONT_CAMERA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUILD_MODELS_FRONT_CAMERA$cp()Ljava/util/List;
    .locals 1

    .line 35
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;->BUILD_MODELS_FRONT_CAMERA:Ljava/util/List;

    return-object v0
.end method
