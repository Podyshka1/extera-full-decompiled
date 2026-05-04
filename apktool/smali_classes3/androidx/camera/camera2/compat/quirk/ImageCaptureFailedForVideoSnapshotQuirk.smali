.class public final Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;
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
        Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;

.field private static final PROBLEMATIC_UNI_SOC_MODELS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;

    .line 64
    const-string/jumbo v11, "sm-f946u1"

    .line 65
    const-string/jumbo v12, "tecno mobile bf6"

    const-string v2, "itel l6006"

    const-string v3, "itel w6004"

    const-string v4, "moto g(20)"

    const-string v5, "moto e13"

    const-string v6, "moto e20"

    const-string v7, "rmx3231"

    const-string v8, "rmx3511"

    const-string/jumbo v9, "sm-a032f"

    const-string/jumbo v10, "sm-a035m"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;->PROBLEMATIC_UNI_SOC_MODELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPROBLEMATIC_UNI_SOC_MODELS$cp()Ljava/util/Set;
    .locals 1

    .line 45
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;->PROBLEMATIC_UNI_SOC_MODELS:Ljava/util/Set;

    return-object v0
.end method
