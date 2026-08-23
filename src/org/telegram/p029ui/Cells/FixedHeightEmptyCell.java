package org.telegram.p029ui.Cells;

import android.content.Context;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class FixedHeightEmptyCell extends View {
    int heightInDp;

    public FixedHeightEmptyCell(Context context, int i) {
        super(context);
        this.heightInDp = i;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(this.heightInDp), TLObject.FLAG_30));
    }
}
