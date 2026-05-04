.class public final Landroidx/camera/core/impl/SurfaceConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SurfaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 69
    sget-object p3, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic transformSurfaceConfig$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 104
    sget-object p5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    .line 105
    sget-object p6, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig;

    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/core/impl/SurfaceConfig;-><init>(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    return-object v0
.end method

.method public final getConfigType(I)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    .locals 1

    .line 85
    invoke-static {}, Landroidx/camera/core/impl/SurfaceConfig;->access$getCONFIG_TYPES_BY_IMAGE_FORMAT$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    if-nez p1, :cond_0

    sget-object p1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    :cond_0
    return-object p1
.end method

.method public final transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 4

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceSizeDefinition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->getConfigType(I)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-result-object v0

    .line 108
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 111
    invoke-static {p2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result v2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_1

    .line 114
    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSize(I)Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p2

    if-gt v2, p2, :cond_0

    .line 115
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto/16 :goto_2

    .line 117
    :cond_0
    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSize(I)Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p1

    if-gt v2, p1, :cond_a

    .line 119
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto/16 :goto_2

    .line 121
    :cond_1
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->FEATURE_COMBINATION_TABLE:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    if-ne p5, v3, :cond_4

    .line 122
    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSize(I)Landroid/util/Size;

    move-result-object p1

    .line 125
    invoke-static {}, Landroidx/camera/core/impl/SurfaceConfig;->access$getFEATURE_COMBO_QUERY_SUPPORTED_SIZES$cp()[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-result-object p3

    array-length p4, p3

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_3

    aget-object v2, p3, p5

    .line 126
    invoke-virtual {v2}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->getRelatedFixedSize()Landroid/util/Size;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 133
    :cond_3
    :goto_1
    sget-object p3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    if-ne v1, p3, :cond_a

    .line 134
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 135
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_2

    .line 139
    :cond_4
    invoke-virtual {p3}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getAnalysisSize()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p2

    if-gt v2, p2, :cond_5

    .line 140
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_2

    .line 141
    :cond_5
    invoke-virtual {p3}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getPreviewSize()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p2

    if-gt v2, p2, :cond_6

    .line 142
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_2

    .line 143
    :cond_6
    invoke-virtual {p3}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p2

    if-gt v2, p2, :cond_7

    .line 144
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_2

    .line 146
    :cond_7
    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSize(I)Landroid/util/Size;

    move-result-object p2

    .line 147
    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSize(I)Landroid/util/Size;

    move-result-object p1

    if-eqz p2, :cond_8

    .line 153
    invoke-static {p2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p2

    if-gt v2, p2, :cond_9

    :cond_8
    const/4 p2, 0x2

    if-eq p4, p2, :cond_9

    .line 156
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_a

    .line 158
    invoke-static {p1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p1

    if-gt v2, p1, :cond_a

    .line 160
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ULTRA_MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 165
    :cond_a
    :goto_2
    invoke-virtual {p0, v0, v1, p6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p1

    return-object p1
.end method
