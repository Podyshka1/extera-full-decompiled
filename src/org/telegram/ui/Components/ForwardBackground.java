package org.telegram.ui.Components;

import android.R;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.StaticLayout;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class ForwardBackground {
    public final ButtonBounce bounce;
    private LoadingDrawable loadingDrawable;
    private Drawable rippleDrawable;
    private int rippleDrawableColor;
    private final View view;
    public final Path path = new Path();
    public final Rect bounds = new Rect();

    /* JADX INFO: renamed from: r */
    private final RectF f1117r = new RectF();

    public ForwardBackground(View view) {
        this.view = view;
        this.bounce = new ButtonBounce(view, 0.8f, 1.4f);
    }

    public void set(StaticLayout[] staticLayoutArr, boolean z) {
        float fDp;
        int iDp = AndroidUtilities.dp(4.0f) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
        float fMax = Math.max(0, Math.min(6, SharedConfig.bubbleRadius) - 1);
        float fMin = Math.min(9, SharedConfig.bubbleRadius);
        float fMin2 = Math.min(3, SharedConfig.bubbleRadius);
        float f = -AndroidUtilities.dp(((fMin / 9.0f) * 2.66f) + 4.0f);
        float f2 = -AndroidUtilities.dp(3.0f);
        float fDp2 = iDp + AndroidUtilities.dp(5.0f);
        float lineWidth = staticLayoutArr[0].getLineWidth(0) + AndroidUtilities.dp(r8);
        float lineWidth2 = staticLayoutArr[1].getLineWidth(0) + AndroidUtilities.dp(r8);
        this.path.rewind();
        if (!z) {
            fMax = SharedConfig.bubbleRadius / 2.0f;
        }
        float fDp3 = AndroidUtilities.dp(fMax) * 2;
        this.f1117r.set(f, f2, f + fDp3, fDp3 + f2);
        this.path.arcTo(this.f1117r, 180.0f, 90.0f);
        float f3 = lineWidth - lineWidth2;
        float fMax2 = Math.abs(f3) < ((float) AndroidUtilities.dp(fMin2 + fMin)) ? Math.max(lineWidth, lineWidth2) : lineWidth;
        if (Math.abs(f3) > AndroidUtilities.dp(r12)) {
            float fDp4 = AndroidUtilities.dp(fMin2) * 2;
            if (lineWidth < lineWidth2) {
                float f4 = ((fDp2 - f2) * 0.45f) + f2;
                fDp = AndroidUtilities.dp(fMin) * 2;
                this.f1117r.set(fMax2 - fDp, f2, fMax2, f2 + fDp);
                this.path.arcTo(this.f1117r, 270.0f, 90.0f);
                this.f1117r.set(lineWidth, f4 - fDp4, fDp4 + lineWidth, f4);
                this.path.arcTo(this.f1117r, 180.0f, -90.0f);
                float fMin3 = Math.min(fDp2 - f4, AndroidUtilities.dp(fMin) * 2);
                float f5 = lineWidth2 - fMin3;
                this.f1117r.set(f5, f4, lineWidth2, f4 + fMin3);
                this.path.arcTo(this.f1117r, 270.0f, 90.0f);
                this.f1117r.set(f5, fDp2 - fMin3, lineWidth2, fDp2);
                this.path.arcTo(this.f1117r, 0.0f, 90.0f);
            } else {
                float f6 = ((fDp2 - f2) * 0.55f) + f2;
                float fMin4 = Math.min(f6 - f2, AndroidUtilities.dp(fMin) * 2);
                this.f1117r.set(fMax2 - fMin4, f2, fMax2, f2 + fMin4);
                this.path.arcTo(this.f1117r, 270.0f, 90.0f);
                float fDp5 = AndroidUtilities.dp(fMin) * 2;
                this.f1117r.set(lineWidth - fMin4, f6 - fMin4, lineWidth, f6);
                this.path.arcTo(this.f1117r, 0.0f, 90.0f);
                this.f1117r.set(lineWidth2, f6, lineWidth2 + fDp4, fDp4 + f6);
                this.path.arcTo(this.f1117r, 270.0f, -90.0f);
                this.f1117r.set(lineWidth2 - fDp5, fDp2 - fDp5, lineWidth2, fDp2);
                this.path.arcTo(this.f1117r, 0.0f, 90.0f);
                fDp = fDp5;
            }
        } else {
            fDp = AndroidUtilities.dp(fMin) * 2;
            float f7 = fMax2 - fDp;
            this.f1117r.set(f7, f2, fMax2, f2 + fDp);
            this.path.arcTo(this.f1117r, 270.0f, 90.0f);
            this.f1117r.set(f7, fDp2 - fDp, fMax2, fDp2);
            this.path.arcTo(this.f1117r, 0.0f, 90.0f);
        }
        this.f1117r.set(f, fDp2 - fDp, fDp + f, fDp2);
        this.path.arcTo(this.f1117r, 90.0f, 90.0f);
        this.path.close();
        this.bounds.set((int) f, (int) f2, (int) Math.max(lineWidth, lineWidth2), (int) fDp2);
    }

    public void setColor(int i) {
        if (this.rippleDrawableColor != i) {
            Drawable drawable = this.rippleDrawable;
            if (drawable == null) {
                this.rippleDrawable = Theme.createSelectorDrawable(i, 2);
            } else {
                Theme.setSelectorDrawableColor(drawable, i, true);
            }
            this.rippleDrawable.setCallback(this.view);
            this.rippleDrawableColor = i;
        }
    }

    public void setPressed(boolean z) {
        setPressed(z, this.bounds.centerX(), this.bounds.centerY());
    }

    public void setPressed(boolean z, float f, float f2) {
        Drawable drawable;
        this.bounce.setPressed(z);
        if (z && (drawable = this.rippleDrawable) != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.rippleDrawable;
        if (drawable2 != null) {
            drawable2.setState(z ? new int[]{R.attr.state_enabled, R.attr.state_pressed} : new int[0]);
        }
        this.view.invalidate();
    }

    public void draw(Canvas canvas, boolean z) {
        canvas.save();
        canvas.clipPath(this.path);
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.setBounds(this.bounds);
            this.rippleDrawable.draw(canvas);
        }
        LoadingDrawable loadingDrawable = this.loadingDrawable;
        if (z) {
            if (loadingDrawable == null) {
                LoadingDrawable loadingDrawable2 = new LoadingDrawable();
                this.loadingDrawable = loadingDrawable2;
                loadingDrawable2.setAppearByGradient(true);
            } else if (loadingDrawable.isDisappeared() || this.loadingDrawable.isDisappearing()) {
                this.loadingDrawable.reset();
                this.loadingDrawable.resetDisappear();
            }
        } else if (loadingDrawable != null && !loadingDrawable.isDisappearing() && !this.loadingDrawable.isDisappeared()) {
            this.loadingDrawable.disappear();
        }
        canvas.restore();
        LoadingDrawable loadingDrawable3 = this.loadingDrawable;
        if (loadingDrawable3 == null || loadingDrawable3.isDisappeared()) {
            return;
        }
        this.loadingDrawable.usePath(this.path);
        this.loadingDrawable.setColors(Theme.multAlpha(this.rippleDrawableColor, 0.7f), Theme.multAlpha(this.rippleDrawableColor, 1.3f), Theme.multAlpha(this.rippleDrawableColor, 1.5f), Theme.multAlpha(this.rippleDrawableColor, 2.0f));
        this.loadingDrawable.setBounds(this.bounds);
        canvas.save();
        this.loadingDrawable.draw(canvas);
        canvas.restore();
        this.view.invalidate();
    }
}
