package io.noties.markwon.ext.latex;

import android.graphics.Paint;
import android.graphics.Rect;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.image.AsyncDrawable;

/* JADX INFO: loaded from: classes5.dex */
class JLatexInlineAsyncDrawableSpan extends JLatexAsyncDrawableSpan {
    private final AsyncDrawable drawable;

    public JLatexInlineAsyncDrawableSpan(MarkwonTheme markwonTheme, JLatextAsyncDrawable jLatextAsyncDrawable, int i) {
        super(markwonTheme, jLatextAsyncDrawable, i);
        this.drawable = jLatextAsyncDrawable;
    }

    @Override // io.noties.markwon.image.AsyncDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (this.drawable.hasResult()) {
            Rect bounds = this.drawable.getBounds();
            if (fontMetricsInt != null) {
                int i3 = bounds.bottom / 2;
                int i4 = -i3;
                fontMetricsInt.ascent = i4;
                fontMetricsInt.descent = i3;
                fontMetricsInt.top = i4;
                fontMetricsInt.bottom = 0;
            }
            return bounds.right;
        }
        return (int) (paint.measureText(charSequence, i, i2) + 0.5f);
    }
}
