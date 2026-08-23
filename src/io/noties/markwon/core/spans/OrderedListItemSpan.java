package io.noties.markwon.core.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.LeadingMarginSpan;
import android.widget.TextView;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.utils.LeadingMarginUtils;

/* JADX INFO: loaded from: classes5.dex */
public class OrderedListItemSpan implements LeadingMarginSpan {
    private int margin;
    private final String number;
    private final Paint paint = ObjectsPool.paint();
    private final MarkwonTheme theme;

    public static void measure(TextView textView, CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            OrderedListItemSpan[] orderedListItemSpanArr = (OrderedListItemSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), OrderedListItemSpan.class);
            if (orderedListItemSpanArr != null) {
                TextPaint paint = textView.getPaint();
                for (OrderedListItemSpan orderedListItemSpan : orderedListItemSpanArr) {
                    orderedListItemSpan.margin = (int) (paint.measureText(orderedListItemSpan.number) + 0.5f);
                }
            }
        }
    }

    public OrderedListItemSpan(MarkwonTheme markwonTheme, String str) {
        this.theme = markwonTheme;
        this.number = str;
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        return Math.max(this.margin, this.theme.getBlockMargin());
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        if (z && LeadingMarginUtils.selfStart(i6, charSequence, this)) {
            this.paint.set(paint);
            this.theme.applyListItemStyle(this.paint);
            int iMeasureText = (int) (this.paint.measureText(this.number) + 0.5f);
            int blockMargin = this.theme.getBlockMargin();
            if (iMeasureText > blockMargin) {
                this.margin = iMeasureText;
                blockMargin = iMeasureText;
            } else {
                this.margin = 0;
            }
            canvas.drawText(this.number, i2 > 0 ? (i + (blockMargin * i2)) - iMeasureText : i + (i2 * blockMargin) + (blockMargin - iMeasureText), i4, this.paint);
        }
    }
}
