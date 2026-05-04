package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import okhttp3.internal.p025ws.RealWebSocket;

/* JADX INFO: loaded from: classes4.dex */
final class Sniffer {
    private int peekLength;
    private final ParsableByteArray scratch = new ParsableByteArray(8);

    public boolean sniff(ExtractorInput extractorInput) {
        long length = extractorInput.getLength();
        long j = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (length != -1 && length <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j = length;
        }
        int i = (int) j;
        extractorInput.peekFully(this.scratch.getData(), 0, 4);
        long unsignedInt = this.scratch.readUnsignedInt();
        this.peekLength = 4;
        while (unsignedInt != 440786851) {
            int i2 = this.peekLength + 1;
            this.peekLength = i2;
            if (i2 == i) {
                return false;
            }
            extractorInput.peekFully(this.scratch.getData(), 0, 1);
            unsignedInt = ((unsignedInt << 8) & (-256)) | ((long) (this.scratch.getData()[0] & 255));
        }
        long uint = readUint(extractorInput);
        long j2 = this.peekLength;
        if (uint != Long.MIN_VALUE && (length == -1 || j2 + uint < length)) {
            while (true) {
                int i3 = this.peekLength;
                long j3 = j2 + uint;
                if (i3 < j3) {
                    if (readUint(extractorInput) == Long.MIN_VALUE) {
                        return false;
                    }
                    long uint2 = readUint(extractorInput);
                    if (uint2 < 0 || uint2 > 2147483647L) {
                        break;
                    }
                    if (uint2 != 0) {
                        int i4 = (int) uint2;
                        extractorInput.advancePeekPosition(i4);
                        this.peekLength += i4;
                    }
                } else if (i3 == j3) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private long readUint(ExtractorInput extractorInput) {
        int i = 0;
        extractorInput.peekFully(this.scratch.getData(), 0, 1);
        int i2 = this.scratch.getData()[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (~i3);
        extractorInput.peekFully(this.scratch.getData(), 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.scratch.getData()[i] & 255) + (i5 << 8);
        }
        this.peekLength += i4 + 1;
        return i5;
    }
}
