.class public final Landroidx/camera/video/internal/utils/CodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

.field private static final codecInfoCache:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-direct {v0}, Landroidx/camera/video/internal/utils/CodecUtil;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    .line 38
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->codecInfoCache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCodec(Landroidx/camera/video/internal/encoder/EncoderConfig;)Landroid/media/MediaCodec;
    .locals 2

    const-string v0, "encoderConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/EncoderConfig;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getMimeType(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Landroidx/camera/video/internal/utils/CodecUtil;->createCodec(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method private final createCodec(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 1

    .line 130
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 134
    :goto_0
    new-instance v0, Landroidx/camera/video/internal/encoder/InvalidConfigException;

    invoke-direct {v0, p1}, Landroidx/camera/video/internal/encoder/InvalidConfigException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 132
    :goto_1
    new-instance v0, Landroidx/camera/video/internal/encoder/InvalidConfigException;

    invoke-direct {v0, p1}, Landroidx/camera/video/internal/encoder/InvalidConfigException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final findCodecAndGetCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 3

    .line 109
    const-string v0, "mimeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Landroidx/camera/video/internal/utils/CodecUtil;->codecInfoCache:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_0

    .line 98
    check-cast v1, Landroid/media/MediaCodecInfo;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 103
    :try_start_1
    sget-object v2, Landroidx/camera/video/internal/utils/CodecUtil;->INSTANCE:Landroidx/camera/video/internal/utils/CodecUtil;

    invoke-direct {v2, p0}, Landroidx/camera/video/internal/utils/CodecUtil;->createCodec(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 106
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, p0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodecInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 106
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    :cond_1
    throw p0

    :catchall_2
    move-exception p0

    .line 95
    monitor-exit v0

    throw p0
.end method
