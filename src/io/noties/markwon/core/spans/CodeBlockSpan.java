package io.noties.markwon.core.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import io.noties.markwon.core.MarkwonTheme;

/* JADX INFO: loaded from: classes5.dex */
public class CodeBlockSpan extends MetricAffectingSpan implements LeadingMarginSpan {
    private final MarkwonTheme theme;
    private final Rect rect = ObjectsPool.rect();
    private final Paint paint = ObjectsPool.paint();

    public CodeBlockSpan(MarkwonTheme markwonTheme) {
        this.theme = markwonTheme;
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
        this.theme.applyCodeBlockTextStyle(textPaint);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        return this.theme.getCodeBlockMargin();
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int width;
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.theme.getCodeBlockBackgroundColor(paint));
        if (i2 > 0) {
            width = canvas.getWidth();
        } else {
            i -= canvas.getWidth();
            width = i;
        }
        this.rect.set(i, i3, width, i5);
        canvas.drawRect(this.rect, this.paint);
    }
}
