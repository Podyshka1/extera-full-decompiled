package org.telegram.p029ui.Components;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.annotation.Keep;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

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
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateColors();
        this.attachedToWindow = true;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
    }

    public void setInnerRadDiff(int i) {
        this.innerRadDiff = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fM1124dp;
        if (getVisibility() == 0 && this.progress != 0.0f) {
            int measuredWidth = getMeasuredWidth() / 2;
            int measuredHeight = getMeasuredHeight() / 2;
            eraser2.setStrokeWidth(AndroidUtilities.m1124dp(30.0f));
            this.drawBitmap.eraseColor(0);
            float f = this.progress;
            float f2 = f >= 0.5f ? 1.0f : f / 0.5f;
            float f3 = f < 0.5f ? 0.0f : (f - 0.5f) / 0.5f;
            if (!this.isCheckAnimation) {
                f = 1.0f - f;
            }
            if (f < 0.2f) {
                fM1124dp = (AndroidUtilities.m1124dp(2.0f) * f) / 0.2f;
            } else {
                fM1124dp = f < 0.4f ? AndroidUtilities.m1124dp(2.0f) - ((AndroidUtilities.m1124dp(2.0f) * (f - 0.2f)) / 0.2f) : 0.0f;
            }
            if (f3 != 0.0f) {
                canvas.drawCircle(measuredWidth, measuredHeight, ((measuredWidth - AndroidUtilities.m1124dp(2.0f)) + (AndroidUtilities.m1124dp(2.0f) * f3)) - fM1124dp, this.backgroundPaint);
            }
            float f4 = (measuredWidth - this.innerRadDiff) - fM1124dp;
            float f5 = measuredWidth;
            float f6 = measuredHeight;
            this.bitmapCanvas.drawCircle(f5, f6, f4, this.backgroundInnerPaint);
            this.bitmapCanvas.drawCircle(f5, f6, f4 * (1.0f - f2), eraser);
            canvas.drawBitmap(this.drawBitmap, 0.0f, 0.0f, (Paint) null);
            float fM1124dp2 = AndroidUtilities.m1124dp(10.0f) * f3 * this.checkScale;
            float fM1124dp3 = AndroidUtilities.m1124dp(5.0f) * f3 * this.checkScale;
            int iM1124dp = measuredWidth - AndroidUtilities.m1124dp(1.0f);
            int iM1124dp2 = measuredHeight + AndroidUtilities.m1124dp(4.0f);
            float fSqrt = (float) Math.sqrt((fM1124dp3 * fM1124dp3) / 2.0f);
            float f7 = iM1124dp;
            float f8 = iM1124dp2;
            canvas.drawLine(f7, f8, f7 - fSqrt, f8 - fSqrt, this.checkPaint);
            float fSqrt2 = (float) Math.sqrt((fM1124dp2 * fM1124dp2) / 2.0f);
            float fM1124dp4 = iM1124dp - AndroidUtilities.m1124dp(1.2f);
            canvas.drawLine(fM1124dp4, f8, fM1124dp4 + fSqrt2, f8 - fSqrt2, this.checkPaint);
        }
    }
}
