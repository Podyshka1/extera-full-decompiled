.class public final Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;

.field private static final FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

.field private static final FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

.field private static final LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

.field private static final SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS:Ljava/util/Set;

.field private static final SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->createFullYuvPrivYuvConfiguration$camera_camera2()Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    .line 72
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->createFullYuvYuvYuvConfiguration$camera_camera2()Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    .line 74
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2()Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    .line 85
    const-string v9, "PIXEL 9 PRO XL"

    .line 86
    const-string v10, "PIXEL 9 PRO FOLD"

    const-string v1, "PIXEL 6"

    const-string v2, "PIXEL 6 PRO"

    const-string v3, "PIXEL 7"

    const-string v4, "PIXEL 7 PRO"

    const-string v5, "PIXEL 8"

    const-string v6, "PIXEL 8 PRO"

    const-string v7, "PIXEL 9"

    const-string v8, "PIXEL 9 PRO"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS:Ljava/util/Set;

    .line 104
    const-string v14, "SC-51F"

    .line 105
    const-string v15, "SC-52F"

    const-string v1, "SM-S921"

    const-string v2, "SC-51E"

    const-string v3, "SCG25"

    const-string v4, "SM-S926"

    const-string v5, "SM-S928"

    const-string v6, "SC-52E"

    const-string v7, "SCG26"

    const-string v8, "SM-S931"

    const-string v9, "SM-S936"

    const-string v10, "SM-S937"

    const-string v11, "SM-S938"

    const-string v12, "SCG31"

    const-string v13, "SCG32"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS$cp()Ljava/util/Set;
    .locals 1

    .line 33
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getSUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS$cp()Ljava/util/Set;
    .locals 1

    .line 33
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS:Ljava/util/Set;

    return-object v0
.end method

.method private final getSamsungS7ExtraCombinations(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const-string v1, "1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    sget-object p1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getExtraSupportedSurfaceCombinations(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->isSamsungS7$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-direct {p0, p1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->getSamsungS7ExtraCombinations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2()Z

    move-result p1

    if-nez p1, :cond_2

    .line 41
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 43
    :cond_2
    :goto_0
    sget-object p1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
