package org.webrtc.audio;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import java.nio.ByteBuffer;
import okio.Buffer$$ExternalSyntheticBUOutline2;
import org.telegram.messenger.FileLog;
import org.webrtc.CalledByNative;
import org.webrtc.Logging;
import org.webrtc.ThreadUtils;
import org.webrtc.audio.JavaAudioDeviceModule;

/* JADX INFO: loaded from: classes4.dex */
class WebRtcAudioTrack {
    private static final int AUDIO_TRACK_START = 0;
    private static final int AUDIO_TRACK_STOP = 1;
    private static final long AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS = 2000;
    private static final int BITS_PER_SAMPLE = 16;
    private static final int BUFFERS_PER_SECOND = 100;
    private static final int CALLBACK_BUFFER_SIZE_MS = 10;
    private static final int DEFAULT_USAGE = getDefaultUsageAttribute();
    private static final String TAG = "WebRtcAudioTrackExternal";
    private final AudioAttributes audioAttributes;
    private final AudioManager audioManager;
    private AudioTrackThread audioThread;
    private AudioTrack audioTrack;
    private ByteBuffer byteBuffer;
    private final Context context;
    private byte[] emptyBytes;
    private final JavaAudioDeviceModule.AudioTrackErrorCallback errorCallback;
    private int initialBufferSizeInFrames;
    private long nativeAudioTrack;
    private volatile boolean speakerMute;
    private final JavaAudioDeviceModule.AudioTrackStateCallback stateCallback;
    private final ThreadUtils.ThreadChecker threadChecker;
    private boolean useLowLatency;
    private final VolumeLogger volumeLogger;

    private int channelCountToConfiguration(int i) {
        return i == 1 ? 4 : 12;
    }

    private static int getDefaultUsageAttribute() {
        return 2;
    }

    private static native void nativeCacheDirectBufferAddress(long j, ByteBuffer byteBuffer);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeGetPlayoutData(long j, int i);

    public class AudioTrackThread extends Thread {
        private LowLatencyAudioBufferManager bufferManager;
        private volatile boolean keepAlive;
        private long lastPlaybackHeadPosition;
        private long lastTimestamp;
        private long targetTimeNs;
        private long writtenFrames;

        public AudioTrackThread(String str) {
            super(str);
            this.keepAlive = true;
            this.writtenFrames = 0L;
            this.lastPlaybackHeadPosition = 0L;
            this.lastTimestamp = System.nanoTime();
            this.bufferManager = new LowLatencyAudioBufferManager();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            Logging.m968d(WebRtcAudioTrack.TAG, "AudioTrackThread" + WebRtcAudioUtils.getThreadInfo());
            WebRtcAudioTrack.assertTrue(WebRtcAudioTrack.this.audioTrack.getPlayState() == 3);
            WebRtcAudioTrack.this.doAudioTrackStateCallback(0);
            int iCapacity = WebRtcAudioTrack.this.byteBuffer.capacity();
            int channelCount = WebRtcAudioTrack.this.audioTrack.getChannelCount() * 2;
            int sampleRate = WebRtcAudioTrack.this.audioTrack.getSampleRate();
            this.targetTimeNs = System.nanoTime();
            while (this.keepAlive) {
                WebRtcAudioTrack.nativeGetPlayoutData(WebRtcAudioTrack.this.nativeAudioTrack, iCapacity);
                WebRtcAudioTrack.assertTrue(iCapacity <= WebRtcAudioTrack.this.byteBuffer.remaining());
                if (WebRtcAudioTrack.this.speakerMute) {
                    WebRtcAudioTrack.this.byteBuffer.clear();
                    WebRtcAudioTrack.this.byteBuffer.put(WebRtcAudioTrack.this.emptyBytes);
                    WebRtcAudioTrack.this.byteBuffer.position(0);
                }
                int iWriteBytes = writeBytes(WebRtcAudioTrack.this.audioTrack, WebRtcAudioTrack.this.byteBuffer, iCapacity);
                if (iWriteBytes != iCapacity) {
                    Logging.m969e(WebRtcAudioTrack.TAG, "AudioTrack.write played invalid number of bytes: " + iWriteBytes);
                    if (iWriteBytes < 0) {
                        this.keepAlive = false;
                        WebRtcAudioTrack.this.reportWebRtcAudioTrackError("AudioTrack.write failed: " + iWriteBytes);
                    }
                }
                if (WebRtcAudioTrack.this.useLowLatency) {
                    this.bufferManager.maybeAdjustBufferSize(WebRtcAudioTrack.this.audioTrack);
                }
                WebRtcAudioTrack.this.byteBuffer.rewind();
                this.writtenFrames += (long) (iWriteBytes / channelCount);
                long playbackHeadPosition = ((this.writtenFrames - ((long) WebRtcAudioTrack.this.audioTrack.getPlaybackHeadPosition())) * 1000) / ((long) sampleRate);
                WebRtcAudioTrack.this.byteBuffer.rewind();
                this.targetTimeNs += 10000000;
                long jNanoTime = this.targetTimeNs - System.nanoTime();
                if (jNanoTime > 0) {
                    try {
                        Thread.sleep(jNanoTime / 1000000, (int) (jNanoTime % 1000000));
                    } catch (InterruptedException e) {
                        FileLog.m898e(e);
                    }
                } else {
                    this.targetTimeNs = System.nanoTime();
                }
            }
        }

