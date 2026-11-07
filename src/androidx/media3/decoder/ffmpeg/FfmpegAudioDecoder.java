package androidx.media3.decoder.ffmpeg;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
public final class FfmpegAudioDecoder extends SimpleDecoder<DecoderInputBuffer, SimpleDecoderOutputBuffer, FfmpegDecoderException> {
    private static final byte[] flacStreamMarker = {102, 76, 97, 67};
    private volatile int channelCount;
    private final String codecName;
    private final int encoding;
    private final byte[] extraData;
    private boolean hasOutputFormat;
    private long nativeContext;
    private int outputBufferSize;
    private volatile int sampleRate;

    private native int ffmpegDecode(long j, ByteBuffer byteBuffer, int i, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, ByteBuffer byteBuffer2, int i2);

    private native int ffmpegGetChannelCount(long j);

    private native int ffmpegGetSampleRate(long j);

    private native long ffmpegInitialize(String str, byte[] bArr, boolean z, int i, int i2);

    private native void ffmpegRelease(long j);

    private native long ffmpegReset(long j, byte[] bArr);

    public FfmpegAudioDecoder(Format format, int i, int i2, int i3, boolean z) throws FfmpegDecoderException {
        super(new DecoderInputBuffer[i], new SimpleDecoderOutputBuffer[i2]);
        if (!FfmpegLibrary.isAvailable()) {
            throw new FfmpegDecoderException("Failed to load decoder native libraries.");
        }
        Preconditions.checkNotNull(format.sampleMimeType);
        String str = (String) Preconditions.checkNotNull(FfmpegLibrary.getCodecName(format.sampleMimeType));
        this.codecName = str;
        byte[] extraData = getExtraData(format.sampleMimeType, format.initializationData);
        this.extraData = extraData;
        this.encoding = z ? 4 : 2;
        this.outputBufferSize = z ? 131070 : 65535;
        long jFfmpegInitialize = ffmpegInitialize(str, extraData, z, format.sampleRate, format.channelCount);
        this.nativeContext = jFfmpegInitialize;
        if (jFfmpegInitialize == 0) {
            throw new FfmpegDecoderException("Initialization failed.");
        }
        setInitialInputBufferSize(i3);
    }

