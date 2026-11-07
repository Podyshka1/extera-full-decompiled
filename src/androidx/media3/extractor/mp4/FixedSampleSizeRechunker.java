package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes4.dex */
abstract class FixedSampleSizeRechunker {

    public static final class Results {
        public final long duration;
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;
        public final long totalSize;

        private Results(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j, long j2) {
            this.offsets = jArr;
            this.sizes = iArr;
            this.maximumSize = i;
            this.timestamps = jArr2;
            this.flags = iArr2;
            this.duration = j;
            this.totalSize = j2;
        }
    }

    public static Results rechunk(int i, long[] jArr, int[] iArr, long j) {
        int[] iArr2 = iArr;
        int i2 = 8192 / i;
        int i3 = 0;
        int iCeilDivide = 0;
        for (int i4 : iArr2) {
            iCeilDivide += Util.ceilDivide(i4, i2);
        }
        long[] jArr2 = new long[iCeilDivide];
        int[] iArr3 = new int[iCeilDivide];
        long[] jArr3 = new long[iCeilDivide];
        int[] iArr4 = new int[iCeilDivide];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int iMax = 0;
        while (i3 < iArr2.length) {
            int i8 = iArr2[i3];
            long j2 = jArr[i3];
            while (i8 > 0) {
                int iMin = Math.min(i2, i8);
                jArr2[i7] = j2;
                int i9 = i * iMin;
                iArr3[i7] = i9;
                i6 += i9;
                iMax = Math.max(iMax, i9);
                jArr3[i7] = ((long) i5) * j;
                iArr4[i7] = 1;
                j2 += (long) iArr3[i7];
                i5 += iMin;
                i8 -= iMin;
                i7++;
                i2 = i2;
            }
            i3++;
            iArr2 = iArr;
        }
        return new Results(jArr2, iArr3, iMax, jArr3, iArr4, j * ((long) i5), i6);
    }
}