        private int writeBytes(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
            return audioTrack.write(byteBuffer, i, 0);
        }

        public void stopThread() {
            Logging.m968d(WebRtcAudioTrack.TAG, "stopThread");
            this.keepAlive = false;
        }
    }

    @CalledByNative
    public WebRtcAudioTrack(Context context, AudioManager audioManager) {
        this(context, audioManager, null, null, null, false, true);
    }

    public WebRtcAudioTrack(Context context, AudioManager audioManager, AudioAttributes audioAttributes, JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback, JavaAudioDeviceModule.AudioTrackStateCallback audioTrackStateCallback, boolean z, boolean z2) {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.threadChecker = threadChecker;
        threadChecker.detachThread();
        this.context = context;
        this.audioManager = audioManager;
        this.audioAttributes = audioAttributes;
        this.errorCallback = audioTrackErrorCallback;
        this.stateCallback = audioTrackStateCallback;
        this.volumeLogger = z2 ? new VolumeLogger(audioManager) : null;
        this.useLowLatency = z;
        Logging.m968d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
    }

    @CalledByNative
    public void setNativeAudioTrack(long j) {
        this.nativeAudioTrack = j;
    }

    @CalledByNative
    private int initPlayout(int i, int i2, double d) {
        this.threadChecker.checkIsOnValidThread();
        Logging.m968d(TAG, "initPlayout(sampleRate=" + i + ", channels=" + i2 + ", bufferSizeFactor=" + d + ")");
        this.byteBuffer = ByteBuffer.allocateDirect(i2 * 2 * (i / 100));
        StringBuilder sb = new StringBuilder("byteBuffer.capacity: ");
        sb.append(this.byteBuffer.capacity());
        Logging.m968d(TAG, sb.toString());
        this.emptyBytes = new byte[this.byteBuffer.capacity()];
        nativeCacheDirectBufferAddress(this.nativeAudioTrack, this.byteBuffer);
        int iChannelCountToConfiguration = channelCountToConfiguration(i2);
        int minBufferSize = (int) (((double) AudioTrack.getMinBufferSize(i, iChannelCountToConfiguration, 2)) * d);
        Logging.m968d(TAG, "minBufferSizeInBytes: " + minBufferSize);
        if (minBufferSize < this.byteBuffer.capacity()) {
            reportWebRtcAudioTrackInitError("AudioTrack.getMinBufferSize returns an invalid value.");
            return -1;
        }
        if (d > 1.0d) {
            this.useLowLatency = false;
        }
        if (this.audioTrack != null) {
            reportWebRtcAudioTrackInitError("Conflict with existing AudioTrack.");
            return -1;
        }
        try {
            if (this.useLowLatency && Build.VERSION.SDK_INT >= 26) {
                this.audioTrack = createAudioTrackOnOreoOrHigher(i, iChannelCountToConfiguration, minBufferSize, this.audioAttributes);
            } else {
                this.audioTrack = createAudioTrackBeforeOreo(i, iChannelCountToConfiguration, minBufferSize, this.audioAttributes);
            }
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack == null || audioTrack.getState() != 1) {
                reportWebRtcAudioTrackInitError("Initialization of audio track failed.");
                releaseAudioResources();
                return -1;
            }
            this.initialBufferSizeInFrames = this.audioTrack.getBufferSizeInFrames();
            logMainParameters();
            logMainParametersExtended();
            return minBufferSize;
        } catch (IllegalArgumentException e) {
            reportWebRtcAudioTrackInitError(e.getMessage());
            releaseAudioResources();
            return -1;
        }
    }

    @CalledByNative
    private boolean startPlayout() {
        this.threadChecker.checkIsOnValidThread();
        VolumeLogger volumeLogger = this.volumeLogger;
        if (volumeLogger != null) {
            volumeLogger.start();
        }
        Logging.m968d(TAG, "startPlayout");
        assertTrue(this.audioTrack != null);
        assertTrue(this.audioThread == null);
        try {
            this.audioTrack.play();
            if (this.audioTrack.getPlayState() != 3) {
                reportWebRtcAudioTrackStartError(JavaAudioDeviceModule.AudioTrackStartErrorCode.AUDIO_TRACK_START_STATE_MISMATCH, "AudioTrack.play failed - incorrect state :" + this.audioTrack.getPlayState());
                releaseAudioResources();
                return false;
            }
            AudioTrackThread audioTrackThread = new AudioTrackThread("AudioTrackJavaThread");
            this.audioThread = audioTrackThread;
            audioTrackThread.start();
            return true;
        } catch (IllegalStateException e) {
            reportWebRtcAudioTrackStartError(JavaAudioDeviceModule.AudioTrackStartErrorCode.AUDIO_TRACK_START_EXCEPTION, "AudioTrack.play failed: " + e.getMessage());
            releaseAudioResources();
            return false;
        }
    }

    @CalledByNative
    private boolean stopPlayout() {
        this.threadChecker.checkIsOnValidThread();
        VolumeLogger volumeLogger = this.volumeLogger;
        if (volumeLogger != null) {
            volumeLogger.stop();
        }
        Logging.m968d(TAG, "stopPlayout");
        assertTrue(this.audioThread != null);
        logUnderrunCount();
        this.audioThread.stopThread();
        Logging.m968d(TAG, "Stopping the AudioTrackThread...");
        this.audioThread.interrupt();
        if (!ThreadUtils.joinUninterruptibly(this.audioThread, AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS)) {
            Logging.m969e(TAG, "Join of AudioTrackThread timed out.");
            WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        }
        Logging.m968d(TAG, "AudioTrackThread has now been stopped.");
        this.audioThread = null;
        if (this.audioTrack != null) {
            Logging.m968d(TAG, "Calling AudioTrack.stop...");
            try {
                this.audioTrack.stop();
                Logging.m968d(TAG, "AudioTrack.stop is done.");
                doAudioTrackStateCallback(1);
            } catch (IllegalStateException e) {
                Logging.m969e(TAG, "AudioTrack.stop failed: " + e.getMessage());
            }
        }
        releaseAudioResources();
        return true;
    }

    @CalledByNative
    private int getStreamMaxVolume() {
        this.threadChecker.checkIsOnValidThread();
        Logging.m968d(TAG, "getStreamMaxVolume");
        return this.audioManager.getStreamMaxVolume(0);
    }

    @CalledByNative
    private boolean setStreamVolume(int i) {
        this.threadChecker.checkIsOnValidThread();
        Logging.m968d(TAG, "setStreamVolume(" + i + ")");
        if (this.audioManager.isVolumeFixed()) {
            Logging.m969e(TAG, "The device implements a fixed volume policy.");
            return false;
        }
        this.audioManager.setStreamVolume(0, i, 0);
        return true;
    }

    @CalledByNative
    private int getStreamVolume() {
        this.threadChecker.checkIsOnValidThread();
        Logging.m968d(TAG, "getStreamVolume");
        return this.audioManager.getStreamVolume(0);
    }

    @CalledByNative
    private int GetPlayoutUnderrunCount() {
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            return audioTrack.getUnderrunCount();
        }
        return -1;
    }

    private void logMainParameters() {
        Logging.m968d(TAG, "AudioTrack: session ID: " + this.audioTrack.getAudioSessionId() + ", channels: " + this.audioTrack.getChannelCount() + ", sample rate: " + this.audioTrack.getSampleRate() + ", max gain: " + AudioTrack.getMaxVolume());
    }

    private static void logNativeOutputSampleRate(int i) {
        int nativeOutputSampleRate = AudioTrack.getNativeOutputSampleRate(0);
        Logging.m968d(TAG, "nativeOutputSampleRate: " + nativeOutputSampleRate);
        if (i != nativeOutputSampleRate) {
            Logging.m972w(TAG, "Unable to use fast mode since requested sample rate is not native");
        }
    }

    @TargetApi(21)
    private static AudioAttributes getAudioAttributes(AudioAttributes audioAttributes) {
        AudioAttributes.Builder contentType = new AudioAttributes.Builder().setUsage(DEFAULT_USAGE).setContentType(1);
        if (audioAttributes != null) {
            if (audioAttributes.getUsage() != 0) {
                contentType.setUsage(audioAttributes.getUsage());
            }
            if (audioAttributes.getContentType() != 0) {
                contentType.setContentType(audioAttributes.getContentType());
            }
            contentType.setFlags(audioAttributes.getFlags());
            if (Build.VERSION.SDK_INT >= 29) {
                contentType = applyAttributesOnQOrHigher(contentType, audioAttributes);
            }
        }
        return contentType.build();
    }

    private static AudioTrack createAudioTrackBeforeOreo(int i, int i2, int i3, AudioAttributes audioAttributes) {
        Logging.m968d(TAG, "createAudioTrackBeforeOreo");
        logNativeOutputSampleRate(i);
        return new AudioTrack(getAudioAttributes(audioAttributes), new AudioFormat.Builder().setEncoding(2).setSampleRate(i).setChannelMask(i2).build(), i3, 1, 0);
    }

    @TargetApi(26)
    private static AudioTrack createAudioTrackOnOreoOrHigher(int i, int i2, int i3, AudioAttributes audioAttributes) {
        Logging.m968d(TAG, "createAudioTrackOnOreoOrHigher");
        logNativeOutputSampleRate(i);
        return new AudioTrack.Builder().setAudioAttributes(getAudioAttributes(audioAttributes)).setAudioFormat(new AudioFormat.Builder().setEncoding(2).setSampleRate(i).setChannelMask(i2).build()).setBufferSizeInBytes(i3).setPerformanceMode(1).setTransferMode(1).setSessionId(0).build();
    }

    @TargetApi(29)
    private static AudioAttributes.Builder applyAttributesOnQOrHigher(AudioAttributes.Builder builder, AudioAttributes audioAttributes) {
        return builder.setAllowedCapturePolicy(audioAttributes.getAllowedCapturePolicy());
    }

    private void logBufferSizeInFrames() {
        Logging.m968d(TAG, "AudioTrack: buffer size in frames: " + this.audioTrack.getBufferSizeInFrames());
    }

    @CalledByNative
    private int getBufferSizeInFrames() {
        return this.audioTrack.getBufferSizeInFrames();
    }

    @CalledByNative
    private int getInitialBufferSizeInFrames() {
        return this.initialBufferSizeInFrames;
    }

    private void logBufferCapacityInFrames() {
        Logging.m968d(TAG, "AudioTrack: buffer capacity in frames: " + this.audioTrack.getBufferCapacityInFrames());
    }

    private void logMainParametersExtended() {
        logBufferSizeInFrames();
        logBufferCapacityInFrames();
    }

    private void logUnderrunCount() {
        Logging.m968d(TAG, "underrun count: " + this.audioTrack.getUnderrunCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertTrue(boolean z) {
        if (z) {
            return;
        }
        Buffer$$ExternalSyntheticBUOutline2.m835m("Expected condition to be true");
    }

    public void setSpeakerMute(boolean z) {
        Logging.m972w(TAG, "setSpeakerMute(" + z + ")");
        this.speakerMute = z;
    }

    private void releaseAudioResources() {
        Logging.m968d(TAG, "releaseAudioResources");
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this.audioTrack = null;
        }
    }

    private void reportWebRtcAudioTrackInitError(String str) {
        Logging.m969e(TAG, "Init playout error: " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback = this.errorCallback;
        if (audioTrackErrorCallback != null) {
            audioTrackErrorCallback.onWebRtcAudioTrackInitError(str);
        }
    }

    private void reportWebRtcAudioTrackStartError(JavaAudioDeviceModule.AudioTrackStartErrorCode audioTrackStartErrorCode, String str) {
        Logging.m969e(TAG, "Start playout error: " + audioTrackStartErrorCode + ". " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback = this.errorCallback;
        if (audioTrackErrorCallback != null) {
            audioTrackErrorCallback.onWebRtcAudioTrackStartError(audioTrackStartErrorCode, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportWebRtcAudioTrackError(String str) {
        Logging.m969e(TAG, "Run-time playback error: " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback = this.errorCallback;
        if (audioTrackErrorCallback != null) {
            audioTrackErrorCallback.onWebRtcAudioTrackError(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAudioTrackStateCallback(int i) {
        Logging.m968d(TAG, "doAudioTrackStateCallback: " + i);
        JavaAudioDeviceModule.AudioTrackStateCallback audioTrackStateCallback = this.stateCallback;
        if (audioTrackStateCallback != null) {
            if (i == 0) {
                audioTrackStateCallback.onWebRtcAudioTrackStart();
            } else if (i == 1) {
                audioTrackStateCallback.onWebRtcAudioTrackStop();
            } else {
                Logging.m969e(TAG, "Invalid audio state");
            }
        }
    }
}
