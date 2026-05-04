.class public final Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;
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


# static fields
.field public static final INSTANCE:Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;-><init>()V

    sput-object v0, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;->INSTANCE:Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isMotoE20()Z
    .locals 3

    .line 38
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "motorola"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "moto e20"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final load()Z
    .locals 1

    .line 41
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;->INSTANCE:Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;->isMotoE20()Z

    move-result v0

    return v0
.end method

.method public static final shouldForceEnableStreamSharing(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appUseCases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;->INSTANCE:Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;->isMotoE20()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-direct {v0, p0, p1}, Landroidx/camera/core/internal/compat/quirk/PreviewGreenTintQuirk;->shouldForceEnableStreamSharingForMotoE20(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final shouldForceEnableStreamSharingForMotoE20(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 5

    .line 59
    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    .line 1761
    instance-of p1, p2, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    goto :goto_0

    .line 1762
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    .line 61
    instance-of v3, v3, Landroidx/camera/core/Preview;

    if-eqz v3, :cond_3

    move v2, v1

    :goto_0
    if-eqz p1, :cond_5

    .line 1761
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p1, v0

    goto :goto_1

    .line 1762
    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/UseCase;

    .line 64
    invoke-virtual {p2}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v3, v4}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    invoke-virtual {p2}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p2

    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object p2

    sget-object v3, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    if-ne p2, v3, :cond_6

    move p1, v1

    :goto_1
    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    return v1

    :cond_7
    :goto_2
    return v0
.end method
