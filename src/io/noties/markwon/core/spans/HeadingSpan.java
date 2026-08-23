package io.noties.markwon.core.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.utils.LeadingMarginUtils;

/* JADX INFO: loaded from: classes5.dex */
public class HeadingSpan extends MetricAffectingSpan implements LeadingMarginSpan {
    private final int level;
    private final MarkwonTheme theme;
    private final Rect rect = ObjectsPool.rect();
    private final Paint paint = ObjectsPool.paint();

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        return 0;
    }

    public HeadingSpan(MarkwonTheme markwonTheme, int i) {
        this.theme = markwonTheme;
        this.level = i;
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint);
    }

    private void apply(TextPaint textPaint) {
        this.theme.applyHeadingTextStyle(textPaint, this.level);
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int width;
        int i8 = this.level;
        if ((i8 == 1 || i8 == 2) && LeadingMarginUtils.selfEnd(i7, charSequence, this)) {
            this.paint.set(paint);
            this.theme.applyHeadingBreakStyle(this.paint);
            float strokeWidth = this.paint.getStrokeWidth();
            if (strokeWidth > 0.0f) {
                int i9 = (int) ((i5 - strokeWidth) + 0.5f);
                if (i2 > 0) {
                    width = canvas.getWidth();
                } else {
                    width = i;
                    i -= canvas.getWidth();
                }
                this.rect.set(i, i9, width, i5);
                canvas.drawRect(this.rect, this.paint);
            }
        }
    }
}
