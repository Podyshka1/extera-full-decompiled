package org.telegram.ui.Charts.data;

import org.json.JSONObject;
import org.telegram.messenger.SegmentTree;

/* JADX INFO: loaded from: classes6.dex */
public class StackBarChartData extends ChartData {
    public long[] ySum;
    public SegmentTree ySumSegmentTree;

    public StackBarChartData(JSONObject jSONObject) {
        super(jSONObject);
        init();
    }

    public void init() {
        int length = this.lines.get(0).f923y.length;
        int size = this.lines.size();
        this.ySum = new long[length];
        int i = 0;
        while (true) {
            long[] jArr = this.ySum;
            if (i < length) {
                jArr[i] = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    long[] jArr2 = this.ySum;
                    jArr2[i] = jArr2[i] + this.lines.get(i2).f923y[i];
                }
                i++;
            } else {
                this.ySumSegmentTree = new SegmentTree(jArr);
                return;
            }
        }
    }

    public long findMax(int i, int i2) {
        return this.ySumSegmentTree.rMaxQ(i, i2);
    }
}
