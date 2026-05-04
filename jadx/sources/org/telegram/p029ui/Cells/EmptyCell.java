package org.telegram.p029ui.Cells;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class EmptyCell extends FrameLayout {
    private int cellHeight;

    public EmptyCell(Context context) {
        this(context, 8);
    }

    public EmptyCell(Context context, int i) {
        super(context);
        this.cellHeight = i;
    }

    public void setHeight(int i) {
        if (this.cellHeight != i) {
            this.cellHeight = i;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(this.cellHeight, TLObject.FLAG_30));
    }
}
