.class public final Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;
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
        Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;
    }
.end annotation


# static fields
.field private static final AFFECTED_PIXEL_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;

    .line 62
    const-string v7, "PIXEL 8"

    .line 63
    const-string v8, "PIXEL 8 PRO"

    const-string v2, "PIXEL 6A"

    const-string v3, "PIXEL 6 PRO"

    const-string v4, "PIXEL 7"

    const-string v5, "PIXEL 7A"

    const-string v6, "PIXEL 7 PRO"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V
    .locals 1

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-void
.end method

.method public static final synthetic access$getAFFECTED_PIXEL_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 41
    sget-object v0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/List;

    return-object v0
.end method
