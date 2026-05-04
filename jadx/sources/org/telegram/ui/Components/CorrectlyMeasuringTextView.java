package org.telegram.ui.Components;

import android.content.Context;
import android.text.Layout;
import android.widget.TextView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class CorrectlyMeasuringTextView extends TextView {
    public CorrectlyMeasuringTextView(Context context) {
        super(context);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        try {
            Layout layout = getLayout();
            if (layout.getLineCount() <= 1) {
                return;
            }
            int iMax = 0;
            for (int lineCount = layout.getLineCount() - 1; lineCount >= 0; lineCount--) {
                iMax = Math.max(iMax, Math.round(layout.getPaint().measureText(getText(), layout.getLineStart(lineCount), layout.getLineEnd(lineCount))));
            }
            super.onMeasure(Math.min(iMax + getPaddingLeft() + getPaddingRight(), getMeasuredWidth()) | TLObject.FLAG_30, 1073741824 | getMeasuredHeight());
        } catch (Exception unused) {
        }
    }
}
