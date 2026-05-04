.class public final Landroidx/camera/video/internal/utils/EncoderProfilesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/utils/EncoderProfilesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;

    invoke-direct {v0}, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;->INSTANCE:Landroidx/camera/video/internal/utils/EncoderProfilesUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deriveVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroid/util/Size;Landroid/util/Range;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 10

    const-string v0, "baseVideoProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newResolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitrateRangeToClamp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    move-result v1

    .line 48
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v2

    .line 49
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v3

    .line 50
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    move-result v4

    .line 51
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    move-result v5

    .line 52
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 53
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    move-result v7

    .line 54
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 55
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    move-result v9

    .line 46
    invoke-static/range {v1 .. v9}, Landroidx/camera/video/internal/config/VideoConfigUtil;->scaleBitrate(IIIIIIIII)I

    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    const-string v0, "clamp(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 60
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getCodec()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    move-result v3

    .line 64
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 65
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 66
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    move-result v6

    .line 67
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v7

    .line 68
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getChromaSubsampling()I

    move-result v8

    .line 69
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    move-result v9

    .line 59
    invoke-static/range {v0 .. v9}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getFirstVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 0

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
