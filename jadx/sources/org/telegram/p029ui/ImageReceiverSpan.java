package org.telegram.p029ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes6.dex */
public class ImageReceiverSpan extends ReplacementSpan {
    private final int currentAccount;
    public final ImageReceiver imageReceiver;
    private View parent;
    private float radius;
    private final Paint shadowPaint;

    /* JADX INFO: renamed from: sz */
    private float f2127sz;
    private float translateX;
    private float translateY;
    private final View.OnAttachStateChangeListener parentAttachListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.ImageReceiverSpan.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            ImageReceiverSpan.this.imageReceiver.onAttachedToWindow();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ImageReceiverSpan.this.imageReceiver.onDetachedFromWindow();
        }
    };
    private boolean shadowEnabled = true;
    private int shadowPaintAlpha = 255;

    public ImageReceiverSpan(View view, int i, float f) {
        this.currentAccount = i;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.imageReceiver = imageReceiver;
        imageReceiver.setCurrentAccount(i);
        setSize(f);
        Paint paint = new Paint(1);
        this.shadowPaint = paint;
        paint.setShadowLayer(AndroidUtilities.m1124dp(1.0f), 0.0f, AndroidUtilities.m1124dp(0.66f), AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        setParent(view);
    }

    public void setSize(float f) {
        this.f2127sz = f;
    }

    public void setRoundRadius(float f) {
        ImageReceiver imageReceiver = this.imageReceiver;
        float fM1124dp = AndroidUtilities.m1124dp(f);
        this.radius = fM1124dp;
        imageReceiver.setRoundRadius((int) fM1124dp);
    }

    public void setParent(View view) {
        View view2 = this.parent;
        if (view2 == view) {
            return;
        }
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this.parentAttachListener);
            if (this.parent.isAttachedToWindow() && !view.isAttachedToWindow()) {
                this.imageReceiver.onDetachedFromWindow();
            }
        }
        View view3 = this.parent;
        if ((view3 == null || !view3.isAttachedToWindow()) && view != null && view.isAttachedToWindow()) {
            this.imageReceiver.onAttachedToWindow();
        }
        this.parent = view;
        this.imageReceiver.setParentView(view);
        if (view != null) {
            view.addOnAttachStateChangeListener(this.parentAttachListener);
        }
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return AndroidUtilities.m1124dp(this.f2127sz);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (this.shadowEnabled && this.shadowPaintAlpha != paint.getAlpha()) {
            Paint paint2 = this.shadowPaint;
            int alpha = paint.getAlpha();
            this.shadowPaintAlpha = alpha;
            paint2.setAlpha(alpha);
            this.shadowPaint.setShadowLayer(AndroidUtilities.m1124dp(1.0f), 0.0f, AndroidUtilities.m1124dp(0.66f), Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, this.shadowPaintAlpha / 255.0f));
        }
        float f2 = this.translateX + f;
        float fM1124dp = (this.translateY + ((i3 + i5) / 2.0f)) - (AndroidUtilities.m1124dp(this.f2127sz) / 2.0f);
        if (this.shadowEnabled) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f2, fM1124dp, AndroidUtilities.m1124dp(this.f2127sz) + f2, AndroidUtilities.m1124dp(this.f2127sz) + fM1124dp);
            float f3 = this.radius;
            canvas.drawRoundRect(rectF, f3, f3, this.shadowPaint);
        }
        this.imageReceiver.setImageCoords(f2, fM1124dp, AndroidUtilities.m1124dp(this.f2127sz), AndroidUtilities.m1124dp(this.f2127sz));
        this.imageReceiver.setAlpha(paint.getAlpha() / 255.0f);
        this.imageReceiver.draw(canvas);
    }

    public void enableShadow(boolean z) {
        this.shadowEnabled = z;
    }

    public void translate(float f, float f2) {
        this.translateX = f;
        this.translateY = f2;
    }
}
