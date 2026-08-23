package io.noties.markwon.ext.latex;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.image.AsyncDrawableSpan;
import ru.noties.jlatexmath.JLatexMathDrawable;
import ru.noties.jlatexmath.awt.Color;

/* JADX INFO: loaded from: classes5.dex */
public class JLatexAsyncDrawableSpan extends AsyncDrawableSpan {
    private boolean appliedTextColor;
    private final int color;
    private final JLatextAsyncDrawable drawable;

    public JLatexAsyncDrawableSpan(MarkwonTheme markwonTheme, JLatextAsyncDrawable jLatextAsyncDrawable, int i) {
        super(markwonTheme, jLatextAsyncDrawable, 2, false);
        this.drawable = jLatextAsyncDrawable;
        this.color = i;
        this.appliedTextColor = i != 0;
    }

    @Override // io.noties.markwon.image.AsyncDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (!this.appliedTextColor && this.drawable.hasResult()) {
            Drawable result = this.drawable.getResult();
            if (result instanceof JLatexMathDrawable) {
                ((JLatexMathDrawable) result).icon().setForeground(new Color(paint.getColor()));
                this.appliedTextColor = true;
            }
        }
        super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
    }
}
