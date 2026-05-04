.class public abstract Landroidx/camera/video/internal/utils/DynamicRangeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DR_TO_VP_BIT_DEPTH_MAP:Ljava/util/Map;

.field public static final DR_TO_VP_FORMAT_MAP:Ljava/util/Map;

.field private static final MIME_TO_DEFAULT_PROFILE_LEVEL_MAP:Ljava/util/Map;

.field public static final VP_TO_DR_BIT_DEPTH:Ljava/util/Map;

.field public static final VP_TO_DR_FORMAT_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->DR_TO_VP_BIT_DEPTH_MAP:Ljava/util/Map;

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->DR_TO_VP_FORMAT_MAP:Ljava/util/Map;

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->VP_TO_DR_BIT_DEPTH:Ljava/util/Map;

    .line 83
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->VP_TO_DR_FORMAT_MAP:Ljava/util/Map;

    .line 84
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->MIME_TO_DEFAULT_PROFILE_LEVEL_MAP:Ljava/util/Map;

    const/16 v5, 0x8

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0xa

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    const/4 v10, 0x2

    .line 95
    new-array v11, v10, [Ljava/lang/Integer;

    aput-object v5, v11, v7

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 99
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    move/from16 v16, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v17, v10

    const/4 v10, 0x5

    move/from16 v18, v12

    new-array v12, v10, [Ljava/lang/Integer;

    aput-object v8, v12, v16

    aput-object v9, v12, v18

    aput-object v11, v12, v17

    aput-object v14, v12, v13

    aput-object v7, v12, v15

    .line 98
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    .line 102
    new-array v12, v15, [Ljava/lang/Integer;

    aput-object v9, v12, v16

    aput-object v11, v12, v18

    aput-object v14, v12, v17

    aput-object v7, v12, v13

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Ljava/util/HashSet;

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x6

    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v12, Ljava/util/HashSet;

    .line 107
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 106
    invoke-interface {v1, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {v2, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {v2, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v3, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {v3, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    sget-object v1, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v2, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v3, Landroidx/camera/core/DynamicRange;->HDR10_10_BIT:Landroidx/camera/core/DynamicRange;

    const/16 v5, 0x1000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v6, Landroidx/camera/core/DynamicRange;->HDR10_PLUS_10_BIT:Landroidx/camera/core/DynamicRange;

    const/16 v8, 0x2000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-interface {v10, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {v10, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 140
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4000

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 149
    sget-object v2, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_10_BIT:Landroidx/camera/core/DynamicRange;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_8_BIT:Landroidx/camera/core/DynamicRange;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "video/hevc"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "video/av01"

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "video/x-vnd.on2.vp9"

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "video/dolby-vision"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static dynamicRangeToCodecProfileLevelForMime(Ljava/lang/String;Landroidx/camera/core/DynamicRange;)I
    .locals 1

    .line 209
    sget-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->MIME_TO_DEFAULT_PROFILE_LEVEL_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 211
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static dynamicRangeToVideoProfileBitDepth(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;
    .locals 1

    .line 191
    sget-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->DR_TO_VP_BIT_DEPTH_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    .line 193
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    return-object p0
.end method

.method public static dynamicRangeToVideoProfileHdrFormats(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;
    .locals 1

    .line 172
    sget-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->DR_TO_VP_FORMAT_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    .line 174
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    return-object p0
.end method

.method private static isBitDepthMatched(ILandroidx/camera/core/DynamicRange;)Z
    .locals 1

    .line 256
    sget-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->DR_TO_VP_BIT_DEPTH_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 257
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isHdrEncodingMatched(ILandroidx/camera/core/DynamicRange;)Z
    .locals 1

    .line 261
    sget-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->DR_TO_VP_FORMAT_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 262
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHdrSettingsMatched(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;)Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v0

    invoke-static {v0, p1}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->isBitDepthMatched(ILandroidx/camera/core/DynamicRange;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    move-result p0

    invoke-static {p0, p1}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->isHdrEncodingMatched(ILandroidx/camera/core/DynamicRange;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static videoProfileBitDepthToDynamicRangeBitDepth(I)I
    .locals 2

    .line 238
    sget-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->VP_TO_DR_BIT_DEPTH:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 239
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static videoProfileHdrFormatsToDynamicRangeEncoding(I)I
    .locals 2

    .line 227
    sget-object v0, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->VP_TO_DR_FORMAT_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
