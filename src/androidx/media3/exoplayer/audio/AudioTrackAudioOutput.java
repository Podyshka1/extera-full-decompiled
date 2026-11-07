package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutput;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioTrackAudioOutput implements AudioOutput {
    private static int pendingReleaseCount;
    private static ScheduledExecutorService releaseExecutor;
    private static final Object releaseExecutorLock = new Object();
    private final AudioTrack audioTrack;
    private final AudioTrackPositionTracker audioTrackPositionTracker;
    private ByteBuffer avSyncHeader;
    private int bytesUntilNextAvSync;
    private final CapabilityChangeListener capabilityChangeListener;
    private final AudioOutputProvider.OutputConfig config;
    private int framesPerEncodedSample;
    private boolean hasBeenStopped;
    private final boolean isOutputPcm;
    private long lastTunnelingAvSyncPresentationTimeUs;
    private int lastUnderrunCount;
    private final ListenerSet<AudioOutput.Listener> listeners = new ListenerSet<>(Thread.currentThread());
    private final float maxPlaybackSpeed;
    private final StreamEventCallbackV29 offloadStreamEventCallbackV29;
    private OnRoutingChangedListenerApi24 onRoutingChangedListener;
    private final int pcmFrameSize;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    public interface CapabilityChangeListener {
        void onRecoverableWriteError();

        void onRoutedDeviceChanged(AudioDeviceInfo audioDeviceInfo);
    }

    private static boolean isAudioTrackDeadObject(int i) {
        return i == -6 || i == -32;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AudioTrackAudioOutput(AudioTrack audioTrack, AudioOutputProvider.OutputConfig outputConfig, CapabilityChangeListener capabilityChangeListener, float f, Clock clock) {
        this.audioTrack = audioTrack;
        this.config = outputConfig;
        this.maxPlaybackSpeed = f;
        this.capabilityChangeListener = capabilityChangeListener;
        boolean zIsEncodingLinearPcm = Util.isEncodingLinearPcm(outputConfig.encoding);
        this.isOutputPcm = zIsEncodingLinearPcm;
        if (zIsEncodingLinearPcm) {
            this.pcmFrameSize = Util.getPcmFrameSize(outputConfig.encoding, Integer.bitCount(outputConfig.channelMask));
        } else {
            this.pcmFrameSize = -1;
        }
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener(), clock, audioTrack, outputConfig.encoding, this.pcmFrameSize, outputConfig.bufferSize);
        if (capabilityChangeListener != null) {
            this.onRoutingChangedListener = new OnRoutingChangedListenerApi24(audioTrack, capabilityChangeListener);
        }
        this.offloadStreamEventCallbackV29 = isOffloadedPlayback() ? new StreamEventCallbackV29() : null;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void addListener(AudioOutput.Listener listener) {
        this.listeners.add(listener);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean isOffloadedPlayback() {
        return Build.VERSION.SDK_INT >= 29 && this.audioTrack.isOffloadedPlayback();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public int getAudioSessionId() {
        return this.audioTrack.getAudioSessionId();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public int getSampleRate() {
        return this.audioTrack.getSampleRate();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public long getBufferSizeInFrames() {
        return this.audioTrack.getBufferSizeInFrames();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public long getPositionUs() {
        return this.audioTrackPositionTracker.getCurrentPositionUs();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public PlaybackParameters getPlaybackParameters() {
        PlaybackParams playbackParams = this.audioTrack.getPlaybackParams();
        return new PlaybackParameters(playbackParams.getSpeed(), playbackParams.getPitch());
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void play() {
        this.audioTrackPositionTracker.start();
        if (!this.hasBeenStopped || isOffloadedPlayback()) {
            this.audioTrack.play();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void pause() {
        this.audioTrackPositionTracker.pause();
        if (!this.hasBeenStopped || isOffloadedPlayback()) {
            this.audioTrack.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean write(ByteBuffer byteBuffer, int i, long j) throws AudioOutput.WriteException {
        int iWrite;
        CapabilityChangeListener capabilityChangeListener;
        if (!this.isOutputPcm && this.framesPerEncodedSample == 0) {
            this.framesPerEncodedSample = DefaultAudioSink.getFramesPerEncodedSample(this.config.encoding, byteBuffer);
        }
        maybeReportUnderrun();
        int iRemaining = byteBuffer.remaining();
        if (this.config.isTunneling) {
            if (j == Long.MIN_VALUE) {
                j = this.lastTunnelingAvSyncPresentationTimeUs;
            } else {
                this.lastTunnelingAvSyncPresentationTimeUs = j;
            }
            iWrite = writeWithAvSync(this.audioTrack, byteBuffer, j);
        } else {
            iWrite = this.audioTrack.write(byteBuffer, byteBuffer.remaining(), 1);
        }
        if (iWrite < 0) {
            boolean zIsAudioTrackDeadObject = isAudioTrackDeadObject(iWrite);
            if (zIsAudioTrackDeadObject && (capabilityChangeListener = this.capabilityChangeListener) != null) {
                capabilityChangeListener.onRecoverableWriteError();
            }
            throw new AudioOutput.WriteException(iWrite, zIsAudioTrackDeadObject);
        }
        boolean z = iWrite == iRemaining;
        if (this.isOutputPcm) {
            this.writtenPcmBytes += (long) iWrite;
            return z;
        }
        if (z) {
            this.writtenEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) i);
        }
        return z;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void stop() {
        if (this.hasBeenStopped) {
            return;
        }
        this.hasBeenStopped = true;
        this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void release() {
        if (this.audioTrackPositionTracker.isPlaying()) {
            this.audioTrack.pause();
        }
        if (Build.VERSION.SDK_INT >= 29 && isOffloadedPlayback()) {
            ((StreamEventCallbackV29) Preconditions.checkNotNull(this.offloadStreamEventCallbackV29)).unregister();
        }
        OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = this.onRoutingChangedListener;
        if (onRoutingChangedListenerApi24 != null) {
            onRoutingChangedListenerApi24.release();
            this.onRoutingChangedListener = null;
        }
        releaseAudioTrackAsync(this.audioTrack, this.listeners);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setVolume(float f) {
        this.audioTrack.setVolume(f);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        try {
            this.audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(Util.constrainValue(playbackParameters.speed, 0.1f, this.maxPlaybackSpeed)).setPitch(Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f)).setAudioFallbackMode(2));
        } catch (IllegalArgumentException e) {
            Log.m165w("AudioTrackAudioOutput", "Failed to set playback params", e);
        }
        this.audioTrackPositionTracker.setAudioTrackPlaybackSpeed(this.audioTrack.getPlaybackParams().getSpeed());
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setOffloadDelayPadding(int i, int i2) {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        this.audioTrack.setOffloadDelayPadding(i, i2);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setOffloadEndOfStream() {
        if (Build.VERSION.SDK_INT >= 29 && this.audioTrack.getPlayState() == 3) {
            this.audioTrack.setOffloadEndOfStream();
            this.audioTrackPositionTracker.expectRawPlaybackHeadReset();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPlayerId(PlayerId playerId) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        LogSessionId logSessionId = playerId.getLogSessionId();
        if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            return;
        }
        this.audioTrack.setLogSessionId(logSessionId);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void attachAuxEffect(int i) {
        this.audioTrack.attachAuxEffect(i);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setAuxEffectSendLevel(float f) {
        this.audioTrack.setAuxEffectSendLevel(f);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.audioTrack.setPreferredDevice(audioDeviceInfo);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean isStalled() {
        return this.audioTrackPositionTracker.isStalled(getWrittenFrames());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getWrittenFrames() {
        return this.isOutputPcm ? Util.ceilDivide(this.writtenPcmBytes, this.pcmFrameSize) : this.writtenEncodedFrames;
    }

    private int writeWithAvSync(AudioTrack audioTrack, ByteBuffer byteBuffer, long j) {
        int iRemaining = byteBuffer.remaining();
        if (Build.VERSION.SDK_INT >= 26) {
            return audioTrack.write(byteBuffer, iRemaining, 1, j * 1000);
        }
        if (this.avSyncHeader == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.avSyncHeader = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, iRemaining);
            this.avSyncHeader.putLong(8, j * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = iRemaining;
        }
        int iRemaining2 = this.avSyncHeader.remaining();
        if (iRemaining2 > 0) {
            int iWrite = audioTrack.write(this.avSyncHeader, iRemaining2, 1);
            if (iWrite < 0) {
                this.bytesUntilNextAvSync = 0;
                return iWrite;
            }
            if (iWrite < iRemaining2) {
                return 0;
            }
        }
        int iWrite2 = audioTrack.write(byteBuffer, iRemaining, 1);
        if (iWrite2 < 0) {
            this.bytesUntilNextAvSync = 0;
            return iWrite2;
        }
        this.bytesUntilNextAvSync -= iWrite2;
        return iWrite2;
    }

    private void maybeReportUnderrun() {
        if (this.listeners.isRunningOnCorrectThread() && hasPendingAudioTrackUnderruns(getWrittenFrames())) {
            this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((AudioOutput.Listener) obj).onUnderrun();
                }
            });
        }
    }

    private boolean hasPendingAudioTrackUnderruns(long j) {
        int audioOutputUnderrunCount = getAudioOutputUnderrunCount(j);
        boolean z = audioOutputUnderrunCount > this.lastUnderrunCount;
        this.lastUnderrunCount = audioOutputUnderrunCount;
        return z;
    }

    private int getAudioOutputUnderrunCount(long j) {
        return this.audioTrack.getUnderrunCount();
    }

    private static void releaseAudioTrackAsync(final AudioTrack audioTrack, final ListenerSet<AudioOutput.Listener> listenerSet) {
        final Handler handlerCreateHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
        synchronized (releaseExecutorLock) {
            try {
                if (releaseExecutor == null) {
                    releaseExecutor = Util.newSingleThreadScheduledExecutor("ExoPlayer:AudioTrackReleaseThread");
                }
                pendingReleaseCount++;
                releaseExecutor.schedule(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioTrackAudioOutput.$r8$lambda$7Kmj349OLYgoSoS_sBzpedENrIo(audioTrack, handlerCreateHandlerForCurrentLooper, listenerSet);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$7Kmj349OLYgoSoS_sBzpedENrIo(AudioTrack audioTrack, Handler handler, final ListenerSet listenerSet) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioTrackAudioOutput.$r8$lambda$JTyOMQgTVjn2JuPrAI8Rp4gKPbU(listenerSet);
                    }
                });
            }
            synchronized (releaseExecutorLock) {
                try {
                    int i = pendingReleaseCount - 1;
                    pendingReleaseCount = i;
                    if (i == 0) {
                        ((ScheduledExecutorService) Preconditions.checkNotNull(releaseExecutor)).shutdown();
                        releaseExecutor = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            if (handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioTrackAudioOutput.$r8$lambda$JTyOMQgTVjn2JuPrAI8Rp4gKPbU(listenerSet);
                    }
                });
            }
            synchronized (releaseExecutorLock) {
                try {
                    int i2 = pendingReleaseCount - 1;
                    pendingReleaseCount = i2;
                    if (i2 == 0) {
                        ((ScheduledExecutorService) Preconditions.checkNotNull(releaseExecutor)).shutdown();
                        releaseExecutor = null;
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$JTyOMQgTVjn2JuPrAI8Rp4gKPbU(ListenerSet listenerSet) {
        if (listenerSet.isRunningOnCorrectThread()) {
            listenerSet.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda3
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((AudioOutput.Listener) obj).onReleased();
                }
            });
        }
    }

    public final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        private PositionTrackerListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + AudioTrackAudioOutput.this.getWrittenFrames();
            if (AudioTrackAudioOutputProvider.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.m164w("AudioTrackAudioOutput", str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + AudioTrackAudioOutput.this.getWrittenFrames();
            if (AudioTrackAudioOutputProvider.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.m164w("AudioTrackAudioOutput", str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j) {
            Log.m164w("AudioTrackAudioOutput", "Ignoring impossibly large audio latency: " + j);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(final long j) {
            if (AudioTrackAudioOutput.this.listeners.isRunningOnCorrectThread()) {
                AudioTrackAudioOutput.this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$PositionTrackerListener$$ExternalSyntheticLambda0
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((AudioOutput.Listener) obj).onPositionAdvancing(j);
                    }
                });
            }
        }
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    public static final class OnRoutingChangedListenerApi24 {
        private final AudioTrack audioTrack;
        private final CapabilityChangeListener capabilityChangeListener;
        private AudioRouting.OnRoutingChangedListener listener;
        private final Handler playbackThreadHandler;

        private OnRoutingChangedListenerApi24(AudioTrack audioTrack, CapabilityChangeListener capabilityChangeListener) {
            this.audioTrack = audioTrack;
            this.capabilityChangeListener = capabilityChangeListener;
            Handler handlerCreateHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
            this.playbackThreadHandler = handlerCreateHandlerForCurrentLooper;
            AudioRouting.OnRoutingChangedListener onRoutingChangedListener = new AudioRouting.OnRoutingChangedListener() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0
                @Override // android.media.AudioRouting.OnRoutingChangedListener
                public final void onRoutingChanged(AudioRouting audioRouting) {
                    this.f$0.onRoutingChanged(audioRouting);
                }
            };
            this.listener = onRoutingChangedListener;
            audioTrack.addOnRoutingChangedListener(onRoutingChangedListener, handlerCreateHandlerForCurrentLooper);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            this.audioTrack.removeOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) Preconditions.checkNotNull(this.listener));
            this.listener = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRoutingChanged(final AudioRouting audioRouting) {
            if (this.listener == null) {
                return;
            }
            BackgroundExecutor.get().execute(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AudioTrackAudioOutput.OnRoutingChangedListenerApi24.$r8$lambda$YVRF3NpMcATsccv8WAa8UR6VFN4(this.f$0, audioRouting);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$YVRF3NpMcATsccv8WAa8UR6VFN4(final OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24, AudioRouting audioRouting) {
            onRoutingChangedListenerApi24.getClass();
            final AudioDeviceInfo routedDevice = audioRouting.getRoutedDevice();
            if (routedDevice != null) {
                onRoutingChangedListenerApi24.playbackThreadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioTrackAudioOutput.OnRoutingChangedListenerApi24.$r8$lambda$qH6tPpD9uO9FViRUMfhyLgLyEFs(this.f$0, routedDevice);
                    }
                });
            }
        }

        public static /* synthetic */ void $r8$lambda$qH6tPpD9uO9FViRUMfhyLgLyEFs(OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24, AudioDeviceInfo audioDeviceInfo) {
            if (onRoutingChangedListenerApi24.listener == null) {
                return;
            }
            onRoutingChangedListenerApi24.capabilityChangeListener.onRoutedDeviceChanged(audioDeviceInfo);
        }
    }

    public final class StreamEventCallbackV29 {
        private final AudioTrack$StreamEventCallback callback;
        private final Handler handler;

        private StreamEventCallbackV29() {
            Handler handlerCreateHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
            this.handler = handlerCreateHandlerForCurrentLooper;
            AudioTrack$StreamEventCallback audioTrack$StreamEventCallback = new AudioTrack$StreamEventCallback() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput.StreamEventCallbackV29.1
                public void onDataRequest(AudioTrack audioTrack, int i) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new C0735x64e7437c());
                }

                public void onPresentationEnded(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$StreamEventCallbackV29$1$$ExternalSyntheticLambda1
                        @Override // androidx.media3.common.util.ListenerSet.Event
                        public final void invoke(Object obj) {
                            ((AudioOutput.Listener) obj).onOffloadPresentationEnded();
                        }
                    });
                }

                public void onTearDown(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new C0735x64e7437c());
                }
            };
            this.callback = audioTrack$StreamEventCallback;
            AudioTrack audioTrack = AudioTrackAudioOutput.this.audioTrack;
            Objects.requireNonNull(handlerCreateHandlerForCurrentLooper);
            audioTrack.registerStreamEventCallback(new ExecutorC0733x95b99d2f(handlerCreateHandlerForCurrentLooper), audioTrack$StreamEventCallback);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unregister() {
            AudioTrackAudioOutput.this.audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }
}
