package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;

/* JADX INFO: loaded from: classes7.dex */
public class AiButtonDrawable extends Drawable {
    private final AnimatedFloat animation = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Components.AiButtonDrawable$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.invalidateSelf();
        }
    }, 0, 1200, CubicBezierInterpolator.EASE_OUT_QUINT);
    private final Drawable base;
    private final Drawable star;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public AiButtonDrawable(Context context) {
        this.base = context.getResources().getDrawable(C2807R.drawable.input_ai).mutate();
        this.star = context.getResources().getDrawable(C2807R.drawable.input_ai_star).mutate();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.base.setBounds(getBounds());
        this.base.draw(canvas);
        float f = this.animation.set(1.0f);
        float fWidth = r2.left + (r2.width() * 0.352f);
        float fHeight = r2.top + (r2.height() * 0.248f);
        float fWidth2 = r2.width() * 0.105f * ((float) (1.0d - Math.sin(((double) AndroidUtilities.cascade(f, 0.0f, 2.0f, 1.5f)) * 3.141592653589793d)));
        float fWidth3 = r2.left + (r2.width() * 0.215f);
        float fHeight2 = r2.top + (r2.height() * 0.43f);
        float fWidth4 = r2.width() * 0.09f * ((float) (1.0d - Math.sin(((double) AndroidUtilities.cascade(f, 1.0f, 2.0f, 1.5f)) * 3.141592653589793d)));
        this.star.setBounds((int) (fWidth - fWidth2), (int) (fHeight - fWidth2), (int) (fWidth + fWidth2), (int) (fHeight + fWidth2));
        this.star.draw(canvas);
        this.star.setBounds((int) (fWidth3 - fWidth4), (int) (fHeight2 - fWidth4), (int) (fWidth3 + fWidth4), (int) (fHeight2 + fWidth4));
        this.star.draw(canvas);
    }

    public void animate() {
        this.animation.force(0.0f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.base.setAlpha(i);
        this.star.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.base.setColorFilter(colorFilter);
        this.star.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.base.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.base.getIntrinsicHeight();
    }
}
