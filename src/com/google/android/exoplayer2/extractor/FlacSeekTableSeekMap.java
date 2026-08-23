package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes4.dex */
public final class FlacSeekTableSeekMap implements SeekMap {
    private final long firstFrameOffset;
    private final FlacStreamMetadata flacStreamMetadata;

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public FlacSeekTableSeekMap(FlacStreamMetadata flacStreamMetadata, long j) {
        this.flacStreamMetadata = flacStreamMetadata;
        this.firstFrameOffset = j;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.flacStreamMetadata.getDurationUs();
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        Assertions.checkStateNotNull(this.flacStreamMetadata.seekTable);
        FlacStreamMetadata flacStreamMetadata = this.flacStreamMetadata;
        FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata.seekTable;
        long[] jArr = seekTable.pointSampleNumbers;
        long[] jArr2 = seekTable.pointOffsets;
        int iBinarySearchFloor = Util.binarySearchFloor(jArr, flacStreamMetadata.getSampleNumber(j), true, false);
        SeekPoint seekPoint = getSeekPoint(iBinarySearchFloor == -1 ? 0L : jArr[iBinarySearchFloor], iBinarySearchFloor != -1 ? jArr2[iBinarySearchFloor] : 0L);
        if (seekPoint.timeUs == j || iBinarySearchFloor == jArr.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = iBinarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, getSeekPoint(jArr[i], jArr2[i]));
    }

    private SeekPoint getSeekPoint(long j, long j2) {
        return new SeekPoint((j * 1000000) / ((long) this.flacStreamMetadata.sampleRate), this.firstFrameOffset + j2);
    }
}
