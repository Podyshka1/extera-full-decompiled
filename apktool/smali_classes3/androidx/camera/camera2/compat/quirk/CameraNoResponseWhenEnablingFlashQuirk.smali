.class public final Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;
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
        Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk$Companion;
    }
.end annotation


# static fields
.field private static final AFFECTED_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk$Companion;

    .line 60
    const-string v20, "SM-J510FN"

    .line 61
    const-string v21, "VIVO 1610"

    const-string v2, "SM-N9200"

    const-string v3, "SM-N9208"

    const-string v4, "SAMSUNG-SM-N920A"

    const-string v5, "SM-N920C"

    const-string v6, "SM-N920F"

    const-string v7, "SM-N920G"

    const-string v8, "SM-N920I"

    const-string v9, "SM-N920K"

    const-string v10, "SM-N920L"

    const-string v11, "SM-N920P"

    const-string v12, "SM-N920R4"

    const-string v13, "SM-N920R6"

    const-string v14, "SM-N920R7"

    const-string v15, "SM-N920S"

    const-string v16, "SM-N920T"

    const-string v17, "SM-N920V"

    const-string v18, "SM-N920W8"

    const-string v19, "SM-N920X"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;->AFFECTED_MODELS:Ljava/util/List;

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
    sget-object v0, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;->AFFECTED_MODELS:Ljava/util/List;

    return-object v0
.end method
