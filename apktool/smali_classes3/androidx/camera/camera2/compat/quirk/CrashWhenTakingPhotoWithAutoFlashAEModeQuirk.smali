.class public final Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;
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
        Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk$Companion;
    }
.end annotation


# static fields
.field private static final AFFECTED_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk$Companion;

    .line 55
    const-string v14, "SM-J510FN"

    .line 56
    const-string v15, "5059X"

    const-string v2, "SM-A3000"

    const-string v3, "SM-A3009"

    const-string v4, "SM-A300F"

    const-string v5, "SM-A300FU"

    const-string v6, "SM-A300G"

    const-string v7, "SM-A300H"

    const-string v8, "SM-A300M"

    const-string v9, "SM-A300X"

    const-string v10, "SM-A300XU"

    const-string v11, "SM-A300XZ"

    const-string v12, "SM-A300Y"

    const-string v13, "SM-A300YZ"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;->AFFECTED_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAFFECTED_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 35
    sget-object v0, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;->AFFECTED_MODELS:Ljava/util/List;

    return-object v0
.end method
