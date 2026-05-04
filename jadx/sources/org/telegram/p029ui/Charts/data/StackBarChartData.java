package org.telegram.p029ui.Charts.data;

import org.json.JSONObject;
import org.telegram.messenger.SegmentTree;
import org.telegram.p029ui.Charts.data.ChartData;

/* JADX INFO: loaded from: classes6.dex */
public class StackBarChartData extends ChartData {
    public long[] ySum;
    public SegmentTree ySumSegmentTree;

    public StackBarChartData(JSONObject jSONObject) {
        super(jSONObject);
        init();
    }

    public void init() {
        int length = ((ChartData.Line) this.lines.get(0)).f1916y.length;
        int size = this.lines.size();
        this.ySum = new long[length];
        for (int i = 0; i < length; i++) {
            this.ySum[i] = 0;
            for (int i2 = 0; i2 < size; i2++) {
                long[] jArr = this.ySum;
                jArr[i] = jArr[i] + ((ChartData.Line) this.lines.get(i2)).f1916y[i];
            }
        }
        this.ySumSegmentTree = new SegmentTree(this.ySum);
    }

    public long findMax(int i, int i2) {
        return this.ySumSegmentTree.rMaxQ(i, i2);
    }
}
