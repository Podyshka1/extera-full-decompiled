.class public final Landroidx/camera/camera2/internal/HighSpeedResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;

.field private static final DEFAULT_FPS:Landroid/util/Range;


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final isHighSpeedSupported$delegate:Lkotlin/Lazy;

.field private final maxSize$delegate:Lkotlin/Lazy;

.field private final streamConfigurationMapCompat$delegate:Lkotlin/Lazy;

.field private final supportedSizes$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$F31AeowgvxM3uU8JKUsYWGum9Ro(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->streamConfigurationMapCompat_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O5QZeAnVoeGmQjN2Jc9dlH23mag(Landroidx/camera/camera2/internal/HighSpeedResolver;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZNvvifbt712SApORMdG7iRlzVn4(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroid/util/Size;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->maxSize_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y1qpmO2j3UYk6EnWiZS3G3Hx_Sw(Landroidx/camera/camera2/internal/HighSpeedResolver;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->supportedSizes_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/internal/HighSpeedResolver;->Companion:Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;

    .line 196
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Landroidx/camera/camera2/internal/HighSpeedResolver;->DEFAULT_FPS:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V
    .locals 1

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 39
    new-instance p1, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/HighSpeedResolver;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/internal/HighSpeedResolver;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->maxSize$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/internal/HighSpeedResolver;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->streamConfigurationMapCompat$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/HighSpeedResolver$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/camera2/internal/HighSpeedResolver;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->supportedSizes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_FPS$cp()Landroid/util/Range;
    .locals 1

    .line 36
    sget-object v0, Landroidx/camera/camera2/internal/HighSpeedResolver;->DEFAULT_FPS:Landroid/util/Range;

    return-object v0
.end method

.method private final findCommonElements(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 179
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 182
    check-cast p1, Ljava/lang/Iterable;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 182
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/List;
    .locals 1

    .line 187
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 188
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, [Landroid/util/Range;

    if-eqz p1, :cond_1

    .line 189
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 187
    check-cast p1, Ljava/lang/Iterable;

    .line 190
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->streamConfigurationMapCompat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    return-object v0
.end method

.method private final getSupportedSizes()Ljava/util/List;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->supportedSizes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final isHighSpeedSupported_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Z
    .locals 5

    .line 41
    iget-object p0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "REQUEST_AVAILABLE_CAPABILITIES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 263
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static final maxSize_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroid/util/Size;
    .locals 4

    .line 48
    invoke-direct {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getSupportedSizes()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    .line 1969
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1970
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1971
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1972
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1973
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/util/Size;

    .line 48
    invoke-static {v1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result v1

    .line 1975
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1976
    move-object v3, v2

    check-cast v3, Landroid/util/Size;

    .line 48
    invoke-static {v3}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result v3

    if-ge v1, v3, :cond_3

    move-object v0, v2

    move v1, v3

    .line 1981
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1982
    :goto_1
    check-cast v0, Landroid/util/Size;

    return-object v0

    .line 1970
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    return-object v1
.end method

.method private static final streamConfigurationMapCompat_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
    .locals 3

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "SCALER_STREAM_CONFIGURATION_MAP"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    new-instance v2, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    iget-object p0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-direct {v2, p0, v0}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    invoke-direct {v1, v0, v2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V

    return-object v1

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final supportedSizes_delegate$lambda$0(Landroidx/camera/camera2/internal/HighSpeedResolver;)Ljava/util/List;
    .locals 0

    .line 59
    invoke-direct {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final filterCommonSupportedSizes(Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    const-string/jumbo v0, "sizesMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->findCommonElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/util/Size;

    .line 80
    invoke-direct {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getSupportedSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 865
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 242
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1253
    check-cast v2, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 1253
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 81
    check-cast v2, Ljava/lang/Iterable;

    .line 774
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/util/Size;

    .line 81
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 865
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1253
    :cond_3
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final getFrameRateRangesFor(Ljava/util/List;)[Landroid/util/Range;
    .locals 5

    const-string/jumbo v0, "surfaceSizes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v2, v0, :cond_6

    const/4 v3, 0x3

    if-ge v0, v3, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-direct {p0, v2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    return-object v1

    .line 159
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 160
    check-cast v2, Ljava/lang/Iterable;

    .line 774
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/util/Range;

    .line 160
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v2, p1

    .line 162
    :cond_5
    check-cast v2, Ljava/util/Collection;

    .line 38
    new-array p1, v0, [Landroid/util/Range;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Range;

    return-object p1

    :cond_6
    :goto_2
    return-object v1
.end method

.method public final getMaxFrameRate(Landroid/util/Size;)I
    .locals 3

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No supported high speed  fps for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HighSpeedResolver"

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string p1, "maxOf(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public final getMaxSize()Landroid/util/Size;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->maxSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method

.method public final getSizeArrangements(Ljava/util/List;)Ljava/util/List;
    .locals 6

    const-string/jumbo v0, "sizesList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/HighSpeedResolver;->findCommonElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/Iterable;

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Landroid/util/Size;

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1635
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final isHighSpeedSupported()Z
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
