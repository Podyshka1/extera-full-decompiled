package org.telegram.p029ui.ActionBar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.DecelerateInterpolator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.Components.MediaActionDrawable;

/* JADX INFO: loaded from: classes3.dex */
public class MenuDrawable extends Drawable {
    public static int TYPE_DEFAULT = 0;
    public static int TYPE_UDPATE_AVAILABLE = 1;
    public static int TYPE_UDPATE_DOWNLOADING = 2;
    private int alpha;
    private float animatedDownloadProgress;
    private int backColor;
    private final Paint backPaint;
    private int currentAnimationTime;
    private float currentRotation;
    private float downloadProgress;
    private float downloadProgressAnimationStart;
    private float downloadProgressTime;
    private float downloadRadOffset;
    private float finalRotation;
    private int iconColor;
    private DecelerateInterpolator interpolator;
    private long lastFrameTime;
    private boolean miniIcon;
    private final Paint paint;
    private int previousType;
    private RectF rect;
    private boolean reverseAngle;
    private boolean rotateToBack;
    private boolean roundCap;
    private int type;
    private float typeAnimationProgress;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public MenuDrawable() {
        this(TYPE_DEFAULT);
    }

    public MenuDrawable(int i) {
        Paint paint = new Paint(1);
        this.paint = paint;
        Paint paint2 = new Paint(1);
        this.backPaint = paint2;
        this.rotateToBack = true;
        this.interpolator = new DecelerateInterpolator();
        this.rect = new RectF();
        this.alpha = 255;
        paint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        paint2.setStrokeWidth(AndroidUtilities.density * 1.66f);
        paint2.setStrokeCap(cap);
        paint2.setStyle(Paint.Style.STROKE);
        this.previousType = TYPE_DEFAULT;
        this.type = i;
        this.typeAnimationProgress = 1.0f;
    }

    public void setRotateToBack(boolean z) {
        this.rotateToBack = z;
    }

