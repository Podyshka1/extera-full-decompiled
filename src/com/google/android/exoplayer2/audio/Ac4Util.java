package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaError;
import java.nio.ByteBuffer;
import kotlin.UByte;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Ac4Util {
    private static final int[] SAMPLE_COUNT = {CastStatusCodes.CANCELED, CastStatusCodes.AUTHENTICATION_FAILED, 1920, 1601, 1600, WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 1000, 960, 800, 800, 480, MediaError.DetailedErrorCode.MANIFEST_UNKNOWN, MediaError.DetailedErrorCode.MANIFEST_UNKNOWN, 2048};

    public static final class SyncFrameInfo {
        public final int bitstreamVersion;
        public final int channelCount;
        public final int frameSize;
        public final int sampleCount;
        public final int sampleRate;

        private SyncFrameInfo(int i, int i2, int i3, int i4, int i5) {
            this.bitstreamVersion = i;
            this.channelCount = i2;
            this.sampleRate = i3;
            this.frameSize = i4;
            this.sampleCount = i5;
        }
    }

    public static Format parseAc4AnnexEFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        parsableByteArray.skipBytes(1);
        return new Format.Builder().setId(str).setSampleMimeType("audio/ac4").setChannelCount(2).setSampleRate(((parsableByteArray.readUnsignedByte() & 32) >> 5) == 1 ? 48000 : 44100).setDrmInitData(drmInitData).setLanguage(str2).build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0082, code lost:
    
        if (r11 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0089, code lost:
    
        if (r11 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008e, code lost:
    
        if (r11 != 8) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SyncFrameInfo parseAc4SyncframeInfo(ParsableBitArray parsableBitArray) {
        int i;
        int i2;
        int i3;
        int i4;
        int bits = parsableBitArray.readBits(16);
        int bits2 = parsableBitArray.readBits(16);
        if (bits2 == 65535) {
            bits2 = parsableBitArray.readBits(24);
            i = 7;
        } else {
            i = 4;
        }
        int i5 = bits2 + i;
        if (bits == 44097) {
            i5 += 2;
        }
        int i6 = i5;
        int bits3 = parsableBitArray.readBits(2);
        if (bits3 == 3) {
            bits3 += readVariableBits(parsableBitArray, 2);
        }
        int i7 = bits3;
        int bits4 = parsableBitArray.readBits(10);
        if (parsableBitArray.readBit() && parsableBitArray.readBits(3) > 0) {
            parsableBitArray.skipBits(2);
        }
        int i8 = 48000;
        if (parsableBitArray.readBit()) {
            i2 = 48000;
        } else {
            i2 = 48000;
            i8 = 44100;
        }
        int bits5 = parsableBitArray.readBits(4);
        if (i8 == 44100 && bits5 == 13) {
            i3 = SAMPLE_COUNT[bits5];
        } else {
            if (i8 == i2) {
                int[] iArr = SAMPLE_COUNT;
                if (bits5 < iArr.length) {
                    int i9 = iArr[bits5];
                    int i10 = bits4 % 5;
                    if (i10 == 1) {
                        if (bits5 != 3) {
                        }
                        i3 = i9 + 1;
                    } else if (i10 == 2) {
                        if (bits5 != 8) {
                        }
                        i3 = i9 + 1;
                    } else if (i10 != 3) {
                        if (i10 == 4) {
                            if (bits5 != 3) {
                                if (bits5 != 8) {
                                }
                            }
                            i3 = i9 + 1;
                        }
                        i4 = i9;
                    }
                } else {
                    i3 = 0;
                }
            }
            return new SyncFrameInfo(i7, 2, i8, i6, i4);
        }
        i4 = i3;
        return new SyncFrameInfo(i7, 2, i8, i6, i4);
    }

    public static int parseAc4SyncframeSize(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & UByte.MAX_VALUE) << 8) | (bArr[3] & UByte.MAX_VALUE);
        if (i3 == 65535) {
            i3 = ((bArr[4] & UByte.MAX_VALUE) << 16) | ((bArr[5] & UByte.MAX_VALUE) << 8) | (bArr[6] & UByte.MAX_VALUE);
        } else {
            i2 = 4;
        }
        if (i == 44097) {
            i2 += 2;
        }
        return i3 + i2;
    }

    public static int parseAc4SyncframeAudioSampleCount(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return parseAc4SyncframeInfo(new ParsableBitArray(bArr)).sampleCount;
    }

    public static void getAc4SampleHeader(int i, ParsableByteArray parsableByteArray) {
        parsableByteArray.reset(7);
        byte[] data = parsableByteArray.getData();
        data[0] = -84;
        data[1] = 64;
        data[2] = -1;
        data[3] = -1;
        data[4] = (byte) ((i >> 16) & 255);
        data[5] = (byte) ((i >> 8) & 255);
        data[6] = (byte) (i & 255);
    }

    private static int readVariableBits(ParsableBitArray parsableBitArray, int i) {
        int i2 = 0;
        while (true) {
            int bits = i2 + parsableBitArray.readBits(i);
            if (!parsableBitArray.readBit()) {
                return bits;
            }
            i2 = (bits + 1) << i;
        }
    }
}
