.class public final Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

.field private static final MIMETYPE_AUDIO_OPUS_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

.field private static final registries$delegate:Lkotlin/Lazy;

.field private static final standardMp4Audios$delegate:Lkotlin/Lazy;

.field private static final standardWebmAudios$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-FouBuXi9U7zUgh_5Y-GjbobpoI(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10Registry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5AuNRZElpaoKdjsvAkCtbe5nOQU(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildSdrRegistry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G0yMqjXFD2pLCq0hOkiF5VP_Rlg(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10Registry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ce7-Z-Ngs72UK9UJGwFjM6AlR04(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHlgRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gO-liYEZvgXRStXGSsEm7KAwCmk()Ljava/util/Map;
    .locals 1

    .line 0
    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->registries_delegate$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$h6JXUeNMoe4Q3j7kklRNxfNHrdk(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildSdrRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hi-hkx4Nh4ksYvQ-qxPPFtDi5Ak()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardMp4Audios_delegate$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$kfbEw1BiMiDgLTaqEGAa0Ukj6OY(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildDolbyVisionRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uFoYrz4xN65dtgic6lOWz9Cj80o(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10PlusRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vavHxtOfnMLoD8wLV-fSXf7Mctc()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardWebmAudios_delegate$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    .line 65
    const-string v1, "video/hevc"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    .line 66
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

    .line 67
    const-string v1, "audio/opus"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_AUDIO_OPUS_GATED:Ljava/lang/String;

    .line 68
    const-string v1, "video/dolby-vision"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

    .line 69
    const-string v1, "video/av01"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    .line 70
    const-string v1, "video/apv"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    .line 72
    new-instance v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->registries$delegate:Lkotlin/Lazy;

    .line 83
    new-instance v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardMp4Audios$delegate:Lkotlin/Lazy;

    .line 87
    new-instance v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardWebmAudios$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildDolbyVisionRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 3

    .line 215
    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    .line 217
    new-instance v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILkotlin/jvm/functions/Function1;)V

    .line 224
    invoke-virtual {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v0

    return-object v0
.end method

.method private static final buildDolbyVisionRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 220
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    .line 222
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final buildHdr10PlusRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 3

    .line 199
    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    .line 202
    new-instance v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda4;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILkotlin/jvm/functions/Function1;)V

    .line 212
    invoke-virtual {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v0

    return-object v0
.end method

.method private static final buildHdr10PlusRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 206
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    .line 208
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final buildHdr10Registry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 3

    .line 173
    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    .line 175
    new-instance v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda8;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILkotlin/jvm/functions/Function1;)V

    .line 189
    new-instance v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda9;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILkotlin/jvm/functions/Function1;)V

    .line 196
    invoke-virtual {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v0

    return-object v0
.end method

.method private static final buildHdr10Registry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 3

    const-string v0, "$this$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    .line 180
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    .line 181
    sget-object v2, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 183
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    .line 185
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final buildHdr10Registry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 192
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardWebmAudios()Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    .line 194
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final buildHlgRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 3

    .line 153
    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    .line 156
    new-instance v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda5;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILkotlin/jvm/functions/Function1;)V

    .line 170
    invoke-virtual {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v0

    return-object v0
.end method

.method private static final buildHlgRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 3

    const-string v0, "$this$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    .line 161
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    .line 162
    sget-object v2, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 164
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    .line 166
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final buildSdrRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 3

    .line 125
    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    .line 127
    new-instance v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda6;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILkotlin/jvm/functions/Function1;)V

    .line 143
    new-instance v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda7;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILkotlin/jvm/functions/Function1;)V

    .line 150
    invoke-virtual {v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v0

    return-object v0
.end method

.method private static final buildSdrRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 8

    const-string v0, "$this$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v4, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    .line 135
    sget-object v5, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

    .line 136
    sget-object v6, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    .line 137
    sget-object v7, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    const-string v1, "video/avc"

    const-string v2, "video/mp4v-es"

    const-string v3, "video/3gpp"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 139
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    .line 141
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final buildSdrRegistry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const-string v0, "video/x-vnd.on2.vp8"

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 146
    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardWebmAudios()Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    .line 148
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getRegistries()Ljava/util/Map;
    .locals 1

    .line 72
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->registries$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final getStandardMp4Audios()Ljava/util/List;
    .locals 1

    .line 83
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardMp4Audios$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getStandardWebmAudios()Ljava/util/List;
    .locals 1

    .line 87
    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardWebmAudios$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final registries_delegate$lambda$0()Ljava/util/Map;
    .locals 8

    .line 74
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildSdrRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 75
    sget-object v2, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHlgRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 76
    sget-object v3, Landroidx/camera/core/DynamicRange;->HDR10_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10Registry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 77
    sget-object v4, Landroidx/camera/core/DynamicRange;->HDR10_PLUS_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10PlusRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 78
    sget-object v5, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_8_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildDolbyVisionRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 79
    sget-object v6, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildDolbyVisionRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v1

    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x6

    new-array v6, v6, [Lkotlin/Pair;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v1, v6, v0

    .line 73
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final standardMp4Audios_delegate$lambda$0()Ljava/util/List;
    .locals 3

    .line 84
    const-string v0, "audio/3gpp"

    const-string v1, "audio/amr-wb"

    const-string v2, "audio/mp4a-latm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final standardWebmAudios_delegate$lambda$0()Ljava/util/List;
    .locals 2

    .line 88
    const-string v0, "audio/vorbis"

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_AUDIO_OPUS_GATED:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final takeIf(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getDynamicRangesForVideoMime(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    const-string v0, "videoMime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 110
    invoke-direct {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getRegistries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/DynamicRange;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/internal/config/FormatComboRegistry;

    .line 112
    invoke-virtual {v2, p1}, Landroidx/camera/video/internal/config/FormatComboRegistry;->getCombosForVideo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
