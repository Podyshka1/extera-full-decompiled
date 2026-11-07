package androidx.media3.extractor.mp4;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SmtaAtomUtil {
    public static Metadata parseSmta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (i2 < 16) {
                    return null;
                }
                parsableByteArray.skipBytes(4);
                int i3 = -1;
                int i4 = 0;
                for (int i5 = 0; i5 < 2; i5++) {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    int unsignedByte2 = parsableByteArray.readUnsignedByte();
                    if (unsignedByte == 0) {
                        i3 = unsignedByte2;
                    } else if (unsignedByte == 1) {
                        i4 = unsignedByte2;
                    }
                }
                int captureFrameRate = getCaptureFrameRate(i3, parsableByteArray, i);
                if (captureFrameRate == -2147483647) {
                    return null;
                }
                return new Metadata(new SmtaMetadataEntry(captureFrameRate, i4));
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    private static int getCaptureFrameRate(int i, ParsableByteArray parsableByteArray, int i2) {
        if (i == 12) {
            return 240;
        }
        if (i == 13) {
            return 120;
        }
        if (i == 21 && parsableByteArray.bytesLeft() >= 8 && parsableByteArray.getPosition() + 8 <= i2) {
            int i3 = parsableByteArray.readInt();
            int i4 = parsableByteArray.readInt();
            if (i3 >= 12 && i4 == 1936877170) {
                return parsableByteArray.readUnsignedFixedPoint1616();
            }
        }
        return -2147483647;
    }
}
