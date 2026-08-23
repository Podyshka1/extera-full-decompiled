package androidx.camera.video;

import android.view.Surface;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class VideoEncoderSession {
    private final Executor mExecutor;
    private final Executor mSequentialExecutor;
    private final EncoderFactory mVideoEncoderFactory;
    private Encoder mVideoEncoder = null;
    private Surface mActiveSurface = null;
    private SurfaceRequest mSurfaceRequest = null;
    private VideoEncoderState mVideoEncoderState = VideoEncoderState.NOT_INITIALIZED;
    private ListenableFuture mReleasedFuture = Futures.immediateFailedFuture(new IllegalStateException("Cannot close the encoder before configuring."));
    private CallbackToFutureAdapter.Completer mReleasedCompleter = null;
    private ListenableFuture mReadyToReleaseFuture = Futures.immediateFailedFuture(new IllegalStateException("Cannot close the encoder before configuring."));
    private CallbackToFutureAdapter.Completer mReadyToReleaseCompleter = null;

    private enum VideoEncoderState {
        NOT_INITIALIZED,
        INITIALIZING,
        PENDING_RELEASE,
        READY,
        RELEASED
    }

    VideoEncoderSession(EncoderFactory encoderFactory, Executor executor, Executor executor2) {
        this.mExecutor = executor2;
        this.mSequentialExecutor = executor;
        this.mVideoEncoderFactory = encoderFactory;
    }

    ListenableFuture configure(final SurfaceRequest surfaceRequest, final VideoEncoderConfig videoEncoderConfig) {
        if (this.mVideoEncoderState.ordinal() == 0) {
            this.mVideoEncoderState = VideoEncoderState.INITIALIZING;
            this.mSurfaceRequest = surfaceRequest;
            Logger.m76d("VideoEncoderSession", "Create VideoEncoderSession: " + this);
            this.mReleasedFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.VideoEncoderSession$$ExternalSyntheticLambda1
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return VideoEncoderSession.m2017$r8$lambda$9aRIKLhGw4HdbXHWbcbCRBROM0(this.f$0, completer);
                }
            });
            this.mReadyToReleaseFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.VideoEncoderSession$$ExternalSyntheticLambda2
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return VideoEncoderSession.$r8$lambda$PD_k74jzItzsG1xTdgZ6Wanfs0k(this.f$0, completer);
                }
            });
            ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.VideoEncoderSession$$ExternalSyntheticLambda3
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return VideoEncoderSession.$r8$lambda$UMKB9ijC89XfXZJjfTuNJgEk90w(this.f$0, surfaceRequest, videoEncoderConfig, completer);
                }
            });
            Futures.addCallback(future, new FutureCallback() { // from class: androidx.camera.video.VideoEncoderSession.1
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(Encoder encoder) {
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(Throwable th) {
                    Logger.m82w("VideoEncoderSession", "VideoEncoder configuration failed.", th);
                    VideoEncoderSession.this.terminateNow();
                }
            }, this.mSequentialExecutor);
            return Futures.nonCancellationPropagating(future);
        }
        return Futures.immediateFailedFuture(new IllegalStateException("configure() shouldn't be called in " + this.mVideoEncoderState));
    }

    /* JADX INFO: renamed from: $r8$lambda$9aRIKLhGw4HdbXHWbcb-CRBROM0, reason: not valid java name */
    public static /* synthetic */ Object m2017$r8$lambda$9aRIKLhGw4HdbXHWbcbCRBROM0(VideoEncoderSession videoEncoderSession, CallbackToFutureAdapter.Completer completer) {
        videoEncoderSession.mReleasedCompleter = completer;
        return "ReleasedFuture " + videoEncoderSession;
    }

    public static /* synthetic */ Object $r8$lambda$PD_k74jzItzsG1xTdgZ6Wanfs0k(VideoEncoderSession videoEncoderSession, CallbackToFutureAdapter.Completer completer) {
        videoEncoderSession.mReadyToReleaseCompleter = completer;
        return "ReadyToReleaseFuture " + videoEncoderSession;
    }

    public static /* synthetic */ Object $r8$lambda$UMKB9ijC89XfXZJjfTuNJgEk90w(VideoEncoderSession videoEncoderSession, SurfaceRequest surfaceRequest, VideoEncoderConfig videoEncoderConfig, CallbackToFutureAdapter.Completer completer) {
        videoEncoderSession.configureVideoEncoderInternal(surfaceRequest, videoEncoderConfig, completer);
        return "ConfigureVideoEncoderFuture " + videoEncoderSession;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean isConfiguredSurfaceRequest(SurfaceRequest surfaceRequest) {
        int iOrdinal = this.mVideoEncoderState.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                if (this.mSurfaceRequest == surfaceRequest) {
                    return true;
                }
            } else if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        throw new IllegalStateException("State " + this.mVideoEncoderState + " is not handled");
                    }
                }
            }
        }
        return false;
    }

    ListenableFuture getReadyToReleaseFuture() {
        return Futures.nonCancellationPropagating(this.mReadyToReleaseFuture);
    }

    ListenableFuture signalTermination() {
        closeInternal();
        return Futures.nonCancellationPropagating(this.mReleasedFuture);
    }

    void terminateNow() {
        int iOrdinal = this.mVideoEncoderState.ordinal();
        if (iOrdinal == 0) {
            this.mVideoEncoderState = VideoEncoderState.RELEASED;
            return;
        }
        if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 3) {
            if (iOrdinal == 4) {
                Logger.m76d("VideoEncoderSession", "terminateNow in " + this.mVideoEncoderState + ", No-op");
                return;
            }
            throw new IllegalStateException("State " + this.mVideoEncoderState + " is not handled");
        }
        this.mVideoEncoderState = VideoEncoderState.RELEASED;
        this.mReadyToReleaseCompleter.set(this.mVideoEncoder);
        this.mSurfaceRequest = null;
        if (this.mVideoEncoder != null) {
            Logger.m76d("VideoEncoderSession", "VideoEncoder is releasing: " + this.mVideoEncoder);
            this.mVideoEncoder.release();
            this.mVideoEncoder.getReleasedFuture().addListener(new Runnable() { // from class: androidx.camera.video.VideoEncoderSession$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.mReleasedCompleter.set(null);
                }
            }, this.mSequentialExecutor);
            this.mVideoEncoder = null;
            return;
        }
        Logger.m81w("VideoEncoderSession", "There's no VideoEncoder to release! Finish release completer.");
        this.mReleasedCompleter.set(null);
    }

    Surface getActiveSurface() {
        if (this.mVideoEncoderState != VideoEncoderState.READY) {
            return null;
        }
        return this.mActiveSurface;
    }

    Encoder getVideoEncoder() {
        return this.mVideoEncoder;
    }

    private void closeInternal() {
        int iOrdinal = this.mVideoEncoderState.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            terminateNow();
            return;
        }
        if (iOrdinal == 2 || iOrdinal == 3) {
            Logger.m76d("VideoEncoderSession", "closeInternal in " + this.mVideoEncoderState + " state");
            this.mVideoEncoderState = VideoEncoderState.PENDING_RELEASE;
            return;
        }
        if (iOrdinal == 4) {
            Logger.m76d("VideoEncoderSession", "closeInternal in RELEASED state, No-op");
            return;
        }
        throw new IllegalStateException("State " + this.mVideoEncoderState + " is not handled");
    }

    private void configureVideoEncoderInternal(SurfaceRequest surfaceRequest, VideoEncoderConfig videoEncoderConfig, CallbackToFutureAdapter.Completer completer) {
        try {
            Encoder encoderCreateEncoder = this.mVideoEncoderFactory.createEncoder(this.mExecutor, videoEncoderConfig, surfaceRequest.getSessionType());
            this.mVideoEncoder = encoderCreateEncoder;
            if (!(encoderCreateEncoder.getInput() instanceof Encoder.SurfaceInput)) {
                completer.setException(new AssertionError("The EncoderInput of video isn't a SurfaceInput."));
                return;
            }
            Surface surface = ((Encoder.SurfaceInput) this.mVideoEncoder.getInput()).getSurface();
            this.mActiveSurface = surface;
            Logger.m76d("VideoEncoderSession", "provide surface: " + surface);
            surfaceRequest.provideSurface(surface, this.mSequentialExecutor, new Consumer() { // from class: androidx.camera.video.VideoEncoderSession$$ExternalSyntheticLambda4
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    VideoEncoderSession.$r8$lambda$3VS9N96niRhWMq3xwyNPJVrofi8(this.f$0, (SurfaceRequest.Result) obj);
                }
            });
            this.mVideoEncoderState = VideoEncoderState.READY;
            completer.set(this.mVideoEncoder);
        } catch (InvalidConfigException e) {
            Logger.m79e("VideoEncoderSession", "Unable to initialize video encoder.", e);
            completer.setException(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$3VS9N96niRhWMq3xwyNPJVrofi8(VideoEncoderSession videoEncoderSession, SurfaceRequest.Result result) {
        videoEncoderSession.getClass();
        Logger.m76d("VideoEncoderSession", "Surface can be closed: " + result.getSurface());
        videoEncoderSession.mActiveSurface = null;
        videoEncoderSession.mReadyToReleaseCompleter.set(videoEncoderSession.mVideoEncoder);
        videoEncoderSession.closeInternal();
    }

    public String toString() {
        return "VideoEncoderSession@" + hashCode() + " for " + Objects.toString(this.mSurfaceRequest, "SURFACE_REQUEST_NOT_CONFIGURED");
    }
}
