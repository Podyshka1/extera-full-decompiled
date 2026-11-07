package androidx.media3.decoder.ffmpeg;

import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class ExperimentalFfmpegVideoDecoder extends SimpleDecoder<DecoderInputBuffer, VideoDecoderOutputBuffer, FfmpegDecoderException> {
    private final String codecName;
    private int degree;
    private final byte[] extraData;
    private long nativeContext;
    private volatile int outputMode;
    private final ArrayDeque<PendingInput> pendingInputs;

    private native long ffmpegInitialize(String str, byte[] bArr, int i, int i2, int i3, int i4);

    private native int ffmpegReceiveFrame(long j, int i, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z);

    private native void ffmpegRelease(long j);

    private native int ffmpegRenderFrame(long j, Surface surface, VideoDecoderOutputBuffer videoDecoderOutputBuffer, int i, int i2);

    private native long ffmpegReset(long j);

    private native int ffmpegSendPacket(long j, ByteBuffer byteBuffer, int i, long j2);

    public static final class PendingInput {
        public final ByteBuffer data;
        public final long timeUs;

        public PendingInput(ByteBuffer byteBuffer, long j) {
            this.data = byteBuffer;
            this.timeUs = j;
        }
    }

    public ExperimentalFfmpegVideoDecoder(int i, int i2, int i3, int i4, Format format) throws FfmpegDecoderException {
        super(new DecoderInputBuffer[i], new VideoDecoderOutputBuffer[i2]);
        this.degree = 0;
        this.pendingInputs = new ArrayDeque<>();
        if (!FfmpegLibrary.isAvailable()) {
            throw new FfmpegDecoderException("Failed to load decoder native library.");
        }
        String str = (String) Assertions.checkNotNull(FfmpegLibrary.getCodecName(format.sampleMimeType));
        this.codecName = str;
        byte[] extraData = getExtraData(format.sampleMimeType, format.initializationData);
        this.extraData = extraData;
        int i5 = format.rotationDegrees;
        this.degree = i5;
        long jFfmpegInitialize = ffmpegInitialize(str, extraData, i4, i5, format.width, format.height);
        this.nativeContext = jFfmpegInitialize;
        if (jFfmpegInitialize == 0) {
            throw new FfmpegDecoderException("Failed to initialize decoder.");
        }
        setInitialInputBufferSize(i3);
    }

    private static byte[] getExtraData(String str, List<byte[]> list) {
        int length = 0;
        for (int i = 0; i < list.size(); i++) {
            length += list.get(i).length;
        }
        if (length <= 0) {
            return null;
        }
        byte[] bArr = new byte[length];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        for (int i2 = 0; i2 < list.size(); i2++) {
            byteBufferWrap.put(list.get(i2));
        }
        return bArr;
    }

    @Override // androidx.media3.decoder.Decoder
    public String getName() {
        return "ffmpeg" + FfmpegLibrary.getVersion() + "-" + this.codecName;
    }

    public void setOutputMode(int i) {
        this.outputMode = i;
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public DecoderInputBuffer createInputBuffer() {
        return new DecoderInputBuffer(2, FfmpegLibrary.getInputBufferPaddingSize());
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public VideoDecoderOutputBuffer createOutputBuffer() {
        return new VideoDecoderOutputBuffer(new DecoderOutputBuffer.Owner() { // from class: androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoDecoder$$ExternalSyntheticLambda0
            @Override // androidx.media3.decoder.DecoderOutputBuffer.Owner
            public final void releaseOutputBuffer(DecoderOutputBuffer decoderOutputBuffer) {
                this.f$0.releaseOutputBuffer((VideoDecoderOutputBuffer) decoderOutputBuffer);
            }
        });
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public FfmpegDecoderException decode(DecoderInputBuffer decoderInputBuffer, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z) {
        if (z) {
            long jFfmpegReset = ffmpegReset(this.nativeContext);
            this.nativeContext = jFfmpegReset;
            if (jFfmpegReset == 0) {
                return new FfmpegDecoderException("Error resetting (see logcat).");
            }
            this.pendingInputs.clear();
        }
        ByteBuffer byteBuffer = (ByteBuffer) Util.castNonNull(decoderInputBuffer.data);
        boolean zIsAtLeastOutputStartTimeUs = isAtLeastOutputStartTimeUs(decoderInputBuffer.timeUs);
        boolean z2 = !zIsAtLeastOutputStartTimeUs;
        while (!this.pendingInputs.isEmpty()) {
            PendingInput pendingInputPeek = this.pendingInputs.peek();
            long j = this.nativeContext;
            ByteBuffer byteBuffer2 = pendingInputPeek.data;
            int iFfmpegSendPacket = ffmpegSendPacket(j, byteBuffer2, byteBuffer2.limit(), pendingInputPeek.timeUs);
            if (iFfmpegSendPacket == -3) {
                break;
            }
            this.pendingInputs.removeFirst();
            if (iFfmpegSendPacket == -2) {
                return new FfmpegDecoderException("ffmpegDecode error: (see logcat)");
            }
        }
        int iFfmpegSendPacket2 = ffmpegSendPacket(this.nativeContext, byteBuffer, byteBuffer.limit(), decoderInputBuffer.timeUs);
        if (iFfmpegSendPacket2 == -3) {
            this.pendingInputs.addLast(copyPendingInput(byteBuffer, decoderInputBuffer.timeUs));
            if (zIsAtLeastOutputStartTimeUs) {
                videoDecoderOutputBuffer.init(decoderInputBuffer.timeUs, this.outputMode, null);
            }
            int iFfmpegReceiveFrame = ffmpegReceiveFrame(this.nativeContext, this.outputMode, videoDecoderOutputBuffer, z2);
            if (iFfmpegReceiveFrame == -2) {
                return new FfmpegDecoderException("ffmpegDecode error: (see logcat)");
            }
            if (iFfmpegReceiveFrame == -1) {
                videoDecoderOutputBuffer.shouldBeSkipped = true;
            } else if (zIsAtLeastOutputStartTimeUs) {
                videoDecoderOutputBuffer.format = decoderInputBuffer.format;
            }
            return null;
        }
        if (iFfmpegSendPacket2 == -1) {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (iFfmpegSendPacket2 == -2) {
            return new FfmpegDecoderException("ffmpegDecode error: (see logcat)");
        }
        if (zIsAtLeastOutputStartTimeUs) {
            videoDecoderOutputBuffer.init(decoderInputBuffer.timeUs, this.outputMode, null);
        }
        int iFfmpegReceiveFrame2 = ffmpegReceiveFrame(this.nativeContext, this.outputMode, videoDecoderOutputBuffer, z2);
        if (iFfmpegReceiveFrame2 == -2) {
            return new FfmpegDecoderException("ffmpegDecode error: (see logcat)");
        }
        if (iFfmpegReceiveFrame2 == -1) {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
        }
        if (zIsAtLeastOutputStartTimeUs) {
            videoDecoderOutputBuffer.format = decoderInputBuffer.format;
        }
        return null;
    }

    private static PendingInput copyPendingInput(ByteBuffer byteBuffer, long j) {
        byteBuffer.position(0);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(byteBuffer.limit());
        byteBufferAllocateDirect.put(byteBuffer);
        byteBufferAllocateDirect.flip();
        return new PendingInput(byteBufferAllocateDirect, j);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public FfmpegDecoderException createUnexpectedDecodeException(Throwable th) {
        return new FfmpegDecoderException("Unexpected decode error", th);
    }

    @Override // androidx.media3.decoder.SimpleDecoder, androidx.media3.decoder.Decoder
    public void release() {
        super.release();
        ffmpegRelease(this.nativeContext);
        this.nativeContext = 0L;
    }

    public void renderToSurface(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws FfmpegDecoderException {
        if (videoDecoderOutputBuffer.mode != 1) {
            throw new FfmpegDecoderException("Invalid output mode.");
        }
        int iFfmpegRenderFrame = ffmpegRenderFrame(this.nativeContext, surface, videoDecoderOutputBuffer, videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
        if (iFfmpegRenderFrame == -2 || iFfmpegRenderFrame == -4) {
            throw new FfmpegDecoderException("Buffer render error: " + iFfmpegRenderFrame);
        }
    }
}
