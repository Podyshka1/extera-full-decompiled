package org.telegram.ui.Charts.data;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class DoubleLinearChartData extends ChartData {
    public float[] linesK;

    public DoubleLinearChartData(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Override // org.telegram.ui.Charts.data.ChartData
    public void measure() {
        super.measure();
        int size = this.lines.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            long j2 = this.lines.get(i).maxValue;
            if (j2 > j) {
                j = j2;
            }
        }
        this.linesK = new float[size];
        for (int i2 = 0; i2 < size; i2++) {
            long j3 = this.lines.get(i2).maxValue;
            float[] fArr = this.linesK;
            if (j == j3) {
                fArr[i2] = 1.0f;
            } else {
                fArr[i2] = j / j3;
            }
        }
    }
}
