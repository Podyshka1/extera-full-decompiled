package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;

/* JADX INFO: loaded from: classes3.dex */
public class ProxyDrawable extends Drawable {
    private final RectF circleRect;
    private boolean connected;
    private float connectedAnimationProgress;
    private final Drawable emptyDrawable;
    private final Drawable fullDrawable;
    private boolean isEnabled;
    private long lastUpdateTime;
    private final Paint outerPaint;
    private int radOffset;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public ProxyDrawable(Context context) {
        Paint paint = new Paint(1);
        this.outerPaint = paint;
        this.circleRect = new RectF();
        this.radOffset = 0;
        this.emptyDrawable = context.getResources().getDrawable(C2888R.drawable.outline_shield_plain_24).mutate();
        this.fullDrawable = context.getResources().getDrawable(C2888R.drawable.outline_shield_check).mutate();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(AndroidUtilities.m1124dp(1.66f));
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.lastUpdateTime = SystemClock.elapsedRealtime();
    }

    public void setConnected(boolean z, boolean z2, boolean z3) {
        this.isEnabled = z;
        this.connected = z2;
        this.lastUpdateTime = SystemClock.elapsedRealtime();
        if (!z3) {
            this.connectedAnimationProgress = this.connected ? 1.0f : 0.0f;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.lastUpdateTime;
        this.lastUpdateTime = jElapsedRealtime;
        if (!this.isEnabled) {
            setBounds(this.emptyDrawable);
            this.emptyDrawable.draw(canvas);
        } else if (!this.connected || this.connectedAnimationProgress != 1.0f) {
            setBounds(this.emptyDrawable);
            this.emptyDrawable.draw(canvas);
            this.outerPaint.setAlpha((int) ((1.0f - this.connectedAnimationProgress) * 255.0f));
            this.radOffset += (int) ((360 * j) / 1000.0f);
            int iWidth = getBounds().width();
            int iHeight = getBounds().height();
            int iM1124dp = AndroidUtilities.m1124dp(4.0f);
            this.circleRect.set((iWidth / 2) - iM1124dp, (iHeight / 2) - iM1124dp, r1 + iM1124dp + iM1124dp, r2 + iM1124dp + iM1124dp);
            canvas.drawArc(this.circleRect, this.radOffset - 90, 90.0f, false, this.outerPaint);
            invalidateSelf();
        }
        if (this.isEnabled && (this.connected || this.connectedAnimationProgress != 0.0f)) {
            this.fullDrawable.setAlpha((int) (this.connectedAnimationProgress * 255.0f));
            setBounds(this.fullDrawable);
            this.fullDrawable.draw(canvas);
        }
        boolean z = this.connected;
        if (z) {
            float f = this.connectedAnimationProgress;
            if (f != 1.0f) {
                float f2 = f + (j / 300.0f);
                this.connectedAnimationProgress = f2;
                if (f2 > 1.0f) {
                    this.connectedAnimationProgress = 1.0f;
                }
                invalidateSelf();
                return;
            }
        }
        if (z) {
            return;
        }
        float f3 = this.connectedAnimationProgress;
        if (f3 != 0.0f) {
            float f4 = f3 - (j / 300.0f);
            this.connectedAnimationProgress = f4;
            if (f4 < 0.0f) {
                this.connectedAnimationProgress = 0.0f;
            }
            invalidateSelf();
        }
    }

    private void setBounds(Drawable drawable) {
        Rect bounds = getBounds();
        drawable.setBounds(bounds.centerX() - (drawable.getIntrinsicWidth() / 2), bounds.centerY() - (drawable.getIntrinsicHeight() / 2), bounds.centerX() + (drawable.getIntrinsicWidth() / 2), bounds.centerY() + (drawable.getIntrinsicHeight() / 2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.emptyDrawable.setColorFilter(colorFilter);
        this.fullDrawable.setColorFilter(colorFilter);
        this.outerPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m1124dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m1124dp(24.0f);
    }
}
