.class public final Landroidx/camera/core/impl/CaptureConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CaptureConfig$Builder;,
        Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
    }
.end annotation


# static fields
.field public static final OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

.field private static final OPTION_RESOLVED_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;


# instance fields
.field final mCameraCaptureCallbacks:Ljava/util/List;

.field private final mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

.field final mImplementationOptions:Landroidx/camera/core/impl/Config;

.field final mPostviewEnabled:Z

.field final mSurfaces:Ljava/util/List;

.field private final mTagBundle:Landroidx/camera/core/impl/TagBundle;

.field final mTemplateType:I

.field private final mUseRepeatingSurface:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-string v0, "camerax.core.captureConfig.rotation"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 60
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 69
    const-string v0, "camerax.core.captureConfig.jpegQuality"

    const-class v1, Ljava/lang/Integer;

    .line 70
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    .line 78
    const-string v0, "camerax.core.captureConfig.resolvedFrameRate"

    const-class v1, Landroid/util/Range;

    .line 79
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CaptureConfig;->OPTION_RESOLVED_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroidx/camera/core/impl/Config;IZLjava/util/List;ZLandroidx/camera/core/impl/TagBundle;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig;->mSurfaces:Ljava/util/List;

    .line 138
    iput-object p2, p0, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    .line 139
    iput p3, p0, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    .line 140
    invoke-static {p5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 141
    iput-boolean p6, p0, Landroidx/camera/core/impl/CaptureConfig;->mUseRepeatingSurface:Z

    .line 142
    iput-object p7, p0, Landroidx/camera/core/impl/CaptureConfig;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 143
    iput-object p8, p0, Landroidx/camera/core/impl/CaptureConfig;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    .line 144
    iput-boolean p4, p0, Landroidx/camera/core/impl/CaptureConfig;->mPostviewEnabled:Z

    return-void
.end method

.method static synthetic access$000()Landroidx/camera/core/impl/Config$Option;
    .locals 1

    .line 47
    sget-object v0, Landroidx/camera/core/impl/CaptureConfig;->OPTION_RESOLVED_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;

    return-object v0
.end method

.method public static defaultEmptyCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;
    .locals 1

    .line 149
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCameraCaptureCallbacks()Ljava/util/List;
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mCameraCaptureCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getExpectedFrameRateRange()Landroid/util/Range;
    .locals 3

    .line 195
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->OPTION_RESOLVED_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;

    sget-object v2, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 196
    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 195
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getImplementationOptions()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    return-object v0
.end method

.method public getPreviewStabilizationMode()I
    .locals 3

    .line 202
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 202
    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSurfaces()Ljava/util/List;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mSurfaces:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    .line 176
    iget v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    return v0
.end method

.method public getVideoStabilizationMode()I
    .locals 3

    .line 208
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 209
    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 208
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isUseRepeatingSurface()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mUseRepeatingSurface:Z

    return v0
.end method
