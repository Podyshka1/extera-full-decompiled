.class public final Landroidx/camera/video/EncoderProfilesResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/EncoderProfilesResolver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/EncoderProfilesResolver$Companion;

.field public static final EMPTY:Landroidx/camera/video/EncoderProfilesResolver;


# instance fields
.field private final fullySpecifiedMap:Ljava/util/Map;

.field private final hostProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final nonFullySpecifiedMap:Ljava/util/Map;

.field private final qualitySource:I

.field private final supportedDynamicRanges:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/camera/video/EncoderProfilesResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/EncoderProfilesResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/EncoderProfilesResolver;->Companion:Landroidx/camera/video/EncoderProfilesResolver$Companion;

    .line 39
    new-instance v0, Landroidx/camera/video/EncoderProfilesResolver;

    .line 40
    sget-object v1, Landroidx/camera/core/impl/EncoderProfilesProvider;->EMPTY:Landroidx/camera/core/impl/EncoderProfilesProvider;

    const-string v2, "EMPTY"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 42
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 39
    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/video/EncoderProfilesResolver;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;ILjava/util/Set;)V

    sput-object v0, Landroidx/camera/video/EncoderProfilesResolver;->EMPTY:Landroidx/camera/video/EncoderProfilesResolver;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;ILjava/util/Set;)V
    .locals 2

    const-string v0, "hostProfilesProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedDynamicRanges"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/camera/video/EncoderProfilesResolver;->hostProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 33
    iput p2, p0, Landroidx/camera/video/EncoderProfilesResolver;->qualitySource:I

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/EncoderProfilesResolver;->fullySpecifiedMap:Ljava/util/Map;

    .line 52
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/EncoderProfilesResolver;->nonFullySpecifiedMap:Ljava/util/Map;

    .line 55
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/DynamicRange;

    .line 57
    new-instance p3, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;

    iget-object v0, p0, Landroidx/camera/video/EncoderProfilesResolver;->hostProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-direct {p3, v0, p2}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/DynamicRange;)V

    .line 58
    new-instance v0, Landroidx/camera/video/CapabilitiesByQuality;

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolver;->qualitySource:I

    invoke-direct {v0, p3, v1}, Landroidx/camera/video/CapabilitiesByQuality;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;I)V

    .line 59
    invoke-virtual {v0}, Landroidx/camera/video/CapabilitiesByQuality;->getSupportedQualities()Ljava/util/List;

    move-result-object p3

    const-string v1, "getSupportedQualities(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 60
    iget-object p3, p0, Landroidx/camera/video/EncoderProfilesResolver;->fullySpecifiedMap:Ljava/util/Map;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Landroidx/camera/video/EncoderProfilesResolver;->fullySpecifiedMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/EncoderProfilesResolver;->supportedDynamicRanges:Ljava/util/Set;

    return-void
.end method

.method private final getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;
    .locals 4

    .line 100
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroidx/camera/video/EncoderProfilesResolver;->fullySpecifiedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/CapabilitiesByQuality;

    return-object p1

    .line 103
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/EncoderProfilesResolver;->nonFullySpecifiedMap:Ljava/util/Map;

    .line 384
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolver;->fullySpecifiedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/camera/core/impl/DynamicRanges;->canResolve(Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;

    iget-object v2, p0, Landroidx/camera/video/EncoderProfilesResolver;->hostProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-direct {v1, v2, p1}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/DynamicRange;)V

    .line 107
    new-instance v2, Landroidx/camera/video/CapabilitiesByQuality;

    iget v3, p0, Landroidx/camera/video/EncoderProfilesResolver;->qualitySource:I

    invoke-direct {v2, v1, v3}, Landroidx/camera/video/CapabilitiesByQuality;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;I)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_2
    check-cast v1, Landroidx/camera/video/CapabilitiesByQuality;

    return-object v1
.end method


# virtual methods
.method public final findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p2}, Landroidx/camera/video/EncoderProfilesResolver;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/camera/video/CapabilitiesByQuality;->findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getProfiles(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 1

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p2}, Landroidx/camera/video/EncoderProfilesResolver;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/camera/video/CapabilitiesByQuality;->getProfiles(Landroidx/camera/video/Quality;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;
    .locals 1

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p2}, Landroidx/camera/video/EncoderProfilesResolver;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/camera/video/CapabilitiesByQuality;->getResolution(Landroidx/camera/video/Quality;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/camera/video/EncoderProfilesResolver;->supportedDynamicRanges:Ljava/util/Set;

    return-object v0
.end method

.method public final getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;
    .locals 1

    const-string v0, "dynamicRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Landroidx/camera/video/EncoderProfilesResolver;->getCapabilities(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/video/CapabilitiesByQuality;->getSupportedQualities()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
