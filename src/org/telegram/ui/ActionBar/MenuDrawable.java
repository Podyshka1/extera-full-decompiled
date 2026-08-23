package org.telegram.ui.ActionBar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.DecelerateInterpolator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.MediaActionDrawable;

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
        paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
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

    /* JADX WARN: Removed duplicated region for block: B:37:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x047b  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float fDp;
        float fDp2;
        float f;
        float f2;
        float f3;
        boolean z;
        float fDp3;
        float fDp4;
        float fDp5;
        float fAbs;
        int i;
        boolean z2;
        Canvas canvas2;
        int i2;
        int i3;
        float fDp6;
        float f4;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        float f5;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.lastFrameTime;
        long j2 = jElapsedRealtime - j;
        float f6 = this.currentRotation;
        float f7 = this.finalRotation;
        if (f6 != f7) {
            if (j != 0) {
                int i12 = (int) (((long) this.currentAnimationTime) + j2);
                this.currentAnimationTime = i12;
                if (i12 >= 200) {
                    this.currentRotation = f7;
                } else {
                    DecelerateInterpolator decelerateInterpolator = this.interpolator;
                    if (f6 < f7) {
                        this.currentRotation = decelerateInterpolator.getInterpolation(i12 / 200.0f) * this.finalRotation;
                    } else {
                        this.currentRotation = 1.0f - decelerateInterpolator.getInterpolation(i12 / 200.0f);
                    }
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
        canvas.translate(((getIntrinsicWidth() / 2) - AndroidUtilities.dp(9.0f)) - (AndroidUtilities.dp(1.0f) * this.currentRotation), getIntrinsicHeight() / 2);
        int color = this.iconColor;
        if (color == 0) {
            color = Theme.getColor(Theme.key_actionBarDefaultIcon);
        }
        int color2 = this.backColor;
        if (color2 == 0) {
            color2 = Theme.getColor(Theme.key_actionBarDefault);
        }
        int offsetColor = color2;
        int i13 = this.type;
        int i14 = TYPE_DEFAULT;
        int i15 = this.previousType;
        if (i13 == i14) {
            if (i15 != i14) {
                fDp = AndroidUtilities.dp(9.0f) * (1.0f - this.typeAnimationProgress);
                fDp2 = AndroidUtilities.dp(7.0f);
                f = this.typeAnimationProgress;
            } else {
                f3 = 0.0f;
                f2 = 0.0f;
                z = this.rotateToBack;
                float f10 = this.currentRotation;
                if (!z) {
                    canvas.rotate(f10 * (this.reverseAngle ? -180 : 180), AndroidUtilities.dp(9.0f), 0.0f);
                    this.paint.setColor(color);
                    this.paint.setAlpha(this.alpha);
                    canvas.drawLine(this.roundCap ? (AndroidUtilities.dp(0.5f) * this.currentRotation) + ((this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation)) : 0.0f, 0.0f, ((AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(3.0f) * this.currentRotation)) - f3) - (this.roundCap ? (this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation) : 0.0f), 0.0f, this.paint);
                    fDp3 = (AndroidUtilities.dp(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.dp(0.5f) * Math.abs(this.currentRotation));
                    fDp4 = AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(2.5f) * Math.abs(this.currentRotation));
                    fDp5 = AndroidUtilities.dp(5.0f) + (AndroidUtilities.dp(2.0f) * Math.abs(this.currentRotation));
                    fAbs = AndroidUtilities.dp(7.5f) * Math.abs(this.currentRotation);
                    if (this.roundCap) {
                        fAbs += (this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation);
                        float fDp7 = fDp3 + (AndroidUtilities.dp(0.5f) * this.currentRotation);
                        fDp4 -= (AndroidUtilities.dp(0.5f) * this.currentRotation) + ((this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation));
                        fDp5 -= AndroidUtilities.dp(0.25f) * this.currentRotation;
                        fDp3 = fDp7 + (AndroidUtilities.dp(0.25f) * this.currentRotation);
                    }
                } else {
                    canvas.rotate(f10 * (this.reverseAngle ? -225 : 135), AndroidUtilities.dp(9.0f), 0.0f);
                    if (this.miniIcon) {
                        this.paint.setColor(color);
                        this.paint.setAlpha(this.alpha);
                        canvas.drawLine((AndroidUtilities.dpf2(2.0f) * (1.0f - Math.abs(this.currentRotation))) + (AndroidUtilities.dp(1.0f) * this.currentRotation), 0.0f, ((AndroidUtilities.dpf2(16.0f) * (1.0f - this.currentRotation)) + (AndroidUtilities.dp(17.0f) * this.currentRotation)) - f3, 0.0f, this.paint);
                        fDp3 = (AndroidUtilities.dpf2(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.dpf2(0.5f) * Math.abs(this.currentRotation));
                        fDp4 = (AndroidUtilities.dpf2(9.0f) * Math.abs(this.currentRotation)) + (AndroidUtilities.dpf2(16.0f) * (1.0f - Math.abs(this.currentRotation)));
                        fDp5 = (AndroidUtilities.dpf2(3.0f) * Math.abs(this.currentRotation)) + AndroidUtilities.dpf2(5.0f);
                        fAbs = (AndroidUtilities.dpf2(7.0f) * Math.abs(this.currentRotation)) + AndroidUtilities.dpf2(2.0f);
                    } else {
                        int color3 = Theme.getColor(Theme.key_actionBarActionModeDefaultIcon);
                        offsetColor = AndroidUtilities.getOffsetColor(offsetColor, Theme.getColor(Theme.key_actionBarActionModeDefault), this.currentRotation, 1.0f);
                        this.paint.setColor(AndroidUtilities.getOffsetColor(color, color3, this.currentRotation, 1.0f));
                        this.paint.setAlpha(this.alpha);
                        canvas.drawLine(this.currentRotation * AndroidUtilities.dp(1.0f), 0.0f, (AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(1.0f) * this.currentRotation)) - f3, 0.0f, this.paint);
                        fDp3 = (AndroidUtilities.dp(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.dp(0.5f) * Math.abs(this.currentRotation));
                        fDp4 = AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(9.0f) * Math.abs(this.currentRotation));
                        fDp5 = (AndroidUtilities.dp(3.0f) * Math.abs(this.currentRotation)) + AndroidUtilities.dp(5.0f);
                        fAbs = Math.abs(this.currentRotation) * AndroidUtilities.dp(9.0f);
                    }
                }
                float f11 = fDp3;
                float f12 = fAbs;
                i = offsetColor;
                float f13 = fDp5;
                float f14 = fDp4;
                z2 = this.miniIcon;
                Paint paint = this.paint;
                if (!z2) {
                    canvas2 = canvas;
                    canvas2.drawLine(f12, -f13, f14, -f11, paint);
                    canvas2.drawLine(f12, f13, f14, f11, this.paint);
                } else {
                    canvas2 = canvas;
                    canvas2.drawLine(f12, -f13, f14 - f2, -f11, paint);
                    canvas2.drawLine(f12, f13, f14, f11, this.paint);
                }
                i2 = this.type;
                i3 = TYPE_DEFAULT;
                if ((i2 == i3 && this.currentRotation != 1.0f) || (this.previousType != i3 && this.typeAnimationProgress != 1.0f)) {
                    fDp6 = AndroidUtilities.dp(17.0f);
                    f4 = -AndroidUtilities.dp(4.5f);
                    float f15 = AndroidUtilities.density * 5.5f;
                    float f16 = this.currentRotation;
                    canvas2.scale(1.0f - f16, 1.0f - f16, fDp6, f4);
                    if (this.type == TYPE_DEFAULT) {
                        f15 *= 1.0f - this.typeAnimationProgress;
                    }
                    this.backPaint.setColor(i);
                    this.backPaint.setAlpha(this.alpha);
                    canvas2.drawCircle(fDp6, f4, f15, this.paint);
                    i4 = this.type;
                    i5 = TYPE_UDPATE_AVAILABLE;
                    if (i4 == i5 || this.previousType == i5) {
                        this.backPaint.setStrokeWidth(AndroidUtilities.density * 1.66f);
                        i6 = this.previousType;
                        i7 = TYPE_UDPATE_AVAILABLE;
                        Paint paint2 = this.backPaint;
                        if (i6 != i7) {
                            paint2.setAlpha((int) (this.alpha * (1.0f - this.typeAnimationProgress)));
                        } else {
                            paint2.setAlpha(this.alpha);
                        }
                        canvas2.drawLine(fDp6, f4 - AndroidUtilities.dp(2.0f), fDp6, f4, this.backPaint);
                        canvas2.drawPoint(fDp6, AndroidUtilities.dp(2.5f) + f4, this.backPaint);
                    }
                    i8 = this.type;
                    i9 = TYPE_UDPATE_DOWNLOADING;
                    if (i8 != i9 || this.previousType == i9) {
                        this.backPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                        i10 = this.previousType;
                        i11 = TYPE_UDPATE_DOWNLOADING;
                        Paint paint3 = this.backPaint;
                        if (i10 != i11) {
                            paint3.setAlpha((int) (this.alpha * (1.0f - this.typeAnimationProgress)));
                        } else {
                            paint3.setAlpha(this.alpha);
                        }
                        float fMax = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                        this.rect.set(fDp6 - AndroidUtilities.dp(3.0f), f4 - AndroidUtilities.dp(3.0f), fDp6 + AndroidUtilities.dp(3.0f), f4 + AndroidUtilities.dp(3.0f));
                        canvas2.drawArc(this.rect, this.downloadRadOffset, fMax, false, this.backPaint);
                        float f17 = this.downloadRadOffset + ((360 * j2) / 2500.0f);
                        this.downloadRadOffset = f17;
                        this.downloadRadOffset = MediaActionDrawable.getCircleValue(f17);
                        float f18 = this.downloadProgress;
                        float f19 = this.downloadProgressAnimationStart;
                        f5 = f18 - f19;
                        if (f5 > 0.0f) {
                            float f20 = this.downloadProgressTime + j2;
                            this.downloadProgressTime = f20;
                            if (f20 >= 200.0f) {
                                this.animatedDownloadProgress = f18;
                                this.downloadProgressAnimationStart = f18;
                                this.downloadProgressTime = 0.0f;
                            } else {
                                this.animatedDownloadProgress = f19 + (f5 * this.interpolator.getInterpolation(f20 / 200.0f));
                            }
                        }
                        invalidateSelf();
                    }
                }
                canvas.restore();
            }
        } else if (i15 == i14) {
            fDp = AndroidUtilities.dp(9.0f) * this.typeAnimationProgress * (1.0f - this.currentRotation);
            fDp2 = AndroidUtilities.dp(7.0f) * this.typeAnimationProgress;
            f = this.currentRotation;
        } else {
            fDp = AndroidUtilities.dp(9.0f) * (1.0f - this.currentRotation);
            fDp2 = AndroidUtilities.dp(7.0f);
            f = this.currentRotation;
        }
        f3 = fDp2 * (1.0f - f);
        f2 = fDp;
        z = this.rotateToBack;
        float f102 = this.currentRotation;
        if (!z) {
        }
        float f112 = fDp3;
        float f122 = fAbs;
        i = offsetColor;
        float f132 = fDp5;
        float f142 = fDp4;
        z2 = this.miniIcon;
        Paint paint4 = this.paint;
        if (!z2) {
        }
        i2 = this.type;
        i3 = TYPE_DEFAULT;
        if (i2 == i3) {
            fDp6 = AndroidUtilities.dp(17.0f);
            f4 = -AndroidUtilities.dp(4.5f);
            float f152 = AndroidUtilities.density * 5.5f;
            float f162 = this.currentRotation;
            canvas2.scale(1.0f - f162, 1.0f - f162, fDp6, f4);
            if (this.type == TYPE_DEFAULT) {
            }
            this.backPaint.setColor(i);
            this.backPaint.setAlpha(this.alpha);
            canvas2.drawCircle(fDp6, f4, f152, this.paint);
            i4 = this.type;
            i5 = TYPE_UDPATE_AVAILABLE;
            if (i4 == i5) {
                this.backPaint.setStrokeWidth(AndroidUtilities.density * 1.66f);
                i6 = this.previousType;
                i7 = TYPE_UDPATE_AVAILABLE;
                Paint paint22 = this.backPaint;
                if (i6 != i7) {
                }
                canvas2.drawLine(fDp6, f4 - AndroidUtilities.dp(2.0f), fDp6, f4, this.backPaint);
                canvas2.drawPoint(fDp6, AndroidUtilities.dp(2.5f) + f4, this.backPaint);
                i8 = this.type;
                i9 = TYPE_UDPATE_DOWNLOADING;
                if (i8 != i9) {
                    this.backPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                    i10 = this.previousType;
                    i11 = TYPE_UDPATE_DOWNLOADING;
                    Paint paint32 = this.backPaint;
                    if (i10 != i11) {
                    }
                    float fMax2 = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                    this.rect.set(fDp6 - AndroidUtilities.dp(3.0f), f4 - AndroidUtilities.dp(3.0f), fDp6 + AndroidUtilities.dp(3.0f), f4 + AndroidUtilities.dp(3.0f));
                    canvas2.drawArc(this.rect, this.downloadRadOffset, fMax2, false, this.backPaint);
                    float f172 = this.downloadRadOffset + ((360 * j2) / 2500.0f);
                    this.downloadRadOffset = f172;
                    this.downloadRadOffset = MediaActionDrawable.getCircleValue(f172);
                    float f182 = this.downloadProgress;
                    float f192 = this.downloadProgressAnimationStart;
                    f5 = f182 - f192;
                    if (f5 > 0.0f) {
                    }
                    invalidateSelf();
                }
            }
        } else {
            fDp6 = AndroidUtilities.dp(17.0f);
            f4 = -AndroidUtilities.dp(4.5f);
            float f1522 = AndroidUtilities.density * 5.5f;
            float f1622 = this.currentRotation;
            canvas2.scale(1.0f - f1622, 1.0f - f1622, fDp6, f4);
            if (this.type == TYPE_DEFAULT) {
            }
            this.backPaint.setColor(i);
            this.backPaint.setAlpha(this.alpha);
            canvas2.drawCircle(fDp6, f4, f1522, this.paint);
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
        return AndroidUtilities.dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(24.0f);
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
