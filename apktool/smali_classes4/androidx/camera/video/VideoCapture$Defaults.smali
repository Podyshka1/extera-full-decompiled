.class public final Landroidx/camera/video/VideoCapture$Defaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroidx/camera/video/impl/VideoCaptureConfig;

.field static final DEFAULT_DYNAMIC_RANGE:Landroidx/camera/core/DynamicRange;

.field static final DEFAULT_FPS_RANGE:Landroid/util/Range;

.field static final DEFAULT_HIGH_SPEED_FPS_RANGE:Landroid/util/Range;

.field private static final DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

.field private static final DEFAULT_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

.field private static final DEFAULT_VIDEO_OUTPUT:Landroidx/camera/video/VideoOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 896
    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;

    sput-object v0, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 897
    new-instance v1, Landroidx/camera/video/VideoCapture$Defaults$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/camera/video/VideoCapture$Defaults$$ExternalSyntheticLambda0;-><init>()V

    sput-object v1, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_VIDEO_OUTPUT:Landroidx/camera/video/VideoOutput;

    .line 902
    sget-object v2, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    sput-object v2, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    .line 904
    new-instance v3, Landroid/util/Range;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v3, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    .line 905
    new-instance v3, Landroid/util/Range;

    const/16 v4, 0x78

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v3, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_HIGH_SPEED_FPS_RANGE:Landroid/util/Range;

    .line 911
    sget-object v3, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    sput-object v3, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_DYNAMIC_RANGE:Landroidx/camera/core/DynamicRange;

    .line 914
    new-instance v4, Landroidx/camera/video/VideoCapture$Builder;

    invoke-direct {v4, v1}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/video/VideoOutput;)V

    const/4 v1, 0x5

    .line 915
    invoke-virtual {v4, v1}, Landroidx/camera/video/VideoCapture$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/video/VideoCapture$Builder;

    move-result-object v1

    .line 916
    invoke-virtual {v1, v0}, Landroidx/camera/video/VideoCapture$Builder;->setStreamUseCase(Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/video/VideoCapture$Builder;

    move-result-object v0

    .line 917
    invoke-virtual {v0, v2}, Landroidx/camera/video/VideoCapture$Builder;->setVideoEncoderInfoFinder(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/VideoCapture$Builder;

    move-result-object v0

    .line 918
    invoke-virtual {v0, v3}, Landroidx/camera/video/VideoCapture$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/VideoCapture$Builder;

    move-result-object v0

    .line 920
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/video/impl/VideoCaptureConfig;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/video/impl/VideoCaptureConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Landroidx/camera/video/impl/VideoCaptureConfig;
    .locals 1

    .line 925
    sget-object v0, Landroidx/camera/video/VideoCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/video/impl/VideoCaptureConfig;

    return-object v0
.end method
