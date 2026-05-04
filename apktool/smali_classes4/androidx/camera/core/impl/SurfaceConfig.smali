.class public final Landroidx/camera/core/impl/SurfaceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/SurfaceConfig$Companion;,
        Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;,
        Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;,
        Landroidx/camera/core/impl/SurfaceConfig$ConfigType;,
        Landroidx/camera/core/impl/SurfaceConfig$WhenMappings;
    }
.end annotation


# static fields
.field private static final CONFIG_TYPES_BY_IMAGE_FORMAT:Ljava/util/Map;

.field public static final Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

.field public static final DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

.field private static final FEATURE_COMBO_QUERY_SUPPORTED_SIZES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field private static final IMAGE_FORMATS_BY_CONFIG_TYPE:Ljava/util/Map;


# instance fields
.field private final configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field private final configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field private final imageFormat:I

.field private final streamUseCase:Landroidx/camera/core/impl/StreamUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/SurfaceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    .line 39
    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->DEFAULT:Landroidx/camera/core/impl/StreamUseCase;

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    const/4 v0, 0x6

    .line 48
    new-array v0, v0, [Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->X_VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 42
    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig;->FEATURE_COMBO_QUERY_SUPPORTED_SIZES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 53
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 54
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/16 v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 55
    sget-object v8, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG_R:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/16 v9, 0x1005

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 56
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 57
    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/16 v11, 0x22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    new-array v7, v7, [Lkotlin/Pair;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v8, v7, v4

    aput-object v9, v7, v5

    aput-object v10, v7, v6

    .line 52
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig;->IMAGE_FORMATS_BY_CONFIG_TYPE:Ljava/util/Map;

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    .line 1222
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1223
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1252
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1253
    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 1253
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    sput-object v2, Landroidx/camera/core/impl/SurfaceConfig;->CONFIG_TYPES_BY_IMAGE_FORMAT:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V
    .locals 1

    const-string v0, "configType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 34
    iput-object p2, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 35
    iput-object p3, p0, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    .line 199
    sget-object p2, Landroidx/camera/core/impl/SurfaceConfig;->IMAGE_FORMATS_BY_CONFIG_TYPE:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    return-void
.end method

.method public static final synthetic access$getCONFIG_TYPES_BY_IMAGE_FORMAT$cp()Ljava/util/Map;
    .locals 1

    .line 32
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig;->CONFIG_TYPES_BY_IMAGE_FORMAT:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getFEATURE_COMBO_QUERY_SUPPORTED_SIZES$cp()[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 1

    .line 32
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig;->FEATURE_COMBO_QUERY_SUPPORTED_SIZES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/SurfaceConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/impl/SurfaceConfig;

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    iget-object v3, p1, Landroidx/camera/core/impl/SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    iget-object v3, p1, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    iget-object p1, p1, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getConfigSize()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-object v0
.end method

.method public final getImageFormat()I
    .locals 1

    .line 199
    iget v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    return v0
.end method

.method public final getResolution(Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroid/util/Size;
    .locals 2

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 211
    iget-object p1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->getRelatedFixedSize()Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 210
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported config size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :pswitch_1
    iget v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSize(I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 208
    :pswitch_2
    iget v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum16x9Size(I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 207
    :pswitch_3
    iget v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum4x3Size(I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 206
    :pswitch_4
    iget v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSize(I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 205
    :pswitch_5
    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 204
    :pswitch_6
    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getPreviewSize()Landroid/util/Size;

    move-result-object p1

    .line 211
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSupported(Landroidx/camera/core/impl/SurfaceConfig;)Z
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p1, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->getId()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 186
    :cond_0
    iget-object v0, p1, Landroidx/camera/core/impl/SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    if-eq v0, v1, :cond_1

    return v2

    .line 189
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    sget-object v1, Landroidx/camera/core/impl/StreamUseCase;->DEFAULT:Landroidx/camera/core/impl/StreamUseCase;

    if-eq v0, v1, :cond_2

    .line 190
    iget-object p1, p1, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceConfig(configType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configType:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamUseCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
