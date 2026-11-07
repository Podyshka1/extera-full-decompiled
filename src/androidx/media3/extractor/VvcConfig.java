package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class VvcConfig {
    public final int bitdepthLuma;
    public final String codecs;
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;

    public static VvcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        int unsignedByte;
        int unsignedByte2;
        int i;
        int i2;
        int i3;
        try {
            if (parsableByteArray.readInt() != 0) {
                throw ParserException.createForMalformedContainer("Unsupported VVC version", null);
            }
            int unsignedByte3 = parsableByteArray.readUnsignedByte();
            int i4 = 1;
            int i5 = ((unsignedByte3 >> 1) & 3) + 1;
            String str = "L";
            if ((unsignedByte3 & 1) != 0) {
                parsableByteArray.skipBytes(1);
                int unsignedByte4 = (parsableByteArray.readUnsignedByte() >> 4) & 7;
                unsignedByte = (parsableByteArray.readUnsignedByte() >> 5) & 7;
                int unsignedByte5 = parsableByteArray.readUnsignedByte() & 63;
                int unsignedByte6 = parsableByteArray.readUnsignedByte();
                i = (unsignedByte6 >> 1) & 127;
                if ((unsignedByte6 & 1) != 0) {
                    str = "H";
                }
                unsignedByte2 = parsableByteArray.readUnsignedByte();
                parsableByteArray.skipBytes(unsignedByte5);
                if (unsignedByte4 > 1) {
                    int unsignedByte7 = parsableByteArray.readUnsignedByte();
                    for (int i6 = 0; i6 < unsignedByte4 - 1; i6++) {
                        if (((unsignedByte7 >> (7 - i6)) & 1) != 0) {
                            parsableByteArray.skipBytes(1);
                        }
                    }
                }
                parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte() * 4);
                parsableByteArray.skipBytes(6);
            } else {
                unsignedByte = 0;
                unsignedByte2 = 0;
                i = 0;
            }
            int unsignedByte8 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i7 = 0;
            int i8 = 0;
            while (true) {
                i2 = 12;
                i3 = 13;
                if (i7 >= unsignedByte8) {
                    break;
                }
                int unsignedByte9 = parsableByteArray.readUnsignedByte() & 31;
                int unsignedShort = (unsignedByte9 == 13 || unsignedByte9 == 12) ? 1 : parsableByteArray.readUnsignedShort();
                for (int i9 = 0; i9 < unsignedShort; i9++) {
                    int unsignedShort2 = parsableByteArray.readUnsignedShort();
                    i8 += unsignedShort2 + 4;
                    parsableByteArray.skipBytes(unsignedShort2);
                }
                i7++;
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i8];
            int i10 = 0;
            int i11 = 0;
            while (i10 < unsignedByte8) {
                int unsignedByte10 = parsableByteArray.readUnsignedByte() & 31;
                int unsignedShort3 = (unsignedByte10 == i3 || unsignedByte10 == i2) ? i4 : parsableByteArray.readUnsignedShort();
                for (int i12 = 0; i12 < unsignedShort3; i12++) {
                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                    System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, bArr, i11, 4);
                    int i13 = i11 + 4;
                    parsableByteArray.readBytes(bArr, i13, unsignedShort4);
                    i11 = i13 + unsignedShort4;
                }
                i10++;
                i4 = 1;
                i2 = 12;
                i3 = 13;
            }
            return new VvcConfig(ImmutableList.of(bArr), i5, String.format(Locale.US, "vvc1.%d.%s%d", Integer.valueOf(i), str, Integer.valueOf(unsignedByte2)), unsignedByte + 8);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.createForMalformedContainer("Error parsing VVC configuration", e);
        }
    }

    private VvcConfig(List<byte[]> list, int i, String str, int i2) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i;
        this.codecs = str;
        this.bitdepthLuma = i2;
    }
}
