package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.annotation.Keep;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class GroupCreateCheckBox extends View {
    private static Paint eraser;
    private static Paint eraser2;
    private boolean attachedToWindow;
    private Paint backgroundInnerPaint;
    private int backgroundKey;
    private Paint backgroundPaint;
    private Canvas bitmapCanvas;
    private int checkKey;
    private Paint checkPaint;
    private float checkScale;
    private Bitmap drawBitmap;
    private int innerKey;
    private int innerRadDiff;
    private boolean isCheckAnimation;
    private float progress;

    public void updateColors() {
        this.backgroundInnerPaint.setColor(Theme.getColor(this.innerKey));
        this.backgroundPaint.setColor(Theme.getColor(this.backgroundKey));
        this.checkPaint.setColor(Theme.getColor(this.checkKey));
        invalidate();
    }

    @Keep
    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        invalidate();
    }

    @Keep
    public float getProgress() {
        return this.progress;
    }

    public void setCheckScale(float f) {
        this.checkScale = f;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateColors();
        this.attachedToWindow = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
    }

    public void setInnerRadDiff(int i) {
        this.innerRadDiff = i;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float fDp;
        if (getVisibility() == 0 && this.progress != 0.0f) {
            int measuredWidth = getMeasuredWidth() / 2;
            int measuredHeight = getMeasuredHeight() / 2;
            eraser2.setStrokeWidth(AndroidUtilities.dp(30.0f));
            this.drawBitmap.eraseColor(0);
            float f = this.progress;
            float f2 = f >= 0.5f ? 1.0f : f / 0.5f;
            float f3 = f < 0.5f ? 0.0f : (f - 0.5f) / 0.5f;
            if (!this.isCheckAnimation) {
                f = 1.0f - f;
            }
            if (f < 0.2f) {
                fDp = (AndroidUtilities.dp(2.0f) * f) / 0.2f;
            } else {
                fDp = f < 0.4f ? AndroidUtilities.dp(2.0f) - ((AndroidUtilities.dp(2.0f) * (f - 0.2f)) / 0.2f) : 0.0f;
            }
            if (f3 != 0.0f) {
                canvas.drawCircle(measuredWidth, measuredHeight, ((measuredWidth - AndroidUtilities.dp(2.0f)) + (AndroidUtilities.dp(2.0f) * f3)) - fDp, this.backgroundPaint);
            }
            float f4 = (measuredWidth - this.innerRadDiff) - fDp;
            float f5 = measuredWidth;
            float f6 = measuredHeight;
            this.bitmapCanvas.drawCircle(f5, f6, f4, this.backgroundInnerPaint);
            this.bitmapCanvas.drawCircle(f5, f6, f4 * (1.0f - f2), eraser);
            canvas.drawBitmap(this.drawBitmap, 0.0f, 0.0f, (Paint) null);
            float fDp2 = AndroidUtilities.dp(10.0f) * f3 * this.checkScale;
            float fDp3 = AndroidUtilities.dp(5.0f) * f3 * this.checkScale;
            int iDp = measuredWidth - AndroidUtilities.dp(1.0f);
            int iDp2 = measuredHeight + AndroidUtilities.dp(4.0f);
            float fSqrt = (float) Math.sqrt((fDp3 * fDp3) / 2.0f);
            float f7 = iDp;
            float f8 = iDp2;
            canvas.drawLine(f7, f8, f7 - fSqrt, f8 - fSqrt, this.checkPaint);
            float fSqrt2 = (float) Math.sqrt((fDp2 * fDp2) / 2.0f);
            float fDp4 = iDp - AndroidUtilities.dp(1.2f);
            canvas.drawLine(fDp4, f8, fDp4 + fSqrt2, f8 - fSqrt2, this.checkPaint);
        }
    }
}
