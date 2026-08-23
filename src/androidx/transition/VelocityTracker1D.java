package androidx.transition;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
class VelocityTracker1D {
    private float[] mDataSamples = new float[20];
    private int mIndex = 0;
    private long[] mTimeSamples;

    VelocityTracker1D() {
        long[] jArr = new long[20];
        this.mTimeSamples = jArr;
        Arrays.fill(jArr, Long.MIN_VALUE);
    }
}
