.class public final Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;
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
        Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;
    }
.end annotation


# static fields
.field private static final AFFECTED_SAMSUNG_MODEL:Ljava/util/List;

.field private static final AFFECTED_XIAOMI_MODEL:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;

    .line 39
    const-string v6, "SM-F721U1"

    const-string v7, "SM-S928U1"

    const-string v2, "SM-F936"

    const-string v3, "SM-S901U"

    const-string v4, "SM-S908U"

    const-string v5, "SM-S908U1"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->AFFECTED_SAMSUNG_MODEL:Ljava/util/List;

    .line 41
    const-string v0, "MI 8"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->AFFECTED_XIAOMI_MODEL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAFFECTED_SAMSUNG_MODEL$cp()Ljava/util/List;
    .locals 1

    .line 33
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->AFFECTED_SAMSUNG_MODEL:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getAFFECTED_XIAOMI_MODEL$cp()Ljava/util/List;
    .locals 1

    .line 33
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->AFFECTED_XIAOMI_MODEL:Ljava/util/List;

    return-object v0
.end method
