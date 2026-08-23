package io.noties.markwon.core.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import io.noties.markwon.core.MarkwonTheme;

/* JADX INFO: loaded from: classes5.dex */
public class ThematicBreakSpan implements LeadingMarginSpan {
    private final MarkwonTheme theme;
    private final Rect rect = ObjectsPool.rect();
    private final Paint paint = ObjectsPool.paint();

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        return 0;
    }

    public ThematicBreakSpan(MarkwonTheme markwonTheme) {
        this.theme = markwonTheme;
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int width;
        int i8 = i3 + ((i5 - i3) / 2);
        this.paint.set(paint);
        this.theme.applyThematicBreakStyle(this.paint);
        int strokeWidth = (int) ((((int) (this.paint.getStrokeWidth() + 0.5f)) / 2.0f) + 0.5f);
        if (i2 > 0) {
            width = canvas.getWidth();
        } else {
            width = i;
            i -= canvas.getWidth();
        }
        this.rect.set(i, i8 - strokeWidth, width, i8 + strokeWidth);
        canvas.drawRect(this.rect, this.paint);
    }
}
