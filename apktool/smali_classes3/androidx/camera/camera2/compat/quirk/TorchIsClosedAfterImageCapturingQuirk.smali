.class public final Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;
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
        Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk$Companion;
    }
.end annotation


# static fields
.field private static final BUILD_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk$Companion;

    .line 44
    const-string v9, "redmi 6 pro"

    .line 45
    const-string v10, "redmi note 6 pro"

    const-string v2, "mi a1"

    const-string v3, "mi a2"

    const-string v4, "mi a2 lite"

    const-string v5, "redmi 4x"

    const-string v6, "redmi 5a"

    const-string v7, "redmi note 5"

    const-string v8, "redmi note 5 pro"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;->BUILD_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUILD_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 29
    sget-object v0, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;->BUILD_MODELS:Ljava/util/List;

    return-object v0
.end method
