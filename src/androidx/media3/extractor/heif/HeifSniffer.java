package androidx.media3.extractor.heif;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;

/* JADX INFO: loaded from: classes4.dex */
abstract class HeifSniffer {
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean sniff(ExtractorInput extractorInput, boolean z) {
        int i;
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        boolean z2 = true;
        while (true) {
            parsableByteArray.reset(8);
            if (!extractorInput.peekFully(parsableByteArray.getData(), 0, 8, true)) {
                return false;
            }
            long unsignedInt = parsableByteArray.readUnsignedInt();
            int i2 = parsableByteArray.readInt();
            if (unsignedInt != 1) {
                i = 8;
            } else {
                if (!extractorInput.peekFully(parsableByteArray.getData(), 8, 8, true)) {
                    return false;
                }
                unsignedInt = parsableByteArray.readUnsignedLongToLong();
                i = 16;
            }
            long j = i;
            if (unsignedInt < j) {
                return false;
            }
            int i3 = (int) (unsignedInt - j);
            if (z2) {
                if (i2 != 1718909296 || i3 < 8) {
                    break;
                }
                parsableByteArray.reset(4);
                extractorInput.peekFully(parsableByteArray.getData(), 0, 4);
                if (parsableByteArray.readInt() != 1751476579) {
                    return false;
                }
                if (!z) {
                    return true;
                }
                extractorInput.advancePeekPosition(i3 - 4);
                z2 = false;
            } else {
                if (i2 == 1836086884) {
                    return true;
                }
                if (i3 != 0) {
                    extractorInput.advancePeekPosition(i3);
                }
            }
        }
    }
}
