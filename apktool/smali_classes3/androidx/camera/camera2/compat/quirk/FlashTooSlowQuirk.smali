.class public final Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;
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
        Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk$Companion;
    }
.end annotation


# static fields
.field private static final AFFECTED_MODEL_PREFIXES:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk$Companion;

    .line 49
    const-string v8, "ITEL L6006"

    .line 50
    const-string v9, "RMX3231"

    const-string v2, "PIXEL 3A"

    const-string v3, "PIXEL 3A XL"

    const-string v4, "PIXEL 4"

    const-string v5, "PIXEL 5"

    const-string v6, "SM-A320"

    const-string v7, "MOTO G(20)"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;->AFFECTED_MODEL_PREFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAFFECTED_MODEL_PREFIXES$cp()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;->AFFECTED_MODEL_PREFIXES:Ljava/util/List;

    return-object v0
.end method
