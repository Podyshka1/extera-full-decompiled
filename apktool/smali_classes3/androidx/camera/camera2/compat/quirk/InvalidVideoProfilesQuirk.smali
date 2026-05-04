.class public final Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;
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
        Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;
    }
.end annotation


# static fields
.field private static final AFFECTED_ONE_PLUS_MODELS:Ljava/util/List;

.field private static final AFFECTED_OPPO_MODELS:Ljava/util/List;

.field private static final AFFECTED_PIXEL_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;

    .line 57
    const-string v11, "pixel 7"

    .line 58
    const-string v12, "pixel 7 pro"

    const-string v2, "pixel 4"

    const-string v3, "pixel 4a"

    const-string v4, "pixel 4a (5g)"

    const-string v5, "pixel 4 xl"

    const-string v6, "pixel 5"

    const-string v7, "pixel 5a"

    const-string v8, "pixel 6"

    const-string v9, "pixel 6a"

    const-string v10, "pixel 6 pro"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/List;

    .line 61
    const-string v0, "cph2417"

    const-string v1, "cph2451"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_ONE_PLUS_MODELS:Ljava/util/List;

    .line 63
    const-string v0, "cph2525"

    const-string v1, "pht110"

    const-string v2, "cph2437"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_OPPO_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAFFECTED_ONE_PLUS_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 42
    sget-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_ONE_PLUS_MODELS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getAFFECTED_OPPO_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 42
    sget-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_OPPO_MODELS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getAFFECTED_PIXEL_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 42
    sget-object v0, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/List;

    return-object v0
.end method
