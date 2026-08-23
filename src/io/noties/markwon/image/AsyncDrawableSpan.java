package io.noties.markwon.image;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.style.ReplacementSpan;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.utils.SpanUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AsyncDrawableSpan extends ReplacementSpan {
    private final int alignment;
    private final AsyncDrawable drawable;
    private final boolean replacementTextIsLink;
    private final MarkwonTheme theme;

    public AsyncDrawableSpan(MarkwonTheme markwonTheme, AsyncDrawable asyncDrawable, int i, boolean z) {
        this.theme = markwonTheme;
        this.drawable = asyncDrawable;
        this.alignment = i;
        this.replacementTextIsLink = z;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (this.drawable.hasResult()) {
            Rect bounds = this.drawable.getBounds();
            if (fontMetricsInt != null) {
                int i3 = -bounds.bottom;
                fontMetricsInt.ascent = i3;
                fontMetricsInt.descent = 0;
                fontMetricsInt.top = i3;
                fontMetricsInt.bottom = 0;
            }
            return bounds.right;
        }
        if (this.replacementTextIsLink) {
            this.theme.applyLinkStyle(paint);
        }
        return (int) (paint.measureText(charSequence, i, i2) + 0.5f);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        int iHeight;
        this.drawable.initWithKnownDimensions(SpanUtils.width(canvas, charSequence), paint.getTextSize());
        AsyncDrawable asyncDrawable = this.drawable;
        if (asyncDrawable.hasResult()) {
            int i6 = i5 - asyncDrawable.getBounds().bottom;
            int iSave = canvas.save();
            try {
                int i7 = this.alignment;
                if (2 == i7) {
                    iHeight = ((i5 - i3) - asyncDrawable.getBounds().height()) / 2;
                } else {
                    if (1 == i7) {
                        iHeight = paint.getFontMetricsInt().descent;
                    }
                    canvas.translate(f, i6);
                    asyncDrawable.draw(canvas);
                    canvas.restoreToCount(iSave);
                    return;
                }
                i6 -= iHeight;
                canvas.translate(f, i6);
                asyncDrawable.draw(canvas);
                canvas.restoreToCount(iSave);
                return;
            } catch (Throwable th) {
                canvas.restoreToCount(iSave);
                throw th;
            }
        }
        float fTextCenterY = textCenterY(i3, i5, paint);
        if (this.replacementTextIsLink) {
            this.theme.applyLinkStyle(paint);
        }
        canvas.drawText(charSequence, i, i2, f, fTextCenterY, paint);
    }

    public AsyncDrawable getDrawable() {
        return this.drawable;
    }

    private static float textCenterY(int i, int i2, Paint paint) {
        return (int) ((i + ((i2 - i) / 2)) - (((paint.descent() + paint.ascent()) / 2.0f) + 0.5f));
    }
}
