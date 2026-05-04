.class public final Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDEVICE_MODELS()Ljava/util/List;
    .locals 1

    .line 35
    const-string v0, "SM-N9208"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final isSamsungS6()Z
    .locals 3

    .line 48
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Samsung"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "PRODUCT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zeroflte"

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final load()Z
    .locals 5

    .line 53
    sget-object v0, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->getDEVICE_MODELS()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "getDefault(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toUpperCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->isSamsungS6()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public synthetic workaroundBySurfaceProcessing()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk$-CC;->$default$workaroundBySurfaceProcessing(Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;)Z

    move-result v0

    return v0
.end method
