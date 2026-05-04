.class public final Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;


# instance fields
.field private final cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final encoderProfilesMap:Ljava/util/Map;

.field private final supportedSizes$delegate:Lkotlin/Lazy;

.field private final targetQualities:Ljava/util/List;

.field private final videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;


# direct methods
.method public static synthetic $r8$lambda$gv13avhYz_Z5suCQzndzSujK5FM(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->supportedSizes_delegate$lambda$0(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->Companion:Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 1

    const-string v0, "cameraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetQualities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEncoderInfoFinder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 51
    iput-object p2, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->targetQualities:Ljava/util/List;

    .line 52
    iput-object p3, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    .line 55
    new-instance p1, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->supportedSizes$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    return-void
.end method

.method private final createDefaultAudioProfile(ILjava/lang/String;IIII)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 0

    .line 188
    invoke-static/range {p1 .. p6}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->create(ILjava/lang/String;IIII)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic createDefaultAudioProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x3

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 182
    const-string p2, "audio/mp4a-latm"

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    const p3, 0x17700

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const p4, 0xac44

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    const/4 p5, 0x1

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x2

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 180
    invoke-direct/range {p2 .. p8}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultAudioProfile(ILjava/lang/String;IIII)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultEncoderProfiles(IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    .line 137
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 138
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 134
    invoke-static {p1, p2, p4, p3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic createDefaultEncoderProfiles$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/16 p1, 0x3c

    :cond_0
    const/4 p6, 0x2

    and-int/2addr p5, p6

    if-eqz p5, :cond_1

    move p2, p6

    .line 128
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultEncoderProfiles(IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultVideoProfile(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 1

    move v0, p5

    move p5, p3

    move p3, v0

    move v0, p6

    move p6, p4

    move p4, v0

    .line 160
    invoke-static/range {p1 .. p10}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic createDefaultVideoProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIIIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 1

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    const/4 p1, 0x2

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 150
    const-string p2, "video/avc"

    :cond_1
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_2

    const/16 p6, 0x1e

    :cond_2
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_3

    const/4 p7, -0x1

    :cond_3
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_4

    const/16 p8, 0x8

    :cond_4
    and-int/lit16 p12, p11, 0x100

    const/4 v0, 0x0

    if-eqz p12, :cond_5

    move p9, v0

    :cond_5
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_6

    move p12, v0

    move p10, p8

    move p11, p9

    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    goto :goto_0

    :cond_6
    move p12, p10

    move p11, p9

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 148
    :goto_0
    invoke-direct/range {p2 .. p12}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultVideoProfile(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    return-object p0
.end method

.method private final find(Ljava/util/List;I)Landroidx/camera/video/Quality$ConstantQuality;
    .locals 4

    .line 207
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/video/Quality;

    const-string v3, "null cannot be cast to non-null type androidx.camera.video.Quality.ConstantQuality"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/camera/video/Quality$ConstantQuality;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/camera/video/Quality$ConstantQuality;->getQualityValue(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Landroidx/camera/video/Quality$ConstantQuality;

    if-eqz p1, :cond_2

    check-cast v0, Landroidx/camera/video/Quality$ConstantQuality;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private final generateEncoderProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 13

    .line 74
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->generateVideoProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    .line 78
    invoke-static/range {v4 .. v12}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultAudioProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p1

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 76
    invoke-static/range {v0 .. v6}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultEncoderProfiles$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method private final generateVideoProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 5

    .line 83
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->targetQualities:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->find(Ljava/util/List;I)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getTypicalSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 86
    invoke-direct {p0}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getSupportedSizes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 91
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 92
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getTypicalBitrate(Landroidx/camera/video/Quality;)I

    move-result v4

    .line 89
    invoke-direct {p0, v3, v2, v4}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->resolveVideoProfile(III)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method private final getProfileInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2

    .line 66
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->generateEncoderProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final getSupportedSizes()Ljava/util/List;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->supportedSizes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getTypicalBitrate(Landroidx/camera/video/Quality;)I
    .locals 3

    .line 199
    sget-object v0, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x2625a00

    return p1

    .line 200
    :cond_0
    sget-object v0, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x989680

    return p1

    .line 201
    :cond_1
    sget-object v0, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x3d0900

    return p1

    .line 202
    :cond_2
    sget-object v0, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x1e8480

    return p1

    .line 203
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined bitrate for quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final resolveVideoProfile(III)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 15

    const/16 v11, 0x3e3

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 104
    invoke-static/range {v0 .. v12}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultVideoProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIIIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v1

    .line 105
    iget-object v2, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-virtual {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMediaType(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;->find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    move/from16 v5, p1

    move/from16 v4, p2

    .line 107
    invoke-interface {v2, v5, v4}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v3

    .line 112
    :cond_1
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v6, p3

    if-eq v3, v6, :cond_3

    .line 116
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v13, 0x3e3

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move/from16 v6, p2

    invoke-static/range {v2 .. v14}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultVideoProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIIIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method private static final supportedSizes_delegate$lambda$0(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)Ljava/util/List;
    .locals 1

    .line 56
    iget-object p0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getProfileInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getProfileInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
