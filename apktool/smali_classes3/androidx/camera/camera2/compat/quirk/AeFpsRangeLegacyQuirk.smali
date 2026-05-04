.class public final Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/compat/quirk/AeFpsRangeQuirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;


# instance fields
.field private final range$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$M08z1plyKIceWjdadH5XAqm54nQ(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;)Landroid/util/Range;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->range_delegate$lambda$0(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V
    .locals 1

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->range$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getCorrectedFpsRange(Landroid/util/Range;)Landroid/util/Range;
    .locals 4

    .line 82
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 83
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 84
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    div-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    div-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 90
    :cond_1
    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method private final getRange()Landroid/util/Range;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->range$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0
.end method

.method private final pickSuitableFpsRange([Landroid/util/Range;)Landroid/util/Range;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 56
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 60
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 61
    invoke-direct {p0, v3}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->getCorrectedFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    :goto_1
    move-object v0, v3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static final range_delegate$lambda$0(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;)Landroid/util/Range;
    .locals 2

    .line 51
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    .line 52
    invoke-direct {p1, p0}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->pickSuitableFpsRange([Landroid/util/Range;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTargetAeFpsRange()Landroid/util/Range;
    .locals 2

    .line 94
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->getRange()Landroid/util/Range;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    const-string v1, "FRAME_RATE_RANGE_UNSPECIFIED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
