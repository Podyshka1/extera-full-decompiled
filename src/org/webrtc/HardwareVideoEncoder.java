package org.webrtc;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Bundle;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.FileLog;
import org.webrtc.EglBase14;
import org.webrtc.EncodedImage;
import org.webrtc.ThreadUtils;
import org.webrtc.VideoEncoder;
import org.webrtc.VideoFrame;

/* JADX INFO: loaded from: classes4.dex */
class HardwareVideoEncoder implements VideoEncoder {
    private static final int DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US = 100000;
    private static final int MAX_ENCODER_Q_SIZE = 2;
    private static final int MAX_VIDEO_FRAMERATE = 30;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 5000;
    private static final int REQUIRED_RESOLUTION_ALIGNMENT = 16;
    private static final String TAG = "HardwareVideoEncoder";
    private int adjustedBitrate;
    private boolean automaticResizeOn;
    private final BitrateAdjuster bitrateAdjuster;
    private VideoEncoder.Callback callback;
    private MediaCodecWrapper codec;
    private final String codecName;
    private final VideoCodecMimeType codecType;
    private ByteBuffer configBuffer;
    private final ThreadUtils.ThreadChecker encodeThreadChecker;
    private final long forcedKeyFrameNs;
    private int frameSizeBytes;
    private int height;
    private boolean isEncodingStatisticsEnabled;
    private boolean isSemiPlanar;
    private final int keyFrameIntervalSec;
    private long lastKeyFrameNs;
    private final MediaCodecWrapperFactory mediaCodecWrapperFactory;
    private long nextPresentationTimestampUs;
    private final BusyCount outputBuffersBusyCount;
    private Thread outputThread;
    private final ThreadUtils.ThreadChecker outputThreadChecker;
    private final Map<String, String> params;
    private volatile boolean running;
    private final EglBase14.Context sharedContext;
    private volatile Exception shutdownException;
    private int sliceHeight;
    private int stride;
    private final Integer surfaceColorFormat;
    private EglBase14 textureEglBase;
    private Surface textureInputSurface;
    private boolean useSurfaceMode;
    private int width;
    private final Integer yuvColorFormat;
    private final GlRectDrawer textureDrawer = new GlRectDrawer();
    private final VideoFrameDrawer videoFrameDrawer = new VideoFrameDrawer();
    private final BlockingDeque<EncodedImage.Builder> outputBuilders = new LinkedBlockingDeque();

    public static class BusyCount {
        private int count;
        private final Object countLock;

        private BusyCount() {
            this.countLock = new Object();
        }

        public void increment() {
            synchronized (this.countLock) {
                this.count++;
            }
        }

