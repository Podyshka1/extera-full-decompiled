.class public final Landroidx/camera/video/Recorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/Recorder$State;,
        Landroidx/camera/video/Recorder$RecordingRecord;,
        Landroidx/camera/video/Recorder$AudioState;,
        Landroidx/camera/video/Recorder$SetupVideoTask;,
        Landroidx/camera/video/Recorder$Builder;
    }
.end annotation


# static fields
.field private static final AUDIO_EXECUTOR:Ljava/util/concurrent/Executor;

.field static final DEFAULT_ENCODER_FACTORY:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field private static final DEFAULT_MUXER_FACTORY:Landroidx/camera/video/internal/muxer/MuxerFactory;

.field public static final DEFAULT_QUALITY_SELECTOR:Landroidx/camera/video/QualitySelector;

.field private static final DEFAULT_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

.field private static final MEDIA_SPEC_DEFAULT:Landroidx/camera/video/MediaSpec;

.field private static final OUTPUT_STORAGE_FACTORY_DEFAULT:Landroidx/camera/video/internal/OutputStorage$Factory;

.field private static final PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE:Ljava/lang/Exception;

.field private static final PENDING_STATES:Ljava/util/Set;

.field private static final VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;

.field private static final VIDEO_SPEC_DEFAULT:Landroidx/camera/video/VideoSpec;

.field static sRetrySetupVideoDelayMs:J

.field static sRetrySetupVideoMaxCount:I


# instance fields
.field mActiveSurface:Landroid/view/Surface;

.field mAudioAmplitude:D

.field mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

.field private final mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field mAudioErrorCause:Ljava/lang/Throwable;

.field mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

.field mAudioState:Landroidx/camera/video/Recorder$AudioState;

.field mAudioTrackIndex:Ljava/lang/Integer;

.field private mAvailableBytesAboveRequired:J

.field mDurationLimitUs:J

.field final mEncodingFutures:Ljava/util/List;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mFileSizeLimitInBytes:J

.field mFirstRecordingAudioDataTimeUs:J

.field mFirstRecordingVideoBitrate:I

.field mFirstRecordingVideoDataTimeUs:J

.field private mHasGlProcessing:Z

.field mInProgressRecordingStopping:Z

.field private mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

.field mIsAudioSourceSilenced:Z

.field private final mIsRecording:Landroidx/camera/core/impl/MutableStateObservable;

.field private mLastGeneratedRecordingId:J

.field mLatestSurface:Landroid/view/Surface;

.field mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

.field private final mLock:Ljava/lang/Object;

.field final mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

.field private final mMuxerFactory:Landroidx/camera/video/internal/muxer/MuxerFactory;

.field private mNeedsResetBeforeNextStart:Z

.field private mNonPendingState:Landroidx/camera/video/Recorder$State;

.field private mOutputStorage:Landroidx/camera/video/internal/OutputStorage;

.field private final mOutputStorageFactory:Landroidx/camera/video/internal/OutputStorage$Factory;

.field mOutputUri:Landroid/net/Uri;

.field final mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

.field mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

.field mPreviousRecordingAudioDataTimeUs:J

.field mPreviousRecordingVideoDataTimeUs:J

.field mRecordingAudioBytes:J

.field mRecordingBytes:J

.field mRecordingDurationUs:J

.field mRecordingStopError:I

.field mRecordingStopErrorCause:Ljava/lang/Throwable;

.field private final mRequiredFreeStorageBytes:J

.field private mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

.field final mSequentialExecutor:Ljava/util/concurrent/Executor;

.field private mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

.field private mShouldSendResumeEvent:Z

.field mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

.field mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

.field private mSourceTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

.field private mState:Landroidx/camera/video/Recorder$State;

.field mStreamId:I

.field private final mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

.field private final mUserProvidedExecutor:Ljava/util/concurrent/Executor;

.field private final mVideoCapabilitiesSource:I

.field mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

.field private final mVideoEncoderBitrateRange:Landroidx/camera/core/impl/MutableStateObservable;

.field private mVideoEncoderConfig:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

.field private final mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

.field mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

.field mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

.field mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

