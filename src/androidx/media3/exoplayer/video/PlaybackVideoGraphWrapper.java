package androidx.media3.exoplayer.video;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Format;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class PlaybackVideoGraphWrapper implements VideoGraph.Listener {
    private static final Executor NO_OP_EXECUTOR = new Executor() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            PlaybackVideoGraphWrapper.$r8$lambda$B1jGiGsd2XT6qDaCbp1_iYOfTl8(runnable);
        }
    };
    private final Clock clock;
    private ImmutableList<Object> compositionEffects;
    private VideoCompositorSettings compositorSettings;
    private final Context context;
    private Pair<Surface, Size> currentSurfaceAndSize;
    private final VideoSink defaultVideoSink;
    private final boolean enablePlaylistMode;
    private long finalFramePresentationTimeUs;
    private HandlerWrapper handler;
    private boolean hasSignaledEndOfVideoGraphOutputStream;
    private final SparseArray<InputVideoSink> inputVideoSinks;
    private boolean isInputSdrToneMapped;
    private long lastOutputFramePresentationTimeUs;
    private final CopyOnWriteArraySet<Listener> listeners;
    private int outputStreamFirstFrameReleaseInstruction;
    private long outputStreamStartPositionUs;
    private int pendingFlushCount;
    private TimedValueQueue<StreamChangeInfo> pendingStreamChanges;
    private int registeredVideoInputCount;
    private boolean requestOpenGlToneMapping;
    private int state;
    private int totalVideoInputCount;
    private final VideoSink.VideoFrameHandler videoFrameHandler;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private final VideoGraph.Factory videoGraphFactory;
    private Format videoGraphOutputFormat;

    public interface Listener {
    }

    public static /* synthetic */ void $r8$lambda$B1jGiGsd2XT6qDaCbp1_iYOfTl8(Runnable runnable) {
    }

    private void maybeSetOutputSurfaceInfo(Surface surface, int i, int i2) {
    }

    public static /* synthetic */ VideoGraph access$600(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
        playbackVideoGraphWrapper.getClass();
        return null;
    }

    public static final class Builder {
        private boolean built;
        private Clock clock = Clock.DEFAULT;
        private final Context context;
        private boolean enablePlaylistMode;
        private boolean enableReplayableCache;
        private final VideoFrameReleaseControl videoFrameReleaseControl;
        private VideoGraph.Factory videoGraphFactory;

        public Builder(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
            this.context = context.getApplicationContext();
            this.videoFrameReleaseControl = videoFrameReleaseControl;
        }

        public Builder setEnablePlaylistMode(boolean z) {
            this.enablePlaylistMode = z;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public PlaybackVideoGraphWrapper build() {
            Assertions.checkState(!this.built);
            if (this.videoGraphFactory == null) {
                this.videoGraphFactory = new ReflectiveSingleInputVideoGraphFactory(this.enableReplayableCache);
            }
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = new PlaybackVideoGraphWrapper(this);
            this.built = true;
            return playbackVideoGraphWrapper;
        }
    }

    private PlaybackVideoGraphWrapper(Builder builder) {
        this.context = builder.context;
        this.pendingStreamChanges = new TimedValueQueue<>();
        this.videoGraphFactory = (VideoGraph.Factory) Assertions.checkStateNotNull(builder.videoGraphFactory);
        this.inputVideoSinks = new SparseArray<>();
        this.compositionEffects = ImmutableList.of();
        this.compositorSettings = VideoCompositorSettings.DEFAULT;
        this.enablePlaylistMode = builder.enablePlaylistMode;
        Clock clock = builder.clock;
        this.clock = clock;
        this.defaultVideoSink = new DefaultVideoSink(builder.videoFrameReleaseControl, clock);
        this.videoFrameHandler = new VideoSink.VideoFrameHandler() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.1
            @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void render(long j) {
                PlaybackVideoGraphWrapper.access$600(PlaybackVideoGraphWrapper.this);
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkStateNotNull(null));
                throw null;
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void skip() {
                PlaybackVideoGraphWrapper.access$600(PlaybackVideoGraphWrapper.this);
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkStateNotNull(null));
                throw null;
            }
        };
        this.listeners = new CopyOnWriteArraySet<>();
        this.videoGraphOutputFormat = new Format.Builder().build();
        this.outputStreamStartPositionUs = -9223372036854775807L;
        this.lastOutputFramePresentationTimeUs = -9223372036854775807L;
        this.finalFramePresentationTimeUs = -9223372036854775807L;
        this.totalVideoInputCount = -1;
        this.state = 0;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void setTotalVideoInputCount(int i) {
        this.totalVideoInputCount = i;
    }

    public VideoSink getSink(int i) {
        if (Util.contains(this.inputVideoSinks, i)) {
            return this.inputVideoSinks.get(i);
        }
        InputVideoSink inputVideoSink = new InputVideoSink(this.context, i);
        if (i == 0) {
            addListener(inputVideoSink);
        }
        this.inputVideoSinks.put(i, inputVideoSink);
        return inputVideoSink;
    }

    public void setOutputSurfaceInfo(Surface surface, Size size) {
        Pair<Surface, Size> pair = this.currentSurfaceAndSize;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) this.currentSurfaceAndSize.second).equals(size)) {
            return;
        }
        this.currentSurfaceAndSize = Pair.create(surface, size);
        maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
    }

    public void clearOutputSurfaceInfo() {
        Size size = Size.UNKNOWN;
        maybeSetOutputSurfaceInfo(null, size.getWidth(), size.getHeight());
        this.currentSurfaceAndSize = null;
    }

    public void startRendering() {
        this.defaultVideoSink.startRendering();
    }

    public void stopRendering() {
        this.defaultVideoSink.stopRendering();
    }

    public void release() {
        if (this.state == 2) {
            return;
        }
        HandlerWrapper handlerWrapper = this.handler;
        if (handlerWrapper != null) {
            handlerWrapper.removeCallbacksAndMessages(null);
        }
        this.currentSurfaceAndSize = null;
        this.state = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean registerInput(Format format, int i) throws VideoSink.VideoSinkException {
        if (i == 0) {
            Assertions.checkState(this.state == 0);
            ColorInfo adjustedInputColorInfo = getAdjustedInputColorInfo(format.colorInfo);
            try {
                if (this.requestOpenGlToneMapping) {
                    adjustedInputColorInfo = ColorInfo.SDR_BT709_LIMITED;
                } else if (adjustedInputColorInfo.colorTransfer == 7 && Build.VERSION.SDK_INT < 34 && GlUtil.isBt2020PqExtensionSupported()) {
                    adjustedInputColorInfo = adjustedInputColorInfo.buildUpon().setColorTransfer(6).build();
                } else if (!GlUtil.isColorTransferSupported(adjustedInputColorInfo.colorTransfer) && Build.VERSION.SDK_INT >= 29) {
                    Log.m163w("PlaybackVidGraphWrapper", Util.formatInvariant("Color transfer %d is not supported. Falling back to OpenGl tone mapping.", Integer.valueOf(adjustedInputColorInfo.colorTransfer)));
                    adjustedInputColorInfo = ColorInfo.SDR_BT709_LIMITED;
                }
                ColorInfo colorInfo = adjustedInputColorInfo;
                final HandlerWrapper handlerWrapperCreateHandler = this.clock.createHandler((Looper) Assertions.checkStateNotNull(Looper.myLooper()), null);
                this.handler = handlerWrapperCreateHandler;
                VideoGraph.Factory factory = this.videoGraphFactory;
                Context context = this.context;
                DebugViewProvider debugViewProvider = DebugViewProvider.NONE;
                Objects.requireNonNull(handlerWrapperCreateHandler);
                factory.create(context, colorInfo, debugViewProvider, this, new Executor() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        handlerWrapperCreateHandler.post(runnable);
                    }
                }, 0L, false);
                throw null;
            } catch (GlUtil.GlException e) {
                throw new VideoSink.VideoSinkException(e, format);
            }
        }
        if (!isInitialized()) {
            return false;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkNotNull(null));
        throw null;
    }

    private boolean isInitialized() {
        return this.state == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReady(boolean z) {
        return this.defaultVideoSink.isReady(z && this.pendingFlushCount == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signalEndOfVideoGraphOutputStream() {
        this.defaultVideoSink.signalEndOfCurrentInputStream();
        this.hasSignaledEndOfVideoGraphOutputStream = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEnded() {
        return this.pendingFlushCount == 0 && this.hasSignaledEndOfVideoGraphOutputStream && this.defaultVideoSink.isEnded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render(long j, long j2) {
        this.defaultVideoSink.render(j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flush(boolean z) {
        TimedValueQueue<StreamChangeInfo> timedValueQueue;
        if (isInitialized()) {
            this.pendingFlushCount++;
            this.defaultVideoSink.flush(z);
            while (true) {
                int size = this.pendingStreamChanges.size();
                timedValueQueue = this.pendingStreamChanges;
                if (size <= 1) {
                    break;
                } else {
                    timedValueQueue.pollFirst();
                }
            }
            if (timedValueQueue.size() == 1) {
                StreamChangeInfo streamChangeInfo = (StreamChangeInfo) Assertions.checkNotNull(this.pendingStreamChanges.pollFirst());
                this.outputStreamStartPositionUs = streamChangeInfo.startPositionUs;
                this.outputStreamFirstFrameReleaseInstruction = streamChangeInfo.firstFrameReleaseInstruction;
                onOutputStreamChanged();
            }
            this.lastOutputFramePresentationTimeUs = -9223372036854775807L;
            this.finalFramePresentationTimeUs = -9223372036854775807L;
            this.hasSignaledEndOfVideoGraphOutputStream = false;
            ((HandlerWrapper) Assertions.checkStateNotNull(this.handler)).post(new Runnable() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackVideoGraphWrapper.$r8$lambda$yb_uyj2eC9p1Xveodi0xzzHKIaU(this.f$0);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$yb_uyj2eC9p1Xveodi0xzzHKIaU(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
        playbackVideoGraphWrapper.pendingFlushCount--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinPlayback(boolean z) {
        this.defaultVideoSink.join(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void allowReleaseFirstFrameBeforeStarted() {
        this.defaultVideoSink.allowReleaseFirstFrameBeforeStarted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.videoFrameMetadataListener = videoFrameMetadataListener;
        this.defaultVideoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f) {
        this.defaultVideoSink.setPlaybackSpeed(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChangeFrameRateStrategy(int i) {
        this.defaultVideoSink.setChangeFrameRateStrategy(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldRenderToInputVideoSink() {
        int i = this.totalVideoInputCount;
        return i != -1 && i == this.registeredVideoInputCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ColorInfo getAdjustedInputColorInfo(ColorInfo colorInfo) {
        return (colorInfo == null || !colorInfo.isDataSpaceValid() || this.isInputSdrToneMapped) ? ColorInfo.SDR_BT709_LIMITED : colorInfo;
    }

    private void onOutputStreamChanged() {
        this.defaultVideoSink.onInputStreamChanged(1, this.videoGraphOutputFormat, this.outputStreamStartPositionUs, this.outputStreamFirstFrameReleaseInstruction, ImmutableList.of());
    }

    public final class InputVideoSink implements VideoSink, Listener {
        private long inputBufferTimestampAdjustmentUs;
        private Format inputFormat;
        private final int inputIndex;
        private int inputType;
        private boolean isInitialized;
        private boolean signaledEndOfStream;
        private final int videoFrameProcessorMaxPendingFrameCount;
        private ImmutableList<Object> videoEffects = ImmutableList.of();
        private long lastFramePresentationTimeUs = -9223372036854775807L;
        private VideoSink.Listener listener = VideoSink.Listener.NO_OP;
        private Executor listenerExecutor = PlaybackVideoGraphWrapper.NO_OP_EXECUTOR;

        public InputVideoSink(Context context, int i) {
            this.inputIndex = i;
            this.videoFrameProcessorMaxPendingFrameCount = Util.getMaxPendingFramesCountForMediaCodecDecoders(context);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void startRendering() {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.startRendering();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void stopRendering() {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.stopRendering();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setListener(VideoSink.Listener listener, Executor executor) {
            this.listener = listener;
            this.listenerExecutor = executor;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean initialize(Format format) throws VideoSink.VideoSinkException {
            Assertions.checkState(!isInitialized());
            boolean zRegisterInput = PlaybackVideoGraphWrapper.this.registerInput(format, this.inputIndex);
            this.isInitialized = zRegisterInput;
            return zRegisterInput;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isInitialized() {
            return this.isInitialized;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void redraw() {
            if (isInitialized()) {
                long unused = PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs;
                PlaybackVideoGraphWrapper.this.flush(false);
                PlaybackVideoGraphWrapper.access$600(PlaybackVideoGraphWrapper.this);
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkNotNull(null));
                throw null;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void flush(boolean z) {
            if (isInitialized()) {
                PlaybackVideoGraphWrapper.access$600(PlaybackVideoGraphWrapper.this);
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkNotNull(null));
                throw null;
            }
            this.lastFramePresentationTimeUs = -9223372036854775807L;
            PlaybackVideoGraphWrapper.this.flush(z);
            this.signaledEndOfStream = false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isReady(boolean z) {
            return PlaybackVideoGraphWrapper.this.isReady(z && isInitialized());
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void signalEndOfCurrentInputStream() {
            PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs = this.lastFramePresentationTimeUs;
            if (PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs >= PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs) {
                PlaybackVideoGraphWrapper.this.signalEndOfVideoGraphOutputStream();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isEnded() {
            return isInitialized() && PlaybackVideoGraphWrapper.this.isEnded();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void onInputStreamChanged(int i, Format format, long j, int i2, List<Object> list) {
            Assertions.checkState(isInitialized());
            this.videoEffects = ImmutableList.copyOf((Collection) list);
            this.inputType = i;
            this.inputFormat = format;
            PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs = -9223372036854775807L;
            PlaybackVideoGraphWrapper.this.hasSignaledEndOfVideoGraphOutputStream = false;
            registerInputStream(format);
            boolean z = this.lastFramePresentationTimeUs == -9223372036854775807L;
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode || (this.inputIndex == 0 && z)) {
                long j2 = z ? -4611686018427387904L : this.lastFramePresentationTimeUs + 1;
                PlaybackVideoGraphWrapper.this.pendingStreamChanges.add(j2, new StreamChangeInfo(this.inputBufferTimestampAdjustmentUs + j, i2, j2));
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void allowReleaseFirstFrameBeforeStarted() {
            if (PlaybackVideoGraphWrapper.this.pendingStreamChanges.size() == 0) {
                PlaybackVideoGraphWrapper.this.allowReleaseFirstFrameBeforeStarted();
                return;
            }
            TimedValueQueue timedValueQueue = new TimedValueQueue();
            boolean z = true;
            while (true) {
                int size = PlaybackVideoGraphWrapper.this.pendingStreamChanges.size();
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
                if (size > 0) {
                    StreamChangeInfo streamChangeInfo = (StreamChangeInfo) Assertions.checkNotNull((StreamChangeInfo) playbackVideoGraphWrapper.pendingStreamChanges.pollFirst());
                    if (z) {
                        int i = streamChangeInfo.firstFrameReleaseInstruction;
                        if (i != 0 && i != 1) {
                            PlaybackVideoGraphWrapper.this.allowReleaseFirstFrameBeforeStarted();
                        } else {
                            streamChangeInfo = new StreamChangeInfo(streamChangeInfo.startPositionUs, 0, streamChangeInfo.fromTimestampUs);
                        }
                        z = false;
                    }
                    timedValueQueue.add(streamChangeInfo.fromTimestampUs, streamChangeInfo);
                } else {
                    playbackVideoGraphWrapper.pendingStreamChanges = timedValueQueue;
                    return;
                }
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public Surface getInputSurface() {
            Assertions.checkState(isInitialized());
            PlaybackVideoGraphWrapper.access$600(PlaybackVideoGraphWrapper.this);
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkNotNull(null));
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setVideoFrameMetadataListener(videoFrameMetadataListener);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setPlaybackSpeed(float f) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setPlaybackSpeed(f);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setVideoEffects(List<Object> list) {
            if (this.videoEffects.equals(list)) {
                return;
            }
            this.videoEffects = ImmutableList.copyOf((Collection) list);
            Format format = this.inputFormat;
            if (format != null) {
                registerInputStream(format);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setBufferTimestampAdjustmentUs(long j) {
            this.inputBufferTimestampAdjustmentUs = j;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setOutputSurfaceInfo(Surface surface, Size size) {
            PlaybackVideoGraphWrapper.this.setOutputSurfaceInfo(surface, size);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void clearOutputSurfaceInfo() {
            PlaybackVideoGraphWrapper.this.clearOutputSurfaceInfo();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setChangeFrameRateStrategy(int i) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setChangeFrameRateStrategy(i);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean handleInputFrame(long j, VideoSink.VideoFrameHandler videoFrameHandler) {
            Assertions.checkState(isInitialized());
            if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink()) {
                return false;
            }
            PlaybackVideoGraphWrapper.access$600(PlaybackVideoGraphWrapper.this);
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkNotNull(null));
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void render(long j, long j2) {
            PlaybackVideoGraphWrapper.this.render(j + this.inputBufferTimestampAdjustmentUs, j2);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void join(boolean z) {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.joinPlayback(z);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void release() {
            PlaybackVideoGraphWrapper.this.release();
        }

        private void registerInputStream(Format format) {
            format.buildUpon().setColorInfo(PlaybackVideoGraphWrapper.this.getAdjustedInputColorInfo(format.colorInfo)).build();
            PlaybackVideoGraphWrapper.access$600(PlaybackVideoGraphWrapper.this);
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Assertions.checkNotNull(null));
            throw null;
        }
    }

    public static final class StreamChangeInfo {
        public final int firstFrameReleaseInstruction;
        public final long fromTimestampUs;
        public final long startPositionUs;

        public StreamChangeInfo(long j, int i, long j2) {
            this.startPositionUs = j;
            this.firstFrameReleaseInstruction = i;
            this.fromTimestampUs = j2;
        }
    }

    public static final class ReflectiveSingleInputVideoGraphFactory implements VideoGraph.Factory {
        private final VideoFrameProcessor.Factory videoFrameProcessorFactory;

        public ReflectiveSingleInputVideoGraphFactory(boolean z) {
            this.videoFrameProcessorFactory = new ReflectiveDefaultVideoFrameProcessorFactory(z);
        }

        @Override // androidx.media3.common.VideoGraph.Factory
        public VideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, long j, boolean z) {
            try {
                ((VideoGraph.Factory) Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(VideoFrameProcessor.Factory.class).newInstance(this.videoFrameProcessorFactory)).create(context, colorInfo, debugViewProvider, listener, executor, j, z);
                return null;
            } catch (Exception e) {
                UnsafeUtil$$ExternalSyntheticBUOutline0.m483m(e);
                return null;
            }
        }
    }

    public static final class ReflectiveDefaultVideoFrameProcessorFactory implements VideoFrameProcessor.Factory {
        private static final Supplier<Class<?>> DEFAULT_VIDEO_FRAME_PROCESSOR_FACTORY_BUILDER_CLASS = Suppliers.memoize(new Supplier() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return PlaybackVideoGraphWrapper.ReflectiveDefaultVideoFrameProcessorFactory.$r8$lambda$gadNd84MrDyg9TV6bUHeSpXwIW0();
            }
        });
        private final boolean enableReplayableCache;

        public static /* synthetic */ Class $r8$lambda$gadNd84MrDyg9TV6bUHeSpXwIW0() {
            try {
                return Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
            } catch (Exception e) {
                UnsafeUtil$$ExternalSyntheticBUOutline0.m483m(e);
                return null;
            }
        }

        public ReflectiveDefaultVideoFrameProcessorFactory(boolean z) {
            this.enableReplayableCache = z;
        }
    }
}
