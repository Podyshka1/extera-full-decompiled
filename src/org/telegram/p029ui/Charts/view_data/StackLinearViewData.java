package org.telegram.p029ui.Charts.view_data;

import android.graphics.Paint;
import org.telegram.p029ui.Charts.BaseChartView;
import org.telegram.p029ui.Charts.data.ChartData;

/* JADX INFO: loaded from: classes6.dex */
public class StackLinearViewData extends LineViewData {
    public StackLinearViewData(ChartData.Line line) {
        super(line, false);
        this.paint.setStyle(Paint.Style.FILL);
        if (BaseChartView.USE_LINES) {
            this.paint.setAntiAlias(false);
        }
    }
}
