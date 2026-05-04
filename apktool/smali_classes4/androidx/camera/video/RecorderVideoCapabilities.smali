.class public Landroidx/camera/video/RecorderVideoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoCapabilities;


# instance fields
.field private final mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

.field private final mIsStabilizationSupported:Z


# direct methods
.method constructor <init>(Landroidx/camera/video/EncoderProfilesResolver;Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    .line 55
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInfoInternal;->isVideoStabilizationSupported()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mIsStabilizationSupported:Z

    return-void
.end method


# virtual methods
.method public getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/video/EncoderProfilesResolver;->getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-virtual {v0}, Landroidx/camera/video/EncoderProfilesResolver;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-virtual {v0, p1}, Landroidx/camera/video/EncoderProfilesResolver;->getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
