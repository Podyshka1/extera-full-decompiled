package androidx.media3.extractor;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import kotlin.UByte;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OpusUtil {
    private static long getPacketDurationUs(byte b2, byte b3) {
        int i;
        int i2 = b2 & UByte.MAX_VALUE;
        int i3 = b2 & 3;
        if (i3 != 0) {
            i = 2;
            if (i3 != 1 && i3 != 2) {
                i = b3 & 63;
            }
        } else {
            i = 1;
        }
        int i4 = i2 >> 3;
        int i5 = i4 & 3;
        return ((long) i) * ((long) (i4 >= 16 ? 2500 << i5 : i4 >= 12 ? 10000 << (i4 & 1) : i5 == 3 ? 60000 : 10000 << i5));
    }

    public static int getChannelCount(byte[] bArr) {
        return bArr[9] & UByte.MAX_VALUE;
    }

    public static List<byte[]> buildInitializationData(byte[] bArr) {
        long jSampleCountToNanoseconds = sampleCountToNanoseconds(getPreSkipSamples(bArr));
        long jSampleCountToNanoseconds2 = sampleCountToNanoseconds(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(buildNativeOrderByteArray(jSampleCountToNanoseconds));
        arrayList.add(buildNativeOrderByteArray(jSampleCountToNanoseconds2));
        return arrayList;
    }

    public static int parseOggPacketAudioSampleCount(ByteBuffer byteBuffer) {
        int oggPacketForPreAudioSampleByteCount = parseOggPacketForPreAudioSampleByteCount(byteBuffer);
        int i = byteBuffer.get(oggPacketForPreAudioSampleByteCount + 26) + 27 + oggPacketForPreAudioSampleByteCount;
        return (int) ((getPacketDurationUs(byteBuffer.get(i), byteBuffer.limit() - i > 1 ? byteBuffer.get(i + 1) : (byte) 0) * 48000) / 1000000);
    }

    public static int parseOggPacketForPreAudioSampleByteCount(ByteBuffer byteBuffer) {
        if ((byteBuffer.get(5) & 2) == 0) {
            return 0;
        }
        byte b2 = byteBuffer.get(26);
        int i = 28;
        int i2 = 28;
        for (int i3 = 0; i3 < b2; i3++) {
            i2 += byteBuffer.get(i3 + 27);
        }
        byte b3 = byteBuffer.get(i2 + 26);
        for (int i4 = 0; i4 < b3; i4++) {
            i += byteBuffer.get(i2 + 27 + i4);
        }
        return i2 + i;
    }

    public static int parsePacketAudioSampleCount(ByteBuffer byteBuffer) {
        return (int) ((getPacketDurationUs(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0) * 48000) / 1000000);
    }

    public static long getPacketDurationUs(byte[] bArr) {
        return getPacketDurationUs(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static int getPreSkipSamples(byte[] bArr) {
        return (bArr[10] & UByte.MAX_VALUE) | ((bArr[11] & UByte.MAX_VALUE) << 8);
    }

    public static boolean needToDecodeOpusFrame(long j, long j2) {
        return j - j2 <= sampleCountToNanoseconds(3840L) / 1000;
    }

    private static byte[] buildNativeOrderByteArray(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    private static long sampleCountToNanoseconds(long j) {
        return (j * 1000000000) / 48000;
    }
}
