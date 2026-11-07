package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TrackSampleTable {
    public final long durationUs;
    public final int[] flags;
    public final boolean hasOnlySyncSamples;
    public final int maximumSize;
    public final long[] offsets;
    public final int sampleCount;
    public final int[] sizes;
    public final int[] syncSampleIndices;
    public final long[] timestampsUs;
    public final Track track;

    public TrackSampleTable(Track track, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, int[] iArr3, boolean z, long j, int i2) {
        Preconditions.checkArgument(iArr.length == jArr2.length);
        Preconditions.checkArgument(jArr.length == jArr2.length);
        Preconditions.checkArgument(iArr2.length == jArr2.length);
        this.track = track;
        this.offsets = jArr;
        this.sizes = iArr;
        this.maximumSize = i;
        this.timestampsUs = jArr2;
        this.flags = iArr2;
        this.syncSampleIndices = iArr3;
        this.hasOnlySyncSamples = z;
        this.durationUs = j;
        this.sampleCount = i2;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public boolean hasSampleTableData() {
        return this.timestampsUs.length > 0;
    }

    public int getIndexOfEarlierOrEqualSynchronizationSample(long j) {
        if (!hasSampleTableData()) {
            return -1;
        }
        int i = 0;
        if (this.hasOnlySyncSamples) {
            return Util.binarySearchFloor(this.timestampsUs, j, true, false);
        }
        int length = this.syncSampleIndices.length - 1;
        int i2 = -1;
        while (i <= length) {
            int i3 = ((length - i) / 2) + i;
            if (this.timestampsUs[this.syncSampleIndices[i3]] <= j) {
                i = i3 + 1;
                i2 = i3;
            } else {
                length = i3 - 1;
            }
        }
        if (i2 == -1) {
            return -1;
        }
        long j2 = this.timestampsUs[this.syncSampleIndices[i2]];
        if (j2 == j) {
            while (i2 > 0 && this.timestampsUs[this.syncSampleIndices[i2 - 1]] == j2) {
                i2--;
            }
        }
        return this.syncSampleIndices[i2];
    }

    public int getIndexOfLaterOrEqualSynchronizationSample(long j) {
        if (!hasSampleTableData()) {
            return -1;
        }
        int i = 0;
        if (this.hasOnlySyncSamples) {
            return Util.binarySearchCeil(this.timestampsUs, j, true, false);
        }
        int length = this.syncSampleIndices.length - 1;
        int i2 = -1;
        while (i <= length) {
            int i3 = ((length - i) / 2) + i;
            if (this.timestampsUs[this.syncSampleIndices[i3]] >= j) {
                length = i3 - 1;
                i2 = i3;
            } else {
                i = i3 + 1;
            }
        }
        if (i2 == -1) {
            return -1;
        }
        long j2 = this.timestampsUs[this.syncSampleIndices[i2]];
        if (j2 == j) {
            while (true) {
                int[] iArr = this.syncSampleIndices;
                if (i2 >= iArr.length - 1) {
                    break;
                }
                int i4 = i2 + 1;
                if (this.timestampsUs[iArr[i4]] != j2) {
                    break;
                }
                i2 = i4;
            }
        }
        return this.syncSampleIndices[i2];
    }
}
