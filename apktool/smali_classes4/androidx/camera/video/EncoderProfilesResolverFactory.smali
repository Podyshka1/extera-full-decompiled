.class public final Landroidx/camera/video/EncoderProfilesResolverFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

.field private static final cache:Landroid/util/LruCache;


# direct methods
.method public static synthetic $r8$lambda$gbwcZatsf5Q_o66QGWQ27_5iA5w(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver$lambda$0(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/EncoderProfilesResolverFactory;

    invoke-direct {v0}, Landroidx/camera/video/EncoderProfilesResolverFactory;-><init>()V

    sput-object v0, Landroidx/camera/video/EncoderProfilesResolverFactory;->INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

    .line 32
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroidx/camera/video/EncoderProfilesResolverFactory;->cache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 1

    .line 77
    const-string v0, "null cannot be cast to non-null type androidx.camera.core.impl.CameraInfoInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/core/impl/CameraInfoInternal;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    sget-object p2, Landroidx/camera/video/EncoderProfilesProviderResolver;->INSTANCE:Landroidx/camera/video/EncoderProfilesProviderResolver;

    invoke-virtual {p2, p1, p3, v0, p4}, Landroidx/camera/video/EncoderProfilesProviderResolver;->resolve(Landroidx/camera/core/impl/CameraInfoInternal;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/core/impl/EncoderProfilesProvider;

    move-result-object p2

    .line 93
    new-instance p3, Landroidx/camera/video/EncoderProfilesResolver;

    .line 96
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object p1

    const-string p4, "getSupportedDynamicRanges(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p3, p2, v0, p1}, Landroidx/camera/video/EncoderProfilesResolver;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;ILjava/util/Set;)V

    return-object p3
.end method

.method public static final getResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 7

    const-string v0, "cameraInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEncoderInfoFinder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/video/EncoderProfilesResolverFactory$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 52
    sget-object v1, Landroidx/camera/video/EncoderProfilesResolverFactory;->INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

    invoke-direct {v1, p0}, Landroidx/camera/video/EncoderProfilesResolverFactory;->shouldSkipCache(Landroidx/camera/core/CameraInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v0}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver$lambda$1(Lkotlin/Lazy;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    check-cast p0, Landroidx/camera/core/impl/AdapterCameraInfo;

    .line 58
    new-instance v1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    .line 59
    invoke-virtual {p0}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCameraId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroidx/camera/core/impl/AdapterCameraInfo;->getCameraConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v3

    const-string p0, "getCameraConfig(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, p1

    move v5, p2

    move-object v6, p3

    .line 58
    invoke-direct/range {v1 .. v6}, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;-><init>(Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    .line 66
    sget-object p0, Landroidx/camera/video/EncoderProfilesResolverFactory;->cache:Landroid/util/LruCache;

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/EncoderProfilesResolver;

    if-nez p1, :cond_1

    invoke-static {v0}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver$lambda$1(Lkotlin/Lazy;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private static final getResolver$lambda$0(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 1

    .line 44
    sget-object v0, Landroidx/camera/video/EncoderProfilesResolverFactory;->INSTANCE:Landroidx/camera/video/EncoderProfilesResolverFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/video/EncoderProfilesResolverFactory;->createResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0
.end method

.method private static final getResolver$lambda$1(Lkotlin/Lazy;)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0

    .line 43
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/EncoderProfilesResolver;

    return-object p0
.end method

.method private final shouldSkipCache(Landroidx/camera/core/CameraInfo;)Z
    .locals 2

    .line 107
    instance-of v0, p1, Landroidx/camera/core/impl/AdapterCameraInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Landroidx/camera/core/impl/AdapterCameraInfo;

    invoke-virtual {p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;->isExternalCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getLensFacing()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method
