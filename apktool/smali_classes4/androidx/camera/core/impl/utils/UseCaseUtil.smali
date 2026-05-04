.class public final Landroidx/camera/core/impl/utils/UseCaseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/core/impl/utils/UseCaseUtil;


# direct methods
.method public static synthetic $r8$lambda$M5Tm0HjWhdy66TpzSL1OyPbufao(Landroidx/camera/core/UseCase;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/utils/UseCaseUtil;->getVideoStabilization$lambda$0(Landroidx/camera/core/UseCase;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/utils/UseCaseUtil;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/UseCaseUtil;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/utils/UseCaseUtil;->INSTANCE:Landroidx/camera/core/impl/utils/UseCaseUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final containsVideoCapture(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast p0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    if-eqz v0, :cond_0

    .line 36
    invoke-static {v0}, Landroidx/camera/core/impl/utils/UseCaseUtil;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final getPreviewStabilizationMode(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)I
    .locals 4

    .line 68
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    .line 69
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->getPreviewStabilizationMode()I

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected configurations: Overwriting current previewStabilizationMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v0, ") with useCasePreviewStabilization("

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ")!"

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v2, "UseCaseUtil"

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static final getVideoStabilization(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->Companion:Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;

    .line 59
    sget-object v1, Landroidx/camera/core/impl/utils/UseCaseUtil;->INSTANCE:Landroidx/camera/core/impl/utils/UseCaseUtil;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/impl/utils/UseCaseUtil;->getPreviewStabilizationMode(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)I

    move-result v2

    .line 60
    invoke-direct {v1, p0, p1}, Landroidx/camera/core/impl/utils/UseCaseUtil;->getVideoStabilizationMode(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    .line 58
    invoke-virtual {v0, v2, p0}, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;->from$camera_core(II)Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getVideoStabilization$default(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 56
    new-instance p1, Landroidx/camera/core/impl/utils/UseCaseUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/camera/core/impl/utils/UseCaseUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 55
    :cond_0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/UseCaseUtil;->getVideoStabilization(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object p0

    return-object p0
.end method

.method private static final getVideoStabilization$lambda$0(Landroidx/camera/core/UseCase;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    return-object p0
.end method

.method private final getVideoStabilizationMode(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)I
    .locals 4

    .line 96
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    .line 97
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->getVideoStabilizationMode()I

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected configurations: Overwriting current videoStabilizationMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, ") with useCaseVideoStabilization("

    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, ")!"

    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, "UseCaseUtil"

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static final isVideoCapture(Landroidx/camera/core/UseCase;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object p0

    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " UseCase does not have capture type."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UseCaseUtil"

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
