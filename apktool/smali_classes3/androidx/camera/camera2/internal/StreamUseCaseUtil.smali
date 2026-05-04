.class public final Landroidx/camera/camera2/internal/StreamUseCaseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/StreamUseCaseUtil$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

.field private static final STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/Config$Option;

.field private static final STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP:Ljava/util/Map;

.field private static final STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-wide/16 v0, 0x3

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x4

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 0
    new-instance v2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-direct {v2}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;-><init>()V

    sput-object v2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    .line 55
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "camera2.streamSpec.streamUseCase"

    invoke-static {v3, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v2

    const-string v3, "create(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 57
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v2

    .line 58
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x21

    if-lt v3, v8, :cond_0

    .line 62
    sget-object v9, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->PREVIEW:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 63
    sget-object v10, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->METERING_REPEATING:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 64
    sget-object v11, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_ANALYSIS:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    new-array v12, v4, [Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v9, v12, v7

    aput-object v10, v12, v6

    aput-object v11, v12, v5

    .line 61
    invoke-static {v12}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    .line 59
    invoke-interface {v2, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v12, 0x1

    .line 68
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 72
    new-array v13, v4, [Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v9, v13, v7

    aput-object v10, v13, v6

    aput-object v11, v13, v5

    .line 69
    invoke-static {v13}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 67
    invoke-interface {v2, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v9, 0x2

    .line 76
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 77
    sget-object v10, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-static {v10}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 75
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v9, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-static {v9}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 79
    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP:Ljava/util/Map;

    .line 88
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v2

    if-lt v3, v8, :cond_1

    .line 92
    sget-object v3, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->PREVIEW:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    sget-object v8, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    new-array v4, v4, [Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v3, v4, v7

    sget-object v9, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v9, v4, v6

    aput-object v8, v4, v5

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 90
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-array v1, v5, [Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v3, v1, v7

    aput-object v8, v1, v6

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 94
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    invoke-static {v2}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final areStreamUseCasesAvailable(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 2

    .line 542
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 543
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private final getSessionConfigTemplateType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)I
    .locals 2

    .line 621
    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_0

    return v1

    :cond_0
    return p2

    :cond_1
    if-ne p2, v0, :cond_2

    const/4 p1, 0x5

    return p1

    :cond_2
    return v1
.end method

.method private final getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/core/impl/Config;
    .locals 2

    .line 490
    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 497
    :cond_0
    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    const-string v1, "from(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1, v0, p2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 499
    new-instance p2, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;-><init>(Landroidx/camera/core/impl/Config;)V

    return-object p2
.end method

.method private final isEligibleCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;JLjava/util/List;)Z
    .locals 3

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 348
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->STREAM_SHARING:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 350
    sget-object p1, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP:Ljava/util/Map;

    .line 351
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 350
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 357
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Set;

    .line 358
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p3

    if-eq p2, p3, :cond_2

    return v2

    .line 361
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 362
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    return v2

    :cond_4
    return v1

    .line 368
    :cond_5
    sget-object p4, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private final isValidCamera2InteropOverride(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 9

    .line 566
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 569
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 571
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 572
    sget-object v6, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 571
    invoke-interface {v1, v6}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    move v1, v4

    move p1, v5

    goto :goto_1

    .line 579
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v4

    move v1, v5

    goto :goto_1

    :cond_2
    move p1, v5

    move v1, p1

    .line 589
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    .line 590
    sget-object v7, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v6, v7}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz p1, :cond_3

    .line 593
    invoke-direct {p0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->throwInvalidCamera2InteropOverrideException()V

    :cond_3
    :goto_3
    move v1, v4

    goto :goto_2

    .line 597
    :cond_4
    invoke-interface {v6, v7}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_5

    if-eqz p1, :cond_3

    .line 601
    invoke-direct {p0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->throwInvalidCamera2InteropOverrideException()V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    .line 606
    invoke-direct {p0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->throwInvalidCamera2InteropOverrideException()V

    .line 608
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move p1, v4

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    .line 613
    invoke-direct {p0, p3, v0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areStreamUseCasesAvailable(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v4

    :cond_8
    return v5
.end method

.method private final isZslUseCase(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Z
    .locals 3

    .line 524
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 528
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_IMAGE_CAPTURE_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 532
    :cond_1
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 533
    invoke-direct {p0, p2, p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getSessionConfigTemplateType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private final throwInvalidCamera2InteropOverrideException()V
    .locals 2

    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 552
    const-string v1, "Either all use cases must have non-default stream use case assigned or none should have it"

    .line 551
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final areCaptureTypesEligible(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z
    .locals 10

    const-string/jumbo v0, "surfaceConfigIndexAttachedSurfaceInfoMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceConfigIndexUseCaseConfigMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceConfigsWithStreamUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    .line 392
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {v4}, Landroidx/camera/core/impl/SurfaceConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/impl/StreamUseCase;->getValue()J

    move-result-wide v4

    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "getCaptureTypes(...)"

    if-eqz v6, :cond_1

    .line 394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 397
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCaptureTypes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v3, :cond_0

    .line 398
    invoke-virtual {v6}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCaptureTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    goto :goto_1

    .line 399
    :cond_0
    sget-object v3, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->STREAM_SHARING:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 398
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 401
    invoke-virtual {v6}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCaptureTypes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v3, v4, v5, v6}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isEligibleCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;JLjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 406
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 410
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v6

    const-string v8, "getCaptureType(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v8

    sget-object v9, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->STREAM_SHARING:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    if-ne v8, v9, :cond_2

    .line 413
    check-cast v3, Landroidx/camera/core/streamsharing/StreamSharingConfig;

    invoke-virtual {v3}, Landroidx/camera/core/streamsharing/StreamSharingConfig;->getCaptureTypes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 414
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 409
    :goto_2
    invoke-direct {p0, v6, v4, v5, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isEligibleCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;JLjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 420
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "SurfaceConfig does not map to any use case"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    return v3
.end method

.method public final areStreamUseCasesAvailableForSurfaceConfigs(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;)Z
    .locals 6

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceConfigs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 319
    :cond_0
    invoke-static {}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    const-string v1, "SCALER_AVAILABLE_STREAM_USE_CASES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-eqz p1, :cond_5

    .line 320
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 323
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 324
    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-wide v4, p1, v3

    .line 325
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/SurfaceConfig;

    .line 328
    invoke-virtual {p2}, Landroidx/camera/core/impl/SurfaceConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/core/impl/StreamUseCase;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public final containsZslUseCase(Ljava/util/List;Ljava/util/List;)Z
    .locals 5

    const-string v0, "attachedSurfaces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newUseCaseConfigs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 508
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCaptureTypes()Ljava/util/List;

    move-result-object v3

    const-string v4, "getCaptureTypes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 510
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isZslUseCase(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 514
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 515
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v0

    const-string v3, "getCaptureType(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isZslUseCase(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public final getStreamSpecImplementationOptions(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig;
    .locals 3

    const-string/jumbo v0, "useCaseConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v1, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 186
    :cond_0
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v2

    .line 187
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 192
    :cond_1
    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_IMAGE_CAPTURE_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 198
    :cond_2
    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    .line 199
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 204
    :cond_3
    new-instance p1, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    invoke-direct {p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig;-><init>(Landroidx/camera/core/impl/Config;)V

    return-object p1
.end method

.method public final isStreamUseCaseSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 3

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 213
    :cond_0
    invoke-static {}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    const-string v1, "SCALER_AVAILABLE_STREAM_USE_CASES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-eqz p1, :cond_2

    .line 214
    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public final populateStreamUseCaseStreamSpecOptionWithInteropOverride(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachedSurfaces"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suggestedStreamSpecMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachedSurfaceStreamSpecMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 250
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Required value was null."

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 253
    invoke-virtual {v3}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 257
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {v5}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_5
    invoke-static {}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    const-string v3, "SCALER_AVAILABLE_STREAM_USE_CASES"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-eqz p1, :cond_c

    .line 261
    array-length v1, p1

    if-nez v1, :cond_6

    goto/16 :goto_5

    .line 264
    :cond_6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 265
    array-length v3, p1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_7

    aget-wide v5, p1, v4

    .line 266
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 269
    :cond_7
    invoke-direct {p0, p2, v0, v1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isValidCamera2InteropOverride(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 275
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 276
    invoke-virtual {p2}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    sget-object v3, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 279
    invoke-interface {v1, v3}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 277
    invoke-direct {p0, v1, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/core/impl/Config;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 285
    invoke-virtual {p2, v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->toStreamSpec(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;

    move-result-object v1

    invoke-interface {p4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 288
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_a
    :goto_4
    if-ge v2, p1, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    check-cast p2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 289
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/core/impl/StreamSpec;

    .line 290
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    .line 292
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 294
    sget-object v3, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 293
    invoke-interface {v1, v3}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 291
    invoke-direct {p0, v1, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/core/impl/Config;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 299
    invoke-virtual {p4}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p4

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    const/4 p1, 0x1

    return p1

    :cond_c
    :goto_5
    return v2
.end method

.method public final populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 7

    const-string/jumbo v0, "suggestedStreamSpecMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachedSurfaceStreamSpecMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceConfigIndexAttachedSurfaceInfoMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceConfigIndexUseCaseConfigMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceConfigsWithStreamUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    move-object v0, p5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 446
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {v2}, Landroidx/camera/core/impl/SurfaceConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/impl/StreamUseCase;->getValue()J

    move-result-wide v2

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 449
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    .line 452
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 453
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 451
    invoke-direct {p0, v5, v2}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/core/impl/Config;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 457
    invoke-virtual {v4, v2}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->toStreamSpec(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 459
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/camera/core/impl/UseCaseConfig;

    .line 461
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/StreamSpec;

    .line 462
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v6

    .line 465
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 466
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 464
    invoke-direct {p0, v6, v2}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/core/impl/Config;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 471
    invoke-virtual {v5}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v3

    .line 472
    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v2

    .line 472
    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 477
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "SurfaceConfig does not map to any use case"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    return-void
.end method

.method public final populateSurfaceToStreamUseCaseMapping(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 8

    const-string/jumbo v0, "sessionConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseConfigs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamUseCaseMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "CXCP"

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SessionConfig;

    .line 118
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v3

    .line 119
    sget-object v4, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 118
    invoke-interface {v3, v4}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 122
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 136
    invoke-static {v2}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 137
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StreamUseCaseUtil: SessionConfig has stream use case but also contains "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string p3, " surfaces, abort populateSurfaceToStreamUseCaseMapping()."

    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_1
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    invoke-interface {v1, v4}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/SessionConfig;

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v4}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v4

    sget-object v6, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->METERING_REPEATING:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const-string v7, "getSurfaces(...)"

    if-ne v4, v6, :cond_2

    .line 147
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    .line 148
    const-string v6, "MeteringRepeating should contain a surface"

    .line 146
    invoke-static {v4, v6}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v6, 0x1

    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    .line 154
    sget-object v6, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/Config$Option;

    .line 153
    invoke-interface {v4, v6}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 158
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 159
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v3

    invoke-interface {v3, v6}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_4
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "populateSurfaceToStreamUseCaseMapping() - streamUseCaseMap = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final shouldUseStreamUseCase(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Z
    .locals 2

    const-string v0, "featureSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
