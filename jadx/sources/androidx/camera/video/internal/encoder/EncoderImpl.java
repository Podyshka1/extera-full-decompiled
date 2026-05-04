package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Range;
import android.util.Rational;
import android.view.Surface;
import androidx.arch.core.util.Function;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.BufferProvider$State;
import androidx.camera.video.internal.DebugUtils;
import androidx.camera.video.internal.compat.quirk.AudioEncoderIgnoresInputTimestampQuirk;
import androidx.camera.video.internal.compat.quirk.CameraUseInconsistentTimebaseQuirk;
import androidx.camera.video.internal.compat.quirk.CodecStuckOnFlushQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.GLProcessingStuckOnCodecFlushQuirk;
import androidx.camera.video.internal.compat.quirk.PrematureEndOfStreamVideoQuirk;
import androidx.camera.video.internal.compat.quirk.PreviewFreezeAfterHighSpeedRecordingQuirk;
import androidx.camera.video.internal.compat.quirk.SignalEosOutputBufferNotComeQuirk;
import androidx.camera.video.internal.compat.quirk.StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;
import androidx.camera.video.internal.compat.quirk.VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.video.internal.utils.CodecUtil;
import androidx.camera.video.internal.workaround.VideoTimebaseConverter;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class EncoderImpl implements Encoder {
    private static final Range NO_RANGE = Range.create(Long.MAX_VALUE, Long.MAX_VALUE);
    private final Rational mCaptureToEncodeFrameRateRatio;
    private final boolean mCodecStopAsFlushWorkaroundEnabled;
    final Executor mEncoderExecutor;
    private final EncoderInfo mEncoderInfo;
    final Encoder.EncoderInput mEncoderInput;
    final Timebase mInputTimebase;
    final boolean mIsVideoEncoder;
    final MediaCodec mMediaCodec;
    final MediaFormat mMediaFormat;
    private final CallbackToFutureAdapter.Completer mReleasedCompleter;
    private final ListenableFuture mReleasedFuture;
    private Future mSignalEosTimeoutFuture;
    InternalState mState;
    final String mTag;
    final TimeProvider mTimeProvider;
    final Object mLock = new Object();
    final Queue mFreeInputBufferIndexQueue = new ArrayDeque();
    private final Queue mAcquisitionQueue = new ArrayDeque();
    private final Set mInputBufferSet = new HashSet();
    final Set mEncodedDataSet = new HashSet();
    final Deque mActivePauseResumeTimeRanges = new ArrayDeque();
    EncoderCallback mEncoderCallback = EncoderCallback.EMPTY;
    Executor mEncoderCallbackExecutor = CameraXExecutors.directExecutor();
    Range mStartStopTimeRangeUs = NO_RANGE;
    long mTotalPausedDurationUs = 0;
    boolean mPendingCodecStop = false;
    Long mLastDataStopTimestamp = null;
    Future mStopTimeoutFuture = null;
    private MediaCodecCallback mMediaCodecCallback = null;
    private boolean mIsFlushedAfterEndOfStream = false;
    private boolean mSourceStoppedSignalled = false;
    boolean mMediaCodecEosSignalled = false;

    enum InternalState {
        CONFIGURED,
        STARTED,
        PAUSED,
        STOPPING,
        PENDING_START,
        PENDING_START_PAUSED,
        PENDING_RELEASE,
        ERROR,
        RELEASED
    }

    public EncoderImpl(Executor executor, EncoderConfig encoderConfig, int i) throws InvalidConfigException {
        Preconditions.checkNotNull(executor);
        MediaCodec mediaCodecCreateCodec = CodecUtil.createCodec(encoderConfig);
        this.mMediaCodec = mediaCodecCreateCodec;
        MediaCodecInfo codecInfo = mediaCodecCreateCodec.getCodecInfo();
        this.mEncoderExecutor = CameraXExecutors.newSequentialExecutor(executor);
        MediaFormat mediaFormat = encoderConfig.toMediaFormat();
        this.mMediaFormat = mediaFormat;
        Timebase inputTimebase = encoderConfig.getInputTimebase();
        this.mInputTimebase = inputTimebase;
        this.mTimeProvider = transformTimeProvider(new SystemTimeProvider(), new Function() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return Long.valueOf(this.f$0.toPresentationTimeUsByCaptureEncodeRatio(((Long) obj).longValue()));
            }
        });
        if (encoderConfig instanceof AudioEncoderConfig) {
            AudioEncoderConfig audioEncoderConfig = (AudioEncoderConfig) encoderConfig;
            this.mTag = "AudioEncoder";
            this.mIsVideoEncoder = false;
            this.mEncoderInput = new ByteBufferInput();
            this.mEncoderInfo = new AudioEncoderInfoImpl(codecInfo, encoderConfig.getMimeType());
            this.mCaptureToEncodeFrameRateRatio = new Rational(audioEncoderConfig.getCaptureSampleRate(), audioEncoderConfig.getEncodeSampleRate());
        } else if (encoderConfig instanceof VideoEncoderConfig) {
            VideoEncoderConfig videoEncoderConfig = (VideoEncoderConfig) encoderConfig;
            this.mTag = "VideoEncoder";
            this.mIsVideoEncoder = true;
            this.mEncoderInput = new SurfaceInput();
            VideoEncoderInfoImpl videoEncoderInfoImpl = new VideoEncoderInfoImpl(codecInfo, encoderConfig.getMimeType());
            clampVideoBitrateIfNotSupported(videoEncoderInfoImpl, mediaFormat);
            this.mEncoderInfo = videoEncoderInfoImpl;
            this.mCaptureToEncodeFrameRateRatio = new Rational(videoEncoderConfig.getCaptureFrameRate(), videoEncoderConfig.getEncodeFrameRate());
        } else {
            throw new InvalidConfigException("Unknown encoder config type");
        }
        Logger.m76d(this.mTag, "mInputTimebase = " + inputTimebase);
        Logger.m76d(this.mTag, "mMediaFormat = " + mediaFormat);
        Logger.m76d(this.mTag, "mCaptureToEncodeFrameRateRatio = " + this.mCaptureToEncodeFrameRateRatio);
        try {
            reset();
            final AtomicReference atomicReference = new AtomicReference();
            this.mReleasedFuture = Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda1
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return EncoderImpl.m2029$r8$lambda$j3nvRHifiC8WGcMzrHUNIEf1Fo(atomicReference, completer);
                }
            }));
            this.mReleasedCompleter = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference.get());
            this.mCodecStopAsFlushWorkaroundEnabled = shouldEnableCodecStopAsFlushWorkaround(i);
            setState(InternalState.CONFIGURED);
        } catch (MediaCodec.CodecException e) {
            throw new InvalidConfigException(e);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$j3nvRHi-fiC8WGcMzrHUNIEf1Fo, reason: not valid java name */
    public static /* synthetic */ Object m2029$r8$lambda$j3nvRHifiC8WGcMzrHUNIEf1Fo(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return "mReleasedFuture";
    }

    private void clampVideoBitrateIfNotSupported(VideoEncoderInfo videoEncoderInfo, MediaFormat mediaFormat) {
        Preconditions.checkState(this.mIsVideoEncoder);
        if (mediaFormat.containsKey("bitrate")) {
            int integer = mediaFormat.getInteger("bitrate");
            int iIntValue = ((Integer) videoEncoderInfo.getSupportedBitrateRange().clamp(Integer.valueOf(integer))).intValue();
            if (integer != iIntValue) {
                mediaFormat.setInteger("bitrate", iIntValue);
                Logger.m76d(this.mTag, "updated bitrate from " + integer + " to " + iIntValue);
            }
        }
    }

    private void reset() {
        this.mStartStopTimeRangeUs = NO_RANGE;
        this.mTotalPausedDurationUs = 0L;
        this.mActivePauseResumeTimeRanges.clear();
        this.mFreeInputBufferIndexQueue.clear();
        Iterator it = this.mAcquisitionQueue.iterator();
        while (it.hasNext()) {
            ((CallbackToFutureAdapter.Completer) it.next()).setCancelled();
        }
        this.mAcquisitionQueue.clear();
        Logger.m76d(this.mTag, "mMediaCodec.reset()");
        this.mMediaCodec.reset();
        this.mIsFlushedAfterEndOfStream = false;
        this.mSourceStoppedSignalled = false;
        this.mMediaCodecEosSignalled = false;
        this.mPendingCodecStop = false;
        Future future = this.mStopTimeoutFuture;
        if (future != null) {
            future.cancel(true);
            this.mStopTimeoutFuture = null;
        }
        Future future2 = this.mSignalEosTimeoutFuture;
        if (future2 != null) {
            future2.cancel(false);
            this.mSignalEosTimeoutFuture = null;
        }
        MediaCodecCallback mediaCodecCallback = this.mMediaCodecCallback;
        if (mediaCodecCallback != null) {
            mediaCodecCallback.stop();
        }
        this.mMediaCodecCallback = new MediaCodecCallback();
        Logger.m76d(this.mTag, "mMediaCodec.setCallback()");
        this.mMediaCodec.setCallback(this.mMediaCodecCallback);
        Logger.m76d(this.mTag, "mMediaCodec.configure()");
        this.mMediaCodec.configure(this.mMediaFormat, (Surface) null, (MediaCrypto) null, 1);
        Encoder.EncoderInput encoderInput = this.mEncoderInput;
        if (encoderInput instanceof SurfaceInput) {
            ((SurfaceInput) encoderInput).resetSurface();
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public Encoder.EncoderInput getInput() {
        return this.mEncoderInput;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public EncoderInfo getEncoderInfo() {
        return this.mEncoderInfo;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public int getConfiguredBitrate() {
        if (this.mMediaFormat.containsKey("bitrate")) {
            return this.mMediaFormat.getInteger("bitrate");
        }
        return 0;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void start() {
        final long jGeneratePresentationTimeUs = generatePresentationTimeUs();
        this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.$r8$lambda$giZp5E6qnk6NuIcbSeUEZPvljUU(this.f$0, jGeneratePresentationTimeUs);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$giZp5E6qnk6NuIcbSeUEZPvljUU(EncoderImpl encoderImpl, long j) {
        switch (encoderImpl.mState) {
            case CONFIGURED:
                encoderImpl.mLastDataStopTimestamp = null;
                Logger.m76d(encoderImpl.mTag, "Start on " + DebugUtils.readableUs(j));
                try {
                    if (encoderImpl.mIsFlushedAfterEndOfStream) {
                        encoderImpl.reset();
                    }
                    encoderImpl.mStartStopTimeRangeUs = Range.create(Long.valueOf(j), Long.MAX_VALUE);
                    Logger.m76d(encoderImpl.mTag, "mMediaCodec.start()");
                    encoderImpl.mMediaCodec.start();
                    Encoder.EncoderInput encoderInput = encoderImpl.mEncoderInput;
                    if (encoderInput instanceof ByteBufferInput) {
                        ((ByteBufferInput) encoderInput).setActive(true);
                    }
                    encoderImpl.setState(InternalState.STARTED);
                    return;
                } catch (MediaCodec.CodecException e) {
                    encoderImpl.handleEncodeError(e);
                    return;
                }
            case STARTED:
            case PENDING_START:
            case ERROR:
                return;
            case PAUSED:
                encoderImpl.mLastDataStopTimestamp = null;
                Range range = (Range) encoderImpl.mActivePauseResumeTimeRanges.removeLast();
                Preconditions.checkState(range != null && ((Long) range.getUpper()).longValue() == Long.MAX_VALUE, "There should be a \"pause\" before \"resume\"");
                Long l = (Long) range.getLower();
                long jLongValue = l.longValue();
                encoderImpl.mActivePauseResumeTimeRanges.addLast(Range.create(l, Long.valueOf(j)));
                Logger.m76d(encoderImpl.mTag, "Resume on " + DebugUtils.readableUs(j) + "\nPaused duration = " + DebugUtils.readableUs(j - jLongValue));
                if ((encoderImpl.mIsVideoEncoder || DeviceQuirks.get(AudioEncoderIgnoresInputTimestampQuirk.class) == null) && (!encoderImpl.mIsVideoEncoder || DeviceQuirks.get(VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.class) == null)) {
                    encoderImpl.setMediaCodecPaused(false);
                    Encoder.EncoderInput encoderInput2 = encoderImpl.mEncoderInput;
                    if (encoderInput2 instanceof ByteBufferInput) {
                        ((ByteBufferInput) encoderInput2).setActive(true);
                    }
                }
                if (encoderImpl.mIsVideoEncoder) {
                    encoderImpl.requestKeyFrameToMediaCodec();
                }
                encoderImpl.setState(InternalState.STARTED);
                return;
            case STOPPING:
            case PENDING_START_PAUSED:
                encoderImpl.setState(InternalState.PENDING_START);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                throw new IllegalStateException("Encoder is released");
            default:
                throw new IllegalStateException("Unknown state: " + encoderImpl.mState);
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void stop(final long j) {
        final long jGeneratePresentationTimeUs = generatePresentationTimeUs();
        this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.$r8$lambda$ctnm0AOBMzGsIADkGpYO2kdHotE(this.f$0, j, jGeneratePresentationTimeUs);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ctnm0AOBMzGsIADkGpYO2kdHotE(final EncoderImpl encoderImpl, long j, long j2) {
        switch (encoderImpl.mState) {
            case CONFIGURED:
            case STOPPING:
            case ERROR:
                return;
            case STARTED:
            case PAUSED:
                InternalState internalState = encoderImpl.mState;
                encoderImpl.setState(InternalState.STOPPING);
                Long l = (Long) encoderImpl.mStartStopTimeRangeUs.getLower();
                long jLongValue = l.longValue();
                if (jLongValue == Long.MAX_VALUE) {
                    throw new AssertionError("There should be a \"start\" before \"stop\"");
                }
                if (j == -1) {
                    j = j2;
                } else if (j < jLongValue) {
                    Logger.m81w(encoderImpl.mTag, "The expected stop time is less than the start time. Use current time as stop time.");
                    j = j2;
                }
                if (j < jLongValue) {
                    throw new AssertionError("The start time should be before the stop time.");
                }
                encoderImpl.mStartStopTimeRangeUs = Range.create(l, Long.valueOf(j));
                Logger.m76d(encoderImpl.mTag, "Stop on " + DebugUtils.readableUs(j));
                if (internalState == InternalState.PAUSED && encoderImpl.mLastDataStopTimestamp != null) {
                    encoderImpl.signalCodecStop();
                    return;
                } else {
                    encoderImpl.mPendingCodecStop = true;
                    encoderImpl.mStopTimeoutFuture = CameraXExecutors.mainThreadExecutor().schedule(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            EncoderImpl encoderImpl2 = this.f$0;
                            encoderImpl2.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    EncoderImpl.m2026$r8$lambda$1CT8kNBwzZL6hmSExy2el3dOE8(this.f$0);
                                }
                            });
                        }
                    }, 1000L, TimeUnit.MILLISECONDS);
                    return;
                }
            case PENDING_START:
            case PENDING_START_PAUSED:
                encoderImpl.setState(InternalState.CONFIGURED);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                throw new IllegalStateException("Encoder is released");
            default:
                throw new IllegalStateException("Unknown state: " + encoderImpl.mState);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$1CT8kNBwzZL6hmSExy2el3dO-E8, reason: not valid java name */
    public static /* synthetic */ void m2026$r8$lambda$1CT8kNBwzZL6hmSExy2el3dOE8(EncoderImpl encoderImpl) {
        if (encoderImpl.mPendingCodecStop) {
            Logger.m81w(encoderImpl.mTag, "The data didn't reach the expected timestamp before timeout, stop the codec.");
            encoderImpl.mLastDataStopTimestamp = null;
            encoderImpl.signalCodecStop();
            encoderImpl.mPendingCodecStop = false;
        }
    }

    void signalCodecStop() {
        Logger.m76d(this.mTag, "signalCodecStop");
        Encoder.EncoderInput encoderInput = this.mEncoderInput;
        if (encoderInput instanceof ByteBufferInput) {
            ((ByteBufferInput) encoderInput).setActive(false);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.mInputBufferSet.iterator();
            while (it.hasNext()) {
                arrayList.add(((InputBuffer) it.next()).getTerminationFuture());
            }
            Futures.successfulAsList(arrayList).addListener(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.signalEndOfInputStream();
                }
            }, this.mEncoderExecutor);
            return;
        }
        if (encoderInput instanceof SurfaceInput) {
            try {
                addSignalEosTimeoutIfNeeded();
                Logger.m76d(this.mTag, "mMediaCodec.signalEndOfInputStream()");
                this.mMediaCodec.signalEndOfInputStream();
                this.mMediaCodecEosSignalled = true;
            } catch (MediaCodec.CodecException e) {
                handleEncodeError(e);
            }
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void pause() {
        final long jGeneratePresentationTimeUs = generatePresentationTimeUs();
        this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.$r8$lambda$KqEgKl7SLk0RDZHikjqJ2FcWJFw(this.f$0, jGeneratePresentationTimeUs);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$KqEgKl7SLk0RDZHikjqJ2FcWJFw(EncoderImpl encoderImpl, long j) {
        switch (encoderImpl.mState) {
            case CONFIGURED:
            case PAUSED:
            case STOPPING:
            case PENDING_START_PAUSED:
            case ERROR:
                return;
            case STARTED:
                Logger.m76d(encoderImpl.mTag, "Pause on " + DebugUtils.readableUs(j));
                encoderImpl.mActivePauseResumeTimeRanges.addLast(Range.create(Long.valueOf(j), Long.MAX_VALUE));
                encoderImpl.setState(InternalState.PAUSED);
                return;
            case PENDING_START:
                encoderImpl.setState(InternalState.PENDING_START_PAUSED);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                throw new IllegalStateException("Encoder is released");
            default:
                throw new IllegalStateException("Unknown state: " + encoderImpl.mState);
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void release() {
        this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.m2030$r8$lambda$tMYs0I6dJaa0GXaRHdf25dEVUg(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$tMYs-0I6dJaa0GXaRHdf25dEVUg, reason: not valid java name */
    public static /* synthetic */ void m2030$r8$lambda$tMYs0I6dJaa0GXaRHdf25dEVUg(EncoderImpl encoderImpl) {
        switch (encoderImpl.mState) {
            case CONFIGURED:
            case STARTED:
            case PAUSED:
            case ERROR:
                encoderImpl.releaseInternal();
                return;
            case STOPPING:
            case PENDING_START:
            case PENDING_START_PAUSED:
                encoderImpl.setState(InternalState.PENDING_RELEASE);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                return;
            default:
                throw new IllegalStateException("Unknown state: " + encoderImpl.mState);
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public ListenableFuture getReleasedFuture() {
        return this.mReleasedFuture;
    }

    public void signalSourceStopped() {
        Logger.m76d(this.mTag, "signalSourceStopped");
        this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.$r8$lambda$TA_Uck_KDFEEp32gjVO0CTcg8eI(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$TA_Uck_KDFEEp32gjVO0CTcg8eI(EncoderImpl encoderImpl) {
        encoderImpl.mSourceStoppedSignalled = true;
        if (encoderImpl.mIsFlushedAfterEndOfStream) {
            if (!encoderImpl.mCodecStopAsFlushWorkaroundEnabled) {
                Logger.m76d(encoderImpl.mTag, "mMediaCodec.stop()");
                encoderImpl.mMediaCodec.stop();
            }
            encoderImpl.reset();
        }
    }

    private void releaseInternal() {
        Logger.m76d(this.mTag, "releaseInternal");
        if (this.mIsFlushedAfterEndOfStream) {
            if (!this.mCodecStopAsFlushWorkaroundEnabled) {
                Logger.m76d(this.mTag, "mMediaCodec.stop()");
                this.mMediaCodec.stop();
            }
            this.mIsFlushedAfterEndOfStream = false;
        }
        Logger.m76d(this.mTag, "mMediaCodec.release()");
        this.mMediaCodec.release();
        Encoder.EncoderInput encoderInput = this.mEncoderInput;
        if (encoderInput instanceof SurfaceInput) {
            ((SurfaceInput) encoderInput).releaseSurface();
        }
        setState(InternalState.RELEASED);
        this.mReleasedCompleter.set(null);
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void setEncoderCallback(EncoderCallback encoderCallback, Executor executor) {
        synchronized (this.mLock) {
            this.mEncoderCallback = encoderCallback;
            this.mEncoderCallbackExecutor = executor;
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void requestKeyFrame() {
        this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.m2027$r8$lambda$DZmIhTRSTd3REJUImQtBd0KnWQ(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$DZmIhTRSTd3REJ-UImQtBd0KnWQ, reason: not valid java name */
    public static /* synthetic */ void m2027$r8$lambda$DZmIhTRSTd3REJUImQtBd0KnWQ(EncoderImpl encoderImpl) {
        int iOrdinal = encoderImpl.mState.ordinal();
        if (iOrdinal == 1) {
            encoderImpl.requestKeyFrameToMediaCodec();
        } else if (iOrdinal == 6 || iOrdinal == 8) {
            throw new IllegalStateException("Encoder is released");
        }
    }

    private void setState(InternalState internalState) {
        if (this.mState == internalState) {
            return;
        }
        Logger.m76d(this.mTag, "Transitioning encoder internal state: " + this.mState + " --> " + internalState);
        this.mState = internalState;
    }

    void setMediaCodecPaused(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putInt("drop-input-frames", z ? 1 : 0);
        Logger.m76d(this.mTag, "mMediaCodec.setParameters - setMediaCodecPaused: " + z);
        this.mMediaCodec.setParameters(bundle);
    }

    void requestKeyFrameToMediaCodec() {
        Bundle bundle = new Bundle();
        bundle.putInt("request-sync", 0);
        Logger.m76d(this.mTag, "mMediaCodec.setParameters - requestKeyFrameToMediaCodec");
        this.mMediaCodec.setParameters(bundle);
    }

    private void addSignalEosTimeoutIfNeeded() {
        if (DeviceQuirks.get(SignalEosOutputBufferNotComeQuirk.class) != null) {
            final MediaCodecCallback mediaCodecCallback = this.mMediaCodecCallback;
            final Executor executor = this.mEncoderExecutor;
            Future future = this.mSignalEosTimeoutFuture;
            if (future != null) {
                future.cancel(false);
            }
            this.mSignalEosTimeoutFuture = CameraXExecutors.mainThreadExecutor().schedule(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.$r8$lambda$LLJGvWnRmbK1bwsrsGQJaZhPpYk(executor, mediaCodecCallback);
                }
            }, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    public static /* synthetic */ void $r8$lambda$LLJGvWnRmbK1bwsrsGQJaZhPpYk(Executor executor, final MediaCodecCallback mediaCodecCallback) {
        Objects.requireNonNull(mediaCodecCallback);
        executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                mediaCodecCallback.reachEndData();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signalEndOfInputStream() {
        Logger.m76d(this.mTag, "signalEndOfInputStream");
        Futures.addCallback(acquireInputBuffer(), new FutureCallback() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(InputBuffer inputBuffer) {
                inputBuffer.setPresentationTimeUs(EncoderImpl.this.generatePresentationTimeUs());
                inputBuffer.setEndOfStream(true);
                inputBuffer.submit();
                Futures.addCallback(inputBuffer.getTerminationFuture(), new FutureCallback() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.1.1
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(Void r1) {
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(Throwable th) {
                        if (th instanceof MediaCodec.CodecException) {
                            EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                        } else {
                            EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                        }
                    }
                }, EncoderImpl.this.mEncoderExecutor);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                EncoderImpl.this.handleEncodeError(0, "Unable to acquire InputBuffer.", th);
            }
        }, this.mEncoderExecutor);
    }

    void handleEncodeError(MediaCodec.CodecException codecException) {
        handleEncodeError(1, codecException.getMessage(), codecException);
    }

    void handleEncodeError(final int i, final String str, final Throwable th) {
        switch (this.mState) {
            case CONFIGURED:
                notifyError(i, str, th);
                reset();
                break;
            case STARTED:
            case PAUSED:
            case STOPPING:
            case PENDING_START:
            case PENDING_START_PAUSED:
            case PENDING_RELEASE:
                setState(InternalState.ERROR);
                stopMediaCodec(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.notifyError(i, str, th);
                    }
                });
                break;
            case ERROR:
                Logger.m82w(this.mTag, "Get more than one error: " + str + "(" + i + ")", th);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyError(final int i, final String str, final Throwable th) {
        final EncoderCallback encoderCallback;
        Executor executor;
        synchronized (this.mLock) {
            encoderCallback = this.mEncoderCallback;
            executor = this.mEncoderCallbackExecutor;
        }
        try {
            executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    encoderCallback.onEncodeError(new EncodeException(i, str, th));
                }
            });
        } catch (RejectedExecutionException e) {
            Logger.m79e(this.mTag, "Unable to post to the supplied executor.", e);
        }
    }

    void stopMediaCodec(final Runnable runnable) {
        Logger.m76d(this.mTag, "stopMediaCodec");
        final ArrayList arrayList = new ArrayList();
        Iterator it = this.mEncodedDataSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((EncodedDataImpl) it.next()).getClosedFuture());
        }
        Iterator it2 = this.mInputBufferSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(((InputBuffer) it2.next()).getTerminationFuture());
        }
        if (!arrayList.isEmpty()) {
            Logger.m76d(this.mTag, "Waiting for resources to return. encoded data = " + this.mEncodedDataSet.size() + ", input buffers = " + this.mInputBufferSet.size());
        }
        Futures.successfulAsList(arrayList).addListener(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.$r8$lambda$rfdDuylEd9pH4FepgHgpKP8YxGQ(this.f$0, arrayList, runnable);
            }
        }, this.mEncoderExecutor);
    }

    public static /* synthetic */ void $r8$lambda$rfdDuylEd9pH4FepgHgpKP8YxGQ(EncoderImpl encoderImpl, List list, Runnable runnable) {
        if (encoderImpl.mState != InternalState.ERROR) {
            if (!list.isEmpty()) {
                Logger.m76d(encoderImpl.mTag, "encoded data and input buffers are returned");
            }
            if ((encoderImpl.mEncoderInput instanceof SurfaceInput) && !encoderImpl.mSourceStoppedSignalled && !encoderImpl.hasStopCodecAfterSurfaceRemovalCrashMediaServerQuirk()) {
                if (encoderImpl.mCodecStopAsFlushWorkaroundEnabled) {
                    Logger.m76d(encoderImpl.mTag, "mMediaCodec.stop()");
                    encoderImpl.mMediaCodec.stop();
                } else {
                    Logger.m76d(encoderImpl.mTag, "mMediaCodec.flush()");
                    encoderImpl.mMediaCodec.flush();
                }
                encoderImpl.mIsFlushedAfterEndOfStream = true;
            } else {
                Logger.m76d(encoderImpl.mTag, "mMediaCodec.stop()");
                encoderImpl.mMediaCodec.stop();
            }
        }
        if (runnable != null) {
            runnable.run();
        }
        encoderImpl.handleStopped();
    }

    void handleStopped() {
        InternalState internalState = this.mState;
        if (internalState == InternalState.PENDING_RELEASE) {
            releaseInternal();
            return;
        }
        if (!this.mIsFlushedAfterEndOfStream) {
            reset();
        }
        setState(InternalState.CONFIGURED);
        if (internalState == InternalState.PENDING_START || internalState == InternalState.PENDING_START_PAUSED) {
            start();
            if (internalState == InternalState.PENDING_START_PAUSED) {
                pause();
            }
        }
    }

    void updateTotalPausedDuration(long j) {
        while (!this.mActivePauseResumeTimeRanges.isEmpty()) {
            Range range = (Range) this.mActivePauseResumeTimeRanges.getFirst();
            if (j <= ((Long) range.getUpper()).longValue()) {
                return;
            }
            this.mActivePauseResumeTimeRanges.removeFirst();
            this.mTotalPausedDurationUs += ((Long) range.getUpper()).longValue() - ((Long) range.getLower()).longValue();
            Logger.m76d(this.mTag, "Total paused duration = " + DebugUtils.readableUs(this.mTotalPausedDurationUs));
        }
    }

    long getAdjustedTimeUs(MediaCodec.BufferInfo bufferInfo) {
        long j = this.mTotalPausedDurationUs;
        if (j > 0) {
            return bufferInfo.presentationTimeUs - j;
        }
        return bufferInfo.presentationTimeUs;
    }

    boolean isInPauseRange(long j) {
        for (Range range : this.mActivePauseResumeTimeRanges) {
            if (range.contains(Long.valueOf(j))) {
                return true;
            }
            if (j < ((Long) range.getLower()).longValue()) {
                break;
            }
        }
        return false;
    }

    ListenableFuture acquireInputBuffer() {
        switch (this.mState) {
            case CONFIGURED:
                return Futures.immediateFailedFuture(new IllegalStateException("Encoder is not started yet."));
            case STARTED:
            case PAUSED:
            case STOPPING:
            case PENDING_START:
            case PENDING_START_PAUSED:
            case PENDING_RELEASE:
                final AtomicReference atomicReference = new AtomicReference();
                ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda15
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        return EncoderImpl.$r8$lambda$waBOpfp_45FILimuGfQ2zKaxrSc(atomicReference, completer);
                    }
                });
                final CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference.get());
                this.mAcquisitionQueue.offer(completer);
                completer.addCancellationListener(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.mAcquisitionQueue.remove(completer);
                    }
                }, this.mEncoderExecutor);
                matchAcquisitionsAndFreeBufferIndexes();
                return future;
            case ERROR:
                return Futures.immediateFailedFuture(new IllegalStateException("Encoder is in error state."));
            case RELEASED:
                return Futures.immediateFailedFuture(new IllegalStateException("Encoder is released."));
            default:
                throw new IllegalStateException("Unknown state: " + this.mState);
        }
    }

    public static /* synthetic */ Object $r8$lambda$waBOpfp_45FILimuGfQ2zKaxrSc(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return "acquireInputBuffer";
    }

    void matchAcquisitionsAndFreeBufferIndexes() {
        while (!this.mAcquisitionQueue.isEmpty() && !this.mFreeInputBufferIndexQueue.isEmpty()) {
            CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) this.mAcquisitionQueue.poll();
            Objects.requireNonNull(completer);
            Integer num = (Integer) this.mFreeInputBufferIndexQueue.poll();
            Objects.requireNonNull(num);
            try {
                final InputBufferImpl inputBufferImpl = new InputBufferImpl(this.mMediaCodec, num.intValue()) { // from class: androidx.camera.video.internal.encoder.EncoderImpl.2
                    @Override // androidx.camera.video.internal.encoder.InputBufferImpl, androidx.camera.video.internal.encoder.InputBuffer
                    public void setPresentationTimeUs(long j) {
                        EncoderImpl encoderImpl = EncoderImpl.this;
                        if (!encoderImpl.mIsVideoEncoder) {
                            j = encoderImpl.toPresentationTimeUsByCaptureEncodeRatio(j);
                        }
                        super.setPresentationTimeUs(j);
                    }
                };
                if (completer.set(inputBufferImpl)) {
                    this.mInputBufferSet.add(inputBufferImpl);
                    inputBufferImpl.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.mInputBufferSet.remove(inputBufferImpl);
                        }
                    }, this.mEncoderExecutor);
                } else {
                    inputBufferImpl.cancel();
                }
            } catch (MediaCodec.CodecException e) {
                handleEncodeError(e);
                return;
            }
        }
    }

    long generatePresentationTimeUs() {
        return this.mTimeProvider.uptimeUs();
    }

    static boolean isKeyFrame(MediaCodec.BufferInfo bufferInfo) {
        return (bufferInfo.flags & 1) != 0;
    }

    static boolean hasEndOfStreamFlag(MediaCodec.BufferInfo bufferInfo) {
        return (bufferInfo.flags & 4) != 0;
    }

    private boolean hasStopCodecAfterSurfaceRemovalCrashMediaServerQuirk() {
        return DeviceQuirks.get(StopCodecAfterSurfaceRemovalCrashMediaServerQuirk.class) != null;
    }

    private boolean shouldEnableCodecStopAsFlushWorkaround(int i) {
        if (this.mIsVideoEncoder) {
            return (i == 1 && DeviceQuirks.get(PreviewFreezeAfterHighSpeedRecordingQuirk.class) != null) || DeviceQuirks.get(GLProcessingStuckOnCodecFlushQuirk.class) != null;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long toPresentationTimeUsByCaptureEncodeRatio(long j) {
        return isSlowMotion() ? Math.round(j * this.mCaptureToEncodeFrameRateRatio.doubleValue()) : j;
    }

    private static TimeProvider transformTimeProvider(final TimeProvider timeProvider, final Function function) {
        return new TimeProvider() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.3
            @Override // androidx.camera.video.internal.encoder.TimeProvider
            public long uptimeUs() {
                return ((Long) function.apply(Long.valueOf(timeProvider.uptimeUs()))).longValue();
            }

            @Override // androidx.camera.video.internal.encoder.TimeProvider
            public long realtimeUs() {
                return ((Long) function.apply(Long.valueOf(timeProvider.realtimeUs()))).longValue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSlowMotion() {
        return !isRationalOne(this.mCaptureToEncodeFrameRateRatio);
    }

    private static boolean isRationalOne(Rational rational) {
        return rational != null && rational.getDenominator() == rational.getNumerator();
    }

    class MediaCodecCallback extends MediaCodec.Callback {
        private boolean mIsFirstVideoOutput;
        private boolean mReachStopTimeAsEos;
        private final VideoTimebaseConverter mVideoTimestampConverter;
        private boolean mHasSendStartCallback = false;
        private boolean mHasFirstData = false;
        private boolean mHasEndData = false;
        private long mLastPresentationTimeUs = 0;
        private long mLastSentAdjustedTimeUs = 0;
        private boolean mIsOutputBufferInPauseState = false;
        private boolean mIsKeyFrameRequired = false;
        private boolean mStopped = false;

        MediaCodecCallback() {
            this.mReachStopTimeAsEos = true;
            boolean z = EncoderImpl.this.mIsVideoEncoder;
            this.mIsFirstVideoOutput = z;
            if (z) {
                this.mVideoTimestampConverter = new VideoTimebaseConverter(EncoderImpl.this.mTimeProvider, EncoderImpl.this.mInputTimebase, (CameraUseInconsistentTimebaseQuirk) DeviceQuirks.get(CameraUseInconsistentTimebaseQuirk.class));
            } else {
                this.mVideoTimestampConverter = null;
            }
            CodecStuckOnFlushQuirk codecStuckOnFlushQuirk = (CodecStuckOnFlushQuirk) DeviceQuirks.get(CodecStuckOnFlushQuirk.class);
            if (codecStuckOnFlushQuirk == null || !codecStuckOnFlushQuirk.isProblematicMimeType(EncoderImpl.this.mMediaFormat.getString("mime"))) {
                return;
            }
            this.mReachStopTimeAsEos = false;
        }

        @Override // android.media.MediaCodec.Callback
        public void onInputBufferAvailable(MediaCodec mediaCodec, final int i) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback.m2037$r8$lambda$axjn_XTlqBgos48OkXRAOGCpAw(this.f$0, i);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$axjn_XTlq-Bgos48OkXRAOGCpAw, reason: not valid java name */
        public static /* synthetic */ void m2037$r8$lambda$axjn_XTlqBgos48OkXRAOGCpAw(MediaCodecCallback mediaCodecCallback, int i) {
            if (mediaCodecCallback.mStopped) {
                Logger.m81w(EncoderImpl.this.mTag, "Receives input frame after codec is reset.");
                return;
            }
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    EncoderImpl.this.mFreeInputBufferIndexQueue.offer(Integer.valueOf(i));
                    EncoderImpl.this.matchAcquisitionsAndFreeBufferIndexes();
                    return;
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputBufferAvailable(final MediaCodec mediaCodec, final int i, final MediaCodec.BufferInfo bufferInfo) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback.$r8$lambda$R_Ww90C2_Mkhwckz2nzNccBz5wQ(this.f$0, bufferInfo, mediaCodec, i);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$R_Ww90C2_Mkhwckz2nzNccBz5wQ(MediaCodecCallback mediaCodecCallback, MediaCodec.BufferInfo bufferInfo, MediaCodec mediaCodec, int i) {
            EncoderImpl encoderImpl;
            final EncoderCallback encoderCallback;
            Executor executor;
            if (mediaCodecCallback.mStopped) {
                Logger.m81w(EncoderImpl.this.mTag, "Receives frame after codec is reset.");
                return;
            }
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    synchronized (EncoderImpl.this.mLock) {
                        encoderImpl = EncoderImpl.this;
                        encoderCallback = encoderImpl.mEncoderCallback;
                        executor = encoderImpl.mEncoderCallbackExecutor;
                        break;
                    }
                    if (Build.VERSION.SDK_INT < 30 && encoderImpl.mIsVideoEncoder && encoderImpl.isSlowMotion()) {
                        bufferInfo.presentationTimeUs = EncoderImpl.this.toPresentationTimeUsByCaptureEncodeRatio(bufferInfo.presentationTimeUs);
                    }
                    if (!mediaCodecCallback.mHasSendStartCallback) {
                        mediaCodecCallback.mHasSendStartCallback = true;
                        try {
                            Objects.requireNonNull(encoderCallback);
                            executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    encoderCallback.onEncodeStart();
                                }
                            });
                        } catch (RejectedExecutionException e) {
                            Logger.m79e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                        }
                        break;
                    }
                    if (mediaCodecCallback.checkBufferInfo(bufferInfo)) {
                        if (!mediaCodecCallback.mHasFirstData) {
                            mediaCodecCallback.mHasFirstData = true;
                            Logger.m76d(EncoderImpl.this.mTag, "data timestampUs = " + bufferInfo.presentationTimeUs + ", data timebase = " + EncoderImpl.this.mInputTimebase + ", current system uptimeMs = " + SystemClock.uptimeMillis() + ", current system realtimeMs = " + SystemClock.elapsedRealtime());
                        }
                        MediaCodec.BufferInfo bufferInfoResolveOutputBufferInfo = mediaCodecCallback.resolveOutputBufferInfo(bufferInfo);
                        mediaCodecCallback.mLastSentAdjustedTimeUs = bufferInfoResolveOutputBufferInfo.presentationTimeUs;
                        try {
                            mediaCodecCallback.sendEncodedData(new EncodedDataImpl(mediaCodec, i, bufferInfoResolveOutputBufferInfo), encoderCallback, executor);
                        } catch (MediaCodec.CodecException e2) {
                            EncoderImpl.this.handleEncodeError(e2);
                            return;
                        }
                        break;
                    } else {
                        try {
                            EncoderImpl.this.mMediaCodec.releaseOutputBuffer(i, false);
                        } catch (MediaCodec.CodecException e3) {
                            EncoderImpl.this.handleEncodeError(e3);
                            return;
                        }
                        break;
                    }
                    if (!mediaCodecCallback.mHasEndData && mediaCodecCallback.isEndOfStream(bufferInfo)) {
                        mediaCodecCallback.reachEndData();
                    }
                    if (mediaCodecCallback.mIsFirstVideoOutput) {
                        mediaCodecCallback.mIsFirstVideoOutput = false;
                        return;
                    }
                    return;
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        void reachEndData() {
            EncoderImpl encoderImpl;
            final EncoderCallback encoderCallback;
            final Executor executor;
            Logger.m76d(EncoderImpl.this.mTag, "reachEndData");
            if (this.mHasEndData) {
                return;
            }
            this.mHasEndData = true;
            if (EncoderImpl.this.mSignalEosTimeoutFuture != null) {
                EncoderImpl.this.mSignalEosTimeoutFuture.cancel(false);
                EncoderImpl.this.mSignalEosTimeoutFuture = null;
            }
            synchronized (EncoderImpl.this.mLock) {
                encoderImpl = EncoderImpl.this;
                encoderCallback = encoderImpl.mEncoderCallback;
                executor = encoderImpl.mEncoderCallbackExecutor;
            }
            encoderImpl.stopMediaCodec(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback.$r8$lambda$2wKtJPZqhybYOqZCZkJLM12EMXU(this.f$0, executor, encoderCallback);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$2wKtJPZqhybYOqZCZkJLM12EMXU(MediaCodecCallback mediaCodecCallback, Executor executor, final EncoderCallback encoderCallback) {
            if (EncoderImpl.this.mState == InternalState.ERROR) {
                return;
            }
            try {
                Objects.requireNonNull(encoderCallback);
                executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        encoderCallback.onEncodeStop();
                    }
                });
            } catch (RejectedExecutionException e) {
                Logger.m79e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
            }
        }

        private MediaCodec.BufferInfo resolveOutputBufferInfo(MediaCodec.BufferInfo bufferInfo) {
            long adjustedTimeUs = EncoderImpl.this.getAdjustedTimeUs(bufferInfo);
            if (bufferInfo.presentationTimeUs == adjustedTimeUs) {
                return bufferInfo;
            }
            Preconditions.checkState(adjustedTimeUs > this.mLastSentAdjustedTimeUs);
            MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
            bufferInfo2.set(bufferInfo.offset, bufferInfo.size, adjustedTimeUs, bufferInfo.flags);
            return bufferInfo2;
        }

        private void sendEncodedData(final EncodedDataImpl encodedDataImpl, final EncoderCallback encoderCallback, Executor executor) {
            EncoderImpl.this.mEncodedDataSet.add(encodedDataImpl);
            Futures.addCallback(encodedDataImpl.getClosedFuture(), new FutureCallback() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.MediaCodecCallback.1
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(Void r2) {
                    EncoderImpl.this.mEncodedDataSet.remove(encodedDataImpl);
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(Throwable th) {
                    EncoderImpl.this.mEncodedDataSet.remove(encodedDataImpl);
                    if (th instanceof MediaCodec.CodecException) {
                        EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                    } else {
                        EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                    }
                }
            }, EncoderImpl.this.mEncoderExecutor);
            try {
                executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        encoderCallback.onEncodedData(encodedDataImpl);
                    }
                });
            } catch (RejectedExecutionException e) {
                Logger.m79e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                encodedDataImpl.close();
            }
        }

        private boolean checkBufferInfo(MediaCodec.BufferInfo bufferInfo) {
            if (this.mHasEndData) {
                Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by already reach end of stream.");
                return false;
            }
            if (bufferInfo.size <= 0) {
                Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by invalid buffer size.");
                return false;
            }
            if ((bufferInfo.flags & 2) != 0) {
                Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by codec config.");
                return false;
            }
            VideoTimebaseConverter videoTimebaseConverter = this.mVideoTimestampConverter;
            if (videoTimebaseConverter != null) {
                bufferInfo.presentationTimeUs = videoTimebaseConverter.convertToUptimeUs(bufferInfo.presentationTimeUs);
            }
            long j = bufferInfo.presentationTimeUs;
            if (j <= this.mLastPresentationTimeUs) {
                Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by out of order buffer from MediaCodec.");
                return false;
            }
            this.mLastPresentationTimeUs = j;
            if (!EncoderImpl.this.mStartStopTimeRangeUs.contains(Long.valueOf(j))) {
                Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by not in start-stop range.");
                EncoderImpl encoderImpl = EncoderImpl.this;
                if (encoderImpl.mPendingCodecStop && bufferInfo.presentationTimeUs >= ((Long) encoderImpl.mStartStopTimeRangeUs.getUpper()).longValue()) {
                    Future future = EncoderImpl.this.mStopTimeoutFuture;
                    if (future != null) {
                        future.cancel(true);
                    }
                    EncoderImpl.this.mLastDataStopTimestamp = Long.valueOf(bufferInfo.presentationTimeUs);
                    EncoderImpl.this.signalCodecStop();
                    EncoderImpl.this.mPendingCodecStop = false;
                }
                return false;
            }
            if (updatePauseRangeStateAndCheckIfBufferPaused(bufferInfo)) {
                Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by pause.");
                return false;
            }
            if (EncoderImpl.this.getAdjustedTimeUs(bufferInfo) <= this.mLastSentAdjustedTimeUs) {
                Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by adjusted time is less than the last sent time.");
                if (EncoderImpl.this.mIsVideoEncoder && EncoderImpl.isKeyFrame(bufferInfo)) {
                    this.mIsKeyFrameRequired = true;
                }
                return false;
            }
            if (!this.mHasFirstData && !this.mIsKeyFrameRequired && EncoderImpl.this.mIsVideoEncoder) {
                this.mIsKeyFrameRequired = true;
            }
            if (this.mIsKeyFrameRequired) {
                if (!EncoderImpl.isKeyFrame(bufferInfo)) {
                    Logger.m76d(EncoderImpl.this.mTag, "Drop buffer by not a key frame.");
                    EncoderImpl.this.requestKeyFrameToMediaCodec();
                    return false;
                }
                this.mIsKeyFrameRequired = false;
            }
            return true;
        }

        private boolean isEndOfStream(MediaCodec.BufferInfo bufferInfo) {
            if (!EncoderImpl.hasEndOfStreamFlag(bufferInfo) || shouldSkipPrematureEos()) {
                return this.mReachStopTimeAsEos && isEosSignalledAndStopTimeReached(bufferInfo);
            }
            return true;
        }

        private boolean shouldSkipPrematureEos() {
            return this.mIsFirstVideoOutput && DeviceQuirks.get(PrematureEndOfStreamVideoQuirk.class) != null;
        }

        private boolean isEosSignalledAndStopTimeReached(MediaCodec.BufferInfo bufferInfo) {
            EncoderImpl encoderImpl = EncoderImpl.this;
            return encoderImpl.mMediaCodecEosSignalled && bufferInfo.presentationTimeUs > ((Long) encoderImpl.mStartStopTimeRangeUs.getUpper()).longValue();
        }

        private boolean updatePauseRangeStateAndCheckIfBufferPaused(MediaCodec.BufferInfo bufferInfo) {
            Executor executor;
            final EncoderCallback encoderCallback;
            EncoderImpl.this.updateTotalPausedDuration(bufferInfo.presentationTimeUs);
            boolean zIsInPauseRange = EncoderImpl.this.isInPauseRange(bufferInfo.presentationTimeUs);
            boolean z = this.mIsOutputBufferInPauseState;
            if (!z && zIsInPauseRange) {
                Logger.m76d(EncoderImpl.this.mTag, "Switch to pause state");
                this.mIsOutputBufferInPauseState = true;
                synchronized (EncoderImpl.this.mLock) {
                    EncoderImpl encoderImpl = EncoderImpl.this;
                    executor = encoderImpl.mEncoderCallbackExecutor;
                    encoderCallback = encoderImpl.mEncoderCallback;
                }
                Objects.requireNonNull(encoderCallback);
                executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        encoderCallback.onEncodePaused();
                    }
                });
                EncoderImpl encoderImpl2 = EncoderImpl.this;
                if (encoderImpl2.mState == InternalState.PAUSED && ((encoderImpl2.mIsVideoEncoder || DeviceQuirks.get(AudioEncoderIgnoresInputTimestampQuirk.class) == null) && (!EncoderImpl.this.mIsVideoEncoder || DeviceQuirks.get(VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.class) == null))) {
                    Encoder.EncoderInput encoderInput = EncoderImpl.this.mEncoderInput;
                    if (encoderInput instanceof ByteBufferInput) {
                        ((ByteBufferInput) encoderInput).setActive(false);
                    }
                    EncoderImpl.this.setMediaCodecPaused(true);
                }
                EncoderImpl.this.mLastDataStopTimestamp = Long.valueOf(bufferInfo.presentationTimeUs);
                EncoderImpl encoderImpl3 = EncoderImpl.this;
                if (encoderImpl3.mPendingCodecStop) {
                    Future future = encoderImpl3.mStopTimeoutFuture;
                    if (future != null) {
                        future.cancel(true);
                    }
                    EncoderImpl.this.signalCodecStop();
                    EncoderImpl.this.mPendingCodecStop = false;
                }
            } else if (z && !zIsInPauseRange) {
                Logger.m76d(EncoderImpl.this.mTag, "Switch to resume state");
                this.mIsOutputBufferInPauseState = false;
                if (EncoderImpl.this.mIsVideoEncoder && !EncoderImpl.isKeyFrame(bufferInfo)) {
                    this.mIsKeyFrameRequired = true;
                }
            }
            return this.mIsOutputBufferInPauseState;
        }

        @Override // android.media.MediaCodec.Callback
        public void onError(MediaCodec mediaCodec, final MediaCodec.CodecException codecException) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback.m2038$r8$lambda$g43hEEXR3BRPNfYtRnuf5VF1qQ(this.f$0, codecException);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$g43hEEX-R3BRPNfYtRnuf5VF1qQ, reason: not valid java name */
        public static /* synthetic */ void m2038$r8$lambda$g43hEEXR3BRPNfYtRnuf5VF1qQ(MediaCodecCallback mediaCodecCallback, MediaCodec.CodecException codecException) {
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    EncoderImpl.this.handleEncodeError(codecException);
                    return;
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputFormatChanged(MediaCodec mediaCodec, final MediaFormat mediaFormat) {
            Logger.m76d(EncoderImpl.this.mTag, "onOutputFormatChanged: mediaFormat = " + mediaFormat + ", CSD data = " + DebugUtils.getCsdHex(mediaFormat));
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback.m2036$r8$lambda$YBmLcbsc38vYF9Z5UIdsHPpLEQ(this.f$0, mediaFormat);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$YBm-Lcbsc38vYF9Z5UIdsHPpLEQ, reason: not valid java name */
        public static /* synthetic */ void m2036$r8$lambda$YBmLcbsc38vYF9Z5UIdsHPpLEQ(MediaCodecCallback mediaCodecCallback, final MediaFormat mediaFormat) {
            final EncoderCallback encoderCallback;
            Executor executor;
            if (mediaCodecCallback.mStopped) {
                Logger.m81w(EncoderImpl.this.mTag, "Receives onOutputFormatChanged after codec is reset.");
                return;
            }
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    synchronized (EncoderImpl.this.mLock) {
                        EncoderImpl encoderImpl = EncoderImpl.this;
                        encoderCallback = encoderImpl.mEncoderCallback;
                        executor = encoderImpl.mEncoderCallbackExecutor;
                        break;
                    }
                    try {
                        executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                encoderCallback.onOutputConfigUpdate(new OutputConfig() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda8
                                });
                            }
                        });
                        return;
                    } catch (RejectedExecutionException e) {
                        Logger.m79e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                        return;
                    }
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        void stop() {
            this.mStopped = true;
        }
    }

    class SurfaceInput implements Encoder.SurfaceInput {
        private final Object mLock = new Object();
        private Surface mSurface;

        SurfaceInput() {
        }

        void resetSurface() {
            EncoderImpl.this.mMediaCodec.setInputSurface(getSurface());
        }

        void releaseSurface() {
            Surface surface;
            synchronized (this.mLock) {
                surface = this.mSurface;
                this.mSurface = null;
            }
            if (surface != null) {
                surface.release();
            }
        }

        @Override // androidx.camera.video.internal.encoder.Encoder.SurfaceInput
        public Surface getSurface() {
            Surface surface;
            synchronized (this.mLock) {
                try {
                    if (this.mSurface == null) {
                        this.mSurface = MediaCodec.createPersistentInputSurface();
                    }
                    surface = this.mSurface;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return surface;
        }
    }

    class ByteBufferInput implements Encoder.EncoderInput, Observable {
        private final Map mStateObservers = new LinkedHashMap();
        private BufferProvider$State mBufferProviderState = BufferProvider$State.INACTIVE;
        private final List mAcquisitionList = new ArrayList();

        ByteBufferInput() {
        }

        @Override // androidx.camera.core.impl.Observable
        public ListenableFuture fetchData() {
            return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$ByteBufferInput$$ExternalSyntheticLambda0
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return EncoderImpl.ByteBufferInput.$r8$lambda$CWn7npQsh0NJOk84IyXeWaDBVnw(this.f$0, completer);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$CWn7npQsh0NJOk84IyXeWaDBVnw(final ByteBufferInput byteBufferInput, final CallbackToFutureAdapter.Completer completer) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$ByteBufferInput$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    completer.set(this.f$0.mBufferProviderState);
                }
            });
            return "fetchData";
        }

        @Override // androidx.camera.core.impl.Observable
        public void addObserver(final Executor executor, final Observable.Observer observer) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$ByteBufferInput$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.ByteBufferInput.m2031$r8$lambda$GP73qyCV4qel6diFS_1dlZqWg(this.f$0, observer, executor);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$GP73q-yCV4qel6-diFS_1dlZqWg, reason: not valid java name */
        public static /* synthetic */ void m2031$r8$lambda$GP73qyCV4qel6diFS_1dlZqWg(ByteBufferInput byteBufferInput, final Observable.Observer observer, Executor executor) {
            byteBufferInput.mStateObservers.put((Observable.Observer) Preconditions.checkNotNull(observer), (Executor) Preconditions.checkNotNull(executor));
            final BufferProvider$State bufferProvider$State = byteBufferInput.mBufferProviderState;
            executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$ByteBufferInput$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    observer.onNewData(bufferProvider$State);
                }
            });
        }

        @Override // androidx.camera.core.impl.Observable
        public void removeObserver(final Observable.Observer observer) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$ByteBufferInput$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.mStateObservers.remove(Preconditions.checkNotNull(observer));
                }
            });
        }

        void setActive(boolean z) {
            final BufferProvider$State bufferProvider$State = z ? BufferProvider$State.ACTIVE : BufferProvider$State.INACTIVE;
            if (this.mBufferProviderState == bufferProvider$State) {
                return;
            }
            this.mBufferProviderState = bufferProvider$State;
            if (bufferProvider$State == BufferProvider$State.INACTIVE) {
                Iterator it = this.mAcquisitionList.iterator();
                while (it.hasNext()) {
                    ((ListenableFuture) it.next()).cancel(true);
                }
                this.mAcquisitionList.clear();
            }
            for (final Map.Entry entry : this.mStateObservers.entrySet()) {
                try {
                    ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.EncoderImpl$ByteBufferInput$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((Observable.Observer) entry.getKey()).onNewData(bufferProvider$State);
                        }
                    });
                } catch (RejectedExecutionException e) {
                    Logger.m79e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                }
            }
        }
    }
}