    public void setRotation(float f, boolean z) {
        this.lastFrameTime = 0L;
        float f2 = this.currentRotation;
        if (f2 == 1.0f) {
            this.reverseAngle = true;
        } else if (f2 == 0.0f) {
            this.reverseAngle = false;
        }
        this.lastFrameTime = 0L;
        if (z) {
            if (f2 < f) {
                this.currentAnimationTime = (int) (f2 * 200.0f);
            } else {
                this.currentAnimationTime = (int) ((1.0f - f2) * 200.0f);
            }
            this.lastFrameTime = SystemClock.elapsedRealtime();
            this.finalRotation = f;
        } else {
            this.currentRotation = f;
            this.finalRotation = f;
        }
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0487  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float fM1124dp;
        float fM1124dp2;
        float f;
        float f2;
        float f3;
        float fM1124dp3;
        float fM1124dp4;
        float fM1124dp5;
        float fAbs;
        int i;
        Canvas canvas2;
        int i2;
        int i3;
        float fM1124dp6;
        float f4;
        int i4;
        int i5;
        int i6;
        int i7;
        float f5;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.lastFrameTime;
        long j2 = jElapsedRealtime - j;
        float f6 = this.currentRotation;
        float f7 = this.finalRotation;
        if (f6 != f7) {
            if (j != 0) {
                int i8 = (int) (((long) this.currentAnimationTime) + j2);
                this.currentAnimationTime = i8;
                if (i8 >= 200) {
                    this.currentRotation = f7;
                } else if (f6 < f7) {
                    this.currentRotation = this.interpolator.getInterpolation(i8 / 200.0f) * this.finalRotation;
                } else {
                    this.currentRotation = 1.0f - this.interpolator.getInterpolation(i8 / 200.0f);
                }
            }
            invalidateSelf();
        }
        float f8 = this.typeAnimationProgress;
        if (f8 < 1.0f) {
            float f9 = f8 + (j2 / 200.0f);
            this.typeAnimationProgress = f9;
            if (f9 > 1.0f) {
                this.typeAnimationProgress = 1.0f;
            }
            invalidateSelf();
        }
        this.lastFrameTime = jElapsedRealtime;
        canvas.save();
        canvas.translate(((getIntrinsicWidth() / 2) - AndroidUtilities.m1124dp(9.0f)) - (AndroidUtilities.m1124dp(1.0f) * this.currentRotation), getIntrinsicHeight() / 2);
        int color = this.iconColor;
        if (color == 0) {
            color = Theme.getColor(Theme.key_actionBarDefaultIcon);
        }
        int color2 = this.backColor;
        if (color2 == 0) {
            color2 = Theme.getColor(Theme.key_actionBarDefault);
        }
        int offsetColor = color2;
        int i9 = this.type;
        int i10 = TYPE_DEFAULT;
        if (i9 == i10) {
            if (this.previousType != i10) {
                fM1124dp = AndroidUtilities.m1124dp(9.0f) * (1.0f - this.typeAnimationProgress);
                fM1124dp2 = AndroidUtilities.m1124dp(7.0f);
                f = this.typeAnimationProgress;
            } else {
                f3 = 0.0f;
                f2 = 0.0f;
                if (!this.rotateToBack) {
                    canvas.rotate(this.currentRotation * (this.reverseAngle ? -180 : 180), AndroidUtilities.m1124dp(9.0f), 0.0f);
                    this.paint.setColor(color);
                    this.paint.setAlpha(this.alpha);
                    canvas.drawLine(this.roundCap ? (AndroidUtilities.m1124dp(0.5f) * this.currentRotation) + ((this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation)) : 0.0f, 0.0f, ((AndroidUtilities.m1124dp(18.0f) - (AndroidUtilities.m1124dp(3.0f) * this.currentRotation)) - f3) - (this.roundCap ? (this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation) : 0.0f), 0.0f, this.paint);
                    fM1124dp3 = (AndroidUtilities.m1124dp(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.m1124dp(0.5f) * Math.abs(this.currentRotation));
                    fM1124dp4 = AndroidUtilities.m1124dp(18.0f) - (AndroidUtilities.m1124dp(2.5f) * Math.abs(this.currentRotation));
                    fM1124dp5 = AndroidUtilities.m1124dp(5.0f) + (AndroidUtilities.m1124dp(2.0f) * Math.abs(this.currentRotation));
                    fAbs = AndroidUtilities.m1124dp(7.5f) * Math.abs(this.currentRotation);
                    if (this.roundCap) {
                        fAbs += (this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation);
                        float fM1124dp7 = fM1124dp3 + (AndroidUtilities.m1124dp(0.5f) * this.currentRotation);
                        fM1124dp4 -= (AndroidUtilities.m1124dp(0.5f) * this.currentRotation) + ((this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation));
                        fM1124dp5 -= AndroidUtilities.m1124dp(0.25f) * this.currentRotation;
                        fM1124dp3 = fM1124dp7 + (AndroidUtilities.m1124dp(0.25f) * this.currentRotation);
                    }
                } else {
                    canvas.rotate(this.currentRotation * (this.reverseAngle ? -225 : 135), AndroidUtilities.m1124dp(9.0f), 0.0f);
                    if (this.miniIcon) {
                        this.paint.setColor(color);
                        this.paint.setAlpha(this.alpha);
                        canvas.drawLine((AndroidUtilities.dpf2(2.0f) * (1.0f - Math.abs(this.currentRotation))) + (AndroidUtilities.m1124dp(1.0f) * this.currentRotation), 0.0f, ((AndroidUtilities.dpf2(16.0f) * (1.0f - this.currentRotation)) + (AndroidUtilities.m1124dp(17.0f) * this.currentRotation)) - f3, 0.0f, this.paint);
                        fM1124dp3 = (AndroidUtilities.dpf2(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.dpf2(0.5f) * Math.abs(this.currentRotation));
                        fM1124dp4 = (AndroidUtilities.dpf2(9.0f) * Math.abs(this.currentRotation)) + (AndroidUtilities.dpf2(16.0f) * (1.0f - Math.abs(this.currentRotation)));
                        fM1124dp5 = (AndroidUtilities.dpf2(3.0f) * Math.abs(this.currentRotation)) + AndroidUtilities.dpf2(5.0f);
                        fAbs = (AndroidUtilities.dpf2(7.0f) * Math.abs(this.currentRotation)) + AndroidUtilities.dpf2(2.0f);
                    } else {
                        int color3 = Theme.getColor(Theme.key_actionBarActionModeDefaultIcon);
                        offsetColor = AndroidUtilities.getOffsetColor(offsetColor, Theme.getColor(Theme.key_actionBarActionModeDefault), this.currentRotation, 1.0f);
                        this.paint.setColor(AndroidUtilities.getOffsetColor(color, color3, this.currentRotation, 1.0f));
                        this.paint.setAlpha(this.alpha);
                        canvas.drawLine(this.currentRotation * AndroidUtilities.m1124dp(1.0f), 0.0f, (AndroidUtilities.m1124dp(18.0f) - (AndroidUtilities.m1124dp(1.0f) * this.currentRotation)) - f3, 0.0f, this.paint);
                        fM1124dp3 = (AndroidUtilities.m1124dp(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.m1124dp(0.5f) * Math.abs(this.currentRotation));
                        fM1124dp4 = AndroidUtilities.m1124dp(18.0f) - (AndroidUtilities.m1124dp(9.0f) * Math.abs(this.currentRotation));
                        fM1124dp5 = (AndroidUtilities.m1124dp(3.0f) * Math.abs(this.currentRotation)) + AndroidUtilities.m1124dp(5.0f);
                        fAbs = Math.abs(this.currentRotation) * AndroidUtilities.m1124dp(9.0f);
                    }
                }
                float f10 = fM1124dp3;
                float f11 = fAbs;
                i = offsetColor;
                float f12 = fM1124dp5;
                float f13 = fM1124dp4;
                if (!this.miniIcon) {
                    canvas2 = canvas;
                    canvas2.drawLine(f11, -f12, f13, -f10, this.paint);
                    canvas2.drawLine(f11, f12, f13, f10, this.paint);
                } else {
                    canvas2 = canvas;
                    canvas2.drawLine(f11, -f12, f13 - f2, -f10, this.paint);
                    canvas2.drawLine(f11, f12, f13, f10, this.paint);
                }
                i2 = this.type;
                i3 = TYPE_DEFAULT;
                if ((i2 == i3 && this.currentRotation != 1.0f) || (this.previousType != i3 && this.typeAnimationProgress != 1.0f)) {
                    fM1124dp6 = AndroidUtilities.m1124dp(17.0f);
                    f4 = -AndroidUtilities.m1124dp(4.5f);
                    float f14 = AndroidUtilities.density * 5.5f;
                    float f15 = this.currentRotation;
                    canvas2.scale(1.0f - f15, 1.0f - f15, fM1124dp6, f4);
                    if (this.type == TYPE_DEFAULT) {
                        f14 *= 1.0f - this.typeAnimationProgress;
                    }
                    this.backPaint.setColor(i);
                    this.backPaint.setAlpha(this.alpha);
                    canvas2.drawCircle(fM1124dp6, f4, f14, this.paint);
                    i4 = this.type;
                    i5 = TYPE_UDPATE_AVAILABLE;
                    if (i4 == i5 || this.previousType == i5) {
                        this.backPaint.setStrokeWidth(AndroidUtilities.density * 1.66f);
                        if (this.previousType != TYPE_UDPATE_AVAILABLE) {
                            this.backPaint.setAlpha((int) (this.alpha * (1.0f - this.typeAnimationProgress)));
                        } else {
                            this.backPaint.setAlpha(this.alpha);
                        }
                        canvas2.drawLine(fM1124dp6, f4 - AndroidUtilities.m1124dp(2.0f), fM1124dp6, f4, this.backPaint);
                        canvas2.drawPoint(fM1124dp6, AndroidUtilities.m1124dp(2.5f) + f4, this.backPaint);
                    }
                    i6 = this.type;
                    i7 = TYPE_UDPATE_DOWNLOADING;
                    if (i6 != i7 || this.previousType == i7) {
                        this.backPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
                        if (this.previousType != TYPE_UDPATE_DOWNLOADING) {
                            this.backPaint.setAlpha((int) (this.alpha * (1.0f - this.typeAnimationProgress)));
                        } else {
                            this.backPaint.setAlpha(this.alpha);
                        }
                        float fMax = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                        this.rect.set(fM1124dp6 - AndroidUtilities.m1124dp(3.0f), f4 - AndroidUtilities.m1124dp(3.0f), fM1124dp6 + AndroidUtilities.m1124dp(3.0f), f4 + AndroidUtilities.m1124dp(3.0f));
                        canvas2.drawArc(this.rect, this.downloadRadOffset, fMax, false, this.backPaint);
                        float f16 = this.downloadRadOffset + ((360 * j2) / 2500.0f);
                        this.downloadRadOffset = f16;
                        this.downloadRadOffset = MediaActionDrawable.getCircleValue(f16);
                        float f17 = this.downloadProgress;
                        float f18 = this.downloadProgressAnimationStart;
                        f5 = f17 - f18;
                        if (f5 > 0.0f) {
                            float f19 = this.downloadProgressTime + j2;
                            this.downloadProgressTime = f19;
                            if (f19 >= 200.0f) {
                                this.animatedDownloadProgress = f17;
                                this.downloadProgressAnimationStart = f17;
                                this.downloadProgressTime = 0.0f;
                            } else {
                                this.animatedDownloadProgress = f18 + (f5 * this.interpolator.getInterpolation(f19 / 200.0f));
                            }
                        }
                        invalidateSelf();
                    }
                }
                canvas.restore();
            }
        } else if (this.previousType == i10) {
            fM1124dp = AndroidUtilities.m1124dp(9.0f) * this.typeAnimationProgress * (1.0f - this.currentRotation);
            fM1124dp2 = AndroidUtilities.m1124dp(7.0f) * this.typeAnimationProgress;
            f = this.currentRotation;
        } else {
            fM1124dp = AndroidUtilities.m1124dp(9.0f) * (1.0f - this.currentRotation);
            fM1124dp2 = AndroidUtilities.m1124dp(7.0f);
            f = this.currentRotation;
        }
        f3 = fM1124dp2 * (1.0f - f);
        f2 = fM1124dp;
        if (!this.rotateToBack) {
        }
        float f102 = fM1124dp3;
        float f112 = fAbs;
        i = offsetColor;
        float f122 = fM1124dp5;
        float f132 = fM1124dp4;
        if (!this.miniIcon) {
        }
        i2 = this.type;
        i3 = TYPE_DEFAULT;
        if (i2 == i3) {
            fM1124dp6 = AndroidUtilities.m1124dp(17.0f);
            f4 = -AndroidUtilities.m1124dp(4.5f);
            float f142 = AndroidUtilities.density * 5.5f;
            float f152 = this.currentRotation;
            canvas2.scale(1.0f - f152, 1.0f - f152, fM1124dp6, f4);
            if (this.type == TYPE_DEFAULT) {
            }
            this.backPaint.setColor(i);
            this.backPaint.setAlpha(this.alpha);
            canvas2.drawCircle(fM1124dp6, f4, f142, this.paint);
            i4 = this.type;
            i5 = TYPE_UDPATE_AVAILABLE;
            if (i4 == i5) {
                this.backPaint.setStrokeWidth(AndroidUtilities.density * 1.66f);
                if (this.previousType != TYPE_UDPATE_AVAILABLE) {
                }
                canvas2.drawLine(fM1124dp6, f4 - AndroidUtilities.m1124dp(2.0f), fM1124dp6, f4, this.backPaint);
                canvas2.drawPoint(fM1124dp6, AndroidUtilities.m1124dp(2.5f) + f4, this.backPaint);
                i6 = this.type;
                i7 = TYPE_UDPATE_DOWNLOADING;
                if (i6 != i7) {
                    this.backPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
                    if (this.previousType != TYPE_UDPATE_DOWNLOADING) {
                    }
                    float fMax2 = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                    this.rect.set(fM1124dp6 - AndroidUtilities.m1124dp(3.0f), f4 - AndroidUtilities.m1124dp(3.0f), fM1124dp6 + AndroidUtilities.m1124dp(3.0f), f4 + AndroidUtilities.m1124dp(3.0f));
                    canvas2.drawArc(this.rect, this.downloadRadOffset, fMax2, false, this.backPaint);
                    float f162 = this.downloadRadOffset + ((360 * j2) / 2500.0f);
                    this.downloadRadOffset = f162;
                    this.downloadRadOffset = MediaActionDrawable.getCircleValue(f162);
                    float f172 = this.downloadProgress;
                    float f182 = this.downloadProgressAnimationStart;
                    f5 = f172 - f182;
                    if (f5 > 0.0f) {
                    }
                    invalidateSelf();
                }
            }
        } else {
            fM1124dp6 = AndroidUtilities.m1124dp(17.0f);
            f4 = -AndroidUtilities.m1124dp(4.5f);
            float f1422 = AndroidUtilities.density * 5.5f;
            float f1522 = this.currentRotation;
            canvas2.scale(1.0f - f1522, 1.0f - f1522, fM1124dp6, f4);
            if (this.type == TYPE_DEFAULT) {
            }
            this.backPaint.setColor(i);
            this.backPaint.setAlpha(this.alpha);
            canvas2.drawCircle(fM1124dp6, f4, f1422, this.paint);
            i4 = this.type;
            i5 = TYPE_UDPATE_AVAILABLE;
            if (i4 == i5) {
            }
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.alpha != i) {
            this.alpha = i;
            this.paint.setAlpha(i);
            this.backPaint.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m1124dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m1124dp(24.0f);
    }

    public void setIconColor(int i) {
        this.iconColor = i;
    }

    public void setBackColor(int i) {
        this.backColor = i;
    }

    public void setRoundCap() {
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.roundCap = true;
    }

    public void setMiniIcon(boolean z) {
        this.miniIcon = z;
    }
}
