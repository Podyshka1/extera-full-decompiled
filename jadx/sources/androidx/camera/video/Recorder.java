package androidx.camera.video;

import android.net.Uri;
import android.view.Surface;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.MutableStateObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.StateObservable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.utils.ArrayRingBuffer;
import androidx.camera.core.internal.utils.RingBuffer;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.Recorder;
import androidx.camera.video.StreamInfo;
import androidx.camera.video.VideoOutput;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.OutputStorage;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.EncodeException;
import androidx.camera.video.internal.encoder.EncodedData;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.camera.video.internal.encoder.EncoderConfig;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.video.internal.encoder.OutputConfig;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.muxer.MuxerFactory;
import androidx.camera.video.internal.utils.StorageUtil;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class Recorder implements VideoOutput {
    private static final Executor AUDIO_EXECUTOR;
    static final EncoderFactory DEFAULT_ENCODER_FACTORY;
    private static final MuxerFactory DEFAULT_MUXER_FACTORY;
    public static final QualitySelector DEFAULT_QUALITY_SELECTOR;
    private static final VideoEncoderInfo.Finder DEFAULT_VIDEO_ENCODER_INFO_FINDER;
    private static final MediaSpec MEDIA_SPEC_DEFAULT;
    private static final OutputStorage.Factory OUTPUT_STORAGE_FACTORY_DEFAULT;
    private static final Exception PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
    private static final Set PENDING_STATES = DesugarCollections.unmodifiableSet(EnumSet.of(State.PENDING_RECORDING, State.PENDING_PAUSED));
    private static final Set VALID_NON_PENDING_STATES_WHILE_PENDING = DesugarCollections.unmodifiableSet(EnumSet.of(State.CONFIGURING, State.IDLING, State.RESETTING, State.STOPPING, State.ERROR));
    private static final VideoSpec VIDEO_SPEC_DEFAULT;
    static long sRetrySetupVideoDelayMs;
    static int sRetrySetupVideoMaxCount;
    private final EncoderFactory mAudioEncoderFactory;
    private final Executor mExecutor;
    private final MutableStateObservable mIsRecording;
    SurfaceRequest mLatestSurfaceRequest;
    final MutableStateObservable mMediaSpec;
    private final MuxerFactory mMuxerFactory;
    private final OutputStorage.Factory mOutputStorageFactory;
    private final long mRequiredFreeStorageBytes;
    final Executor mSequentialExecutor;
    private final MutableStateObservable mStreamInfo;
    private final Executor mUserProvidedExecutor;
    private final int mVideoCapabilitiesSource;
    private final EncoderFactory mVideoEncoderFactory;
    VideoEncoderSession mVideoEncoderSession;
    Timebase mVideoSourceTimebase;
    private final Object mLock = new Object();
    private final MutableStateObservable mVideoEncoderBitrateRange = MutableStateObservable.withInitialState(null);
    private State mState = State.CONFIGURING;
    private State mNonPendingState = null;
    int mStreamId = 0;
    private long mLastGeneratedRecordingId = 0;
    boolean mInProgressRecordingStopping = false;
    private SurfaceRequest.TransformationInfo mInProgressTransformationInfo = null;
    private SurfaceRequest.TransformationInfo mSourceTransformationInfo = null;
    private VideoValidatedEncoderProfilesProxy mResolvedEncoderProfiles = null;
    final List mEncodingFutures = new ArrayList();
    Integer mAudioTrackIndex = null;
    Integer mVideoTrackIndex = null;
    Surface mLatestSurface = null;
    Surface mActiveSurface = null;
    Encoder mVideoEncoder = null;
    OutputConfig mVideoOutputConfig = null;
    Encoder mAudioEncoder = null;
    OutputConfig mAudioOutputConfig = null;
    AudioState mAudioState = AudioState.INITIALIZING;
    Uri mOutputUri = Uri.EMPTY;
    long mRecordingBytes = 0;
    long mRecordingAudioBytes = 0;
    long mRecordingDurationUs = 0;
    long mFirstRecordingVideoDataTimeUs = Long.MAX_VALUE;
    int mFirstRecordingVideoBitrate = 0;
    long mFirstRecordingAudioDataTimeUs = Long.MAX_VALUE;
    long mPreviousRecordingVideoDataTimeUs = Long.MAX_VALUE;
    long mPreviousRecordingAudioDataTimeUs = Long.MAX_VALUE;
    long mFileSizeLimitInBytes = 0;
    long mDurationLimitUs = 0;
    int mRecordingStopError = 1;
    Throwable mRecordingStopErrorCause = null;
    EncodedData mPendingFirstVideoData = null;
    final RingBuffer mPendingAudioRingBuffer = new ArrayRingBuffer(60);
    Throwable mAudioErrorCause = null;
    boolean mIsAudioSourceSilenced = false;
    VideoOutput.SourceState mSourceState = VideoOutput.SourceState.INACTIVE;
    ScheduledFuture mSourceNonStreamingTimeout = null;
    private boolean mNeedsResetBeforeNextStart = false;
    private VideoEncoderConfig mVideoEncoderConfig = null;
    VideoEncoderSession mVideoEncoderSessionToRelease = null;
    double mAudioAmplitude = 0.0d;
    private boolean mShouldSendResumeEvent = false;
    private SetupVideoTask mSetupVideoTask = null;
    private OutputStorage mOutputStorage = null;
    private long mAvailableBytesAboveRequired = Long.MAX_VALUE;
    private boolean mHasGlProcessing = false;

    enum AudioState {
        INITIALIZING,
        IDLING,
        DISABLED,
        ENABLED,
        ERROR_ENCODER,
        ERROR_SOURCE
    }

    static abstract class RecordingRecord implements AutoCloseable {
    }

    enum State {
        CONFIGURING,
        PENDING_RECORDING,
        PENDING_PAUSED,
        IDLING,
        RECORDING,
        PAUSED,
        STOPPING,
        RESETTING,
        ERROR
    }

    boolean isPersistentRecordingInProgress() {
        return false;
    }

    void updateInProgressStatusEvent(boolean z) {
    }

    static {
        Quality quality = Quality.FHD;
        QualitySelector qualitySelectorFromOrderedList = QualitySelector.fromOrderedList(Arrays.asList(quality, Quality.f28HD, Quality.f29SD), FallbackStrategy.higherQualityOrLowerThan(quality));
        DEFAULT_QUALITY_SELECTOR = qualitySelectorFromOrderedList;
        VideoSpec videoSpecBuild = VideoSpec.builder().setQualitySelector(qualitySelectorFromOrderedList).setAspectRatio(-1).build();
        VIDEO_SPEC_DEFAULT = videoSpecBuild;
        MEDIA_SPEC_DEFAULT = MediaSpec.builder().setOutputFormat(-1).setVideoSpec(videoSpecBuild).build();
        PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE = new RuntimeException("The video frame producer became inactive before any data was received.");
        DEFAULT_ENCODER_FACTORY = new EncoderFactory() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda10
            @Override // androidx.camera.video.internal.encoder.EncoderFactory
            public final Encoder createEncoder(Executor executor, EncoderConfig encoderConfig, int i) {
                return new EncoderImpl(executor, encoderConfig, i);
            }
        };
        DEFAULT_VIDEO_ENCODER_INFO_FINDER = VideoEncoderInfoImpl.FINDER;
        DEFAULT_MUXER_FACTORY = new MuxerFactory() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda11
        };
        OUTPUT_STORAGE_FACTORY_DEFAULT = new OutputStorage.Factory() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda12
        };
        AUDIO_EXECUTOR = CameraXExecutors.newSequentialExecutor(CameraXExecutors.ioExecutor());
        sRetrySetupVideoMaxCount = 3;
        sRetrySetupVideoDelayMs = 1000L;
    }

    Recorder(Executor executor, MediaSpec mediaSpec, int i, EncoderFactory encoderFactory, EncoderFactory encoderFactory2, MuxerFactory muxerFactory, OutputStorage.Factory factory, long j) {
        this.mUserProvidedExecutor = executor;
        executor = executor == null ? CameraXExecutors.ioExecutor() : executor;
        this.mExecutor = executor;
        Executor executorNewSequentialExecutor = CameraXExecutors.newSequentialExecutor(executor);
        this.mSequentialExecutor = executorNewSequentialExecutor;
        this.mMediaSpec = MutableStateObservable.withInitialState(composeRecorderMediaSpec(mediaSpec));
        this.mVideoCapabilitiesSource = i;
        this.mStreamInfo = MutableStateObservable.withInitialState(StreamInfo.m108of(this.mStreamId, internalStateToStreamState(this.mState)));
        this.mIsRecording = MutableStateObservable.withInitialState(Boolean.FALSE);
        this.mVideoEncoderFactory = encoderFactory;
        this.mAudioEncoderFactory = encoderFactory2;
        this.mMuxerFactory = muxerFactory;
        this.mOutputStorageFactory = factory;
        this.mVideoEncoderSession = new VideoEncoderSession(encoderFactory, executorNewSequentialExecutor, executor);
        j = j == -1 ? 52428800L : j;
        this.mRequiredFreeStorageBytes = j;
        Logger.m76d("Recorder", "mRequiredFreeStorageBytes = " + StorageUtil.formatSize(j));
    }

    @Override // androidx.camera.video.VideoOutput
    public void onSurfaceRequested(SurfaceRequest surfaceRequest) {
        onSurfaceRequested(surfaceRequest, Timebase.UPTIME, false);
    }

    @Override // androidx.camera.video.VideoOutput
    public void onSurfaceRequested(final SurfaceRequest surfaceRequest, final Timebase timebase, final boolean z) {
        synchronized (this.mLock) {
            try {
                Logger.m76d("Recorder", "Surface is requested in state: " + this.mState + ", Current surface: " + this.mStreamId);
                if (this.mState == State.ERROR) {
                    setState(State.CONFIGURING);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onSurfaceRequestedInternal(surfaceRequest, timebase, z);
            }
        });
    }

    @Override // androidx.camera.video.VideoOutput
    public Observable getMediaSpec() {
        return this.mMediaSpec;
    }

    @Override // androidx.camera.video.VideoOutput
    public Observable getStreamInfo() {
        return this.mStreamInfo;
    }

    @Override // androidx.camera.video.VideoOutput
    public Observable isSourceStreamRequired() {
        return this.mIsRecording;
    }

    @Override // androidx.camera.video.VideoOutput
    public void onSourceStateChanged(final VideoOutput.SourceState sourceState) {
        this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onSourceStateChangedInternal(sourceState);
            }
        });
    }

    @Override // androidx.camera.video.VideoOutput
    public VideoCapabilities getMediaCapabilities(CameraInfo cameraInfo, int i) {
        return getVideoCapabilitiesInternal(i == 1 ? 2 : 1, cameraInfo, this.mVideoCapabilitiesSource, ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getMimeType());
    }

    public QualitySelector getQualitySelector() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getQualitySelector();
    }

    @Override // androidx.camera.video.VideoOutput
    public boolean isQualitySelectorDefault() {
        return getQualitySelector() == DEFAULT_QUALITY_SELECTOR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSurfaceRequestedInternal(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
        SurfaceRequest surfaceRequest2 = this.mLatestSurfaceRequest;
        if (surfaceRequest2 != null && !surfaceRequest2.isServiced()) {
            this.mLatestSurfaceRequest.willNotProvideSurface();
        }
        this.mHasGlProcessing = z;
        this.mLatestSurfaceRequest = surfaceRequest;
        this.mVideoSourceTimebase = timebase;
        configureInternal(surfaceRequest, timebase, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSourceStateChangedInternal(VideoOutput.SourceState sourceState) {
        ScheduledFuture scheduledFuture;
        Encoder encoder;
        VideoOutput.SourceState sourceState2 = this.mSourceState;
        this.mSourceState = sourceState;
        if (sourceState2 != sourceState) {
            Logger.m76d("Recorder", "Video source has transitioned to state: " + sourceState);
            if (sourceState == VideoOutput.SourceState.INACTIVE) {
                if (this.mActiveSurface == null) {
                    SetupVideoTask setupVideoTask = this.mSetupVideoTask;
                    if (setupVideoTask != null) {
                        setupVideoTask.cancelFailedRetry();
                        this.mSetupVideoTask = null;
                    }
                    requestReset(4, null, false);
                    return;
                }
                this.mNeedsResetBeforeNextStart = true;
                return;
            }
            if (sourceState != VideoOutput.SourceState.ACTIVE_NON_STREAMING || (scheduledFuture = this.mSourceNonStreamingTimeout) == null || !scheduledFuture.cancel(false) || (encoder = this.mVideoEncoder) == null) {
                return;
            }
            notifyEncoderSourceStopped(encoder);
            return;
        }
        Logger.m76d("Recorder", "Video source transitions to the same state: " + sourceState);
    }

    void requestReset(int i, Throwable th, boolean z) {
        boolean z2;
        boolean z3;
        synchronized (this.mLock) {
            try {
                z2 = true;
                z3 = false;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                    case ERROR:
                        break;
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        updateNonPendingState(State.RESETTING);
                        break;
                    case RECORDING:
                    case PAUSED:
                        Preconditions.checkState(false, "In-progress recording shouldn't be null when in state " + this.mState);
                        if (!isPersistentRecordingInProgress()) {
                            setState(State.RESETTING);
                            z3 = true;
                            z2 = false;
                        }
                        break;
                    case STOPPING:
                        setState(State.RESETTING);
                        z2 = false;
                        break;
                    case RESETTING:
                    default:
                        z2 = false;
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z2) {
            if (z3) {
                stopInternal(null, -1L, i, th);
            }
        } else if (z) {
            resetVideo();
        } else {
            reset();
        }
    }

    private void configureInternal(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
        if (surfaceRequest.isServiced()) {
            Logger.m81w("Recorder", "Ignore the SurfaceRequest since it is already served.");
            return;
        }
        surfaceRequest.setTransformationInfoListener(this.mSequentialExecutor, new SurfaceRequest.TransformationInfoListener() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda1
            @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
            public final void onTransformationInfoUpdate(SurfaceRequest.TransformationInfo transformationInfo) {
                this.f$0.mSourceTransformationInfo = transformationInfo;
            }
        });
        this.mResolvedEncoderProfiles = getEncoderProfilesResolver(surfaceRequest.getCamera().getCameraInfo(), surfaceRequest.getSessionType()).findNearestHigherSupportedEncoderProfilesFor(surfaceRequest.getResolution(), surfaceRequest.getDynamicRange());
        Logger.m76d("Recorder", "mResolvedEncoderProfiles = " + this.mResolvedEncoderProfiles);
        SetupVideoTask setupVideoTask = this.mSetupVideoTask;
        if (setupVideoTask != null) {
            setupVideoTask.cancelFailedRetry();
        }
        SetupVideoTask setupVideoTask2 = new SetupVideoTask(surfaceRequest, timebase, this.mHasGlProcessing, z ? sRetrySetupVideoMaxCount : 0);
        this.mSetupVideoTask = setupVideoTask2;
        setupVideoTask2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SetupVideoTask {
        private final int mMaxRetryCount;
        private final SurfaceRequest mSurfaceRequest;
        private final Timebase mTimebase;
        private boolean mIsFailedRetryCanceled = false;
        private int mRetryCount = 0;
        private ScheduledFuture mRetryFuture = null;

        static /* synthetic */ int access$608(SetupVideoTask setupVideoTask) {
            int i = setupVideoTask.mRetryCount;
            setupVideoTask.mRetryCount = i + 1;
            return i;
        }

        SetupVideoTask(SurfaceRequest surfaceRequest, Timebase timebase, boolean z, int i) {
            this.mSurfaceRequest = surfaceRequest;
            this.mTimebase = timebase;
            Recorder.this.mHasGlProcessing = z;
            this.mMaxRetryCount = i;
        }

        void start() {
            setupVideo(this.mSurfaceRequest, this.mTimebase);
        }

        void cancelFailedRetry() {
            if (this.mIsFailedRetryCanceled) {
                return;
            }
            this.mIsFailedRetryCanceled = true;
            ScheduledFuture scheduledFuture = this.mRetryFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                this.mRetryFuture = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setupVideo(final SurfaceRequest surfaceRequest, final Timebase timebase) {
            Recorder.this.safeToCloseVideoEncoder().addListener(new Runnable() { // from class: androidx.camera.video.Recorder$SetupVideoTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Recorder.SetupVideoTask.m2014$r8$lambda$wczg8Yls85xyXF3E2b7y2H0JVo(this.f$0, surfaceRequest, timebase);
                }
            }, Recorder.this.mSequentialExecutor);
        }

        /* JADX INFO: renamed from: $r8$lambda$w-czg8Yls85xyXF3E2b7y2H0JVo, reason: not valid java name */
        public static /* synthetic */ void m2014$r8$lambda$wczg8Yls85xyXF3E2b7y2H0JVo(SetupVideoTask setupVideoTask, SurfaceRequest surfaceRequest, Timebase timebase) {
            setupVideoTask.getClass();
            if (!surfaceRequest.isServiced() && (!Recorder.this.mVideoEncoderSession.isConfiguredSurfaceRequest(surfaceRequest) || Recorder.this.isPersistentRecordingInProgress())) {
                EncoderFactory encoderFactory = Recorder.this.mVideoEncoderFactory;
                Recorder recorder = Recorder.this;
                VideoEncoderSession videoEncoderSession = new VideoEncoderSession(encoderFactory, recorder.mSequentialExecutor, recorder.mExecutor);
                Recorder recorder2 = Recorder.this;
                MediaSpec mediaSpec = (MediaSpec) recorder2.getObservableData(recorder2.mMediaSpec);
                DynamicRange dynamicRange = surfaceRequest.getDynamicRange();
                VideoEncoderConfig videoEncoderConfigWorkaroundDataSpaceIfRequired = VideoConfigUtil.workaroundDataSpaceIfRequired(VideoConfigUtil.resolveVideoEncoderConfig(VideoConfigUtil.resolveVideoMimeInfo(mediaSpec, dynamicRange, Recorder.this.mResolvedEncoderProfiles), timebase, mediaSpec.getVideoSpec(), surfaceRequest.getResolution(), dynamicRange, surfaceRequest.getExpectedFrameRate()), Recorder.this.mHasGlProcessing);
                Recorder.this.mVideoEncoderConfig = videoEncoderConfigWorkaroundDataSpaceIfRequired;
                ListenableFuture listenableFutureConfigure = videoEncoderSession.configure(surfaceRequest, videoEncoderConfigWorkaroundDataSpaceIfRequired);
                Recorder.this.mVideoEncoderSession = videoEncoderSession;
                Futures.addCallback(listenableFutureConfigure, setupVideoTask.new C03121(videoEncoderSession), Recorder.this.mSequentialExecutor);
                return;
            }
            Logger.m81w("Recorder", "Ignore the SurfaceRequest " + surfaceRequest + " isServiced: " + surfaceRequest.isServiced() + " VideoEncoderSession: " + Recorder.this.mVideoEncoderSession + " has been configured with a persistent in-progress recording.");
        }

        /* JADX INFO: renamed from: androidx.camera.video.Recorder$SetupVideoTask$1 */
        class C03121 implements FutureCallback {
            final /* synthetic */ VideoEncoderSession val$videoEncoderSession;

            C03121(VideoEncoderSession videoEncoderSession) {
                this.val$videoEncoderSession = videoEncoderSession;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Encoder encoder) {
                Logger.m76d("Recorder", "VideoEncoder is created. " + encoder);
                if (encoder == null) {
                    return;
                }
                Preconditions.checkState(Recorder.this.mVideoEncoderSession == this.val$videoEncoderSession);
                Preconditions.checkState(Recorder.this.mVideoEncoder == null);
                Recorder.this.onVideoEncoderReady(this.val$videoEncoderSession);
                Recorder.this.onConfigured();
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                Logger.m82w("Recorder", "VideoEncoder Setup error: " + th, th);
                if (SetupVideoTask.this.mRetryCount < SetupVideoTask.this.mMaxRetryCount) {
                    SetupVideoTask.access$608(SetupVideoTask.this);
                    SetupVideoTask.this.mRetryFuture = Recorder.scheduleTask(new Runnable() { // from class: androidx.camera.video.Recorder$SetupVideoTask$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            Recorder.SetupVideoTask.C03121.$r8$lambda$SyvAFBNl1CeWx7vKUwGrkmTny00(this.f$0);
                        }
                    }, Recorder.this.mSequentialExecutor, Recorder.sRetrySetupVideoDelayMs, TimeUnit.MILLISECONDS);
                    return;
                }
                Recorder.this.onEncoderSetupError(th);
            }

            public static /* synthetic */ void $r8$lambda$SyvAFBNl1CeWx7vKUwGrkmTny00(C03121 c03121) {
                if (SetupVideoTask.this.mIsFailedRetryCanceled) {
                    return;
                }
                Logger.m76d("Recorder", "Retry setupVideo #" + SetupVideoTask.this.mRetryCount);
                SetupVideoTask setupVideoTask = SetupVideoTask.this;
                setupVideoTask.setupVideo(setupVideoTask.mSurfaceRequest, SetupVideoTask.this.mTimebase);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ListenableFuture safeToCloseVideoEncoder() {
        Logger.m76d("Recorder", "Try to safely release video encoder: " + this.mVideoEncoder);
        return this.mVideoEncoderSession.signalTermination();
    }

    void onVideoEncoderReady(final VideoEncoderSession videoEncoderSession) {
        Encoder encoder = (Encoder) Preconditions.checkNotNull(videoEncoderSession.getVideoEncoder());
        this.mVideoEncoder = encoder;
        this.mVideoEncoderBitrateRange.setState(((VideoEncoderInfo) encoder.getEncoderInfo()).getSupportedBitrateRange());
        this.mFirstRecordingVideoBitrate = this.mVideoEncoder.getConfiguredBitrate();
        Surface activeSurface = videoEncoderSession.getActiveSurface();
        this.mActiveSurface = activeSurface;
        setLatestSurface(activeSurface);
        Futures.addCallback(videoEncoderSession.getReadyToReleaseFuture(), new FutureCallback() { // from class: androidx.camera.video.Recorder.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Encoder encoder2) {
                Encoder encoder3;
                Logger.m76d("Recorder", "VideoEncoder can be released: " + encoder2);
                if (encoder2 == null) {
                    return;
                }
                ScheduledFuture scheduledFuture = Recorder.this.mSourceNonStreamingTimeout;
                if (scheduledFuture != null && scheduledFuture.cancel(false) && (encoder3 = Recorder.this.mVideoEncoder) != null && encoder3 == encoder2) {
                    Recorder.notifyEncoderSourceStopped(encoder3);
                }
                Recorder recorder = Recorder.this;
                recorder.mVideoEncoderSessionToRelease = videoEncoderSession;
                recorder.setLatestSurface(null);
                Recorder recorder2 = Recorder.this;
                recorder2.requestReset(4, null, recorder2.isPersistentRecordingInProgress());
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                Logger.m76d("Recorder", "Error in ReadyToReleaseFuture: " + th);
            }
        }, this.mSequentialExecutor);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0050 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0003, B:5:0x000b, B:24:0x0060, B:7:0x000f, B:10:0x0019, B:11:0x0020, B:13:0x0022, B:14:0x002e, B:15:0x0046, B:18:0x004a, B:20:0x0050, B:21:0x0054, B:22:0x005a), top: B:35:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0054 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0003, B:5:0x000b, B:24:0x0060, B:7:0x000f, B:10:0x0019, B:11:0x0020, B:13:0x0022, B:14:0x002e, B:15:0x0046, B:18:0x004a, B:20:0x0050, B:21:0x0054, B:22:0x005a), top: B:35:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void onConfigured() {
        boolean z;
        boolean z2;
        synchronized (this.mLock) {
            try {
                z = false;
                switch (this.mState) {
                    case CONFIGURING:
                        setState(State.IDLING);
                        z2 = false;
                        break;
                    case PENDING_RECORDING:
                        z2 = false;
                        if (this.mSourceState != VideoOutput.SourceState.INACTIVE) {
                            restoreNonPendingState();
                        } else {
                            makePendingRecordingActiveLocked(this.mState);
                        }
                        break;
                    case PENDING_PAUSED:
                        z2 = true;
                        if (this.mSourceState != VideoOutput.SourceState.INACTIVE) {
                        }
                        break;
                    case IDLING:
                    case RESETTING:
                        throw new AssertionError("Incorrectly invoke onConfigured() in state " + this.mState);
                    case PAUSED:
                        z = true;
                    case RECORDING:
                        Preconditions.checkState(isPersistentRecordingInProgress(), "Unexpectedly invoke onConfigured() when there's a non-persistent in-progress recording");
                        z2 = z;
                        z = true;
                        break;
                    case STOPPING:
                        throw new AssertionError("Unexpectedly invoke onConfigured() in a STOPPING state when it's not waiting for a new surface.");
                    case ERROR:
                        Logger.m78e("Recorder", "onConfigured() was invoked when the Recorder had encountered error");
                        z2 = false;
                        break;
                    default:
                        z2 = false;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            updateEncoderCallbacks(null, true);
            this.mVideoEncoder.start();
            if (this.mShouldSendResumeEvent) {
                throw null;
            }
            if (z2) {
                this.mVideoEncoder.pause();
            }
        }
    }

    private MediaSpec composeRecorderMediaSpec(MediaSpec mediaSpec) {
        MediaSpec.Builder builder = mediaSpec.toBuilder();
        if (mediaSpec.getVideoSpec().getAspectRatio() == -1) {
            builder.configureVideo(new Consumer() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda9
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ((VideoSpec.Builder) obj).setAspectRatio(Recorder.VIDEO_SPEC_DEFAULT.getAspectRatio());
                }
            });
        }
        return builder.build();
    }

    void onEncoderSetupError(Throwable th) {
        synchronized (this.mLock) {
            try {
                switch (this.mState) {
                    case CONFIGURING:
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        setStreamId(-1);
                        setState(State.ERROR);
                        break;
                    case IDLING:
                    case RECORDING:
                    case PAUSED:
                    case STOPPING:
                    case RESETTING:
                        throw new AssertionError("Encountered encoder setup error while in unexpected state " + this.mState + ": " + th);
                }
            } finally {
            }
        }
    }

    void setupAndStartMuxer(RecordingRecord recordingRecord) {
        if (isAudioEnabled() && this.mPendingAudioRingBuffer.isEmpty()) {
            throw new AssertionError("Audio is enabled but no audio sample is ready. Cannot start muxer.");
        }
        EncodedData encodedData = this.mPendingFirstVideoData;
        if (encodedData == null) {
            throw new AssertionError("Muxer cannot be started without an encoded video frame.");
        }
        try {
            this.mPendingFirstVideoData = null;
            List audioDataToWriteAndClearCache = getAudioDataToWriteAndClearCache(encodedData.getPresentationTimeUs());
            long size = encodedData.size();
            Iterator it = audioDataToWriteAndClearCache.iterator();
            while (it.hasNext()) {
                size += ((EncodedData) it.next()).size();
            }
            long j = this.mFileSizeLimitInBytes;
            if (j != 0 && size > j) {
                Logger.m76d("Recorder", String.format("Initial data exceeds file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.mFileSizeLimitInBytes)));
                onInProgressRecordingInternalError(recordingRecord, 2, null);
                encodedData.close();
                return;
            }
            try {
                MediaSpec mediaSpec = (MediaSpec) getObservableData(this.mMediaSpec);
                if (mediaSpec.getOutputFormat() == -1) {
                    supportedMuxerFormatOrDefaultFrom(this.mResolvedEncoderProfiles, MediaSpec.outputFormatToMuxerFormat(MEDIA_SPEC_DEFAULT.getOutputFormat()));
                } else {
                    MediaSpec.outputFormatToMuxerFormat(mediaSpec.getOutputFormat());
                }
                new Consumer() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda8
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.mOutputUri = (Uri) obj;
                    }
                };
                throw null;
            } catch (IOException e) {
                onInProgressRecordingInternalError(recordingRecord, hasInsufficientStorageOrException(e) ? 3 : 5, e);
                encodedData.close();
            }
        } catch (Throwable th) {
            if (encodedData != null) {
                try {
                    encodedData.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private List getAudioDataToWriteAndClearCache(long j) {
        ArrayList arrayList = new ArrayList();
        while (!this.mPendingAudioRingBuffer.isEmpty()) {
            EncodedData encodedData = (EncodedData) this.mPendingAudioRingBuffer.dequeue();
            if (encodedData.getPresentationTimeUs() >= j) {
                arrayList.add(encodedData);
            }
        }
        return arrayList;
    }

    private void updateEncoderCallbacks(final RecordingRecord recordingRecord, boolean z) {
        if (!this.mEncodingFutures.isEmpty()) {
            ListenableFuture listenableFutureAllAsList = Futures.allAsList(this.mEncodingFutures);
            if (!listenableFutureAllAsList.isDone()) {
                listenableFutureAllAsList.cancel(true);
            }
            this.mEncodingFutures.clear();
        }
        this.mEncodingFutures.add(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(recordingRecord) { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda5
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return Recorder.m2011$r8$lambda$M45O7_hkWfx8GwBJi61ZgT4oLU(this.f$0, null, completer);
            }
        }));
        if (isAudioEnabled() && !z) {
            this.mEncodingFutures.add(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(recordingRecord) { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda6
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return Recorder.m2012$r8$lambda$tLGVVgTO0zFBpDvYtj_t37rM8(this.f$0, null, completer);
                }
            }));
        }
        Futures.addCallback(Futures.allAsList(this.mEncodingFutures), new FutureCallback() { // from class: androidx.camera.video.Recorder.6
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(List list) {
                Logger.m76d("Recorder", "Encodings end successfully.");
                Recorder recorder = Recorder.this;
                recorder.finalizeInProgressRecording(recorder.mRecordingStopError, recorder.mRecordingStopErrorCause);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                Recorder.this.getClass();
                Preconditions.checkState(false, "In-progress recording shouldn't be null");
                Recorder.this.getClass();
                throw null;
            }
        }, CameraXExecutors.directExecutor());
    }

    /* JADX INFO: renamed from: $r8$lambda$M45O7_hkWfx-8GwBJi61ZgT4oLU, reason: not valid java name */
    public static /* synthetic */ Object m2011$r8$lambda$M45O7_hkWfx8GwBJi61ZgT4oLU(Recorder recorder, RecordingRecord recordingRecord, CallbackToFutureAdapter.Completer completer) {
        recorder.mVideoEncoder.setEncoderCallback(new EncoderCallback(completer, recordingRecord) { // from class: androidx.camera.video.Recorder.3
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public /* synthetic */ void onEncodePaused() {
                EncoderCallback.CC.$default$onEncodePaused(this);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStart() {
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStop() {
                this.val$completer.set(null);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeError(EncodeException encodeException) {
                this.val$completer.setException(encodeException);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodedData(EncodedData encodedData) {
                boolean z;
                Recorder.this.getClass();
                Recorder recorder2 = Recorder.this;
                if (!recorder2.mInProgressRecordingStopping) {
                    EncodedData encodedData2 = recorder2.mPendingFirstVideoData;
                    if (encodedData2 != null) {
                        encodedData2.close();
                        Recorder.this.mPendingFirstVideoData = null;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (encodedData.isKeyFrame()) {
                        Recorder recorder3 = Recorder.this;
                        recorder3.mPendingFirstVideoData = encodedData;
                        if (!recorder3.isAudioEnabled() || !Recorder.this.mPendingAudioRingBuffer.isEmpty()) {
                            Logger.m76d("Recorder", "Received video keyframe. Starting muxer...");
                            Recorder.this.setupAndStartMuxer(null);
                            return;
                        } else if (z) {
                            Logger.m76d("Recorder", "Replaced cached video keyframe with newer keyframe.");
                            return;
                        } else {
                            Logger.m76d("Recorder", "Cached video keyframe while we wait for first audio sample before starting muxer.");
                            return;
                        }
                    }
                    if (z) {
                        Logger.m76d("Recorder", "Dropped cached keyframe since we have new video data and have not yet received audio data.");
                    }
                    Logger.m76d("Recorder", "Dropped video data since muxer has not yet started and data is not a keyframe.");
                    Recorder.this.mVideoEncoder.requestKeyFrame();
                    encodedData.close();
                    return;
                }
                Logger.m76d("Recorder", "Drop video data since recording is stopping.");
                encodedData.close();
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onOutputConfigUpdate(OutputConfig outputConfig) {
                Recorder.this.mVideoOutputConfig = outputConfig;
            }
        }, recorder.mSequentialExecutor);
        return "videoEncodingFuture";
    }

    /* JADX INFO: renamed from: $r8$lambda$tLGVVgTO0zFBp-DvY-tj_t37rM8, reason: not valid java name */
    public static /* synthetic */ Object m2012$r8$lambda$tLGVVgTO0zFBpDvYtj_t37rM8(final Recorder recorder, RecordingRecord recordingRecord, final CallbackToFutureAdapter.Completer completer) {
        recorder.getClass();
        final Consumer consumer = new Consumer() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda7
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                Recorder.m2010$r8$lambda$H8VJSEfNGf3oVz0ib8TVeQ31p4(this.f$0, completer, (Throwable) obj);
            }
        };
        new Object() { // from class: androidx.camera.video.Recorder.4
        };
        throw null;
    }

    /* JADX INFO: renamed from: $r8$lambda$H8VJSEfNGf3oVz0-ib8TVeQ31p4, reason: not valid java name */
    public static /* synthetic */ void m2010$r8$lambda$H8VJSEfNGf3oVz0ib8TVeQ31p4(Recorder recorder, CallbackToFutureAdapter.Completer completer, Throwable th) {
        if (recorder.mAudioErrorCause == null) {
            if (th instanceof EncodeException) {
                recorder.setAudioState(AudioState.ERROR_ENCODER);
            } else {
                recorder.setAudioState(AudioState.ERROR_SOURCE);
            }
            recorder.mAudioErrorCause = th;
            recorder.updateInProgressStatusEvent(true);
            completer.set(null);
        }
    }

    void stopInternal(RecordingRecord recordingRecord, long j, int i, Throwable th) {
        if (this.mInProgressRecordingStopping) {
            return;
        }
        this.mInProgressRecordingStopping = true;
        this.mRecordingStopError = i;
        this.mRecordingStopErrorCause = th;
        if (isAudioEnabled()) {
            clearPendingAudioRingBuffer();
            this.mAudioEncoder.stop(j);
        }
        EncodedData encodedData = this.mPendingFirstVideoData;
        if (encodedData != null) {
            encodedData.close();
            this.mPendingFirstVideoData = null;
        }
        if (this.mSourceState != VideoOutput.SourceState.ACTIVE_NON_STREAMING) {
            this.mSourceNonStreamingTimeout = scheduleTask(new Runnable() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Logger.m76d("Recorder", "The source didn't become non-streaming before timeout. Waited 1000ms");
                }
            }, this.mSequentialExecutor, 1000L, TimeUnit.MILLISECONDS);
        } else {
            notifyEncoderSourceStopped(this.mVideoEncoder);
        }
        this.mVideoEncoder.stop(j);
    }

    static void notifyEncoderSourceStopped(Encoder encoder) {
        if (encoder instanceof EncoderImpl) {
            ((EncoderImpl) encoder).signalSourceStopped();
        }
    }

    private void clearPendingAudioRingBuffer() {
        while (!this.mPendingAudioRingBuffer.isEmpty()) {
            ((EncodedData) this.mPendingAudioRingBuffer.dequeue()).close();
        }
    }

    private void reset() {
        if (this.mAudioEncoder != null) {
            Logger.m76d("Recorder", "Releasing audio encoder.");
            this.mAudioEncoder.release();
            this.mAudioEncoder = null;
            this.mAudioOutputConfig = null;
        }
        setAudioState(AudioState.INITIALIZING);
        resetVideo();
    }

    private void tryReleaseVideoEncoder() {
        VideoEncoderSession videoEncoderSession = this.mVideoEncoderSessionToRelease;
        if (videoEncoderSession != null) {
            Preconditions.checkState(videoEncoderSession.getVideoEncoder() == this.mVideoEncoder);
            Logger.m76d("Recorder", "Releasing video encoder: " + this.mVideoEncoder);
            this.mVideoEncoderSessionToRelease.terminateNow();
            this.mVideoEncoderSessionToRelease = null;
            this.mVideoEncoder = null;
            this.mVideoOutputConfig = null;
            setLatestSurface(null);
            return;
        }
        safeToCloseVideoEncoder();
    }

    private void onResetVideo() {
        boolean z;
        SurfaceRequest surfaceRequest;
        synchronized (this.mLock) {
            try {
                switch (this.mState.ordinal()) {
                    case 1:
                    case 2:
                        updateNonPendingState(State.CONFIGURING);
                        z = true;
                        break;
                    case 4:
                    case 5:
                    case 8:
                        if (isPersistentRecordingInProgress()) {
                            z = false;
                            break;
                        }
                    case 3:
                    case 6:
                    case 7:
                        setState(State.CONFIGURING);
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mNeedsResetBeforeNextStart = false;
        if (!z || (surfaceRequest = this.mLatestSurfaceRequest) == null || surfaceRequest.isServiced()) {
            return;
        }
        configureInternal(this.mLatestSurfaceRequest, this.mVideoSourceTimebase, false);
    }

    private void resetVideo() {
        if (this.mVideoEncoder != null) {
            Logger.m76d("Recorder", "Releasing video encoder.");
            tryReleaseVideoEncoder();
        }
        onResetVideo();
    }

    private StreamInfo.StreamState internalStateToStreamState(State state) {
        return (state == State.RECORDING || state == State.STOPPING) ? StreamInfo.StreamState.ACTIVE : StreamInfo.StreamState.INACTIVE;
    }

    boolean isAudioEnabled() {
        return this.mAudioState == AudioState.ENABLED;
    }

    private boolean hasInsufficientStorage(long j) {
        return j < this.mRequiredFreeStorageBytes;
    }

    private boolean hasInsufficientStorageOrException(Throwable th) {
        if (StorageUtil.isStorageFullException(th)) {
            return true;
        }
        return hasInsufficientStorage(((OutputStorage) Preconditions.checkNotNull(this.mOutputStorage)).getAvailableBytes());
    }

    void finalizeInProgressRecording(int i, Throwable th) {
        throw new AssertionError("Attempted to finalize in-progress recording, but no recording is in progress.");
    }

    void onInProgressRecordingInternalError(RecordingRecord recordingRecord, int i, Throwable th) throws Throwable {
        Throwable th2;
        synchronized (this.mLock) {
            try {
                try {
                    boolean z = false;
                    switch (this.mState) {
                        case CONFIGURING:
                        case IDLING:
                        case ERROR:
                            throw new AssertionError("In-progress recording error occurred while in unexpected state: " + this.mState);
                        case RECORDING:
                        case PAUSED:
                            try {
                                setState(State.STOPPING);
                                z = true;
                                break;
                            } catch (Throwable th3) {
                                th2 = th3;
                                throw th2;
                            }
                        case PENDING_RECORDING:
                        case PENDING_PAUSED:
                        case STOPPING:
                        case RESETTING:
                        default:
                            if (z) {
                                stopInternal(recordingRecord, -1L, i, th);
                                return;
                            }
                            return;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    th2 = th;
                    throw th2;
                }
            } catch (Throwable th5) {
                th = th5;
                th2 = th;
                throw th2;
            }
        }
    }

    private RecordingRecord makePendingRecordingActiveLocked(State state) {
        if (state != State.PENDING_PAUSED && state != State.PENDING_RECORDING) {
            throw new AssertionError("makePendingRecordingActiveLocked() can only be called from a pending state.");
        }
        throw new AssertionError("Pending recording should exist when in a PENDING state.");
    }

    Object getObservableData(StateObservable stateObservable) {
        try {
            return stateObservable.fetchData().get();
        } catch (InterruptedException | ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    void setState(State state) {
        if (this.mState == state) {
            throw new AssertionError("Attempted to transition to state " + state + ", but Recorder is already in state " + state);
        }
        Logger.m76d("Recorder", "Transitioning Recorder internal state: " + this.mState + " --> " + state);
        Set set = PENDING_STATES;
        StreamInfo.StreamState streamStateInternalStateToStreamState = null;
        if (set.contains(state)) {
            if (!set.contains(this.mState)) {
                if (!VALID_NON_PENDING_STATES_WHILE_PENDING.contains(this.mState)) {
                    throw new AssertionError("Invalid state transition. Should not be transitioning to a PENDING state from state " + this.mState);
                }
                State state2 = this.mState;
                this.mNonPendingState = state2;
                streamStateInternalStateToStreamState = internalStateToStreamState(state2);
            }
        } else if (this.mNonPendingState != null) {
            this.mNonPendingState = null;
        }
        this.mState = state;
        if (streamStateInternalStateToStreamState == null) {
            streamStateInternalStateToStreamState = internalStateToStreamState(state);
        }
        this.mStreamInfo.setState(StreamInfo.m109of(this.mStreamId, streamStateInternalStateToStreamState, this.mInProgressTransformationInfo));
    }

    void setLatestSurface(Surface surface) {
        int iHashCode;
        if (this.mLatestSurface == surface) {
            return;
        }
        this.mLatestSurface = surface;
        synchronized (this.mLock) {
            if (surface != null) {
                try {
                    iHashCode = surface.hashCode();
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                iHashCode = 0;
            }
            setStreamId(iHashCode);
        }
    }

    private void setStreamId(int i) {
        if (this.mStreamId == i) {
            return;
        }
        Logger.m76d("Recorder", "Transitioning streamId: " + this.mStreamId + " --> " + i);
        this.mStreamId = i;
        this.mStreamInfo.setState(StreamInfo.m109of(i, internalStateToStreamState(this.mState), this.mInProgressTransformationInfo));
    }

    private void updateNonPendingState(State state) {
        if (!PENDING_STATES.contains(this.mState)) {
            throw new AssertionError("Can only updated non-pending state from a pending state, but state is " + this.mState);
        }
        if (!VALID_NON_PENDING_STATES_WHILE_PENDING.contains(state)) {
            throw new AssertionError("Invalid state transition. State is not a valid non-pending state while in a pending state: " + state);
        }
        if (this.mNonPendingState != state) {
            this.mNonPendingState = state;
            this.mStreamInfo.setState(StreamInfo.m109of(this.mStreamId, internalStateToStreamState(state), this.mInProgressTransformationInfo));
        }
    }

    private void restoreNonPendingState() {
        if (!PENDING_STATES.contains(this.mState)) {
            throw new AssertionError("Cannot restore non-pending state when in state " + this.mState);
        }
        setState(this.mNonPendingState);
    }

    void setAudioState(AudioState audioState) {
        Logger.m76d("Recorder", "Transitioning audio state: " + this.mAudioState + " --> " + audioState);
        this.mAudioState = audioState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ScheduledFuture scheduleTask(final Runnable runnable, final Executor executor, long j, TimeUnit timeUnit) {
        return CameraXExecutors.mainThreadExecutor().schedule(new Runnable() { // from class: androidx.camera.video.Recorder$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                executor.execute(runnable);
            }
        }, j, timeUnit);
    }

    private static int supportedMuxerFormatOrDefaultFrom(VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, int i) {
        if (videoValidatedEncoderProfilesProxy != null) {
            int recommendedFileFormat = videoValidatedEncoderProfilesProxy.getRecommendedFileFormat();
            if (recommendedFileFormat == 1) {
                return 2;
            }
            if (recommendedFileFormat == 2) {
                return 0;
            }
            if (recommendedFileFormat == 9) {
                return 1;
            }
        }
        return i;
    }

    public static VideoCapabilities getVideoCapabilities(CameraInfo cameraInfo) {
        return getVideoCapabilitiesInternal(1, cameraInfo, 0, "video/*");
    }

    private static VideoCapabilities getVideoCapabilitiesInternal(int i, CameraInfo cameraInfo, int i2, String str) {
        CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfo;
        if ("video/*".equals(str)) {
            return new RecorderVideoCapabilities(getEncoderProfilesResolverInternal(i, cameraInfo, i2), cameraInfoInternal);
        }
        return new MimeMatchedVideoCapabilities(str, cameraInfoInternal, DEFAULT_VIDEO_ENCODER_INFO_FINDER);
    }

    @Override // androidx.camera.video.VideoOutput
    public EncoderProfilesResolver getEncoderProfilesResolver(CameraInfo cameraInfo, int i) {
        return getEncoderProfilesResolverInternal(i == 1 ? 2 : 1, cameraInfo, this.mVideoCapabilitiesSource);
    }

    private static EncoderProfilesResolver getEncoderProfilesResolverInternal(int i, CameraInfo cameraInfo, int i2) {
        return EncoderProfilesResolverFactory.getResolver(cameraInfo, i, i2, DEFAULT_VIDEO_ENCODER_INFO_FINDER);
    }

    public static final class Builder {
        private EncoderFactory mAudioEncoderFactory;
        private final MediaSpec.Builder mMediaSpecBuilder;
        private MuxerFactory mMuxerFactory;
        private OutputStorage.Factory mOutputStorageFactory;
        private long mRequiredFreeStorageBytes;
        private EncoderFactory mVideoEncoderFactory;
        private int mVideoCapabilitiesSource = 0;
        private Executor mExecutor = null;

        public Builder() {
            EncoderFactory encoderFactory = Recorder.DEFAULT_ENCODER_FACTORY;
            this.mVideoEncoderFactory = encoderFactory;
            this.mAudioEncoderFactory = encoderFactory;
            this.mMuxerFactory = Recorder.DEFAULT_MUXER_FACTORY;
            this.mOutputStorageFactory = Recorder.OUTPUT_STORAGE_FACTORY_DEFAULT;
            this.mRequiredFreeStorageBytes = -1L;
            this.mMediaSpecBuilder = Recorder.MEDIA_SPEC_DEFAULT.toBuilder();
        }

        public Builder setQualitySelector(final QualitySelector qualitySelector) {
            Preconditions.checkNotNull(qualitySelector, "The specified quality selector can't be null.");
            this.mMediaSpecBuilder.configureVideo(new Consumer() { // from class: androidx.camera.video.Recorder$Builder$$ExternalSyntheticLambda0
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ((VideoSpec.Builder) obj).setQualitySelector(qualitySelector);
                }
            });
            return this;
        }

        public Recorder build() {
            return new Recorder(this.mExecutor, this.mMediaSpecBuilder.build(), this.mVideoCapabilitiesSource, this.mVideoEncoderFactory, this.mAudioEncoderFactory, this.mMuxerFactory, this.mOutputStorageFactory, this.mRequiredFreeStorageBytes);
        }
    }
}
