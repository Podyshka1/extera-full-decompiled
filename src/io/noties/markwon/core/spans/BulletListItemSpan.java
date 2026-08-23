package io.noties.markwon.core.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.utils.LeadingMarginUtils;

/* JADX INFO: loaded from: classes5.dex */
public class BulletListItemSpan implements LeadingMarginSpan {
    private static final boolean IS_NOUGAT;
    private final int level;
    private MarkwonTheme theme;
    private final Paint paint = ObjectsPool.paint();
    private final RectF circle = ObjectsPool.rectF();
    private final Rect rectangle = ObjectsPool.rect();

    static {
        int i = Build.VERSION.SDK_INT;
        IS_NOUGAT = 24 == i || 25 == i;
    }

    public BulletListItemSpan(MarkwonTheme markwonTheme, int i) {
        this.theme = markwonTheme;
        this.level = i;
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        return this.theme.getBlockMargin();
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int iMin;
        int iMax;
        Paint.Style style;
        int width;
        if (z && LeadingMarginUtils.selfStart(i6, charSequence, this)) {
            this.paint.set(paint);
            this.theme.applyListItemStyle(this.paint);
            int iSave = canvas.save();
            try {
                int blockMargin = this.theme.getBlockMargin();
                int bulletWidth = this.theme.getBulletWidth((int) ((this.paint.descent() - this.paint.ascent()) + 0.5f));
                int i8 = (blockMargin - bulletWidth) / 2;
                if (IS_NOUGAT) {
                    if (i2 < 0) {
                        width = i - (layout.getWidth() - (blockMargin * this.level));
                    } else {
                        width = (blockMargin * this.level) - i;
                    }
                    int i9 = i + (i8 * i2);
                    int i10 = (i2 * bulletWidth) + i9;
                    int i11 = i2 * width;
                    iMin = Math.min(i9, i10) + i11;
                    iMax = Math.max(i9, i10) + i11;
                } else {
                    if (i2 <= 0) {
                        i -= blockMargin;
                    }
                    iMin = i + i8;
                    iMax = iMin + bulletWidth;
                }
                int iDescent = (i4 + ((int) (((this.paint.descent() + this.paint.ascent()) / 2.0f) + 0.5f))) - (bulletWidth / 2);
                int i12 = bulletWidth + iDescent;
                int i13 = this.level;
                if (i13 == 0 || i13 == 1) {
                    this.circle.set(iMin, iDescent, iMax, i12);
                    if (this.level == 0) {
                        style = Paint.Style.FILL;
                    } else {
                        style = Paint.Style.STROKE;
                    }
                    this.paint.setStyle(style);
                    canvas.drawOval(this.circle, this.paint);
                } else {
                    this.rectangle.set(iMin, iDescent, iMax, i12);
                    this.paint.setStyle(Paint.Style.FILL);
                    canvas.drawRect(this.rectangle, this.paint);
                }
                canvas.restoreToCount(iSave);
            } catch (Throwable th) {
                canvas.restoreToCount(iSave);
                throw th;
            }
        }
    }
}
