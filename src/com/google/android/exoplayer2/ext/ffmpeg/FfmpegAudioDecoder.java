package com.google.android.exoplayer2.ext.ffmpeg;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderOutputBuffer;
import com.google.android.exoplayer2.decoder.SimpleDecoder;
import com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class FfmpegAudioDecoder extends SimpleDecoder {
    private static final int AUDIO_DECODER_ERROR_INVALID_DATA = -1;
    private static final int AUDIO_DECODER_ERROR_OTHER = -2;
    private static final int OUTPUT_BUFFER_SIZE_16BIT = 65536;
    private static final int OUTPUT_BUFFER_SIZE_32BIT = 131072;
    private volatile int channelCount;
    private final String codecName;
    private final int encoding;
    private final byte[] extraData;
    private boolean hasOutputFormat;
    private long nativeContext;
    private final int outputBufferSize;
    private volatile int sampleRate;

    private native int ffmpegDecode(long j, ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2);

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
        Assertions.checkNotNull(format.sampleMimeType);
        String str = (String) Assertions.checkNotNull(FfmpegLibrary.getCodecName(format.sampleMimeType));
        this.codecName = str;
        byte[] extraData = getExtraData(format.sampleMimeType, format.initializationData);
        this.extraData = extraData;
        this.encoding = z ? 4 : 2;
        this.outputBufferSize = z ? 131072 : 65536;
        long jFfmpegInitialize = ffmpegInitialize(str, extraData, z, format.sampleRate, format.channelCount);
        this.nativeContext = jFfmpegInitialize;
        if (jFfmpegInitialize == 0) {
            throw new FfmpegDecoderException("Initialization failed.");
        }
        setInitialInputBufferSize(i3);
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return "ffmpeg" + FfmpegLibrary.getVersion() + "-" + this.codecName;
    }

    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    protected DecoderInputBuffer createInputBuffer() {
        return new DecoderInputBuffer(2, FfmpegLibrary.getInputBufferPaddingSize());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    public SimpleDecoderOutputBuffer createOutputBuffer() {
        return new SimpleDecoderOutputBuffer(new DecoderOutputBuffer.Owner() { // from class: com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioDecoder$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer.Owner
            public final void releaseOutputBuffer(DecoderOutputBuffer decoderOutputBuffer) {
                this.f$0.releaseOutputBuffer((SimpleDecoderOutputBuffer) decoderOutputBuffer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    public FfmpegDecoderException createUnexpectedDecodeException(Throwable th) {
        return new FfmpegDecoderException("Unexpected decode error", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    public FfmpegDecoderException decode(DecoderInputBuffer decoderInputBuffer, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, boolean z) {
        if (z) {
            long jFfmpegReset = ffmpegReset(this.nativeContext, this.extraData);
            this.nativeContext = jFfmpegReset;
            if (jFfmpegReset == 0) {
                return new FfmpegDecoderException("Error resetting (see logcat).");
            }
        }
        ByteBuffer byteBuffer = (ByteBuffer) Util.castNonNull(decoderInputBuffer.data);
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferInit = simpleDecoderOutputBuffer.init(decoderInputBuffer.timeUs, this.outputBufferSize);
        int iFfmpegDecode = ffmpegDecode(this.nativeContext, byteBuffer, iLimit, byteBufferInit, this.outputBufferSize);
        if (iFfmpegDecode == -2) {
            return new FfmpegDecoderException("Error decoding (see logcat).");
        }
        if (iFfmpegDecode == -1) {
            simpleDecoderOutputBuffer.setFlags(Integer.MIN_VALUE);
            return null;
        }
        if (iFfmpegDecode == 0) {
            simpleDecoderOutputBuffer.setFlags(Integer.MIN_VALUE);
            return null;
        }
        if (!this.hasOutputFormat) {
            this.channelCount = ffmpegGetChannelCount(this.nativeContext);
            this.sampleRate = ffmpegGetSampleRate(this.nativeContext);
            if (this.sampleRate == 0 && "alac".equals(this.codecName)) {
                Assertions.checkNotNull(this.extraData);
                ParsableByteArray parsableByteArray = new ParsableByteArray(this.extraData);
                parsableByteArray.setPosition(this.extraData.length - 4);
                this.sampleRate = parsableByteArray.readUnsignedIntToInt();
            }
            this.hasOutputFormat = true;
        }
        byteBufferInit.position(0);
        byteBufferInit.limit(iFfmpegDecode);
        return null;
    }

    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder, com.google.android.exoplayer2.decoder.Decoder
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
}
