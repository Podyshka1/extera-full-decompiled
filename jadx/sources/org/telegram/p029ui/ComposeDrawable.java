package org.telegram.p029ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes3.dex */
public class ComposeDrawable extends Drawable {
    private final Drawable background;
    private final Drawable icon;

    /* JADX INFO: renamed from: tx */
    private int f2115tx;

    /* JADX INFO: renamed from: ty */
    private int f2116ty;
    private final ArrayList views = new ArrayList();
    private boolean iconVisible = false;
    private final AnimatedFloat animatedIconVisible = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.ComposeDrawable$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.invalidate();
        }
    }, 420, CubicBezierInterpolator.EASE_OUT_QUINT);
    private int alpha = 255;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public ComposeDrawable(Drawable drawable, Drawable drawable2) {
        this.background = drawable;
        this.icon = drawable2;
    }

    public void addView(View view) {
        this.views.add(view);
    }

    public void setIconTranslate(int i, int i2) {
        this.f2115tx = i;
        this.f2116ty = i2;
    }

    public void setIconVisible(boolean z) {
        setIconVisible(z, true);
    }

    public void setIconVisible(boolean z, boolean z2) {
        if (this.iconVisible == z) {
            return;
        }
        this.iconVisible = z;
        if (!z2) {
            this.animatedIconVisible.force(z);
        }
        invalidate();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f = this.animatedIconVisible.set(this.iconVisible);
        this.background.setAlpha(this.alpha);
        this.background.setBounds(getBounds());
        this.background.draw(canvas);
        if (f > 0.0f) {
            this.icon.setAlpha((int) (this.alpha * f));
            this.icon.setBounds(getBounds().left + this.f2115tx, getBounds().top + this.f2116ty, getBounds().left + this.f2115tx + this.icon.getIntrinsicWidth(), getBounds().top + this.f2116ty + this.icon.getIntrinsicHeight());
            float fLerp = AndroidUtilities.lerp(0.5f, 1.0f, f);
            canvas.save();
            canvas.scale(fLerp, fLerp, this.icon.getBounds().centerX(), this.icon.getBounds().centerY());
            this.icon.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.background.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.background.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.background.setColorFilter(colorFilter);
        this.icon.setColorFilter(colorFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidate() {
        ArrayList arrayList = this.views;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((View) obj).invalidate();
        }
        invalidateSelf();
    }
}
