.class public final Landroidx/camera/video/Recorder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mMediaSpecBuilder:Landroidx/camera/video/MediaSpec$Builder;

.field private mMuxerFactory:Landroidx/camera/video/internal/muxer/MuxerFactory;

.field private mOutputStorageFactory:Landroidx/camera/video/internal/OutputStorage$Factory;

.field private mRequiredFreeStorageBytes:J

.field private mVideoCapabilitiesSource:I

.field private mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;


# direct methods
.method public static synthetic $r8$lambda$YoXQhD-A9sD8ATSj2IUTdprINyo(Landroidx/camera/video/QualitySelector;Landroidx/camera/video/VideoSpec$Builder;)V
    .locals 0

    .line 3748
    invoke-virtual {p1, p0}, Landroidx/camera/video/VideoSpec$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/VideoSpec$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3691
    iput v0, p0, Landroidx/camera/video/Recorder$Builder;->mVideoCapabilitiesSource:I

    const/4 v0, 0x0

    .line 3693
    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3694
    sget-object v0, Landroidx/camera/video/Recorder;->DEFAULT_ENCODER_FACTORY:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 3695
    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 3696
    invoke-static {}, Landroidx/camera/video/Recorder;->access$1600()Landroidx/camera/video/internal/muxer/MuxerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->mMuxerFactory:Landroidx/camera/video/internal/muxer/MuxerFactory;

    .line 3697
    invoke-static {}, Landroidx/camera/video/Recorder;->access$1700()Landroidx/camera/video/internal/OutputStorage$Factory;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->mOutputStorageFactory:Landroidx/camera/video/internal/OutputStorage$Factory;

    const-wide/16 v0, -0x1

    .line 3698
    iput-wide v0, p0, Landroidx/camera/video/Recorder$Builder;->mRequiredFreeStorageBytes:J

    .line 3707
    invoke-static {}, Landroidx/camera/video/Recorder;->access$1800()Landroidx/camera/video/MediaSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->toBuilder()Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->mMediaSpecBuilder:Landroidx/camera/video/MediaSpec$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/video/Recorder;
    .locals 10

    .line 3910
    new-instance v0, Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/Recorder$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/video/Recorder$Builder;->mMediaSpecBuilder:Landroidx/camera/video/MediaSpec$Builder;

    invoke-virtual {v2}, Landroidx/camera/video/MediaSpec$Builder;->build()Landroidx/camera/video/MediaSpec;

    move-result-object v2

    iget v3, p0, Landroidx/camera/video/Recorder$Builder;->mVideoCapabilitiesSource:I

    iget-object v4, p0, Landroidx/camera/video/Recorder$Builder;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iget-object v5, p0, Landroidx/camera/video/Recorder$Builder;->mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iget-object v6, p0, Landroidx/camera/video/Recorder$Builder;->mMuxerFactory:Landroidx/camera/video/internal/muxer/MuxerFactory;

    iget-object v7, p0, Landroidx/camera/video/Recorder$Builder;->mOutputStorageFactory:Landroidx/camera/video/internal/OutputStorage$Factory;

    iget-wide v8, p0, Landroidx/camera/video/Recorder$Builder;->mRequiredFreeStorageBytes:J

    invoke-direct/range {v0 .. v9}, Landroidx/camera/video/Recorder;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/video/MediaSpec;ILandroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/muxer/MuxerFactory;Landroidx/camera/video/internal/OutputStorage$Factory;J)V

    return-object v0
.end method

.method public setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/Recorder$Builder;
    .locals 2

    .line 3745
    const-string v0, "The specified quality selector can\'t be null."

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3747
    iget-object v0, p0, Landroidx/camera/video/Recorder$Builder;->mMediaSpecBuilder:Landroidx/camera/video/MediaSpec$Builder;

    new-instance v1, Landroidx/camera/video/Recorder$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/camera/video/Recorder$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/QualitySelector;)V

    invoke-virtual {v0, v1}, Landroidx/camera/video/MediaSpec$Builder;->configureVideo(Landroidx/core/util/Consumer;)Landroidx/camera/video/MediaSpec$Builder;

    return-object p0
.end method