.field mVideoTrackIndex:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$3ar0yEY4CKNfYqv1khwdjvk__a8()V
    .locals 2

    .line 2395
    const-string v0, "Recorder"

    const-string v1, "The source didn\'t become non-streaming before timeout. Waited 1000ms"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5TETc2PryyHgoF654O3TRg5ynJU(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 0

    .line 594
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/Recorder;->onSurfaceRequestedInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Huh3YT2gmeow7BKqNQgobGlBEI(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 3084
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8VJSEfNGf3oVz0-ib8TVeQ31p4(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)V
    .locals 1

    .line 2016
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 2020
    instance-of v0, p2, Landroidx/camera/video/internal/encoder/EncodeException;

    if-eqz v0, :cond_0

    .line 2021
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    goto :goto_0

    .line 2023
    :cond_0
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 2025
    :goto_0
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    const/4 p2, 0x1

    .line 2026
    invoke-virtual {p0, p2}, Landroidx/camera/video/Recorder;->updateInProgressStatusEvent(Z)V

    const/4 p0, 0x0

    .line 2027
    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$M45O7_hkWfx-8GwBJi61ZgT4oLU(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1921
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 1921
    new-instance v1, Landroidx/camera/video/Recorder$3;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/video/Recorder$3;-><init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)V

    iget-object p0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p0}, Landroidx/camera/video/internal/encoder/Encoder;->setEncoderCallback(Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V

    .line 2009
    const-string p0, "videoEncodingFuture"

    return-object p0
.end method

.method public static synthetic $r8$lambda$QnBUBeAhjUEZDIXnsFvH4_DASJU(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    .line 618
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->onSourceStateChangedInternal(Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ishpOggjNhGW1PgfYsLj1u3JJbo(Landroidx/camera/video/Recorder;Landroid/net/Uri;)V
    .locals 0

    .line 1724
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mOutputUri:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic $r8$lambda$nk6rne3uQZFk4sgSLONRydI9o3g(Landroidx/camera/video/VideoSpec$Builder;)V
    .locals 1

    .line 1543
    sget-object v0, Landroidx/camera/video/Recorder;->VIDEO_SPEC_DEFAULT:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getAspectRatio()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/camera/video/VideoSpec$Builder;->setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;

    return-void
.end method

.method public static synthetic $r8$lambda$tLGVVgTO0zFBp-DvY-tj_t37rM8(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2015
    new-instance p1, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p2}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2031
    new-instance p2, Landroidx/camera/video/Recorder$4;

    invoke-direct {p2, p0, p1}, Landroidx/camera/video/Recorder$4;-><init>(Landroidx/camera/video/Recorder;Landroidx/core/util/Consumer;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic $r8$lambda$u4iYO2Gf044pZxTQ9vKqpPlMHEo(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mSourceTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 313
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    sget-object v1, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    .line 314
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    .line 322
    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    sget-object v1, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    sget-object v2, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    sget-object v3, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    sget-object v4, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    .line 323
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;

    .line 343
    sget-object v0, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    const/4 v1, 0x3

    new-array v2, v1, [Landroidx/camera/video/Quality;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v3, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 345
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 346
    invoke-static {v0}, Landroidx/camera/video/FallbackStrategy;->higherQualityOrLowerThan(Landroidx/camera/video/Quality;)Landroidx/camera/video/FallbackStrategy;

    move-result-object v0

    .line 344
    invoke-static {v2, v0}, Landroidx/camera/video/QualitySelector;->fromOrderedList(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->DEFAULT_QUALITY_SELECTOR:Landroidx/camera/video/QualitySelector;

    .line 350
    invoke-static {}, Landroidx/camera/video/VideoSpec;->builder()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v2

    .line 351
    invoke-virtual {v2, v0}, Landroidx/camera/video/VideoSpec$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 352
    invoke-virtual {v0, v2}, Landroidx/camera/video/VideoSpec$Builder;->setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Builder;->build()Landroidx/camera/video/VideoSpec;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->VIDEO_SPEC_DEFAULT:Landroidx/camera/video/VideoSpec;

    .line 355
    invoke-static {}, Landroidx/camera/video/MediaSpec;->builder()Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v3

    .line 356
    invoke-virtual {v3, v2}, Landroidx/camera/video/MediaSpec$Builder;->setOutputFormat(I)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v0}, Landroidx/camera/video/MediaSpec$Builder;->setVideoSpec(Landroidx/camera/video/VideoSpec;)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec$Builder;->build()Landroidx/camera/video/MediaSpec;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->MEDIA_SPEC_DEFAULT:Landroidx/camera/video/MediaSpec;

    .line 361
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "The video frame producer became inactive before any data was received."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/camera/video/Recorder;->PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE:Ljava/lang/Exception;

    .line 373
    new-instance v0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Landroidx/camera/video/Recorder;->DEFAULT_ENCODER_FACTORY:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 374
    sget-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    sput-object v0, Landroidx/camera/video/Recorder;->DEFAULT_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    .line 376
    new-instance v0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Landroidx/camera/video/Recorder;->DEFAULT_MUXER_FACTORY:Landroidx/camera/video/internal/muxer/MuxerFactory;

    .line 389
    new-instance v0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Landroidx/camera/video/Recorder;->OUTPUT_STORAGE_FACTORY_DEFAULT:Landroidx/camera/video/internal/OutputStorage$Factory;

    .line 392
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Recorder;->AUDIO_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 401
    sput v1, Landroidx/camera/video/Recorder;->sRetrySetupVideoMaxCount:I

    const-wide/16 v0, 0x3e8

    .line 403
    sput-wide v0, Landroidx/camera/video/Recorder;->sRetrySetupVideoDelayMs:J

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/video/MediaSpec;ILandroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/muxer/MuxerFactory;Landroidx/camera/video/internal/OutputStorage$Factory;J)V
    .locals 6

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 424
    invoke-static {v0}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoderBitrateRange:Landroidx/camera/core/impl/MutableStateObservable;

    .line 429
    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    iput-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 433
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    const/4 v1, 0x0

    .line 435
    iput v1, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    const-wide/16 v2, 0x0

    .line 446
    iput-wide v2, p0, Landroidx/camera/video/Recorder;->mLastGeneratedRecordingId:J

    .line 455
    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 457
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 458
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSourceTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 459
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 460
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 462
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioTrackIndex:Ljava/lang/Integer;

    .line 464
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoTrackIndex:Ljava/lang/Integer;

    .line 470
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurface:Landroid/view/Surface;

    .line 472
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    .line 480
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 482
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 484
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 486
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 488
    sget-object v4, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    iput-object v4, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 490
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v4, p0, Landroidx/camera/video/Recorder;->mOutputUri:Landroid/net/Uri;

    .line 492
    iput-wide v2, p0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 494
    iput-wide v2, p0, Landroidx/camera/video/Recorder;->mRecordingAudioBytes:J

    .line 495
    iput-wide v2, p0, Landroidx/camera/video/Recorder;->mRecordingDurationUs:J

    const-wide v4, 0x7fffffffffffffffL

    .line 497
    iput-wide v4, p0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoDataTimeUs:J

    .line 500
    iput v1, p0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoBitrate:I

    .line 503
    iput-wide v4, p0, Landroidx/camera/video/Recorder;->mFirstRecordingAudioDataTimeUs:J

    .line 506
    iput-wide v4, p0, Landroidx/camera/video/Recorder;->mPreviousRecordingVideoDataTimeUs:J

    .line 508
    iput-wide v4, p0, Landroidx/camera/video/Recorder;->mPreviousRecordingAudioDataTimeUs:J

    .line 510
    iput-wide v2, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 512
    iput-wide v2, p0, Landroidx/camera/video/Recorder;->mDurationLimitUs:J

    const/4 v2, 0x1

    .line 514
    iput v2, p0, Landroidx/camera/video/Recorder;->mRecordingStopError:I

    .line 517
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mRecordingStopErrorCause:Ljava/lang/Throwable;

    .line 519
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 523
    new-instance v2, Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;-><init>(I)V

    iput-object v2, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 526
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 528
    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->mIsAudioSourceSilenced:Z

    .line 530
    sget-object v2, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    iput-object v2, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 532
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 535
    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->mNeedsResetBeforeNextStart:Z

    .line 538
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderConfig:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 539
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    const-wide/16 v2, 0x0

    .line 541
    iput-wide v2, p0, Landroidx/camera/video/Recorder;->mAudioAmplitude:D

    .line 542
    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->mShouldSendResumeEvent:Z

    .line 543
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 544
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mOutputStorage:Landroidx/camera/video/internal/OutputStorage;

    .line 545
    iput-wide v4, p0, Landroidx/camera/video/Recorder;->mAvailableBytesAboveRequired:J

    .line 546
    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->mHasGlProcessing:Z

    .line 556
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mUserProvidedExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 558
    invoke-static {p1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 560
    invoke-direct {p0, p2}, Landroidx/camera/video/Recorder;->composeRecorderMediaSpec(Landroidx/camera/video/MediaSpec;)Landroidx/camera/video/MediaSpec;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 561
    iput p3, p0, Landroidx/camera/video/Recorder;->mVideoCapabilitiesSource:I

    .line 562
    iget p2, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    iget-object p3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 563
    invoke-direct {p0, p3}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;)Landroidx/camera/video/StreamInfo;

    move-result-object p2

    .line 562
    invoke-static {p2}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    .line 564
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/video/Recorder;->mIsRecording:Landroidx/camera/core/impl/MutableStateObservable;

    .line 565
    iput-object p4, p0, Landroidx/camera/video/Recorder;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 566
    iput-object p5, p0, Landroidx/camera/video/Recorder;->mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 567
    iput-object p6, p0, Landroidx/camera/video/Recorder;->mMuxerFactory:Landroidx/camera/video/internal/muxer/MuxerFactory;

    .line 568
    iput-object p7, p0, Landroidx/camera/video/Recorder;->mOutputStorageFactory:Landroidx/camera/video/internal/OutputStorage$Factory;

    .line 569
    new-instance p2, Landroidx/camera/video/VideoEncoderSession;

    invoke-direct {p2, p4, v0, p1}, Landroidx/camera/video/VideoEncoderSession;-><init>(Landroidx/camera/video/internal/encoder/EncoderFactory;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    const-wide/16 p1, -0x1

    cmp-long p1, p8, p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 p8, 0x3200000

    .line 573
    :goto_1
    iput-wide p8, p0, Landroidx/camera/video/Recorder;->mRequiredFreeStorageBytes:J

    .line 574
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRequiredFreeStorageBytes = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8, p9}, Landroidx/camera/video/internal/utils/StorageUtil;->formatSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Recorder"

    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/camera/video/Recorder;)Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Landroidx/camera/video/Recorder;->mHasGlProcessing:Z

    return p0
.end method

.method static synthetic access$002(Landroidx/camera/video/Recorder;Z)Z
    .locals 0

    .line 184
    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->mHasGlProcessing:Z

    return p1
.end method

.method static synthetic access$100(Landroidx/camera/video/Recorder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 184
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->safeToCloseVideoEncoder()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600()Landroidx/camera/video/internal/muxer/MuxerFactory;
    .locals 1

    .line 184
    sget-object v0, Landroidx/camera/video/Recorder;->DEFAULT_MUXER_FACTORY:Landroidx/camera/video/internal/muxer/MuxerFactory;

    return-object v0
.end method

.method static synthetic access$1700()Landroidx/camera/video/internal/OutputStorage$Factory;
    .locals 1

    .line 184
    sget-object v0, Landroidx/camera/video/Recorder;->OUTPUT_STORAGE_FACTORY_DEFAULT:Landroidx/camera/video/internal/OutputStorage$Factory;

    return-object v0
.end method

.method static synthetic access$1800()Landroidx/camera/video/MediaSpec;
    .locals 1

    .line 184
    sget-object v0, Landroidx/camera/video/Recorder;->MEDIA_SPEC_DEFAULT:Landroidx/camera/video/MediaSpec;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/camera/video/Recorder;)Landroidx/camera/video/internal/encoder/EncoderFactory;
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/camera/video/Recorder;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/camera/video/Recorder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/camera/video/Recorder;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    return-object p0
.end method

.method static synthetic access$502(Landroidx/camera/video/Recorder;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .locals 0

    .line 184
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoderConfig:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    return-object p1
.end method

.method static synthetic access$900(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 184
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/video/Recorder;->scheduleTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method private clearPendingAudioRingBuffer()V
    .locals 1

    .line 2435
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    invoke-interface {v0}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2436
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    invoke-interface {v0}, Landroidx/camera/core/internal/utils/RingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/encoder/EncodedData;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private composeRecorderMediaSpec(Landroidx/camera/video/MediaSpec;)Landroidx/camera/video/MediaSpec;
    .locals 2

    .line 1537
    invoke-virtual {p1}, Landroidx/camera/video/MediaSpec;->toBuilder()Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    .line 1540
    invoke-virtual {p1}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    move-result-object p1

    .line 1541
    invoke-virtual {p1}, Landroidx/camera/video/VideoSpec;->getAspectRatio()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1542
    new-instance p1, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/camera/video/MediaSpec$Builder;->configureVideo(Landroidx/core/util/Consumer;)Landroidx/camera/video/MediaSpec$Builder;

    .line 1546
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec$Builder;->build()Landroidx/camera/video/MediaSpec;

    move-result-object p1

    return-object p1
.end method

.method private configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 7

    .line 1278
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    move-result v0

    const-string v1, "Recorder"

    if-eqz v0, :cond_0

    .line 1279
    const-string p1, "Ignore the SurfaceRequest since it is already served."

    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1282
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/video/Recorder;)V

    invoke-virtual {p1, v0, v2}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    .line 1284
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    move-result-object v0

    .line 1286
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v2

    .line 1288
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v3

    .line 1289
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getSessionType()I

    move-result v4

    .line 1287
    invoke-virtual {p0, v3, v4}, Landroidx/camera/video/Recorder;->getEncoderProfilesResolver(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object v3

    .line 1290
    invoke-virtual {v3, v0, v2}, Landroidx/camera/video/EncoderProfilesResolver;->findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResolvedEncoderProfiles = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    if-eqz v0, :cond_1

    .line 1295
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$SetupVideoTask;->cancelFailedRetry()V

    .line 1297
    :cond_1
    new-instance v1, Landroidx/camera/video/Recorder$SetupVideoTask;

    iget-boolean v5, p0, Landroidx/camera/video/Recorder;->mHasGlProcessing:Z

    if-eqz p3, :cond_2

    .line 1298
    sget p3, Landroidx/camera/video/Recorder;->sRetrySetupVideoMaxCount:I

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v6}, Landroidx/camera/video/Recorder$SetupVideoTask;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;ZI)V

    iput-object v1, v2, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 1299
    invoke-virtual {v1}, Landroidx/camera/video/Recorder$SetupVideoTask;->start()V

    return-void
.end method

.method private getAudioDataToWriteAndClearCache(J)Ljava/util/List;
    .locals 4

    .line 1801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1803
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    invoke-interface {v1}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1804
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    invoke-interface {v1}, Landroidx/camera/core/internal/utils/RingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/internal/encoder/EncodedData;

    .line 1808
    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/EncodedData;->getPresentationTimeUs()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    .line 1809
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getEncoderProfilesResolverInternal(ILandroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 1

    .line 3237
    sget-object v0, Landroidx/camera/video/Recorder;->DEFAULT_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-static {p1, p0, p2, v0}, Landroidx/camera/video/EncoderProfilesResolverFactory;->getResolver(Landroidx/camera/core/CameraInfo;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;
    .locals 3

    const/4 v0, 0x0

    .line 3120
    const-string v1, "video/*"

    const/4 v2, 0x1

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/video/Recorder;->getVideoCapabilitiesInternal(ILandroidx/camera/core/CameraInfo;ILjava/lang/String;)Landroidx/camera/video/VideoCapabilities;

    move-result-object p0

    return-object p0
.end method

.method private static getVideoCapabilitiesInternal(ILandroidx/camera/core/CameraInfo;ILjava/lang/String;)Landroidx/camera/video/VideoCapabilities;
    .locals 2

    .line 3210
    move-object v0, p1

    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 3211
    const-string v1, "video/*"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3212
    invoke-static {p0, p1, p2}, Landroidx/camera/video/Recorder;->getEncoderProfilesResolverInternal(ILandroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p0

    .line 3214
    new-instance p1, Landroidx/camera/video/RecorderVideoCapabilities;

    invoke-direct {p1, p0, v0}, Landroidx/camera/video/RecorderVideoCapabilities;-><init>(Landroidx/camera/video/EncoderProfilesResolver;Landroidx/camera/core/impl/CameraInfoInternal;)V

    return-object p1

    .line 3216
    :cond_0
    new-instance p0, Landroidx/camera/video/MimeMatchedVideoCapabilities;

    sget-object p1, Landroidx/camera/video/Recorder;->DEFAULT_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-direct {p0, p3, v0, p1}, Landroidx/camera/video/MimeMatchedVideoCapabilities;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    return-object p0
.end method

.method private hasInsufficientStorage(J)Z
    .locals 2

    .line 2569
    iget-wide v0, p0, Landroidx/camera/video/Recorder;->mRequiredFreeStorageBytes:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private hasInsufficientStorageOrException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 2574
    invoke-static {p1}, Landroidx/camera/video/internal/utils/StorageUtil;->isStorageFullException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2577
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mOutputStorage:Landroidx/camera/video/internal/OutputStorage;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/internal/OutputStorage;

    invoke-interface {p1}, Landroidx/camera/video/internal/OutputStorage;->getAvailableBytes()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/camera/video/Recorder;->hasInsufficientStorage(J)Z

    move-result p1

    return p1
.end method

.method private internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;
    .locals 1

    .line 2557
    sget-object v0, Landroidx/camera/video/Recorder$State;->RECORDING:Landroidx/camera/video/Recorder$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2558
    :cond_0
    sget-object p1, Landroidx/camera/video/StreamInfo$StreamState;->INACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/camera/video/StreamInfo$StreamState;->ACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    return-object p1
.end method

.method private makePendingRecordingActiveLocked(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;
    .locals 1

    .line 2868
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    if-eq p1, v0, :cond_1

    .line 2870
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2871
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "makePendingRecordingActiveLocked() can only be called from a pending state."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2879
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Pending recording should exist when in a PENDING state."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method static notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 1

    .line 2428
    instance-of v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    if-eqz v0, :cond_0

    .line 2429
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->signalSourceStopped()V

    :cond_0
    return-void
.end method

.method private onResetVideo()V
    .locals 3

    .line 2477
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2478
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2489
    :pswitch_0
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2499
    :cond_0
    :pswitch_1
    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    goto :goto_0

    .line 2482
    :pswitch_2
    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-direct {p0, v1}, Landroidx/camera/video/Recorder;->updateNonPendingState(Landroidx/camera/video/Recorder$State;)V

    :goto_0
    const/4 v1, 0x1

    .line 2505
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->mNeedsResetBeforeNextStart:Z

    if-eqz v1, :cond_1

    .line 2510
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_1

    .line 2511
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2512
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/video/Recorder;->configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    :cond_1
    return-void

    .line 2505
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSurfaceRequestedInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 1

    .line 1152
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    .line 1155
    :cond_0
    iput-boolean p3, p0, Landroidx/camera/video/Recorder;->mHasGlProcessing:Z

    .line 1156
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    iput-object p2, p0, Landroidx/camera/video/Recorder;->mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/Recorder;->configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 2442
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz v0, :cond_0

    .line 2443
    const-string v0, "Recorder"

    const-string v1, "Releasing audio encoder."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->release()V

    const/4 v0, 0x0

    .line 2445
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 2446
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 2452
    :cond_0
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 2453
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->resetVideo()V

    return-void
.end method

.method private resetVideo()V
    .locals 2

    .line 2518
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz v0, :cond_0

    .line 2519
    const-string v0, "Recorder"

    const-string v1, "Releasing video encoder."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->tryReleaseVideoEncoder()V

    .line 2522
    :cond_0
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->onResetVideo()V

    return-void
.end method

.method private restoreNonPendingState()V
    .locals 3

    .line 3067
    sget-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3071
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    return-void

    .line 3068
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot restore non-pending state when in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private safeToCloseVideoEncoder()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to safely release video encoder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recorder"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->signalTermination()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static scheduleTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .line 3084
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method private setStreamId(I)V
    .locals 3

    .line 3013
    iget v0, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3016
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transitioning streamId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recorder"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    iput p1, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 3018
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-direct {p0, v1}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {p1, v1, v2}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method private static supportedMuxerFormatOrDefaultFrom(Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;I)I
    .locals 2

    if-eqz p0, :cond_3

    .line 3091
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return p1
.end method

.method private tryReleaseVideoEncoder()V
    .locals 2

    .line 2459
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    if-eqz v0, :cond_1

    .line 2461
    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->getVideoEncoder()Landroidx/camera/video/internal/encoder/Encoder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2460
    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing video encoder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recorder"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->terminateNow()V

    const/4 v0, 0x0

    .line 2465
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    .line 2466
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 2467
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 2468
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setLatestSurface(Landroid/view/Surface;)V

    return-void

    .line 2470
    :cond_1
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->safeToCloseVideoEncoder()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 2

    .line 1911
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1912
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1913
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1914
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1916
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1919
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    new-instance v1, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2012
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 2013
    iget-object p2, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    new-instance v0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    :cond_2
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/video/Recorder$6;

    invoke-direct {p2, p0}, Landroidx/camera/video/Recorder$6;-><init>(Landroidx/camera/video/Recorder;)V

    .line 2157
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2133
    invoke-static {p1, p2, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private updateNonPendingState(Landroidx/camera/video/Recorder$State;)V
    .locals 3

    .line 3041
    sget-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3046
    sget-object v0, Landroidx/camera/video/Recorder;->VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3052
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    if-eq v0, p1, :cond_0

    .line 3053
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 3054
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    iget v1, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object p1

    iget-object v2, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {v1, p1, v2}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 3047
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state transition. State is not a valid non-pending state while in a pending state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3042
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only updated non-pending state from a pending state, but state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method finalizeInProgressRecording(ILjava/lang/Throwable;)V
    .locals 0

    .line 2589
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Attempted to finalize in-progress recording, but no recording is in progress."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getEncoderProfilesResolver(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    .line 3229
    :cond_0
    iget p2, p0, Landroidx/camera/video/Recorder;->mVideoCapabilitiesSource:I

    invoke-static {v0, p1, p2}, Landroidx/camera/video/Recorder;->getEncoderProfilesResolverInternal(ILandroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p1

    return-object p1
.end method

.method public getMediaCapabilities(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    .line 627
    :cond_0
    iget-object p2, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {p0, p2}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/video/MediaSpec;

    invoke-virtual {p2}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/video/VideoSpec;->getMimeType()Ljava/lang/String;

    move-result-object p2

    .line 629
    iget v1, p0, Landroidx/camera/video/Recorder;->mVideoCapabilitiesSource:I

    invoke-static {v0, p1, v1, p2}, Landroidx/camera/video/Recorder;->getVideoCapabilitiesInternal(ILandroidx/camera/core/CameraInfo;ILjava/lang/String;)Landroidx/camera/video/VideoCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public getMediaSpec()Landroidx/camera/core/impl/Observable;
    .locals 1

    .line 600
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    return-object v0
.end method

.method getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;
    .locals 1

    .line 2947
    invoke-virtual {p1}, Landroidx/camera/core/impl/StateObservable;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 2951
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2953
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getQualitySelector()Landroidx/camera/video/QualitySelector;
    .locals 1

    .line 738
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/MediaSpec;

    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getQualitySelector()Landroidx/camera/video/QualitySelector;

    move-result-object v0

    return-object v0
.end method

.method public getStreamInfo()Landroidx/camera/core/impl/Observable;
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    return-object v0
.end method

.method isAudioEnabled()Z
    .locals 2

    .line 2564
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPersistentRecordingInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQualitySelectorDefault()Z
    .locals 2

    .line 744
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->getQualitySelector()Landroidx/camera/video/QualitySelector;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/Recorder;->DEFAULT_QUALITY_SELECTOR:Landroidx/camera/video/QualitySelector;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSourceStreamRequired()Landroidx/camera/core/impl/Observable;
    .locals 1

    .line 612
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mIsRecording:Landroidx/camera/core/impl/MutableStateObservable;

    return-object v0
.end method

.method onConfigured()V
    .locals 6

    .line 1468
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1491
    :pswitch_0
    const-string v1, "Recorder"

    const-string v4, "onConfigured() was invoked when the Recorder had encountered error"

    invoke-static {v1, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1476
    :pswitch_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unexpectedly invoke onConfigured() in a STOPPING state when it\'s not waiting for a new surface."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_2
    move v3, v2

    .line 1482
    :pswitch_3
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    move-result v1

    const-string v4, "Unexpectedly invoke onConfigured() when there\'s a non-persistent in-progress recording"

    invoke-static {v1, v4}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    move v1, v3

    move v3, v2

    goto :goto_2

    .line 1473
    :pswitch_4
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrectly invoke onConfigured() in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_5
    move v1, v2

    goto :goto_0

    :pswitch_6
    move v1, v3

    .line 1503
    :goto_0
    iget-object v4, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object v5, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne v4, v5, :cond_0

    .line 1506
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->restoreNonPendingState()V

    goto :goto_2

    .line 1510
    :cond_0
    iget-object v4, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-direct {p0, v4}, Landroidx/camera/video/Recorder;->makePendingRecordingActiveLocked(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;

    goto :goto_2

    .line 1488
    :pswitch_7
    sget-object v1, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    :goto_1
    move v1, v3

    .line 1514
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 1517
    invoke-direct {p0, v0, v2}, Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 1518
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    .line 1519
    iget-boolean v2, p0, Landroidx/camera/video/Recorder;->mShouldSendResumeEvent:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 1526
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->pause()V

    return-void

    .line 1521
    :cond_1
    throw v0

    :cond_2
    return-void

    .line 1514
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method onEncoderSetupError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1643
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1644
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1667
    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered encoder setup error while in unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :pswitch_1
    const/4 p1, -0x1

    .line 1652
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->setStreamId(I)V

    .line 1653
    sget-object p1, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 1670
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    .locals 9

    .line 2763
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2764
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2768
    :pswitch_0
    :try_start_1
    sget-object v0, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_2

    .line 2792
    :goto_0
    :pswitch_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    const-wide/16 v5, -0x1

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-object v8, p3

    .line 2795
    invoke-virtual/range {v3 .. v8}, Landroidx/camera/video/Recorder;->stopInternal(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    return-void

    :cond_0
    move-object v3, p0

    return-void

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :pswitch_2
    move-object v3, p0

    .line 2789
    :try_start_3
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "In-progress recording error occurred while in unexpected state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v3, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 2792
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSourceStateChanged(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 2

    .line 618
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoOutput$SourceState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onSourceStateChangedInternal(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 3

    .line 1161
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 1162
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 1163
    const-string v1, "Recorder"

    if-eq v0, p1, :cond_4

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video source has transitioned to state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1171
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    if-nez p1, :cond_1

    .line 1172
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1173
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$SetupVideoTask;->cancelFailedRetry()V

    .line 1174
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    :cond_0
    const/4 p1, 0x4

    .line 1179
    invoke-virtual {p0, p1, v0, v1}, Landroidx/camera/video/Recorder;->requestReset(ILjava/lang/Throwable;Z)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 1184
    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->mNeedsResetBeforeNextStart:Z

    return-void

    .line 1192
    :cond_2
    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne p1, v0, :cond_3

    .line 1194
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz p1, :cond_3

    .line 1196
    invoke-static {p1}, Landroidx/camera/video/Recorder;->notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V

    :cond_3
    return-void

    .line 1166
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video source transitions to the same state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 2

    .line 579
    sget-object v0, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/camera/video/Recorder;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method

.method public onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 4

    .line 586
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    const-string v1, "Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface is requested in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Current surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    sget-object v2, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    if-ne v1, v2, :cond_0

    .line 590
    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 592
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 592
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onVideoEncoderReady(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 2

    .line 1424
    invoke-virtual {p1}, Landroidx/camera/video/VideoEncoderSession;->getVideoEncoder()Landroidx/camera/video/internal/encoder/Encoder;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/encoder/Encoder;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 1425
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoderBitrateRange:Landroidx/camera/core/impl/MutableStateObservable;

    .line 1426
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->getEncoderInfo()Landroidx/camera/video/internal/encoder/EncoderInfo;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object v0

    .line 1425
    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    .line 1427
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->getConfiguredBitrate()I

    move-result v0

    iput v0, p0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoBitrate:I

    .line 1428
    invoke-virtual {p1}, Landroidx/camera/video/VideoEncoderSession;->getActiveSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    .line 1429
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setLatestSurface(Landroid/view/Surface;)V

    .line 1431
    invoke-virtual {p1}, Landroidx/camera/video/VideoEncoderSession;->getReadyToReleaseFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/video/Recorder$1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/Recorder$1;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoEncoderSession;)V

    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method requestReset(ILjava/lang/Throwable;Z)V
    .locals 11

    .line 1216
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1217
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1254
    :pswitch_1
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    :goto_0
    move v2, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 1235
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In-progress recording shouldn\'t be null when in state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1244
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1248
    :cond_0
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_1

    .line 1223
    :pswitch_3
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    invoke-direct {p0, v0}, Landroidx/camera/video/Recorder;->updateNonPendingState(Landroidx/camera/video/Recorder$State;)V

    .line 1260
    :goto_1
    :pswitch_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p3, :cond_1

    .line 1266
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->resetVideo()V

    return-void

    .line 1268
    :cond_1
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->reset()V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v4, p0

    move v8, p1

    move-object v9, p2

    .line 1271
    invoke-virtual/range {v4 .. v9}, Landroidx/camera/video/Recorder;->stopInternal(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    :cond_3
    return-void

    .line 1260
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method setAudioState(Landroidx/camera/video/Recorder$AudioState;)V
    .locals 2

    .line 3077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transitioning audio state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recorder"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    return-void
.end method

.method setLatestSurface(Landroid/view/Surface;)V
    .locals 1

    .line 3002
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    return-void

    .line 3005
    :cond_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mLatestSurface:Landroid/view/Surface;

    .line 3006
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 3007
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->setStreamId(I)V

    .line 3008
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setState(Landroidx/camera/video/Recorder$State;)V
    .locals 3

    .line 2967
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    if-eq v0, p1, :cond_4

    .line 2972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transitioning Recorder internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recorder"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    sget-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2978
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2979
    sget-object v0, Landroidx/camera/video/Recorder;->VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2984
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    iput-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 2985
    invoke-direct {p0, v0}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v2

    goto :goto_0

    .line 2980
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state transition. Should not be transitioning to a PENDING state from state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2987
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    if-eqz v0, :cond_2

    .line 2989
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 2992
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    if-nez v2, :cond_3

    .line 2994
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v2

    .line 2996
    :cond_3
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    iget v0, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {v0, v2, v1}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    return-void

    .line 2968
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to transition to state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but Recorder is already in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method setupAndStartMuxer(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 9

    .line 1684
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    invoke-interface {v0}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Audio is enabled but no audio sample is ready. Cannot start muxer."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1689
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 1694
    :try_start_0
    iput-object v1, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 1696
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->getPresentationTimeUs()J

    move-result-wide v2

    .line 1695
    invoke-direct {p0, v2, v3}, Landroidx/camera/video/Recorder;->getAudioDataToWriteAndClearCache(J)Ljava/util/List;

    move-result-object v2

    .line 1700
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    move-result-wide v3

    .line 1701
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/video/internal/encoder/EncodedData;

    .line 1702
    invoke-interface {v5}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 1704
    :cond_2
    iget-wide v5, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    cmp-long v2, v3, v5

    if-lez v2, :cond_3

    .line 1706
    const-string v2, "Recorder"

    const-string v5, "Initial data exceeds file size limit %d > %d"

    .line 1707
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v6, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 1708
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    .line 1707
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1706
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p0, p1, v6, v1}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    return-void

    .line 1716
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {p0, v2}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/MediaSpec;

    .line 1718
    invoke-virtual {v2}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 1719
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    sget-object v3, Landroidx/camera/video/Recorder;->MEDIA_SPEC_DEFAULT:Landroidx/camera/video/MediaSpec;

    .line 1721
    invoke-virtual {v3}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    move-result v3

    .line 1720
    invoke-static {v3}, Landroidx/camera/video/MediaSpec;->outputFormatToMuxerFormat(I)I

    move-result v3

    .line 1719
    invoke-static {v2, v3}, Landroidx/camera/video/Recorder;->supportedMuxerFormatOrDefaultFrom(Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;I)I

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    .line 1722
    :cond_4
    invoke-virtual {v2}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/video/MediaSpec;->outputFormatToMuxerFormat(I)I

    .line 1723
    :goto_2
    new-instance v2, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/video/Recorder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 1726
    :goto_3
    invoke-direct {p0, v1}, Landroidx/camera/video/Recorder;->hasInsufficientStorageOrException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_4

    :cond_5
    const/4 v2, 0x5

    .line 1728
    :goto_4
    invoke-virtual {p0, p1, v2, v1}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1796
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    return-void

    :goto_5
    if-eqz v0, :cond_6

    .line 1693
    :try_start_3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw p1

    .line 1690
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Muxer cannot be started without an encoded video frame."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method stopInternal(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V
    .locals 2

    .line 2373
    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 2374
    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 2375
    iput p4, p0, Landroidx/camera/video/Recorder;->mRecordingStopError:I

    .line 2376
    iput-object p5, p0, Landroidx/camera/video/Recorder;->mRecordingStopErrorCause:Ljava/lang/Throwable;

    .line 2377
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2378
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->clearPendingAudioRingBuffer()V

    .line 2379
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p1, p2, p3}, Landroidx/camera/video/internal/encoder/Encoder;->stop(J)V

    .line 2381
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    if-eqz p1, :cond_1

    .line 2382
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    const/4 p1, 0x0

    .line 2383
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 2386
    :cond_1
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object p4, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    if-eq p1, p4, :cond_2

    .line 2394
    new-instance p1, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda3;-><init>()V

    iget-object p4, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    const-wide/16 v0, 0x3e8

    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p4, v0, v1, p5}, Landroidx/camera/video/Recorder;->scheduleTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/Recorder;->mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 2402
    :cond_2
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-static {p1}, Landroidx/camera/video/Recorder;->notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V

    .line 2409
    :goto_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p1, p2, p3}, Landroidx/camera/video/internal/encoder/Encoder;->stop(J)V

    :cond_3
    return-void
.end method

.method updateInProgressStatusEvent(Z)V
    .locals 0

    return-void
.end method
