package org.telegram.ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes6.dex */
public class ImageReceiverSpan extends ReplacementSpan {
    private final int currentAccount;
    public final ImageReceiver imageReceiver;
    private View parent;
    private float radius;
    private final Paint shadowPaint;
    private float sz;
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
        paint.setShadowLayer(AndroidUtilities.dp(1.0f), 0.0f, AndroidUtilities.dp(0.66f), AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        setParent(view);
    }

    public void setSize(float f) {
        this.sz = f;
    }

    public void setRoundRadius(float f) {
        ImageReceiver imageReceiver = this.imageReceiver;
        float fDp = AndroidUtilities.dp(f);
        this.radius = fDp;
        imageReceiver.setRoundRadius((int) fDp);
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
        return AndroidUtilities.dp(this.sz);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (this.shadowEnabled && this.shadowPaintAlpha != paint.getAlpha()) {
            Paint paint2 = this.shadowPaint;
            int alpha = paint.getAlpha();
            this.shadowPaintAlpha = alpha;
            paint2.setAlpha(alpha);
            this.shadowPaint.setShadowLayer(AndroidUtilities.dp(1.0f), 0.0f, AndroidUtilities.dp(0.66f), Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, this.shadowPaintAlpha / 255.0f));
        }
        float f2 = this.translateX + f;
        float fDp = (this.translateY + ((i3 + i5) / 2.0f)) - (AndroidUtilities.dp(this.sz) / 2.0f);
        if (this.shadowEnabled) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f2, fDp, AndroidUtilities.dp(this.sz) + f2, AndroidUtilities.dp(this.sz) + fDp);
            float f3 = this.radius;
            canvas.drawRoundRect(rectF, f3, f3, this.shadowPaint);
        }
        this.imageReceiver.setImageCoords(f2, fDp, AndroidUtilities.dp(this.sz), AndroidUtilities.dp(this.sz));
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
