package androidx.media3.extractor;

import androidx.car.app.media.CarAudioRecord;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import com.android.dx.io.Opcodes;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.UByte;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DtsUtil {
    private static final int[] CHANNELS_BY_AMODE = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] SAMPLE_RATE_BY_SFREQ = {-1, 8000, CarAudioRecord.AUDIO_CONTENT_SAMPLING_RATE, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] TWICE_BITRATE_KBPS_BY_RATE = {64, 112, 128, 192, Opcodes.SHL_INT_LIT8, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    private static final int[] SAMPLE_RATE_BY_INDEX = {8000, CarAudioRecord.AUDIO_CONTENT_SAMPLING_RATE, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};
    private static final int[] UHD_FTOC_PAYLOAD_LENGTH_TABLE = {5, 8, 10, 12};
    private static final int[] UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE = {6, 9, 12, 15};
    private static final int[] UHD_AUDIO_CHUNK_ID_LENGTH_TABLE = {2, 4, 6, 8};
    private static final int[] UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE = {9, 11, 13, 16};
    private static final int[] UHD_HEADER_SIZE_LENGTH_TABLE = {5, 8, 10, 12};

    public static int getFrameType(int i) {
        if (i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368) {
            return 1;
        }
        if (i == 1683496997 || i == 622876772) {
            return 2;
        }
        if (i == 1078008818 || i == -233094848) {
            return 3;
        }
        return (i == 1908687592 || i == -398277519) ? 4 : 0;
    }

    public static final class DtsHeader {
        public final int bitrate;
        public final int channelCount;
        public final long frameDurationUs;
        public final int frameSize;
        public final String mimeType;
        public final int sampleRate;

        private DtsHeader(String str, int i, int i2, int i3, long j, int i4) {
            this.mimeType = str;
            this.channelCount = i;
            this.sampleRate = i2;
            this.frameSize = i3;
            this.frameDurationUs = j;
            this.bitrate = i4;
        }
    }

    public static Format parseDtsFormat(byte[] bArr, String str, String str2, int i, String str3, DrmInitData drmInitData) {
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(60);
        int i2 = CHANNELS_BY_AMODE[normalizedFrame.readBits(6)];
        int i3 = SAMPLE_RATE_BY_SFREQ[normalizedFrame.readBits(4)];
        int bits = normalizedFrame.readBits(5);
        int[] iArr = TWICE_BITRATE_KBPS_BY_RATE;
        int i4 = bits >= iArr.length ? -1 : (iArr[bits] * 1000) / 2;
        normalizedFrame.skipBits(10);
        return new Format.Builder().setId(str).setContainerMimeType(str3).setSampleMimeType("audio/vnd.dts").setAverageBitrate(i4).setChannelCount(i2 + (normalizedFrame.readBits(2) > 0 ? 1 : 0)).setSampleRate(i3).setDrmInitData(drmInitData).setLanguage(str2).setRoleFlags(i).build();
    }

    public static int parseDtsAudioSampleCount(byte[] bArr) {
        int i;
        byte b2;
        int i2;
        byte b3;
        byte b4 = bArr[0];
        if (b4 != -2) {
            if (b4 == -1) {
                i = (bArr[4] & 7) << 4;
                b3 = bArr[7];
            } else if (b4 == 31) {
                i = (bArr[5] & 7) << 4;
                b3 = bArr[6];
            } else {
                i = (bArr[4] & 1) << 6;
                b2 = bArr[5];
            }
            i2 = b3 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (bArr[5] & 1) << 6;
        b2 = bArr[4];
        i2 = b2 & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }

    public static int parseDtsAudioSampleCount(ByteBuffer byteBuffer) {
        int i;
        byte b2;
        int i2;
        byte b3;
        if (byteBuffer.getInt(0) == -233094848 || byteBuffer.getInt(0) == -398277519) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == 622876772) {
            return 4096;
        }
        int iPosition = byteBuffer.position();
        byte b4 = byteBuffer.get(iPosition);
        if (b4 != -2) {
            if (b4 == -1) {
                i = (byteBuffer.get(iPosition + 4) & 7) << 4;
                b3 = byteBuffer.get(iPosition + 7);
            } else if (b4 == 31) {
                i = (byteBuffer.get(iPosition + 5) & 7) << 4;
                b3 = byteBuffer.get(iPosition + 6);
            } else {
                i = (byteBuffer.get(iPosition + 4) & 1) << 6;
                b2 = byteBuffer.get(iPosition + 5);
            }
            i2 = b3 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (byteBuffer.get(iPosition + 5) & 1) << 6;
        b2 = byteBuffer.get(iPosition + 4);
        i2 = b2 & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getDtsFrameSize(byte[] bArr) {
        int i;
        byte b2;
        int i2;
        int i3;
        byte b3;
        boolean z = false;
        byte b4 = bArr[0];
        if (b4 != -2) {
            if (b4 == -1) {
                i3 = ((bArr[7] & 3) << 12) | ((bArr[6] & UByte.MAX_VALUE) << 4);
                b3 = bArr[9];
            } else if (b4 == 31) {
                i3 = ((bArr[6] & 3) << 12) | ((bArr[7] & UByte.MAX_VALUE) << 4);
                b3 = bArr[8];
            } else {
                i = ((bArr[5] & 3) << 12) | ((bArr[6] & UByte.MAX_VALUE) << 4);
                b2 = bArr[7];
            }
            i2 = (((b3 & 60) >> 2) | i3) + 1;
            z = true;
            return !z ? (i2 * 16) / 14 : i2;
        }
        i = ((bArr[4] & 3) << 12) | ((bArr[7] & UByte.MAX_VALUE) << 4);
        b2 = bArr[6];
        i2 = (((b2 & 240) >> 4) | i) + 1;
        if (!z) {
        }
    }

    public static DtsHeader parseDtsHdHeader(byte[] bArr) throws ParserException {
        int i;
        int i2;
        int bits;
        int i3;
        long jScaleLargeTimestamp;
        int i4;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(40);
        int bits2 = normalizedFrame.readBits(2);
        if (normalizedFrame.readBit()) {
            i = 20;
            i2 = 12;
        } else {
            i = 16;
            i2 = 8;
        }
        normalizedFrame.skipBits(i2);
        int bits3 = normalizedFrame.readBits(i) + 1;
        boolean bit = normalizedFrame.readBit();
        int bits4 = -1;
        int i5 = 0;
        if (bit) {
            bits = normalizedFrame.readBits(2);
            int bits5 = (normalizedFrame.readBits(3) + 1) * 512;
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(36);
            }
            int bits6 = normalizedFrame.readBits(3) + 1;
            int bits7 = normalizedFrame.readBits(3) + 1;
            if (bits6 != 1 || bits7 != 1) {
                throw ParserException.createForUnsupportedContainerFeature("Multiple audio presentations or assets not supported");
            }
            int i6 = bits2 + 1;
            int bits8 = normalizedFrame.readBits(i6);
            for (int i7 = 0; i7 < i6; i7++) {
                if (((bits8 >> i7) & 1) == 1) {
                    normalizedFrame.skipBits(8);
                }
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(2);
                int bits9 = (normalizedFrame.readBits(2) + 1) << 2;
                int bits10 = normalizedFrame.readBits(2) + 1;
                while (i5 < bits10) {
                    normalizedFrame.skipBits(bits9);
                    i5++;
                }
            }
            i5 = bits5;
        } else {
            bits = -1;
        }
        normalizedFrame.skipBits(i);
        normalizedFrame.skipBits(12);
        if (bit) {
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(4);
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(24);
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBytes(normalizedFrame.readBits(10) + 1);
            }
            normalizedFrame.skipBits(5);
            i3 = SAMPLE_RATE_BY_INDEX[normalizedFrame.readBits(4)];
            bits4 = normalizedFrame.readBits(8) + 1;
        } else {
            i3 = -2147483647;
        }
        int i8 = i3;
        if (bit) {
            if (bits == 0) {
                i4 = 32000;
            } else if (bits == 1) {
                i4 = 44100;
            } else {
                if (bits != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported reference clock code in DTS HD header: " + bits, null);
                }
                i4 = 48000;
            }
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(i5, 1000000L, i4);
        } else {
            jScaleLargeTimestamp = -9223372036854775807L;
        }
        return new DtsHeader("audio/vnd.dts.hd;profile=lbr", bits4, i8, bits3, jScaleLargeTimestamp, 0);
    }

    public static int parseDtsHdHeaderSize(byte[] bArr) {
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(42);
        return normalizedFrame.readBits(normalizedFrame.readBit() ? 12 : 8) + 1;
    }

    public static DtsHeader parseDtsUhdHeader(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
        int bits;
        long jScaleLargeTimestamp;
        AtomicInteger atomicInteger2;
        int i;
        int i2;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        int i3 = normalizedFrame.readBits(32) == 1078008818 ? 1 : 0;
        int unsignedVarInt = parseUnsignedVarInt(normalizedFrame, UHD_FTOC_PAYLOAD_LENGTH_TABLE, true) + 1;
        if (i3 == 0) {
            bits = -2147483647;
            jScaleLargeTimestamp = -9223372036854775807L;
        } else {
            if (!normalizedFrame.readBit()) {
                throw ParserException.createForUnsupportedContainerFeature("Only supports full channel mask-based audio presentation");
            }
            checkCrc(bArr, unsignedVarInt);
            int bits2 = normalizedFrame.readBits(2);
            if (bits2 == 0) {
                i = 512;
            } else if (bits2 == 1) {
                i = 480;
            } else {
                if (bits2 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported base duration index in DTS UHD header: " + bits2, null);
                }
                i = 384;
            }
            int bits3 = i * (normalizedFrame.readBits(3) + 1);
            int bits4 = normalizedFrame.readBits(2);
            if (bits4 == 0) {
                i2 = 32000;
            } else if (bits4 == 1) {
                i2 = 44100;
            } else {
                if (bits4 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported clock rate index in DTS UHD header: " + bits4, null);
                }
                i2 = 48000;
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(36);
            }
            bits = (1 << normalizedFrame.readBits(2)) * i2;
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(bits3, 1000000L, i2);
        }
        int i4 = bits;
        long j = jScaleLargeTimestamp;
        int unsignedVarInt2 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            unsignedVarInt2 += parseUnsignedVarInt(normalizedFrame, UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE, true);
        }
        if (i3 != 0) {
            atomicInteger2 = atomicInteger;
            atomicInteger2.set(parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_ID_LENGTH_TABLE, true));
        } else {
            atomicInteger2 = atomicInteger;
        }
        return new DtsHeader("audio/vnd.dts.uhd;profile=p2", 2, i4, unsignedVarInt + unsignedVarInt2 + (atomicInteger2.get() != 0 ? parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE, true) : 0), j, 0);
    }

    public static int parseDtsUhdHeaderSize(byte[] bArr) {
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(32);
        return parseUnsignedVarInt(normalizedFrame, UHD_HEADER_SIZE_LENGTH_TABLE, true) + 1;
    }

    private static void checkCrc(byte[] bArr, int i) throws ParserException {
        int i2 = i - 2;
        if (((bArr[i - 1] & UByte.MAX_VALUE) | ((bArr[i2] << 8) & 65535)) != Util.crc16(bArr, 0, i2, 65535)) {
            throw ParserException.createForMalformedContainer("CRC check failed", null);
        }
    }

    private static int parseUnsignedVarInt(ParsableBitArray parsableBitArray, int[] iArr, boolean z) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 3 && parsableBitArray.readBit(); i3++) {
            i2++;
        }
        if (z) {
            int i4 = 0;
            while (i < i2) {
                i4 += 1 << iArr[i];
                i++;
            }
            i = i4;
        }
        return i + parsableBitArray.readBits(iArr[i2]);
    }

    private static ParsableBitArray getNormalizedFrame(byte[] bArr) {
        byte b2 = bArr[0];
        if (b2 == 127 || b2 == 100 || b2 == 64 || b2 == 113) {
            return new ParsableBitArray(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (isLittleEndianFrameHeader(bArrCopyOf)) {
            for (int i = 0; i < bArrCopyOf.length - 1; i += 2) {
                byte b3 = bArrCopyOf[i];
                int i2 = i + 1;
                bArrCopyOf[i] = bArrCopyOf[i2];
                bArrCopyOf[i2] = b3;
            }
        }
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            ParsableBitArray parsableBitArray2 = new ParsableBitArray(bArrCopyOf);
            while (parsableBitArray2.bitsLeft() >= 16) {
                parsableBitArray2.skipBits(2);
                parsableBitArray.putInt(parsableBitArray2.readBits(14), 14);
            }
        }
        parsableBitArray.reset(bArrCopyOf);
        return parsableBitArray;
    }

    private static boolean isLittleEndianFrameHeader(byte[] bArr) {
        byte b2 = bArr[0];
        return b2 == -2 || b2 == -1 || b2 == 37 || b2 == -14 || b2 == -24;
    }
}
