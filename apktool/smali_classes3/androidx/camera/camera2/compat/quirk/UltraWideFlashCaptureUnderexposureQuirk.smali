.class public final Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;
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
        Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;
    }
.end annotation


# static fields
.field private static final BUILD_MODEL_PREFIXES:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;

    .line 42
    const-string/jumbo v0, "sm-s921"

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;->BUILD_MODEL_PREFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUILD_MODEL_PREFIXES$cp()Ljava/util/List;
    .locals 1

    .line 36
    sget-object v0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;->BUILD_MODEL_PREFIXES:Ljava/util/List;

    return-object v0
.end method
