package androidx.camera.video;

import android.graphics.Rect;
import android.media.MediaCodec;
import android.os.SystemClock;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture$$ExternalSyntheticBackport1;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConstantObservable;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import androidx.camera.video.StreamInfo;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.VideoOutput;
import androidx.camera.video.impl.VideoCaptureConfig;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.HdrRepeatingRequestFailureQuirk;
import androidx.camera.video.internal.compat.quirk.SizeCannotEncodeVideoQuirk;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.SwappedVideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.camera.video.internal.workaround.VideoEncoderInfoWrapper;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoCapture extends UseCase {
    private static final Defaults DEFAULT_CONFIG = new Defaults();
    private SurfaceEdge mCameraEdge;
    private SessionConfig.CloseableErrorListener mCloseableErrorListener;
    private Rect mCropRect;
    DeferrableSurface mDeferrableSurface;
    private boolean mHasCompensatingTransformation;
    private SurfaceProcessorNode mNode;
    private Map mQualityToCustomSizesMap;
    private int mRotationDegrees;
    SessionConfig.Builder mSessionConfigBuilder;
    VideoOutput.SourceState mSourceState;
    private SourceStreamRequirementObserver mSourceStreamRequirementObserver;
    StreamInfo mStreamInfo;
    private final Observable.Observer mStreamInfoObserver;
    private SurfaceRequest mSurfaceRequest;
    ListenableFuture mSurfaceUpdateFuture;

    @Override // androidx.camera.core.UseCase
    public boolean isAutoRotationSupported() {
        return true;
    }

    VideoCapture(VideoCaptureConfig videoCaptureConfig) {
        super(videoCaptureConfig);
        this.mStreamInfo = StreamInfo.STREAM_INFO_ANY_INACTIVE;
        this.mSessionConfigBuilder = new SessionConfig.Builder();
        this.mSurfaceUpdateFuture = null;
        this.mSourceState = VideoOutput.SourceState.INACTIVE;
        this.mHasCompensatingTransformation = false;
        this.mQualityToCustomSizesMap = Collections.EMPTY_MAP;
        this.mStreamInfoObserver = new Observable.Observer() { // from class: androidx.camera.video.VideoCapture.1
            @Override // androidx.camera.core.impl.Observable.Observer
            public void onNewData(StreamInfo streamInfo) {
                if (streamInfo == null) {
                    throw new IllegalArgumentException("StreamInfo can't be null");
                }
                if (VideoCapture.this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                    return;
                }
                Logger.m76d("VideoCapture", "Stream info update: old: " + VideoCapture.this.mStreamInfo + " new: " + streamInfo);
                VideoCapture videoCapture = VideoCapture.this;
                StreamInfo streamInfo2 = videoCapture.mStreamInfo;
                videoCapture.mStreamInfo = streamInfo;
                StreamSpec streamSpec = (StreamSpec) Preconditions.checkNotNull(videoCapture.getAttachedStreamSpec());
                if (VideoCapture.this.isStreamIdChanged(streamInfo2.getId(), streamInfo.getId()) || VideoCapture.this.shouldResetCompensatingTransformation(streamInfo2, streamInfo)) {
                    VideoCapture.this.resetPipeline();
                    return;
                }
                if ((streamInfo2.getId() != -1 && streamInfo.getId() == -1) || (streamInfo2.getId() == -1 && streamInfo.getId() != -1)) {
                    VideoCapture videoCapture2 = VideoCapture.this;
                    videoCapture2.applyStreamInfoAndStreamSpecToSessionConfigBuilder(videoCapture2.mSessionConfigBuilder, streamInfo, streamSpec);
                    VideoCapture videoCapture3 = VideoCapture.this;
                    videoCapture3.updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{videoCapture3.mSessionConfigBuilder.build()}));
                    VideoCapture.this.notifyReset();
                    return;
                }
                if (streamInfo2.getStreamState() != streamInfo.getStreamState()) {
                    VideoCapture videoCapture4 = VideoCapture.this;
                    videoCapture4.applyStreamInfoAndStreamSpecToSessionConfigBuilder(videoCapture4.mSessionConfigBuilder, streamInfo, streamSpec);
                    VideoCapture videoCapture5 = VideoCapture.this;
                    videoCapture5.updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{videoCapture5.mSessionConfigBuilder.build()}));
                    VideoCapture.this.notifyUpdated();
                }
            }

            @Override // androidx.camera.core.impl.Observable.Observer
            public void onError(Throwable th) {
                Logger.m82w("VideoCapture", "Receive onError from StreamState observer", th);
            }
        };
    }

    public VideoOutput getOutput() {
        return ((VideoCaptureConfig) getCurrentConfig()).getVideoOutput();
    }

    public void setTargetRotation(int i) {
        if (setTargetRotationInternal(i)) {
            sendTransformationInfoIfReady();
        }
    }

    @Override // androidx.camera.core.UseCase
    protected void onProviderRotationChanged(int i) {
        setTargetRotation(i);
    }

    @Override // androidx.camera.core.UseCase
    protected StreamSpec onSuggestedStreamSpecUpdated(StreamSpec streamSpec, StreamSpec streamSpec2) {
        Logger.m76d("VideoCapture", "onSuggestedStreamSpecUpdated: primaryStreamSpec = " + streamSpec + ", secondaryStreamSpec " + streamSpec2);
        List customOrderedResolutions = ((VideoCaptureConfig) getCurrentConfig()).getCustomOrderedResolutions(null);
        if (customOrderedResolutions != null && !customOrderedResolutions.contains(streamSpec.getResolution())) {
            Logger.m81w("VideoCapture", "suggested resolution " + streamSpec.getResolution() + " is not in custom ordered resolutions " + customOrderedResolutions);
        }
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public void onSessionStart() {
        super.onSessionStart();
        Logger.m76d("VideoCapture", "VideoCapture#onStateAttached: cameraID = " + getCameraId());
        if (getAttachedStreamSpec() == null || this.mSurfaceRequest != null) {
            return;
        }
        StreamSpec streamSpec = (StreamSpec) Preconditions.checkNotNull(getAttachedStreamSpec());
        this.mStreamInfo = (StreamInfo) fetchObservableValue(getOutput().getStreamInfo(), StreamInfo.STREAM_INFO_ANY_INACTIVE);
        SessionConfig.Builder builderCreatePipeline = createPipeline((VideoCaptureConfig) getCurrentConfig(), streamSpec);
        this.mSessionConfigBuilder = builderCreatePipeline;
        applyStreamInfoAndStreamSpecToSessionConfigBuilder(builderCreatePipeline, this.mStreamInfo, streamSpec);
        updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{this.mSessionConfigBuilder.build()}));
        notifyActive();
        getOutput().getStreamInfo().addObserver(CameraXExecutors.mainThreadExecutor(), this.mStreamInfoObserver);
        SourceStreamRequirementObserver sourceStreamRequirementObserver = this.mSourceStreamRequirementObserver;
        if (sourceStreamRequirementObserver != null) {
            sourceStreamRequirementObserver.close();
        }
        this.mSourceStreamRequirementObserver = new SourceStreamRequirementObserver(getCameraControl());
        getOutput().isSourceStreamRequired().addObserver(CameraXExecutors.mainThreadExecutor(), this.mSourceStreamRequirementObserver);
        setSourceState(VideoOutput.SourceState.ACTIVE_NON_STREAMING);
    }

    @Override // androidx.camera.core.UseCase
    public void setViewPortCropRect(Rect rect) {
        super.setViewPortCropRect(rect);
        sendTransformationInfoIfReady();
    }

    @Override // androidx.camera.core.UseCase
    public void onSessionStop() {
        Logger.m76d("VideoCapture", "VideoCapture#onStateDetached");
        Preconditions.checkState(Threads.isMainThread(), "VideoCapture can only be detached on the main thread.");
        if (this.mSourceStreamRequirementObserver != null) {
            getOutput().isSourceStreamRequired().removeObserver(this.mSourceStreamRequirementObserver);
            this.mSourceStreamRequirementObserver.close();
            this.mSourceStreamRequirementObserver = null;
        }
        setSourceState(VideoOutput.SourceState.INACTIVE);
        getOutput().getStreamInfo().removeObserver(this.mStreamInfoObserver);
        ListenableFuture listenableFuture = this.mSurfaceUpdateFuture;
        if (listenableFuture != null && listenableFuture.cancel(false)) {
            Logger.m76d("VideoCapture", "VideoCapture is detached from the camera. Surface update cancelled.");
        }
        clearPipeline();
    }

    @Override // androidx.camera.core.UseCase
    protected StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(Config config) {
        this.mSessionConfigBuilder.addImplementationOptions(config);
        updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{this.mSessionConfigBuilder.build()}));
        StreamSpec attachedStreamSpec = getAttachedStreamSpec();
        Objects.requireNonNull(attachedStreamSpec);
        return attachedStreamSpec.toBuilder().setImplementationOptions(config).build();
    }

    public String toString() {
        return "VideoCapture:" + getName();
    }

    @Override // androidx.camera.core.UseCase
    public UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        Defaults defaults = DEFAULT_CONFIG;
        Config config = useCaseConfigFactory.getConfig(defaults.getConfig().getCaptureType(), 1);
        if (z) {
            config = Config.CC.mergeConfigs(config, defaults.getConfig());
        }
        if (config == null) {
            return null;
        }
        return getUseCaseConfigBuilder(config).getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    protected UseCaseConfig onMergeConfig(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        updateCustomOrderedResolutionsByQuality(cameraInfoInternal, builder);
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        return Builder.fromConfig(config);
    }

    private void sendTransformationInfoIfReady() {
        CameraInternal camera = getCamera();
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (camera == null || surfaceEdge == null) {
            return;
        }
        int compensatedRotation = getCompensatedRotation(camera);
        this.mRotationDegrees = compensatedRotation;
        surfaceEdge.updateTransformation(compensatedRotation, getAppTargetRotation());
    }

    private Rect adjustCropRectWithInProgressTransformation(Rect rect, int i) {
        return shouldCompensateTransformation() ? TransformUtils.sizeToRect(TransformUtils.getRotatedSize(((SurfaceRequest.TransformationInfo) Preconditions.checkNotNull(this.mStreamInfo.getInProgressTransformationInfo())).getCropRect(), i)) : rect;
    }

    private int getCompensatedRotation(CameraInternal cameraInternal) {
        boolean zIsMirroringRequired = isMirroringRequired(cameraInternal);
        int relativeRotation = getRelativeRotation(cameraInternal, zIsMirroringRequired);
        if (!shouldCompensateTransformation()) {
            return relativeRotation;
        }
        SurfaceRequest.TransformationInfo inProgressTransformationInfo = this.mStreamInfo.getInProgressTransformationInfo();
        Objects.requireNonNull(inProgressTransformationInfo);
        int rotationDegrees = inProgressTransformationInfo.getRotationDegrees();
        if (zIsMirroringRequired != inProgressTransformationInfo.isMirroring()) {
            rotationDegrees = -rotationDegrees;
        }
        return TransformUtils.within360(relativeRotation - rotationDegrees);
    }

    private Size adjustResolutionWithInProgressTransformation(Size size, Rect rect, Rect rect2) {
        if (!shouldCompensateTransformation() || rect2.equals(rect)) {
            return size;
        }
        float fHeight = rect2.height() / rect.height();
        return new Size((int) Math.ceil(size.getWidth() * fHeight), (int) Math.ceil(size.getHeight() * fHeight));
    }

    private Rect calculateCropRect(Size size, VideoEncoderInfo videoEncoderInfo) {
        Rect rect;
        if (getViewPortCropRect() != null) {
            rect = getViewPortCropRect();
        } else {
            rect = new Rect(0, 0, size.getWidth(), size.getHeight());
        }
        return (videoEncoderInfo == null || videoEncoderInfo.isSizeSupportedAllowSwapping(rect.width(), rect.height())) ? rect : adjustCropRectToValidSize(rect, size, videoEncoderInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SessionConfig.Builder createPipeline(final VideoCaptureConfig videoCaptureConfig, StreamSpec streamSpec) {
        final VideoCapture videoCapture = this;
        Threads.checkMainThread();
        final CameraInternal cameraInternal = (CameraInternal) Preconditions.checkNotNull(videoCapture.getCamera());
        Size resolution = streamSpec.getResolution();
        Runnable runnable = new Runnable() { // from class: androidx.camera.video.VideoCapture$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyReset();
            }
        };
        Range rangeResolveFrameRate = resolveFrameRate(streamSpec);
        MediaSpec mediaSpec = videoCapture.getMediaSpec();
        Objects.requireNonNull(mediaSpec);
        int sessionType = streamSpec.getSessionType();
        EncoderProfilesResolver encoderProfilesResolver = videoCapture.getEncoderProfilesResolver(cameraInternal.getCameraInfo(), sessionType);
        DynamicRange dynamicRange = streamSpec.getDynamicRange();
        VideoEncoderInfo videoEncoderInfoResolveVideoEncoderInfo = resolveVideoEncoderInfo(videoCaptureConfig.getVideoEncoderInfoFinder(), encoderProfilesResolver.findNearestHigherSupportedEncoderProfilesFor(resolution, dynamicRange), mediaSpec, dynamicRange);
        videoCapture.mRotationDegrees = videoCapture.getCompensatedRotation(cameraInternal);
        Rect rectCalculateCropRect = videoCapture.calculateCropRect(resolution, videoEncoderInfoResolveVideoEncoderInfo);
        Rect rectAdjustCropRectWithInProgressTransformation = videoCapture.adjustCropRectWithInProgressTransformation(rectCalculateCropRect, videoCapture.mRotationDegrees);
        videoCapture.mCropRect = rectAdjustCropRectWithInProgressTransformation;
        Size sizeAdjustResolutionWithInProgressTransformation = videoCapture.adjustResolutionWithInProgressTransformation(resolution, rectCalculateCropRect, rectAdjustCropRectWithInProgressTransformation);
        if (videoCapture.shouldCompensateTransformation()) {
            videoCapture.mHasCompensatingTransformation = true;
        }
        Rect rect = videoCapture.mCropRect;
        Rect rectAdjustCropRectByQuirk = adjustCropRectByQuirk(rect, videoCapture.mRotationDegrees, videoCapture.isCreateNodeNeeded(cameraInternal, videoCaptureConfig, sessionType, rect, resolution, dynamicRange), videoEncoderInfoResolveVideoEncoderInfo);
        videoCapture.mCropRect = rectAdjustCropRectByQuirk;
        videoCapture.mNode = videoCapture.createNodeIfNeeded(cameraInternal, videoCaptureConfig, sessionType, rectAdjustCropRectByQuirk, resolution, dynamicRange);
        final boolean z = (cameraInternal.getHasTransform() && videoCapture.mNode == null) ? false : true;
        final Timebase timebaseResolveTimebase = resolveTimebase(cameraInternal, videoCapture.mNode);
        Logger.m76d("VideoCapture", "camera timebase = " + cameraInternal.getCameraInfoInternal().getTimebase() + ", processing timebase = " + timebaseResolveTimebase);
        StreamSpec streamSpecBuild = streamSpec.toBuilder().setResolution(sizeAdjustResolutionWithInProgressTransformation).setExpectedFrameRateRange(rangeResolveFrameRate).build();
        Preconditions.checkState(videoCapture.mCameraEdge == null);
        SurfaceEdge surfaceEdge = new SurfaceEdge(2, 34, streamSpecBuild, videoCapture.getSensorToBufferTransformMatrix(), cameraInternal.getHasTransform(), videoCapture.mCropRect, videoCapture.mRotationDegrees, videoCapture.getAppTargetRotation(), videoCapture.shouldMirror(cameraInternal));
        videoCapture.mCameraEdge = surfaceEdge;
        surfaceEdge.addOnInvalidatedListener(runnable);
        if (videoCapture.mNode != null) {
            OutConfig outConfigM103of = OutConfig.m103of(videoCapture.mCameraEdge);
            final SurfaceEdge surfaceEdge2 = (SurfaceEdge) videoCapture.mNode.transform(SurfaceProcessorNode.AbstractC0298In.m98of(videoCapture.mCameraEdge, Collections.singletonList(outConfigM103of))).get(outConfigM103of);
            Objects.requireNonNull(surfaceEdge2);
            videoCapture = this;
            surfaceEdge2.addOnInvalidatedListener(new Runnable() { // from class: androidx.camera.video.VideoCapture$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onAppEdgeInvalidated(surfaceEdge2, cameraInternal, videoCaptureConfig, timebaseResolveTimebase, z);
                }
            });
            videoCapture.mSurfaceRequest = surfaceEdge2.createSurfaceRequest(cameraInternal);
            final DeferrableSurface deferrableSurface = videoCapture.mCameraEdge.getDeferrableSurface();
            videoCapture.mDeferrableSurface = deferrableSurface;
            deferrableSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.video.VideoCapture$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    VideoCapture.$r8$lambda$CGMKpTeD2ArQZDudKW5wuM9mgnU(this.f$0, deferrableSurface);
                }
            }, CameraXExecutors.mainThreadExecutor());
        } else {
            SurfaceRequest surfaceRequestCreateSurfaceRequest = videoCapture.mCameraEdge.createSurfaceRequest(cameraInternal);
            videoCapture.mSurfaceRequest = surfaceRequestCreateSurfaceRequest;
            videoCapture.mDeferrableSurface = surfaceRequestCreateSurfaceRequest.getDeferrableSurface();
        }
        videoCaptureConfig.getVideoOutput().onSurfaceRequested(videoCapture.mSurfaceRequest, timebaseResolveTimebase, z);
        videoCapture.sendTransformationInfoIfReady();
        videoCapture.mDeferrableSurface.setContainerClass(MediaCodec.class);
        SessionConfig.Builder builderCreateFrom = SessionConfig.Builder.createFrom(videoCaptureConfig, streamSpec.getResolution());
        builderCreateFrom.setSessionType(sessionType);
        videoCapture.applyExpectedFrameRateRange(builderCreateFrom, streamSpec);
        builderCreateFrom.setVideoStabilization(videoCaptureConfig.getVideoStabilizationMode());
        SessionConfig.CloseableErrorListener closeableErrorListener = videoCapture.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: androidx.camera.video.VideoCapture$$ExternalSyntheticLambda3
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                this.f$0.resetPipeline();
            }
        });
        videoCapture.mCloseableErrorListener = closeableErrorListener2;
        builderCreateFrom.setErrorListener(closeableErrorListener2);
        if (streamSpec.getImplementationOptions() != null) {
            builderCreateFrom.addImplementationOptions(streamSpec.getImplementationOptions());
        }
        return builderCreateFrom;
    }

    public static /* synthetic */ void $r8$lambda$CGMKpTeD2ArQZDudKW5wuM9mgnU(VideoCapture videoCapture, DeferrableSurface deferrableSurface) {
        if (deferrableSurface == videoCapture.mDeferrableSurface) {
            videoCapture.clearPipeline();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppEdgeInvalidated(SurfaceEdge surfaceEdge, CameraInternal cameraInternal, VideoCaptureConfig videoCaptureConfig, Timebase timebase, boolean z) {
        if (cameraInternal == getCamera()) {
            this.mSurfaceRequest = surfaceEdge.createSurfaceRequest(cameraInternal);
            videoCaptureConfig.getVideoOutput().onSurfaceRequested(this.mSurfaceRequest, timebase, z);
            sendTransformationInfoIfReady();
        }
    }

    private void clearPipeline() {
        Threads.checkMainThread();
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        DeferrableSurface deferrableSurface = this.mDeferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
            this.mDeferrableSurface = null;
        }
        SurfaceProcessorNode surfaceProcessorNode = this.mNode;
        if (surfaceProcessorNode != null) {
            surfaceProcessorNode.release();
            this.mNode = null;
        }
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (surfaceEdge != null) {
            surfaceEdge.close();
            this.mCameraEdge = null;
        }
        this.mCropRect = null;
        this.mSurfaceRequest = null;
        this.mStreamInfo = StreamInfo.STREAM_INFO_ANY_INACTIVE;
        this.mRotationDegrees = 0;
        this.mHasCompensatingTransformation = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetPipeline() {
        if (getCamera() == null) {
            return;
        }
        clearPipeline();
        SessionConfig.Builder builderCreatePipeline = createPipeline((VideoCaptureConfig) getCurrentConfig(), (StreamSpec) Preconditions.checkNotNull(getAttachedStreamSpec()));
        this.mSessionConfigBuilder = builderCreatePipeline;
        applyStreamInfoAndStreamSpecToSessionConfigBuilder(builderCreatePipeline, this.mStreamInfo, getAttachedStreamSpec());
        updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{this.mSessionConfigBuilder.build()}));
        notifyReset();
    }

    public static final class Defaults {
        private static final VideoCaptureConfig DEFAULT_CONFIG;
        static final DynamicRange DEFAULT_DYNAMIC_RANGE;
        static final Range DEFAULT_FPS_RANGE;
        static final Range DEFAULT_HIGH_SPEED_FPS_RANGE;
        private static final StreamUseCase DEFAULT_STREAM_USE_CASE;
        private static final VideoEncoderInfo.Finder DEFAULT_VIDEO_ENCODER_INFO_FINDER;
        private static final VideoOutput DEFAULT_VIDEO_OUTPUT;

        static {
            StreamUseCase streamUseCase = StreamUseCase.VIDEO_RECORD;
            DEFAULT_STREAM_USE_CASE = streamUseCase;
            VideoOutput videoOutput = new VideoOutput() { // from class: androidx.camera.video.VideoCapture$Defaults$$ExternalSyntheticLambda0
                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ EncoderProfilesResolver getEncoderProfilesResolver(CameraInfo cameraInfo, int i) {
                    return EncoderProfilesResolver.EMPTY;
                }

                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ VideoCapabilities getMediaCapabilities(CameraInfo cameraInfo, int i) {
                    return VideoCapabilities.EMPTY;
                }

                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ Observable getMediaSpec() {
                    return ConstantObservable.withValue(null);
                }

                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ Observable getStreamInfo() {
                    return StreamInfo.ALWAYS_ACTIVE_OBSERVABLE;
                }

                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ boolean isQualitySelectorDefault() {
                    return VideoOutput.CC.$default$isQualitySelectorDefault(this);
                }

                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ Observable isSourceStreamRequired() {
                    return ConstantObservable.withValue(Boolean.FALSE);
                }

                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ void onSourceStateChanged(VideoOutput.SourceState sourceState) {
                    VideoOutput.CC.$default$onSourceStateChanged(this, sourceState);
                }

                @Override // androidx.camera.video.VideoOutput
                public final void onSurfaceRequested(SurfaceRequest surfaceRequest) {
                    surfaceRequest.willNotProvideSurface();
                }

                @Override // androidx.camera.video.VideoOutput
                public /* synthetic */ void onSurfaceRequested(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
                    onSurfaceRequested(surfaceRequest);
                }
            };
            DEFAULT_VIDEO_OUTPUT = videoOutput;
            VideoEncoderInfo.Finder finder = VideoEncoderInfoImpl.FINDER;
            DEFAULT_VIDEO_ENCODER_INFO_FINDER = finder;
            DEFAULT_FPS_RANGE = new Range(30, 30);
            DEFAULT_HIGH_SPEED_FPS_RANGE = new Range(120, 120);
            DynamicRange dynamicRange = DynamicRange.SDR;
            DEFAULT_DYNAMIC_RANGE = dynamicRange;
            DEFAULT_CONFIG = new Builder(videoOutput).setSurfaceOccupancyPriority(5).setStreamUseCase(streamUseCase).setVideoEncoderInfoFinder(finder).setDynamicRange(dynamicRange).getUseCaseConfig();
        }

        public VideoCaptureConfig getConfig() {
            return DEFAULT_CONFIG;
        }
    }

    private MediaSpec getMediaSpec() {
        return (MediaSpec) fetchObservableValue(getOutput().getMediaSpec(), null);
    }

    private MediaSpec getMediaSpecOrThrow() {
        MediaSpec mediaSpec = getMediaSpec();
        if (mediaSpec != null) {
            return mediaSpec;
        }
        throw new IllegalArgumentException("MediaSpec can't be null");
    }

    private VideoCapabilities getVideoCapabilities(CameraInfo cameraInfo, int i) {
        return getOutput().getMediaCapabilities(cameraInfo, i);
    }

    private EncoderProfilesResolver getEncoderProfilesResolver(CameraInfo cameraInfo, int i) {
        return getOutput().getEncoderProfilesResolver(cameraInfo, i);
    }

    static class SourceStreamRequirementObserver implements Observable.Observer {
        private CameraControlInternal mCameraControl;
        private boolean mIsSourceStreamRequired = false;

        SourceStreamRequirementObserver(CameraControlInternal cameraControlInternal) {
            this.mCameraControl = cameraControlInternal;
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onNewData(Boolean bool) {
            Preconditions.checkState(Threads.isMainThread(), "SourceStreamRequirementObserver can be updated from main thread only");
            updateVideoUsageInCamera(Boolean.TRUE.equals(bool));
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(Throwable th) {
            Logger.m82w("VideoCapture", "SourceStreamRequirementObserver#onError", th);
        }

        private void updateVideoUsageInCamera(boolean z) {
            if (this.mIsSourceStreamRequired == z) {
                return;
            }
            this.mIsSourceStreamRequired = z;
            CameraControlInternal cameraControlInternal = this.mCameraControl;
            if (cameraControlInternal == null) {
                Logger.m76d("VideoCapture", "SourceStreamRequirementObserver#isSourceStreamRequired: Received new data despite being closed already");
            } else if (z) {
                cameraControlInternal.incrementVideoUsage();
            } else {
                cameraControlInternal.decrementVideoUsage();
            }
        }

        public void close() {
            Preconditions.checkState(Threads.isMainThread(), "SourceStreamRequirementObserver can be closed from main thread only");
            Logger.m76d("VideoCapture", "SourceStreamRequirementObserver#close: mIsSourceStreamRequired = " + this.mIsSourceStreamRequired);
            if (this.mCameraControl == null) {
                Logger.m76d("VideoCapture", "SourceStreamRequirementObserver#close: Already closed!");
            } else {
                updateVideoUsageInCamera(false);
                this.mCameraControl = null;
            }
        }
    }

    void applyStreamInfoAndStreamSpecToSessionConfigBuilder(SessionConfig.Builder builder, StreamInfo streamInfo, StreamSpec streamSpec) {
        DeferrableSurface deferrableSurface;
        boolean z = streamInfo.getId() == -1;
        boolean z2 = streamInfo.getStreamState() == StreamInfo.StreamState.ACTIVE;
        if (z && z2) {
            throw new IllegalStateException("Unexpected stream state, stream is error but active");
        }
        builder.clearSurfaces();
        DynamicRange dynamicRange = streamSpec.getDynamicRange();
        if (!z && (deferrableSurface = this.mDeferrableSurface) != null) {
            if (z2) {
                builder.addSurface(deferrableSurface, dynamicRange, null, -1);
            } else {
                builder.addNonRepeatingSurface(deferrableSurface, dynamicRange);
            }
        }
        setupSurfaceUpdateNotifier(builder, z2);
    }

    private boolean isCreateNodeNeeded(CameraInternal cameraInternal, VideoCaptureConfig videoCaptureConfig, int i, Rect rect, Size size, DynamicRange dynamicRange) {
        if (i == 1) {
            return false;
        }
        getEffect();
        return shouldEnableSurfaceProcessingByConfig(cameraInternal, videoCaptureConfig) || shouldEnableSurfaceProcessingByQuirk(cameraInternal) || shouldEnableSurfaceProcessingBasedOnDynamicRangeByQuirk(cameraInternal, dynamicRange) || shouldCrop(rect, size) || shouldMirror(cameraInternal) || shouldCompensateTransformation();
    }

    private SurfaceProcessorNode createNodeIfNeeded(CameraInternal cameraInternal, VideoCaptureConfig videoCaptureConfig, int i, Rect rect, Size size, DynamicRange dynamicRange) {
        if (!isCreateNodeNeeded(cameraInternal, videoCaptureConfig, i, rect, size, dynamicRange)) {
            return null;
        }
        Logger.m76d("VideoCapture", "Surface processing is enabled.");
        CameraInternal camera = getCamera();
        Objects.requireNonNull(camera);
        getEffect();
        return new SurfaceProcessorNode(camera, DefaultSurfaceProcessor.Factory.newInstance(dynamicRange), "VideoCapture");
    }

    private static Rect adjustCropRectByQuirk(Rect rect, int i, boolean z, VideoEncoderInfo videoEncoderInfo) {
        SizeCannotEncodeVideoQuirk sizeCannotEncodeVideoQuirk = (SizeCannotEncodeVideoQuirk) DeviceQuirks.get(SizeCannotEncodeVideoQuirk.class);
        if (sizeCannotEncodeVideoQuirk == null) {
            return rect;
        }
        if (!z) {
            i = 0;
        }
        return sizeCannotEncodeVideoQuirk.adjustCropRectForProblematicEncodeSize(rect, i, videoEncoderInfo);
    }

    private static Rect adjustCropRectToValidSize(final Rect rect, Size size, VideoEncoderInfo videoEncoderInfo) {
        Logger.m76d("VideoCapture", String.format("Adjust cropRect %s by width/height alignment %d/%d and supported widths %s / supported heights %s", TransformUtils.rectToString(rect), Integer.valueOf(videoEncoderInfo.getWidthAlignment()), Integer.valueOf(videoEncoderInfo.getHeightAlignment()), videoEncoderInfo.getSupportedWidths(), videoEncoderInfo.getSupportedHeights()));
        if ((!videoEncoderInfo.getSupportedWidths().contains(Integer.valueOf(rect.width())) || !videoEncoderInfo.getSupportedHeights().contains(Integer.valueOf(rect.height()))) && videoEncoderInfo.canSwapWidthHeight() && videoEncoderInfo.getSupportedHeights().contains(Integer.valueOf(rect.width())) && videoEncoderInfo.getSupportedWidths().contains(Integer.valueOf(rect.height()))) {
            videoEncoderInfo = new SwappedVideoEncoderInfo(videoEncoderInfo);
        }
        int widthAlignment = videoEncoderInfo.getWidthAlignment();
        int heightAlignment = videoEncoderInfo.getHeightAlignment();
        Range supportedWidths = videoEncoderInfo.getSupportedWidths();
        Range supportedHeights = videoEncoderInfo.getSupportedHeights();
        int iAlignDown = alignDown(rect.width(), widthAlignment, supportedWidths);
        int iAlignUp = alignUp(rect.width(), widthAlignment, supportedWidths);
        int iAlignDown2 = alignDown(rect.height(), heightAlignment, supportedHeights);
        int iAlignUp2 = alignUp(rect.height(), heightAlignment, supportedHeights);
        HashSet hashSet = new HashSet();
        addBySupportedSize(hashSet, iAlignDown, iAlignDown2, size, videoEncoderInfo);
        addBySupportedSize(hashSet, iAlignDown, iAlignUp2, size, videoEncoderInfo);
        addBySupportedSize(hashSet, iAlignUp, iAlignDown2, size, videoEncoderInfo);
        addBySupportedSize(hashSet, iAlignUp, iAlignUp2, size, videoEncoderInfo);
        if (hashSet.isEmpty()) {
            Logger.m81w("VideoCapture", "Can't find valid cropped size");
            return rect;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        Logger.m76d("VideoCapture", "candidatesList = " + arrayList);
        Collections.sort(arrayList, new Comparator() { // from class: androidx.camera.video.VideoCapture$$ExternalSyntheticLambda5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return VideoCapture.$r8$lambda$CCJWflAkO3aWM4NZl2n6HGeTEzI(rect, (Size) obj, (Size) obj2);
            }
        });
        Logger.m76d("VideoCapture", "sorted candidatesList = " + arrayList);
        Size size2 = (Size) arrayList.get(0);
        int width = size2.getWidth();
        int height = size2.getHeight();
        if (width == rect.width() && height == rect.height()) {
            Logger.m76d("VideoCapture", "No need to adjust cropRect because crop size is valid.");
            return rect;
        }
        Preconditions.checkState(width % 2 == 0 && height % 2 == 0 && width <= size.getWidth() && height <= size.getHeight());
        Rect rect2 = new Rect(rect);
        if (width != rect.width()) {
            int iMax = Math.max(0, rect.centerX() - (width / 2));
            rect2.left = iMax;
            int i = iMax + width;
            rect2.right = i;
            if (i > size.getWidth()) {
                int width2 = size.getWidth();
                rect2.right = width2;
                rect2.left = width2 - width;
            }
        }
        if (height != rect.height()) {
            int iMax2 = Math.max(0, rect.centerY() - (height / 2));
            rect2.top = iMax2;
            int i2 = iMax2 + height;
            rect2.bottom = i2;
            if (i2 > size.getHeight()) {
                int height2 = size.getHeight();
                rect2.bottom = height2;
                rect2.top = height2 - height;
            }
        }
        Logger.m76d("VideoCapture", String.format("Adjust cropRect from %s to %s", TransformUtils.rectToString(rect), TransformUtils.rectToString(rect2)));
        return rect2;
    }

    public static /* synthetic */ int $r8$lambda$CCJWflAkO3aWM4NZl2n6HGeTEzI(Rect rect, Size size, Size size2) {
        return (Math.abs(size.getWidth() - rect.width()) + Math.abs(size.getHeight() - rect.height())) - (Math.abs(size2.getWidth() - rect.width()) + Math.abs(size2.getHeight() - rect.height()));
    }

    private static void addBySupportedSize(Set set, int i, int i2, Size size, VideoEncoderInfo videoEncoderInfo) {
        if (i > size.getWidth() || i2 > size.getHeight()) {
            return;
        }
        try {
            set.add(new Size(i, ((Integer) videoEncoderInfo.getSupportedHeightsFor(i).clamp(Integer.valueOf(i2))).intValue()));
        } catch (IllegalArgumentException e) {
            Logger.m82w("VideoCapture", "No supportedHeights for width: " + i, e);
        }
        try {
            set.add(new Size(((Integer) videoEncoderInfo.getSupportedWidthsFor(i2).clamp(Integer.valueOf(i))).intValue(), i2));
        } catch (IllegalArgumentException e2) {
            Logger.m82w("VideoCapture", "No supportedWidths for height: " + i2, e2);
        }
    }

    boolean isStreamIdChanged(int i, int i2) {
        Set set = StreamInfo.NON_SURFACE_STREAM_ID;
        return (set.contains(Integer.valueOf(i)) || set.contains(Integer.valueOf(i2)) || i == i2) ? false : true;
    }

    boolean shouldResetCompensatingTransformation(StreamInfo streamInfo, StreamInfo streamInfo2) {
        return this.mHasCompensatingTransformation && streamInfo.getInProgressTransformationInfo() != null && streamInfo2.getInProgressTransformationInfo() == null;
    }

    private boolean shouldMirror(CameraInternal cameraInternal) {
        return cameraInternal.getHasTransform() && isMirroringRequired(cameraInternal);
    }

    private boolean shouldCompensateTransformation() {
        return this.mStreamInfo.getInProgressTransformationInfo() != null;
    }

    private static boolean shouldCrop(Rect rect, Size size) {
        return (size.getWidth() == rect.width() && size.getHeight() == rect.height()) ? false : true;
    }

    private static boolean shouldEnableSurfaceProcessingByConfig(CameraInternal cameraInternal, VideoCaptureConfig videoCaptureConfig) {
        return cameraInternal.getHasTransform() && videoCaptureConfig.isSurfaceProcessingForceEnabled();
    }

    private static boolean shouldEnableSurfaceProcessingByQuirk(CameraInternal cameraInternal) {
        if (cameraInternal.getHasTransform()) {
            return SurfaceProcessingQuirk.CC.workaroundBySurfaceProcessing(DeviceQuirks.getAll()) || SurfaceProcessingQuirk.CC.workaroundBySurfaceProcessing(cameraInternal.getCameraInfoInternal().getCameraQuirks());
        }
        return false;
    }

    private static boolean shouldEnableSurfaceProcessingBasedOnDynamicRangeByQuirk(CameraInternal cameraInternal, DynamicRange dynamicRange) {
        HdrRepeatingRequestFailureQuirk hdrRepeatingRequestFailureQuirk = (HdrRepeatingRequestFailureQuirk) DeviceQuirks.get(HdrRepeatingRequestFailureQuirk.class);
        return cameraInternal.getHasTransform() && hdrRepeatingRequestFailureQuirk != null && hdrRepeatingRequestFailureQuirk.workaroundBySurfaceProcessing(dynamicRange);
    }

    private static int alignDown(int i, int i2, Range range) {
        return align(true, i, i2, range);
    }

    private static int alignUp(int i, int i2, Range range) {
        return align(false, i, i2, range);
    }

    private static int align(boolean z, int i, int i2, Range range) {
        int i3 = i % i2;
        if (i3 != 0) {
            i = z ? i - i3 : i + (i2 - i3);
        }
        return ((Integer) range.clamp(Integer.valueOf(i))).intValue();
    }

    private static Timebase resolveTimebase(CameraInternal cameraInternal, SurfaceProcessorNode surfaceProcessorNode) {
        if (surfaceProcessorNode != null || !cameraInternal.getHasTransform()) {
            return cameraInternal.getCameraInfoInternal().getTimebase();
        }
        return Timebase.UPTIME;
    }

    private static Range resolveFrameRate(StreamSpec streamSpec) {
        Range expectedFrameRateRange = streamSpec.getExpectedFrameRateRange();
        return Objects.equals(expectedFrameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) ? streamSpec.getSessionType() == 1 ? Defaults.DEFAULT_HIGH_SPEED_FPS_RANGE : Defaults.DEFAULT_FPS_RANGE : expectedFrameRateRange;
    }

    private static VideoEncoderInfo resolveVideoEncoderInfo(VideoEncoderInfo.Finder finder, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, MediaSpec mediaSpec, DynamicRange dynamicRange) {
        VideoEncoderInfo videoEncoderInfoFind = finder.find(VideoConfigUtil.resolveVideoMimeInfo(mediaSpec, dynamicRange, videoValidatedEncoderProfilesProxy).getMimeType());
        if (videoEncoderInfoFind == null) {
            Logger.m81w("VideoCapture", "Can't find videoEncoderInfo");
            return null;
        }
        return VideoEncoderInfoWrapper.from(videoEncoderInfoFind, videoValidatedEncoderProfilesProxy != null ? videoValidatedEncoderProfilesProxy.getDefaultVideoProfile().getResolution() : null);
    }

    private void setupSurfaceUpdateNotifier(final SessionConfig.Builder builder, final boolean z) {
        ListenableFuture listenableFuture = this.mSurfaceUpdateFuture;
        if (listenableFuture != null && listenableFuture.cancel(false)) {
            Logger.m76d("VideoCapture", "A newer surface update is requested. Previous surface update cancelled.");
        }
        final ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.VideoCapture$$ExternalSyntheticLambda6
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return VideoCapture.$r8$lambda$Zl1hm0XOhNXzLzqIxBErgOfRdcw(this.f$0, builder, completer);
            }
        });
        this.mSurfaceUpdateFuture = future;
        Futures.addCallback(future, new FutureCallback() { // from class: androidx.camera.video.VideoCapture.3
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Void r3) {
                ListenableFuture listenableFuture2 = future;
                VideoCapture videoCapture = VideoCapture.this;
                if (listenableFuture2 != videoCapture.mSurfaceUpdateFuture || videoCapture.mSourceState == VideoOutput.SourceState.INACTIVE) {
                    return;
                }
                videoCapture.setSourceState(z ? VideoOutput.SourceState.ACTIVE_STREAMING : VideoOutput.SourceState.ACTIVE_NON_STREAMING);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                if (th instanceof CancellationException) {
                    return;
                }
                Logger.m79e("VideoCapture", "Surface update completed with unexpected exception", th);
            }
        }, CameraXExecutors.mainThreadExecutor());
    }

    public static /* synthetic */ Object $r8$lambda$Zl1hm0XOhNXzLzqIxBErgOfRdcw(VideoCapture videoCapture, final SessionConfig.Builder builder, CallbackToFutureAdapter.Completer completer) {
        videoCapture.getClass();
        builder.addTag("androidx.camera.video.VideoCapture.streamUpdate", Integer.valueOf(completer.hashCode()));
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final C03152 c03152 = videoCapture.new C03152(atomicBoolean, completer, builder);
        completer.addCancellationListener(new Runnable() { // from class: androidx.camera.video.VideoCapture$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                VideoCapture.m2016$r8$lambda$TzSsfr_iA67rvBOJYhwgE65WMg(atomicBoolean, builder, c03152);
            }
        }, CameraXExecutors.directExecutor());
        builder.addRepeatingCameraCaptureCallback(c03152);
        return String.format("%s[0x%x]", "androidx.camera.video.VideoCapture.streamUpdate", Integer.valueOf(completer.hashCode()));
    }

    /* JADX INFO: renamed from: androidx.camera.video.VideoCapture$2 */
    class C03152 extends CameraCaptureCallback {
        private boolean mIsFirstCaptureResult = true;
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
        final /* synthetic */ SessionConfig.Builder val$sessionConfigBuilder;
        final /* synthetic */ AtomicBoolean val$surfaceUpdateComplete;

        C03152(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, SessionConfig.Builder builder) {
            this.val$surfaceUpdateComplete = atomicBoolean;
            this.val$completer = completer;
            this.val$sessionConfigBuilder = builder;
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
            Object tag;
            super.onCaptureCompleted(i, cameraCaptureResult);
            if (this.mIsFirstCaptureResult) {
                this.mIsFirstCaptureResult = false;
                Logger.m76d("VideoCapture", "cameraCaptureResult timestampNs = " + cameraCaptureResult.getTimestamp() + ", current system uptimeMs = " + SystemClock.uptimeMillis() + ", current system realtimeMs = " + SystemClock.elapsedRealtime());
            }
            if (this.val$surfaceUpdateComplete.get() || (tag = cameraCaptureResult.getTagBundle().getTag("androidx.camera.video.VideoCapture.streamUpdate")) == null || ((Integer) tag).intValue() != this.val$completer.hashCode() || !this.val$completer.set(null) || this.val$surfaceUpdateComplete.getAndSet(true)) {
                return;
            }
            ScheduledExecutorService scheduledExecutorServiceMainThreadExecutor = CameraXExecutors.mainThreadExecutor();
            final SessionConfig.Builder builder = this.val$sessionConfigBuilder;
            scheduledExecutorServiceMainThreadExecutor.execute(new Runnable() { // from class: androidx.camera.video.VideoCapture$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoCapture.C03152.$r8$lambda$N4RLZ_N89mC9ee2xHpgSaF5kjAo(this.f$0, builder);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$N4RLZ_N89mC9ee2xHpgSaF5kjAo(C03152 c03152, SessionConfig.Builder builder) {
            c03152.getClass();
            builder.removeCameraCaptureCallback(c03152);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$TzSsfr_iA67r-vBOJYhwgE65WMg, reason: not valid java name */
    public static /* synthetic */ void m2016$r8$lambda$TzSsfr_iA67rvBOJYhwgE65WMg(AtomicBoolean atomicBoolean, SessionConfig.Builder builder, CameraCaptureCallback cameraCaptureCallback) {
        Preconditions.checkState(Threads.isMainThread(), "Surface update cancellation should only occur on main thread.");
        atomicBoolean.set(true);
        builder.removeCameraCaptureCallback(cameraCaptureCallback);
    }

    private void updateCustomOrderedResolutionsByQuality(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        MediaSpec mediaSpecOrThrow = getMediaSpecOrThrow();
        QualitySelector qualitySelector = getQualitySelector(mediaSpecOrThrow);
        VideoCaptureConfig videoCaptureConfig = (VideoCaptureConfig) builder.getUseCaseConfig();
        if (videoCaptureConfig.containsOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS)) {
            Preconditions.checkArgument(getOutput().isQualitySelectorDefault(), "Custom ordered resolutions and QualitySelector can't both be set");
            Preconditions.checkArgument(getFeatureGroupQualitySelector() == null, "Can't set both custom ordered resolutions and QualitySelector  through a groupable feature (e.g. GroupableFeatures.UHD_RECORDING)");
            return;
        }
        DynamicRange dynamicRange = videoCaptureConfig.getDynamicRange();
        int sessionType = getSessionType(videoCaptureConfig);
        Range targetFrameRate = getTargetFrameRate(videoCaptureConfig);
        VideoCapabilities videoCapabilities = getVideoCapabilities(cameraInfoInternal, sessionType);
        EncoderProfilesResolver encoderProfilesResolver = getEncoderProfilesResolver(cameraInfoInternal, sessionType);
        Logger.m76d("VideoCapture", "Update custom order resolutions: requestedDynamicRange = " + dynamicRange + ", sessionType = " + sessionType + ", targetFrameRate = " + targetFrameRate);
        List supportedQualitiesOrThrow = getSupportedQualitiesOrThrow(dynamicRange, videoCapabilities, sessionType);
        if (supportedQualitiesOrThrow.isEmpty()) {
            Logger.m81w("VideoCapture", "Can't find any supported quality on the device.");
            return;
        }
        LinkedHashMap linkedHashMapCreateOrderedQualityToSizesMap = createOrderedQualityToSizesMap(cameraInfoInternal, mediaSpecOrThrow, dynamicRange, videoCapabilities, encoderProfilesResolver, sessionType, targetFrameRate, videoCaptureConfig.getVideoEncoderInfoFinder(), getSelectedQualityOrThrow(supportedQualitiesOrThrow, qualitySelector));
        if (sessionType == 1) {
            builder.getMutableConfig().insertOption(UseCaseConfig.OPTION_RESOLUTION_TO_MAX_FRAME_RATES, createSizeToMaxFrameRateMap(linkedHashMapCreateOrderedQualityToSizesMap, encoderProfilesResolver, dynamicRange));
        }
        setCustomOrderedResolutions(builder, linkedHashMapCreateOrderedQualityToSizesMap);
    }

    private QualitySelector getQualitySelector(MediaSpec mediaSpec) {
        QualitySelector featureGroupQualitySelector = getFeatureGroupQualitySelector();
        return featureGroupQualitySelector == null ? mediaSpec.getVideoSpec().getQualitySelector() : featureGroupQualitySelector;
    }

    private QualitySelector getFeatureGroupQualitySelector() {
        Set<GroupableFeature> featureGroup = getFeatureGroup();
        if (featureGroup == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (GroupableFeature groupableFeature : featureGroup) {
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return QualitySelector.fromOrderedList(arrayList);
    }

    private List getSupportedQualitiesOrThrow(DynamicRange dynamicRange, VideoCapabilities videoCapabilities, int i) {
        List supportedQualities = videoCapabilities.getSupportedQualities(dynamicRange);
        Logger.m76d("VideoCapture", "supportedQualities = " + supportedQualities);
        if (supportedQualities.isEmpty() && i == 1) {
            throw new IllegalArgumentException("No supported quality on the device for high-speed capture.");
        }
        return supportedQualities;
    }

    private List getSelectedQualityOrThrow(List list, QualitySelector qualitySelector) {
        List prioritizedQualities = qualitySelector.getPrioritizedQualities(list);
        Logger.m76d("VideoCapture", "Found selectedQualities " + prioritizedQualities + " by " + qualitySelector);
        if (prioritizedQualities.isEmpty()) {
            throw new IllegalArgumentException("Unable to find selected quality");
        }
        return prioritizedQualities;
    }

    private LinkedHashMap createOrderedQualityToSizesMap(CameraInfoInternal cameraInfoInternal, MediaSpec mediaSpec, DynamicRange dynamicRange, VideoCapabilities videoCapabilities, EncoderProfilesResolver encoderProfilesResolver, int i, Range range, VideoEncoderInfo.Finder finder, List list) {
        int aspectRatio = mediaSpec.getVideoSpec().getAspectRatio();
        Map qualityToResolutionMap = QualitySelector.getQualityToResolutionMap(videoCapabilities, dynamicRange);
        QualityRatioToResolutionsTable qualityRatioToResolutionsTable = new QualityRatioToResolutionsTable(getSupportedResolutions(cameraInfoInternal, i, range), qualityToResolutionMap);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Quality quality = (Quality) it.next();
            linkedHashMap.put(quality, qualityRatioToResolutionsTable.getResolutions(quality, aspectRatio));
        }
        return filterOutEncoderUnsupportedResolutions(finder, mediaSpec, dynamicRange, encoderProfilesResolver, linkedHashMap, qualityToResolutionMap);
    }

    private static Map createSizeToMaxFrameRateMap(Map map, EncoderProfilesResolver encoderProfilesResolver, DynamicRange dynamicRange) {
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            VideoValidatedEncoderProfilesProxy profiles = encoderProfilesResolver.getProfiles((Quality) entry.getKey(), dynamicRange);
            Objects.requireNonNull(profiles);
            int frameRate = profiles.getDefaultVideoProfile().getFrameRate();
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                map2.put((Size) it.next(), Integer.valueOf(frameRate));
            }
        }
        return map2;
    }

    private void setCustomOrderedResolutions(UseCaseConfig.Builder builder, LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll((List) it.next());
        }
        Logger.m76d("VideoCapture", "Set custom ordered resolutions = " + arrayList);
        builder.getMutableConfig().insertOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS, arrayList);
        this.mQualityToCustomSizesMap = linkedHashMap;
    }

    private int getSessionType(VideoCaptureConfig videoCaptureConfig) {
        return videoCaptureConfig.getSessionType(0);
    }

    private Range getTargetFrameRate(VideoCaptureConfig videoCaptureConfig) {
        Range targetFrameRate = videoCaptureConfig.getTargetFrameRate(StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
        Objects.requireNonNull(targetFrameRate);
        return targetFrameRate;
    }

    private List getSupportedResolutions(CameraInfoInternal cameraInfoInternal, int i, Range range) {
        if (i == 1) {
            if (StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED.equals(range)) {
                return cameraInfoInternal.getSupportedHighSpeedResolutions();
            }
            return cameraInfoInternal.getSupportedHighSpeedResolutionsFor(range);
        }
        return cameraInfoInternal.getSupportedResolutions(getImageFormat());
    }

    private static LinkedHashMap filterOutEncoderUnsupportedResolutions(VideoEncoderInfo.Finder finder, MediaSpec mediaSpec, DynamicRange dynamicRange, EncoderProfilesResolver encoderProfilesResolver, LinkedHashMap linkedHashMap, Map map) {
        VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyFindNearestHigherSupportedEncoderProfilesFor;
        VideoEncoderInfo videoEncoderInfoFindLargestSupportedSizeVideoEncoderInfo;
        if (linkedHashMap.isEmpty()) {
            return new LinkedHashMap();
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            ArrayList arrayList = new ArrayList((Collection) entry.getValue());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Size size = (Size) it.next();
                if (!map.containsValue(size) && (videoValidatedEncoderProfilesProxyFindNearestHigherSupportedEncoderProfilesFor = encoderProfilesResolver.findNearestHigherSupportedEncoderProfilesFor(size, dynamicRange)) != null && (videoEncoderInfoFindLargestSupportedSizeVideoEncoderInfo = findLargestSupportedSizeVideoEncoderInfo(finder, videoValidatedEncoderProfilesProxyFindNearestHigherSupportedEncoderProfilesFor, dynamicRange, mediaSpec)) != null && !videoEncoderInfoFindLargestSupportedSizeVideoEncoderInfo.isSizeSupportedAllowSwapping(size.getWidth(), size.getHeight())) {
                    it.remove();
                }
            }
            if (!arrayList.isEmpty()) {
                linkedHashMap2.put((Quality) entry.getKey(), arrayList);
            }
        }
        return linkedHashMap2;
    }

    private static VideoEncoderInfo findLargestSupportedSizeVideoEncoderInfo(VideoEncoderInfo.Finder finder, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, DynamicRange dynamicRange, MediaSpec mediaSpec) {
        VideoEncoderInfo videoEncoderInfoResolveVideoEncoderInfo;
        int area;
        if (dynamicRange.isFullySpecified()) {
            return resolveVideoEncoderInfo(finder, videoValidatedEncoderProfilesProxy, mediaSpec, dynamicRange);
        }
        VideoEncoderInfo videoEncoderInfo = null;
        int i = Integer.MIN_VALUE;
        for (EncoderProfilesProxy.VideoProfileProxy videoProfileProxy : videoValidatedEncoderProfilesProxy.getVideoProfiles()) {
            if (DynamicRangeUtil.isHdrSettingsMatched(videoProfileProxy, dynamicRange) && (videoEncoderInfoResolveVideoEncoderInfo = resolveVideoEncoderInfo(finder, videoValidatedEncoderProfilesProxy, mediaSpec, new DynamicRange(DynamicRangeUtil.videoProfileHdrFormatsToDynamicRangeEncoding(videoProfileProxy.getHdrFormat()), DynamicRangeUtil.videoProfileBitDepthToDynamicRangeBitDepth(videoProfileProxy.getBitDepth())))) != null && (area = SizeUtil.getArea(((Integer) videoEncoderInfoResolveVideoEncoderInfo.getSupportedWidths().getUpper()).intValue(), ((Integer) videoEncoderInfoResolveVideoEncoderInfo.getSupportedHeights().getUpper()).intValue())) > i) {
                videoEncoderInfo = videoEncoderInfoResolveVideoEncoderInfo;
                i = area;
            }
        }
        return videoEncoderInfo;
    }

    private static Object fetchObservableValue(Observable observable, Object obj) {
        ListenableFuture listenableFutureFetchData = observable.fetchData();
        if (!listenableFutureFetchData.isDone()) {
            return obj;
        }
        try {
            return listenableFutureFetchData.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    void setSourceState(VideoOutput.SourceState sourceState) {
        if (sourceState != this.mSourceState) {
            this.mSourceState = sourceState;
            getOutput().onSourceStateChanged(sourceState);
        }
    }

    @Override // androidx.camera.core.UseCase
    public Set getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(2);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public Set getSupportedDynamicRanges(CameraInfoInternal cameraInfoInternal) {
        return getVideoCapabilities(cameraInfoInternal, 0).getSupportedDynamicRanges();
    }

    public static final class Builder implements UseCaseConfig.Builder, ImageOutputConfig.Builder {
        private final MutableOptionsBundle mMutableConfig;

        public Builder(VideoOutput videoOutput) {
            this(createInitialBundle(videoOutput));
        }

        private Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.mMutableConfig = mutableOptionsBundle;
            if (!mutableOptionsBundle.containsOption(VideoCaptureConfig.OPTION_VIDEO_OUTPUT)) {
                throw new IllegalArgumentException("VideoOutput is required");
            }
            Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
            if (cls != null && !cls.equals(VideoCapture.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            setCaptureType(UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE);
            setTargetClass(VideoCapture.class);
        }

        static Builder fromConfig(Config config) {
            return new Builder(MutableOptionsBundle.from(config));
        }

        private static MutableOptionsBundle createInitialBundle(VideoOutput videoOutput) {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            mutableOptionsBundleCreate.insertOption(VideoCaptureConfig.OPTION_VIDEO_OUTPUT, videoOutput);
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT, Boolean.valueOf(videoOutput.isQualitySelectorDefault()));
            return mutableOptionsBundleCreate;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableConfig getMutableConfig() {
            return this.mMutableConfig;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public VideoCaptureConfig getUseCaseConfig() {
            return new VideoCaptureConfig(OptionsBundle.from(this.mMutableConfig));
        }

        Builder setVideoEncoderInfoFinder(VideoEncoderInfo.Finder finder) {
            getMutableConfig().insertOption(VideoCaptureConfig.OPTION_VIDEO_ENCODER_INFO_FINDER, finder);
            return this;
        }

        public VideoCapture build() {
            return new VideoCapture(getUseCaseConfig());
        }

        public Builder setTargetClass(Class cls) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_CLASS, cls);
            if (getMutableConfig().retrieveOption(TargetConfig.OPTION_TARGET_NAME, null) == null) {
                setTargetName(cls.getCanonicalName() + "-" + UUID.randomUUID());
            }
            return this;
        }

        public Builder setTargetName(String str) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_NAME, str);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public Builder setTargetRotation(int i) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public Builder setTargetResolution(Size size) {
            throw new UnsupportedOperationException("setTargetResolution is not supported.");
        }

        public Builder setDynamicRange(DynamicRange dynamicRange) {
            getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRange);
            return this;
        }

        public Builder setSurfaceOccupancyPriority(int i) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(i));
            return this;
        }

        public Builder setCaptureType(UseCaseConfigFactory.CaptureType captureType) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, captureType);
            return this;
        }

        public Builder setStreamUseCase(StreamUseCase streamUseCase) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_STREAM_USE_CASE, streamUseCase);
            return this;
        }
    }
}
