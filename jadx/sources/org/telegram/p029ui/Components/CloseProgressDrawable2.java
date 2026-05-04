package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CloseProgressDrawable2 extends Drawable {
    private float angle;
    private boolean animating;
    private int currentColor;
    private int globalColorAlpha;
    private DecelerateInterpolator interpolator;
    private long lastFrameTime;
    private Paint paint;
    private RectF rect;
    private int side;

    protected abstract int getCurrentColor();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public CloseProgressDrawable2() {
        this(2.0f);
    }

    public CloseProgressDrawable2(float f) {
        this.paint = new Paint(1);
        this.interpolator = new DecelerateInterpolator();
        this.rect = new RectF();
        this.globalColorAlpha = 255;
        this.paint.setColor(-1);
        this.paint.setStrokeWidth(AndroidUtilities.m1124dp(f));
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStyle(Paint.Style.STROKE);
        this.side = AndroidUtilities.m1124dp(8.0f);
    }

    public void startAnimation() {
        this.animating = true;
        this.lastFrameTime = System.currentTimeMillis();
        invalidateSelf();
    }

    public void stopAnimation() {
        this.animating = false;
    }

    private void setColor(int i) {
        if (this.currentColor != i) {
            this.globalColorAlpha = Color.alpha(i);
            this.paint.setColor(ColorUtils.setAlphaComponent(i, 255));
        }
    }

    public void setSide(int i) {
        this.side = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b2  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        Canvas canvas2;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        long jCurrentTimeMillis = System.currentTimeMillis();
        setColor(getCurrentColor());
        long j = this.lastFrameTime;
        if (j != 0) {
            long j2 = jCurrentTimeMillis - j;
            boolean z = this.animating;
            if (z || this.angle != 0.0f) {
                float f7 = this.angle + ((j2 * 360) / 500.0f);
                this.angle = f7;
                if (!z && f7 >= 720.0f) {
                    this.angle = 0.0f;
                } else {
                    this.angle = f7 - (((int) (f7 / 720.0f)) * 720);
                }
                invalidateSelf();
            }
        }
        if (this.globalColorAlpha == 255 || getBounds() == null || getBounds().isEmpty()) {
            canvas2 = canvas;
            canvas2.save();
        } else {
            canvas2 = canvas;
            canvas2.saveLayerAlpha(getBounds().left, getBounds().top, getBounds().right, getBounds().bottom, this.globalColorAlpha, 31);
        }
        canvas2.translate(getIntrinsicWidth() / 2, getIntrinsicHeight() / 2);
        canvas2.rotate(-45.0f);
        float f8 = this.angle;
        if (f8 < 0.0f || f8 >= 90.0f) {
            if (f8 >= 90.0f && f8 < 180.0f) {
                f4 = 1.0f - ((f8 - 90.0f) / 90.0f);
                f2 = 0.0f;
                f = 0.0f;
                f3 = 1.0f;
            } else if (f8 < 180.0f || f8 >= 270.0f) {
                if (f8 >= 270.0f && f8 < 360.0f) {
                    f5 = (f8 - 270.0f) / 90.0f;
                } else if (f8 >= 360.0f && f8 < 450.0f) {
                    f5 = 1.0f - ((f8 - 360.0f) / 90.0f);
                } else if (f8 >= 450.0f && f8 < 540.0f) {
                    f2 = (f8 - 450.0f) / 90.0f;
                    f4 = 0.0f;
                    f3 = 0.0f;
                    f = 0.0f;
                } else if (f8 >= 540.0f && f8 < 630.0f) {
                    f4 = (f8 - 540.0f) / 90.0f;
                    f3 = 0.0f;
                    f = 0.0f;
                    f2 = 1.0f;
                } else if (f8 < 630.0f || f8 >= 720.0f) {
                    f = 0.0f;
                    f2 = 1.0f;
                    f4 = f2;
                } else {
                    f3 = (f8 - 630.0f) / 90.0f;
                    f = 0.0f;
                    f2 = 1.0f;
                    f4 = 1.0f;
                }
                f = f5;
                f2 = 0.0f;
                f4 = f2;
            } else {
                f3 = 1.0f - ((f8 - 180.0f) / 90.0f);
                f2 = 0.0f;
                f4 = 0.0f;
                f = 0.0f;
            }
            if (f2 != 0.0f) {
                canvas2.drawLine(0.0f, 0.0f, 0.0f, this.side * f2, this.paint);
            }
            if (f4 != 0.0f) {
                canvas.drawLine((-this.side) * f4, 0.0f, 0.0f, 0.0f, this.paint);
            }
            if (f3 != 0.0f) {
                canvas.drawLine(0.0f, (-this.side) * f3, 0.0f, 0.0f, this.paint);
            }
            if (f != 1.0f) {
                int i = this.side;
                canvas.drawLine(i * f, 0.0f, i, 0.0f, this.paint);
            }
            canvas.restore();
            int iCenterX = getBounds().centerX();
            int iCenterY = getBounds().centerY();
            RectF rectF = this.rect;
            int i2 = this.side;
            rectF.set(iCenterX - i2, iCenterY - i2, iCenterX + i2, iCenterY + i2);
            RectF rectF2 = this.rect;
            f6 = this.angle;
            float f9 = (f6 >= 360.0f ? f6 - 360.0f : 0.0f) - 45.0f;
            if (f6 >= 360.0f) {
                f6 = 720.0f - f6;
            }
            canvas.drawArc(rectF2, f9, f6, false, this.paint);
            this.lastFrameTime = jCurrentTimeMillis;
        }
        f2 = 1.0f - (f8 / 90.0f);
        f = 0.0f;
        f4 = 1.0f;
        f3 = f4;
        if (f2 != 0.0f) {
        }
        if (f4 != 0.0f) {
        }
        if (f3 != 0.0f) {
        }
        if (f != 1.0f) {
        }
        canvas.restore();
        int iCenterX2 = getBounds().centerX();
        int iCenterY2 = getBounds().centerY();
        RectF rectF3 = this.rect;
        int i22 = this.side;
        rectF3.set(iCenterX2 - i22, iCenterY2 - i22, iCenterX2 + i22, iCenterY2 + i22);
        RectF rectF22 = this.rect;
        f6 = this.angle;
        float f92 = (f6 >= 360.0f ? f6 - 360.0f : 0.0f) - 45.0f;
        if (f6 >= 360.0f) {
        }
        canvas.drawArc(rectF22, f92, f6, false, this.paint);
        this.lastFrameTime = jCurrentTimeMillis;
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