        public void decrement() {
            synchronized (this.countLock) {
                try {
                    int i = this.count - 1;
                    this.count = i;
                    if (i == 0) {
                        this.countLock.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void waitForZero() {
            boolean z;
            synchronized (this.countLock) {
                z = false;
                while (this.count > 0) {
                    try {
                        this.countLock.wait();
                    } catch (InterruptedException e) {
                        Logging.m970e(HardwareVideoEncoder.TAG, "Interrupted while waiting on busy count", e);
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public HardwareVideoEncoder(MediaCodecWrapperFactory mediaCodecWrapperFactory, String str, VideoCodecMimeType videoCodecMimeType, Integer num, Integer num2, Map<String, String> map, int i, int i2, BitrateAdjuster bitrateAdjuster, EglBase14.Context context) {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.encodeThreadChecker = threadChecker;
        this.outputThreadChecker = new ThreadUtils.ThreadChecker();
        this.outputBuffersBusyCount = new BusyCount();
        this.mediaCodecWrapperFactory = mediaCodecWrapperFactory;
        this.codecName = str;
        this.codecType = videoCodecMimeType;
        this.surfaceColorFormat = num;
        this.yuvColorFormat = num2;
        this.params = map;
        this.keyFrameIntervalSec = i;
        this.forcedKeyFrameNs = TimeUnit.MILLISECONDS.toNanos(i2);
        this.bitrateAdjuster = bitrateAdjuster;
        this.sharedContext = context;
        threadChecker.detachThread();
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus initEncode(VideoEncoder.Settings settings, VideoEncoder.Callback callback) {
        int i;
        this.encodeThreadChecker.checkIsOnValidThread();
        this.callback = callback;
        this.automaticResizeOn = settings.automaticResizeOn;
        this.width = settings.width;
        this.height = settings.height;
        this.useSurfaceMode = canUseSurface();
        int i2 = settings.startBitrate;
        if (i2 != 0 && (i = settings.maxFramerate) != 0) {
            this.bitrateAdjuster.setTargets(i2 * 1000, i);
        }
        this.adjustedBitrate = this.bitrateAdjuster.getAdjustedBitrateBps();
        Logging.m968d(TAG, "initEncode name: " + this.codecName + " type: " + this.codecType + " width: " + this.width + " height: " + this.height + " framerate_fps: " + settings.maxFramerate + " bitrate_kbps: " + settings.startBitrate + " surface mode: " + this.useSurfaceMode);
        return initEncodeInternal();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8 A[Catch: IllegalStateException -> 0x009b, IllegalArgumentException -> 0x009e, TryCatch #3 {IllegalArgumentException -> 0x009e, IllegalStateException -> 0x009b, blocks: (B:9:0x002d, B:11:0x0066, B:15:0x0075, B:30:0x00a8, B:20:0x0084, B:22:0x008c, B:27:0x00a1, B:31:0x00af, B:33:0x00ba, B:34:0x00bf, B:36:0x00c5, B:37:0x00cc, B:39:0x00e5, B:40:0x0101), top: B:49:0x002d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private VideoCodecStatus initEncodeInternal() {
        this.encodeThreadChecker.checkIsOnValidThread();
        this.nextPresentationTimestampUs = 0L;
        this.lastKeyFrameNs = -1L;
        this.isEncodingStatisticsEnabled = false;
        try {
            this.codec = this.mediaCodecWrapperFactory.createByCodecName(this.codecName);
            int iIntValue = (this.useSurfaceMode ? this.surfaceColorFormat : this.yuvColorFormat).intValue();
            try {
                MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(this.codecType.mimeType(), this.width, this.height);
                mediaFormatCreateVideoFormat.setInteger("bitrate", this.adjustedBitrate);
                mediaFormatCreateVideoFormat.setInteger("bitrate-mode", 2);
                mediaFormatCreateVideoFormat.setInteger("color-format", iIntValue);
                mediaFormatCreateVideoFormat.setFloat("frame-rate", (float) this.bitrateAdjuster.getAdjustedFramerateFps());
                mediaFormatCreateVideoFormat.setInteger("i-frame-interval", this.keyFrameIntervalSec);
                if (this.codecType == VideoCodecMimeType.H264) {
                    String str = this.params.get("profile-level-id");
                    if (str == null) {
                        str = "42e01f";
                    }
                    int iHashCode = str.hashCode();
                    if (iHashCode != 1537948542) {
                        if (iHashCode != 1595523974 || !str.equals("640c1f")) {
                            Logging.m972w(TAG, "Unknown profile level id: ".concat(str));
                        } else {
                            mediaFormatCreateVideoFormat.setInteger("profile", 8);
                            mediaFormatCreateVideoFormat.setInteger("level", 256);
                        }
                    } else if (str.equals("42e01f")) {
                    }
                }
                if (this.codecName.equals("c2.google.av1.encoder")) {
                    mediaFormatCreateVideoFormat.setInteger("vendor.google-av1enc.encoding-preset.int32.value", 1);
                }
                if (isEncodingStatisticsSupported()) {
                    mediaFormatCreateVideoFormat.setInteger("video-encoding-statistics-level", 1);
                    this.isEncodingStatisticsEnabled = true;
                }
                Logging.m968d(TAG, "Format: " + mediaFormatCreateVideoFormat);
                this.codec.configure(mediaFormatCreateVideoFormat, null, null, 1);
                if (this.useSurfaceMode) {
                    this.textureEglBase = EglBase.createEgl14(this.sharedContext, EglBase.CONFIG_RECORDABLE);
                    Surface surfaceCreateInputSurface = this.codec.createInputSurface();
                    this.textureInputSurface = surfaceCreateInputSurface;
                    this.textureEglBase.createSurface(surfaceCreateInputSurface);
                    this.textureEglBase.makeCurrent();
                }
                updateInputFormat(this.codec.getInputFormat());
                this.codec.start();
                this.running = true;
                this.outputThreadChecker.detachThread();
                Thread threadCreateOutputThread = createOutputThread();
                this.outputThread = threadCreateOutputThread;
                threadCreateOutputThread.start();
                return VideoCodecStatus.OK;
            } catch (IllegalArgumentException e) {
                e = e;
                Logging.m970e(TAG, "initEncodeInternal failed", e);
                release();
                return VideoCodecStatus.FALLBACK_SOFTWARE;
            } catch (IllegalStateException e2) {
                e = e2;
                Logging.m970e(TAG, "initEncodeInternal failed", e);
                release();
                return VideoCodecStatus.FALLBACK_SOFTWARE;
            }
        } catch (IOException | IllegalArgumentException unused) {
            Logging.m969e(TAG, "Cannot create media encoder " + this.codecName);
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus release() {
        VideoCodecStatus videoCodecStatus;
        this.encodeThreadChecker.checkIsOnValidThread();
        if (this.outputThread == null) {
            videoCodecStatus = VideoCodecStatus.OK;
        } else {
            this.running = false;
            if (!ThreadUtils.joinUninterruptibly(this.outputThread, 5000L)) {
                Logging.m969e(TAG, "Media encoder release timeout");
                videoCodecStatus = VideoCodecStatus.TIMEOUT;
            } else if (this.shutdownException != null) {
                Logging.m970e(TAG, "Media encoder release exception", this.shutdownException);
                videoCodecStatus = VideoCodecStatus.ERROR;
            } else {
                videoCodecStatus = VideoCodecStatus.OK;
            }
        }
        this.textureDrawer.release();
        this.videoFrameDrawer.release();
        EglBase14 eglBase14 = this.textureEglBase;
        if (eglBase14 != null) {
            eglBase14.release();
            this.textureEglBase = null;
        }
        Surface surface = this.textureInputSurface;
        if (surface != null) {
            surface.release();
            this.textureInputSurface = null;
        }
        this.outputBuilders.clear();
        this.codec = null;
        this.outputThread = null;
        this.encodeThreadChecker.detachThread();
        return videoCodecStatus;
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus encode(VideoFrame videoFrame, VideoEncoder.EncodeInfo encodeInfo) {
        VideoCodecStatus videoCodecStatusResetCodec;
        VideoCodecStatus videoCodecStatusEncodeByteBuffer;
        this.encodeThreadChecker.checkIsOnValidThread();
        if (this.codec == null) {
            return VideoCodecStatus.UNINITIALIZED;
        }
        VideoFrame.Buffer buffer = videoFrame.getBuffer();
        boolean z = videoFrame.getBuffer() instanceof VideoFrame.TextureBuffer;
        int width = videoFrame.getBuffer().getWidth();
        int height = videoFrame.getBuffer().getHeight();
        boolean z2 = canUseSurface() && z;
        if ((width != this.width || height != this.height || z2 != this.useSurfaceMode) && (videoCodecStatusResetCodec = resetCodec(width, height, z2)) != VideoCodecStatus.OK) {
            return videoCodecStatusResetCodec;
        }
        if (this.outputBuilders.size() > 2) {
            Logging.m969e(TAG, "Dropped frame, encoder queue full");
            return VideoCodecStatus.NO_OUTPUT;
        }
        boolean z3 = false;
        for (EncodedImage.FrameType frameType : encodeInfo.frameTypes) {
            if (frameType == EncodedImage.FrameType.VideoFrameKey) {
                z3 = true;
            }
        }
        if (z3 || shouldForceKeyFrame(videoFrame.getTimestampNs())) {
            requestKeyFrame(videoFrame.getTimestampNs());
        }
        int height2 = ((buffer.getHeight() * buffer.getWidth()) * 3) / 2;
        this.outputBuilders.offer(EncodedImage.builder().setCaptureTimeNs(videoFrame.getTimestampNs()).setEncodedWidth(videoFrame.getBuffer().getWidth()).setEncodedHeight(videoFrame.getBuffer().getHeight()).setRotation(videoFrame.getRotation()));
        long j = this.nextPresentationTimestampUs;
        this.nextPresentationTimestampUs += (long) (1000000.0d / this.bitrateAdjuster.getAdjustedFramerateFps());
        if (this.useSurfaceMode) {
            videoCodecStatusEncodeByteBuffer = encodeTextureBuffer(videoFrame, j);
        } else {
            videoCodecStatusEncodeByteBuffer = encodeByteBuffer(videoFrame, buffer, height2);
        }
        if (videoCodecStatusEncodeByteBuffer != VideoCodecStatus.OK) {
            this.outputBuilders.pollLast();
        }
        return videoCodecStatusEncodeByteBuffer;
    }

    private VideoCodecStatus encodeTextureBuffer(VideoFrame videoFrame, long j) {
        this.encodeThreadChecker.checkIsOnValidThread();
        try {
            this.textureEglBase.makeCurrent();
            GLES20.glClear(16384);
            this.videoFrameDrawer.drawFrame(new VideoFrame(videoFrame.getBuffer(), 0, videoFrame.getTimestampNs()), this.textureDrawer, null);
            this.textureEglBase.swapBuffers(TimeUnit.MICROSECONDS.toNanos(j), false);
            return VideoCodecStatus.OK;
        } catch (RuntimeException e) {
            Logging.m970e(TAG, "encodeTexture failed", e);
            return VideoCodecStatus.ERROR;
        }
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus setRateAllocation(VideoEncoder.BitrateAllocation bitrateAllocation, int i) {
        this.encodeThreadChecker.checkIsOnValidThread();
        if (i > 30) {
            i = 30;
        }
        this.bitrateAdjuster.setTargets(bitrateAllocation.getSum(), i);
        return VideoCodecStatus.OK;
    }

    private VideoCodecStatus encodeByteBuffer(VideoFrame videoFrame, VideoFrame.Buffer buffer, int i) {
        this.encodeThreadChecker.checkIsOnValidThread();
        long timestampNs = (videoFrame.getTimestampNs() + 500) / 1000;
        try {
            int iDequeueInputBuffer = this.codec.dequeueInputBuffer(0L);
            if (iDequeueInputBuffer == -1) {
                Logging.m968d(TAG, "Dropped frame, no input buffers available");
                return VideoCodecStatus.NO_OUTPUT;
            }
            try {
                ByteBuffer inputBuffer = this.codec.getInputBuffer(iDequeueInputBuffer);
                if (inputBuffer.capacity() < this.frameSizeBytes) {
                    Logging.m969e(TAG, "Input buffer size: " + inputBuffer.capacity() + " is smaller than frame size: " + this.frameSizeBytes);
                    return VideoCodecStatus.ERROR;
                }
                fillInputBuffer(inputBuffer, videoFrame.getBuffer());
                try {
                    this.codec.queueInputBuffer(iDequeueInputBuffer, 0, this.frameSizeBytes, timestampNs, 0);
                    return VideoCodecStatus.OK;
                } catch (IllegalStateException e) {
                    Logging.m970e(TAG, "queueInputBuffer failed", e);
                    return VideoCodecStatus.ERROR;
                }
            } catch (IllegalStateException e2) {
                Logging.m970e(TAG, "getInputBuffer with index=" + iDequeueInputBuffer + " failed", e2);
                return VideoCodecStatus.ERROR;
            }
        } catch (IllegalStateException e3) {
            Logging.m970e(TAG, "dequeueInputBuffer failed", e3);
            return VideoCodecStatus.ERROR;
        }
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus setRates(VideoEncoder.RateControlParameters rateControlParameters) {
        this.encodeThreadChecker.checkIsOnValidThread();
        this.bitrateAdjuster.setTargets(rateControlParameters.bitrate.getSum(), rateControlParameters.framerateFps);
        return VideoCodecStatus.OK;
    }

    @Override // org.webrtc.VideoEncoder
    public VideoEncoder.ScalingSettings getScalingSettings() {
        if (this.automaticResizeOn) {
            VideoCodecMimeType videoCodecMimeType = this.codecType;
            if (videoCodecMimeType == VideoCodecMimeType.VP8) {
                return new VideoEncoder.ScalingSettings(29, 95);
            }
            if (videoCodecMimeType == VideoCodecMimeType.H264) {
                return new VideoEncoder.ScalingSettings(24, 37);
            }
        }
        return VideoEncoder.ScalingSettings.OFF;
    }

    @Override // org.webrtc.VideoEncoder
    public String getImplementationName() {
        return this.codecName;
    }

    @Override // org.webrtc.VideoEncoder
    public VideoEncoder.EncoderInfo getEncoderInfo() {
        return new VideoEncoder.EncoderInfo(16, false);
    }

    private VideoCodecStatus resetCodec(int i, int i2, boolean z) {
        FileLog.m895d("resetCodec " + i + "x" + i2);
        this.encodeThreadChecker.checkIsOnValidThread();
        VideoCodecStatus videoCodecStatusRelease = release();
        if (videoCodecStatusRelease != VideoCodecStatus.OK) {
            return videoCodecStatusRelease;
        }
        this.width = i;
        this.height = i2;
        this.useSurfaceMode = z;
        return initEncodeInternal();
    }

    private boolean shouldForceKeyFrame(long j) {
        this.encodeThreadChecker.checkIsOnValidThread();
        long j2 = this.forcedKeyFrameNs;
        return j2 > 0 && j > this.lastKeyFrameNs + j2;
    }

    private void requestKeyFrame(long j) {
        this.encodeThreadChecker.checkIsOnValidThread();
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("request-sync", 0);
            this.codec.setParameters(bundle);
            this.lastKeyFrameNs = j;
        } catch (IllegalStateException e) {
            Logging.m970e(TAG, "requestKeyFrame failed", e);
        }
    }

    private Thread createOutputThread() {
        return new Thread() { // from class: org.webrtc.HardwareVideoEncoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (true) {
                    boolean z = HardwareVideoEncoder.this.running;
                    HardwareVideoEncoder hardwareVideoEncoder = HardwareVideoEncoder.this;
                    if (z) {
                        hardwareVideoEncoder.deliverEncodedImage();
                    } else {
                        hardwareVideoEncoder.releaseCodecOnOutputThread();
                        return;
                    }
                }
            }
        };
    }

    public void deliverEncodedImage() {
        ByteBuffer byteBufferSlice;
        EncodedImage.FrameType frameType;
        MediaFormat outputFormat;
        this.outputThreadChecker.checkIsOnValidThread();
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            final int iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(bufferInfo, 100000L);
            if (iDequeueOutputBuffer < 0) {
                if (iDequeueOutputBuffer == -3) {
                    this.outputBuffersBusyCount.waitForZero();
                    return;
                }
                return;
            }
            ByteBuffer outputBuffer = this.codec.getOutputBuffer(iDequeueOutputBuffer);
            outputBuffer.position(bufferInfo.offset);
            outputBuffer.limit(bufferInfo.offset + bufferInfo.size);
            if ((bufferInfo.flags & 2) != 0) {
                Logging.m968d(TAG, "Config frame generated. Offset: " + bufferInfo.offset + ". Size: " + bufferInfo.size);
                int i = bufferInfo.size;
                if (i > 0) {
                    VideoCodecMimeType videoCodecMimeType = this.codecType;
                    if (videoCodecMimeType == VideoCodecMimeType.H264 || videoCodecMimeType == VideoCodecMimeType.H265) {
                        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i);
                        this.configBuffer = byteBufferAllocateDirect;
                        byteBufferAllocateDirect.put(outputBuffer);
                        return;
                    }
                    return;
                }
                return;
            }
            this.bitrateAdjuster.reportEncodedFrame(bufferInfo.size);
            if (this.adjustedBitrate != this.bitrateAdjuster.getAdjustedBitrateBps()) {
                updateBitrate();
            }
            boolean z = true;
            if ((bufferInfo.flags & 1) == 0) {
                z = false;
            }
            if (z) {
                Logging.m968d(TAG, "Sync frame generated");
            }
            Runnable runnable = null;
            Integer numValueOf = (this.isEncodingStatisticsEnabled && (outputFormat = this.codec.getOutputFormat(iDequeueOutputBuffer)) != null && outputFormat.containsKey("video-qp-average")) ? Integer.valueOf(outputFormat.getInteger("video-qp-average")) : null;
            if (z && this.configBuffer != null) {
                Logging.m968d(TAG, "Prepending config buffer of size " + this.configBuffer.capacity() + " to output buffer with offset " + bufferInfo.offset + ", size " + bufferInfo.size);
                byteBufferSlice = ByteBuffer.allocateDirect(bufferInfo.size + this.configBuffer.capacity());
                this.configBuffer.rewind();
                byteBufferSlice.put(this.configBuffer);
                byteBufferSlice.put(outputBuffer);
                byteBufferSlice.rewind();
                this.codec.releaseOutputBuffer(iDequeueOutputBuffer, false);
            } else {
                byteBufferSlice = outputBuffer.slice();
                this.outputBuffersBusyCount.increment();
                runnable = new Runnable() { // from class: org.webrtc.HardwareVideoEncoder$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$deliverEncodedImage$0(iDequeueOutputBuffer);
                    }
                };
            }
            if (z) {
                frameType = EncodedImage.FrameType.VideoFrameKey;
            } else {
                frameType = EncodedImage.FrameType.VideoFrameDelta;
            }
            EncodedImage.Builder builderPoll = this.outputBuilders.poll();
            builderPoll.setBuffer(byteBufferSlice, runnable);
            builderPoll.setFrameType(frameType);
            builderPoll.setQp(numValueOf);
            EncodedImage encodedImageCreateEncodedImage = builderPoll.createEncodedImage();
            this.callback.onEncodedFrame(encodedImageCreateEncodedImage, new VideoEncoder.CodecSpecificInfo());
            encodedImageCreateEncodedImage.release();
        } catch (IllegalStateException e) {
            Logging.m970e(TAG, "deliverOutput failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deliverEncodedImage$0(int i) {
        try {
            this.codec.releaseOutputBuffer(i, false);
        } catch (Exception e) {
            Logging.m970e(TAG, "releaseOutputBuffer failed", e);
        }
        this.outputBuffersBusyCount.decrement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCodecOnOutputThread() {
        this.outputThreadChecker.checkIsOnValidThread();
        Logging.m968d(TAG, "Releasing MediaCodec on output thread");
        this.outputBuffersBusyCount.waitForZero();
        try {
            this.codec.stop();
        } catch (Exception e) {
            Logging.m970e(TAG, "Media encoder stop failed", e);
        }
        try {
            this.codec.release();
        } catch (Exception e2) {
            Logging.m970e(TAG, "Media encoder release failed", e2);
            this.shutdownException = e2;
        }
        this.configBuffer = null;
        Logging.m968d(TAG, "Release on output thread done");
    }

    private VideoCodecStatus updateBitrate() {
        this.outputThreadChecker.checkIsOnValidThread();
        this.adjustedBitrate = this.bitrateAdjuster.getAdjustedBitrateBps();
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("video-bitrate", this.adjustedBitrate);
            this.codec.setParameters(bundle);
            return VideoCodecStatus.OK;
        } catch (IllegalStateException e) {
            Logging.m970e(TAG, "updateBitrate failed", e);
            return VideoCodecStatus.ERROR;
        }
    }

    private boolean canUseSurface() {
        return (this.sharedContext == null || this.surfaceColorFormat == null) ? false : true;
    }

    private void updateInputFormat(MediaFormat mediaFormat) {
        this.stride = this.width;
        this.sliceHeight = this.height;
        if (mediaFormat != null) {
            if (mediaFormat.containsKey("stride")) {
                int integer = mediaFormat.getInteger("stride");
                this.stride = integer;
                this.stride = Math.max(integer, this.width);
            }
            if (mediaFormat.containsKey("slice-height")) {
                int integer2 = mediaFormat.getInteger("slice-height");
                this.sliceHeight = integer2;
                this.sliceHeight = Math.max(integer2, this.height);
            }
        }
        boolean zIsSemiPlanar = isSemiPlanar(this.yuvColorFormat.intValue());
        this.isSemiPlanar = zIsSemiPlanar;
        if (zIsSemiPlanar) {
            int i = (this.height + 1) / 2;
            int i2 = this.sliceHeight;
            int i3 = this.stride;
            this.frameSizeBytes = (i2 * i3) + (i * i3);
        } else {
            int i4 = this.stride;
            int i5 = this.sliceHeight;
            this.frameSizeBytes = (i5 * i4) + (((i5 + 1) / 2) * ((i4 + 1) / 2) * 2);
        }
        Logging.m968d(TAG, "updateInputFormat format: " + mediaFormat + " stride: " + this.stride + " sliceHeight: " + this.sliceHeight + " isSemiPlanar: " + this.isSemiPlanar + " frameSizeBytes: " + this.frameSizeBytes);
    }

    public boolean isEncodingStatisticsSupported() {
        MediaCodecInfo codecInfo;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        VideoCodecMimeType videoCodecMimeType = this.codecType;
        if (videoCodecMimeType == VideoCodecMimeType.VP8 || videoCodecMimeType == VideoCodecMimeType.VP9 || (codecInfo = this.codec.getCodecInfo()) == null || (capabilitiesForType = codecInfo.getCapabilitiesForType(this.codecType.mimeType())) == null) {
            return false;
        }
        return capabilitiesForType.isFeatureSupported("encoding-statistics");
    }

    public void fillInputBuffer(ByteBuffer byteBuffer, VideoFrame.Buffer buffer) {
        VideoFrame.I420Buffer i420 = buffer.toI420();
        if (this.isSemiPlanar) {
            YuvHelper.I420ToNV12(i420.getDataY(), i420.getStrideY(), i420.getDataU(), i420.getStrideU(), i420.getDataV(), i420.getStrideV(), byteBuffer, i420.getWidth(), i420.getHeight(), this.stride, this.sliceHeight);
        } else {
            YuvHelper.I420Copy(i420.getDataY(), i420.getStrideY(), i420.getDataU(), i420.getStrideU(), i420.getDataV(), i420.getStrideV(), byteBuffer, i420.getWidth(), i420.getHeight(), this.stride, this.sliceHeight);
        }
        i420.release();
    }

    public boolean isSemiPlanar(int i) {
        if (i == 19) {
            return false;
        }
        if (i == 21 || i == 2141391872 || i == 2141391876) {
            return true;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Unsupported colorFormat: ", i);
        return false;
    }
}
