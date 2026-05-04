.class public final Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;,
        Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

.field private static final SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

    .line 65
    const-string v0, "SM-T580"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 66
    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const-string v5, "SM-J710MN"

    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 67
    const-string v5, "SM-A320FL"

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 68
    const-string v6, "SM-G570M"

    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 69
    const-string v7, "SM-G610F"

    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 70
    new-instance v7, Landroid/util/Range;

    invoke-direct {v7, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const-string v3, "SM-G610M"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object v3, v4, v0

    .line 64
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP$cp()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getVerifiedResolution(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;)Landroid/util/Size;
    .locals 2

    const-string v0, "configType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;->isSamsungDistortion$camera_camera2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 53
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0xcc0

    const/16 v1, 0x72c

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 55
    :cond_1
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 54
    :cond_2
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_3
    return-object v1
.end method
