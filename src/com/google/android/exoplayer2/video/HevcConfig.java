package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class HevcConfig {
    public final String codecs;
    public final int height;
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    public static HevcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        boolean z;
        int i;
        try {
            parsableByteArray.skipBytes(21);
            int unsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                z = true;
                if (i3 >= unsignedByte2) {
                    break;
                }
                parsableByteArray.skipBytes(1);
                int unsignedShort = parsableByteArray.readUnsignedShort();
                for (int i5 = 0; i5 < unsignedShort; i5++) {
                    int unsignedShort2 = parsableByteArray.readUnsignedShort();
                    i4 += unsignedShort2 + 4;
                    parsableByteArray.skipBytes(unsignedShort2);
                }
                i3++;
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i4];
            int i6 = -1;
            int i7 = -1;
            float f = 1.0f;
            String strBuildHevcCodecString = null;
            int i8 = 0;
            int i9 = 0;
            while (i8 < unsignedByte2) {
                int unsignedByte3 = parsableByteArray.readUnsignedByte() & 63;
                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                int i10 = i2;
                while (i10 < unsignedShort3) {
                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                    boolean z2 = z;
                    byte[] bArr2 = NalUnitUtil.NAL_START_CODE;
                    int i11 = unsignedByte;
                    System.arraycopy(bArr2, i2, bArr, i9, bArr2.length);
                    int length = i9 + bArr2.length;
                    System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), bArr, length, unsignedShort4);
                    if (unsignedByte3 == 33 && i10 == 0) {
                        NalUnitUtil.H265SpsData h265SpsNalUnit = NalUnitUtil.parseH265SpsNalUnit(bArr, length, length + unsignedShort4);
                        i6 = h265SpsNalUnit.width;
                        i7 = h265SpsNalUnit.height;
                        f = h265SpsNalUnit.pixelWidthHeightRatio;
                        i = unsignedByte2;
                        strBuildHevcCodecString = CodecSpecificDataUtil.buildHevcCodecString(h265SpsNalUnit.generalProfileSpace, h265SpsNalUnit.generalTierFlag, h265SpsNalUnit.generalProfileIdc, h265SpsNalUnit.generalProfileCompatibilityFlags, h265SpsNalUnit.constraintBytes, h265SpsNalUnit.generalLevelIdc);
                    } else {
                        i = unsignedByte2;
                    }
                    i9 = length + unsignedShort4;
                    parsableByteArray.skipBytes(unsignedShort4);
                    i10++;
                    z = z2;
                    unsignedByte = i11;
                    unsignedByte2 = i;
                    i2 = 0;
                }
                i8++;
                i2 = 0;
            }
            return new HevcConfig(i4 == 0 ? Collections.EMPTY_LIST : Collections.singletonList(bArr), unsignedByte + 1, i6, i7, f, strBuildHevcCodecString);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.createForMalformedContainer("Error parsing HEVC config", e);
        }
    }

    private HevcConfig(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i;
        this.width = i2;
        this.height = i3;
        this.pixelWidthHeightRatio = f;
        this.codecs = str;
    }
}
