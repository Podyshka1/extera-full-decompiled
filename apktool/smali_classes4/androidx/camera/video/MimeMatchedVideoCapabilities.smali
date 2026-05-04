.class public final Landroidx/camera/video/MimeMatchedVideoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoCapabilities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;
    }
.end annotation


# instance fields
.field private final cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final mime:Ljava/lang/String;

.field private final validatedData$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$n5XMUnTC0mYqj_QZDJcpYORFhXc(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->validatedData_delegate$lambda$0(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 1

    const-string v0, "mime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEncoderInfoFinder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities;->mime:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 46
    new-instance p1, Landroidx/camera/video/MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities;->validatedData$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getValidatedData()Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities;->validatedData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    return-object v0
.end method

.method private static final validatedData_delegate$lambda$0(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;
    .locals 12

    .line 47
    iget-object v0, p1, Landroidx/camera/video/MimeMatchedVideoCapabilities;->mime:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;->find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    invoke-direct {p0, v1, v1, v0, v1}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 50
    :cond_0
    iget-object v2, p1, Landroidx/camera/video/MimeMatchedVideoCapabilities;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object v2

    const-string v3, "getSupportedDynamicRanges(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    invoke-direct {p0, v1, v1, v0, v1}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 53
    :cond_1
    sget-object v3, Landroidx/camera/video/internal/config/VideoConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/VideoConfigUtil;

    iget-object v4, p1, Landroidx/camera/video/MimeMatchedVideoCapabilities;->mime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/camera/video/internal/config/VideoConfigUtil;->getDynamicRangesForMime(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    invoke-direct {p0, v1, v1, v0, v1}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 59
    :cond_2
    iget-object p1, p1, Landroidx/camera/video/MimeMatchedVideoCapabilities;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    const/16 v3, 0x22

    invoke-interface {p1, v3}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    move-result-object p1

    const-string v3, "getSupportedResolutions(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    .line 61
    invoke-static {}, Landroidx/camera/video/Quality;->getSortedQualities()Ljava/util/List;

    move-result-object v3

    const-string v4, "getSortedQualities(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 808
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroidx/camera/video/Quality$ConstantQuality;

    if-eqz v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1617
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_5
    :goto_1
    if-ge v6, v5, :cond_9

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 1625
    check-cast v7, Landroidx/camera/video/Quality$ConstantQuality;

    .line 65
    invoke-virtual {v7}, Landroidx/camera/video/Quality$ConstantQuality;->getTypicalSizes()Ljava/util/List;

    move-result-object v8

    const-string v9, "getTypicalSizes(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Iterable;

    .line 295
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/util/Size;

    .line 66
    invoke-virtual {p1, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 67
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-interface {p0, v11, v10}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupported(II)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_7
    move-object v9, v1

    .line 65
    :goto_2
    check-cast v9, Landroid/util/Size;

    if-eqz v9, :cond_8

    .line 69
    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    goto :goto_3

    :cond_8
    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_5

    .line 1625
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_9
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    invoke-direct {p0, v1, v1, v0, v1}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 75
    :cond_a
    new-instance p1, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    invoke-direct {p1, v2, p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method public getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;
    .locals 1

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->getValidatedData()Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->getDynamicRanges()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/camera/core/impl/DynamicRanges;->canResolve(Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    invoke-direct {p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->getValidatedData()Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->getQualityToSizeMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->getValidatedData()Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->getDynamicRanges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;
    .locals 1

    const-string v0, "dynamicRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->getValidatedData()Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->getDynamicRanges()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/camera/core/impl/DynamicRanges;->canResolve(Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->getValidatedData()Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->getQualityToSizeMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MimeMatchedVideoCapabilities(mime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