    @Override // androidx.media3.decoder.Decoder
    public String getName() {
        return "ffmpeg" + FfmpegLibrary.getVersion() + "-" + this.codecName;
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public DecoderInputBuffer createInputBuffer() {
        return new DecoderInputBuffer(2, FfmpegLibrary.getInputBufferPaddingSize());
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public SimpleDecoderOutputBuffer createOutputBuffer() {
        return new SimpleDecoderOutputBuffer(new DecoderOutputBuffer.Owner() { // from class: androidx.media3.decoder.ffmpeg.FfmpegAudioDecoder$$ExternalSyntheticLambda0
            @Override // androidx.media3.decoder.DecoderOutputBuffer.Owner
            public final void releaseOutputBuffer(DecoderOutputBuffer decoderOutputBuffer) {
                this.f$0.releaseOutputBuffer((SimpleDecoderOutputBuffer) decoderOutputBuffer);
            }
        });
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public FfmpegDecoderException createUnexpectedDecodeException(Throwable th) {
        return new FfmpegDecoderException("Unexpected decode error", th);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public FfmpegDecoderException decode(DecoderInputBuffer decoderInputBuffer, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, boolean z) {
        if (z) {
            long jFfmpegReset = ffmpegReset(this.nativeContext, this.extraData);
            this.nativeContext = jFfmpegReset;
            if (jFfmpegReset == 0) {
                return new FfmpegDecoderException("Error resetting (see logcat).");
            }
        }
        ByteBuffer byteBuffer = (ByteBuffer) Util.castNonNull(decoderInputBuffer.data);
        int iFfmpegDecode = ffmpegDecode(this.nativeContext, byteBuffer, byteBuffer.limit(), simpleDecoderOutputBuffer, simpleDecoderOutputBuffer.init(decoderInputBuffer.timeUs, this.outputBufferSize), this.outputBufferSize);
        if (iFfmpegDecode == -2) {
            return new FfmpegDecoderException("Error decoding (see logcat).");
        }
        if (iFfmpegDecode == -1) {
            simpleDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (iFfmpegDecode == 0) {
            simpleDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (!this.hasOutputFormat) {
            this.channelCount = ffmpegGetChannelCount(this.nativeContext);
            this.sampleRate = ffmpegGetSampleRate(this.nativeContext);
            if (this.sampleRate == 0 && "alac".equals(this.codecName)) {
                Preconditions.checkNotNull(this.extraData);
                ParsableByteArray parsableByteArray = new ParsableByteArray(this.extraData);
                parsableByteArray.setPosition(this.extraData.length - 4);
                this.sampleRate = parsableByteArray.readUnsignedIntToInt();
            }
            this.hasOutputFormat = true;
        }
        ByteBuffer byteBuffer2 = (ByteBuffer) Preconditions.checkNotNull(simpleDecoderOutputBuffer.data);
        byteBuffer2.position(0);
        byteBuffer2.limit(iFfmpegDecode);
        return null;
    }

    private ByteBuffer growOutputBuffer(SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, int i) {
        this.outputBufferSize = i;
        return simpleDecoderOutputBuffer.grow(i);
    }

    @Override // androidx.media3.decoder.SimpleDecoder, androidx.media3.decoder.Decoder
    public void release() {
        super.release();
        ffmpegRelease(this.nativeContext);
        this.nativeContext = 0L;
    }

    public int getChannelCount() {
        return this.channelCount;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    public int getEncoding() {
        return this.encoding;
    }

    private static byte[] getExtraData(String str, List<byte[]> list) {
        str.getClass();
        switch (str) {
            case "audio/vorbis":
                return getVorbisExtraData(list);
            case "audio/mp4a-latm":
            case "audio/opus":
                return list.get(0);
            case "audio/alac":
                return getAlacExtraData(list);
            case "audio/flac":
                return getFlacExtraData(list);
            default:
                return null;
        }
    }

    private static byte[] getAlacExtraData(List<byte[]> list) {
        byte[] bArr = list.get(0);
        int length = bArr.length + 12;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1634492771);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put(bArr, 0, bArr.length);
        return byteBufferAllocate.array();
    }

    private static byte[] getVorbisExtraData(List<byte[]> list) {
        byte[] bArr = list.get(0);
        byte[] bArr2 = list.get(1);
        byte[] bArr3 = new byte[bArr.length + bArr2.length + 6];
        bArr3[0] = (byte) (bArr.length >> 8);
        bArr3[1] = (byte) (bArr.length & 255);
        System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
        bArr3[bArr.length + 2] = 0;
        bArr3[bArr.length + 3] = 0;
        bArr3[bArr.length + 4] = (byte) (bArr2.length >> 8);
        bArr3[bArr.length + 5] = (byte) (bArr2.length & 255);
        System.arraycopy(bArr2, 0, bArr3, bArr.length + 6, bArr2.length);
        return bArr3;
    }

    private static byte[] getFlacExtraData(List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            byte[] bArrExtractFlacStreamInfo = extractFlacStreamInfo(list.get(i));
            if (bArrExtractFlacStreamInfo != null) {
                return bArrExtractFlacStreamInfo;
            }
        }
        return null;
    }

    private static byte[] extractFlacStreamInfo(byte[] bArr) {
        byte[] bArr2 = flacStreamMarker;
        int length = arrayStartsWith(bArr, bArr2) ? bArr2.length : 0;
        if (bArr.length - length == 34) {
            byte[] bArr3 = new byte[34];
            System.arraycopy(bArr, length, bArr3, 0, 34);
            return bArr3;
        }
        int i = length + 4;
        if (bArr.length < i) {
            return null;
        }
        int i2 = bArr[length] & ByteCompanionObject.MAX_VALUE;
        int i3 = ((bArr[length + 1] & UByte.MAX_VALUE) << 16) | ((bArr[length + 2] & UByte.MAX_VALUE) << 8) | (bArr[length + 3] & UByte.MAX_VALUE);
        if (i2 != 0 || i3 != 34 || bArr.length < length + 38) {
            return null;
        }
        byte[] bArr4 = new byte[34];
        System.arraycopy(bArr, i, bArr4, 0, 34);
        return bArr4;
    }

    private static boolean arrayStartsWith(byte[] bArr, byte[] bArr2) {
        if (bArr.length < bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
