.class public final Landroidx/camera/core/internal/HighSpeedFpsModifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/HighSpeedFpsModifier$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/core/internal/HighSpeedFpsModifier$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/internal/HighSpeedFpsModifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/internal/HighSpeedFpsModifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/internal/HighSpeedFpsModifier;->Companion:Landroidx/camera/core/internal/HighSpeedFpsModifier$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final hasVideoSurface(Landroidx/camera/core/impl/CaptureConfig$Builder;)Z
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getSurfaces()Ljava/util/Set;

    move-result-object p1

    const-string v0, "getSurfaces(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1761
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1762
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/DeferrableSurface;

    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/camera/core/internal/HighSpeedFpsModifier;->isVideoSurface(Landroidx/camera/core/impl/DeferrableSurface;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private final hasVideoSurface(Ljava/util/Collection;)Z
    .locals 3

    .line 80
    check-cast p1, Ljava/lang/Iterable;

    .line 1761
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1762
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    .line 81
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v0

    const-string v2, "getSurface(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/camera/core/internal/HighSpeedFpsModifier;->isVideoSurface(Landroidx/camera/core/impl/DeferrableSurface;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private final isHighSpeedFixedFps(Landroid/util/Range;)Z
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0x78

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isVideoSurface(Landroidx/camera/core/impl/DeferrableSurface;)Z
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/media/MediaCodec;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final toPreviewOnlyRange(Landroid/util/Range;)Landroid/util/Range;
    .locals 3

    .line 75
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modified high-speed FPS range from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HighSpeedFpsModifier"

    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final modifyFpsForPreviewOnlyRepeating(Ljava/util/Collection;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 2

    const-string v0, "outputConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatingConfigBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 63
    invoke-direct {p0, p1}, Landroidx/camera/core/internal/HighSpeedFpsModifier;->hasVideoSurface(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    invoke-direct {p0, p2}, Landroidx/camera/core/internal/HighSpeedFpsModifier;->hasVideoSurface(Landroidx/camera/core/impl/CaptureConfig$Builder;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 66
    invoke-virtual {p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    invoke-direct {p0, p1}, Landroidx/camera/core/internal/HighSpeedFpsModifier;->isHighSpeedFixedFps(Landroid/util/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 68
    invoke-direct {p0, p1}, Landroidx/camera/core/internal/HighSpeedFpsModifier;->toPreviewOnlyRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)V

    :cond_1
    return-void
.end method
