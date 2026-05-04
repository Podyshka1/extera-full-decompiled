package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.annotation.Keep;
import android.text.TextPaint;
import android.view.animation.DecelerateInterpolator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class MediaActionDrawable extends Drawable {
    private float animatedDownloadProgress;
    private boolean animatingTransition;
    private ColorFilter colorFilter;
    private int currentIcon;
    private MediaActionDrawableDelegate delegate;
    private float downloadProgress;
    private float downloadProgressAnimationStart;
    private float downloadProgressTime;
    private float downloadRadOffset;
    private LinearGradient gradientDrawable;
    private Matrix gradientMatrix;
    private boolean hasOverlayImage;
    private boolean isMini;
    private long lastAnimationTime;
    private Theme.MessageDrawable messageDrawable;
    private int nextIcon;
    private String percentString;
    private int percentStringWidth;
    private float savedTransitionProgress;
    private TextPaint textPaint = new TextPaint(1);
    public Paint paint = new Paint(1);
    private Paint backPaint = new Paint(1);
    public Paint paint2 = new Paint(1);
    private Paint paint3 = new Paint(1);
    private RectF rect = new RectF();
    private float scale = 1.0f;
    private DecelerateInterpolator interpolator = new DecelerateInterpolator();
    private float transitionAnimationTime = 400.0f;
    private int lastPercent = -1;
    private float overrideAlpha = 1.0f;
    private float transitionProgress = 1.0f;
    public boolean drawProgressCircle = true;
    private float downloadIconScale = 1.0f;

    /* JADX INFO: loaded from: classes7.dex */
    public interface MediaActionDrawableDelegate {
        void invalidate();
    }

    public static float getCircleValue(float f) {
        while (f > 360.0f) {
            f -= 360.0f;
        }
        return f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public void setDownloadIconScale(float f) {
        this.downloadIconScale = f;
    }

    @Keep
    public float getDownloadIconScale() {
        return this.downloadIconScale;
    }

    public MediaActionDrawable() {
        this.paint.setColor(-1);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.m1124dp(3.0f));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint3.setColor(-1);
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.textPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        this.textPaint.setColor(-1);
        this.paint2.setColor(-1);
    }

    public void setOverrideAlpha(float f) {
        this.overrideAlpha = f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        this.paint2.setColorFilter(colorFilter);
        this.paint3.setColorFilter(colorFilter);
        this.textPaint.setColorFilter(colorFilter);
    }

    public void setColor(int i) {
        int i2 = (-16777216) | i;
        this.paint.setColor(i2);
        this.paint2.setColor(i2);
        this.paint3.setColor(i2);
        this.textPaint.setColor(i2);
        this.colorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY);
    }

    public void setBackColor(int i) {
        this.backPaint.setColor(i | (-16777216));
    }

    public void setMini(boolean z) {
        this.isMini = z;
        this.paint.setStrokeWidth(AndroidUtilities.m1124dp(z ? 2.0f : 3.0f));
    }

    public void setDelegate(MediaActionDrawableDelegate mediaActionDrawableDelegate) {
        this.delegate = mediaActionDrawableDelegate;
    }

    public boolean setIcon(int i, boolean z) {
        int i2;
        int i3;
        if (this.currentIcon == i && (i3 = this.nextIcon) != i) {
            this.currentIcon = i3;
            this.transitionProgress = 1.0f;
        }
        if (z) {
            int i4 = this.currentIcon;
            if (i4 == i || (i2 = this.nextIcon) == i) {
                return false;
            }
            if ((i4 == 0 && i == 1) || (i4 == 1 && i == 0)) {
                this.transitionAnimationTime = 300.0f;
            } else if (i4 == 2 && (i == 3 || i == 14)) {
                this.transitionAnimationTime = this.drawProgressCircle ? 400.0f : 250.0f;
            } else if (i4 != 4 && i == 6) {
                this.transitionAnimationTime = 360.0f;
            } else if ((i4 == 4 && i == 14) || (i4 == 14 && i == 4)) {
                this.transitionAnimationTime = 160.0f;
            } else {
                this.transitionAnimationTime = 220.0f;
            }
            if (this.animatingTransition) {
                this.currentIcon = i2;
            }
            this.animatingTransition = true;
            this.nextIcon = i;
            this.savedTransitionProgress = this.transitionProgress;
            this.transitionProgress = 0.0f;
        } else {
            if (this.currentIcon == i) {
                return false;
            }
            this.animatingTransition = false;
            this.nextIcon = i;
            this.currentIcon = i;
            this.savedTransitionProgress = this.transitionProgress;
            this.transitionProgress = 1.0f;
        }
        if (i == 3 || i == 14) {
            this.downloadRadOffset = 112.0f;
            this.animatedDownloadProgress = 0.0f;
            this.downloadProgressAnimationStart = 0.0f;
            this.downloadProgressTime = 0.0f;
        }
        invalidateSelf();
        return true;
    }

    public int getCurrentIcon() {
        return this.nextIcon;
    }

    public int getPreviousIcon() {
        return this.currentIcon;
    }

    public void setProgress(float f, boolean z) {
        if (this.downloadProgress == f) {
            return;
        }
        if (!z) {
            this.animatedDownloadProgress = f;
            this.downloadProgressAnimationStart = f;
        } else {
            if (this.animatedDownloadProgress > f) {
                this.animatedDownloadProgress = f;
            }
            this.downloadProgressAnimationStart = this.animatedDownloadProgress;
        }
        this.downloadProgress = f;
        this.downloadProgressTime = 0.0f;
        invalidateSelf();
    }

    public float getProgress() {
        return this.downloadProgress;
    }

    public float getTransitionProgress() {
        if (this.animatingTransition) {
            return this.transitionProgress;
        }
        return 1.0f;
    }

    public void setBackgroundDrawable(Theme.MessageDrawable messageDrawable) {
        this.messageDrawable = messageDrawable;
    }

    public void setBackgroundGradientDrawable(LinearGradient linearGradient) {
        this.gradientDrawable = linearGradient;
        this.gradientMatrix = new Matrix();
    }

    public void setHasOverlayImage(boolean z) {
        this.hasOverlayImage = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        float intrinsicWidth = (i3 - i) / getIntrinsicWidth();
        this.scale = intrinsicWidth;
        if (intrinsicWidth < 0.7f) {
            this.paint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        MediaActionDrawableDelegate mediaActionDrawableDelegate = this.delegate;
        if (mediaActionDrawableDelegate != null) {
            mediaActionDrawableDelegate.invalidate();
        }
    }

    public void applyShaderMatrix(boolean z) {
        Theme.MessageDrawable messageDrawable = this.messageDrawable;
        if (messageDrawable == null || !messageDrawable.hasGradient() || this.hasOverlayImage) {
            return;
        }
        Rect bounds = getBounds();
        Shader gradientShader = this.messageDrawable.getGradientShader();
        Matrix matrix = this.messageDrawable.getMatrix();
        matrix.reset();
        this.messageDrawable.applyMatrixScale();
        if (z) {
            matrix.postTranslate(-bounds.centerX(), (-this.messageDrawable.getTopY()) + bounds.top);
        } else {
            matrix.postTranslate(0.0f, -this.messageDrawable.getTopY());
        }
        gradientShader.setLocalMatrix(matrix);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0676  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0680  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x06f4  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x06f9  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x070e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0720  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0723  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0743  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x074a  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0779  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x077e  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x07b1  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x07be  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x07c4  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x07cd  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x07d5  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x07e4  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x07e8  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x07f7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x07f9  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x080f  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0828  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x086f  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0878  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x088d  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0892  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x08a3  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x08a6  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x08b8  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x08ee  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x08f7  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x08fb  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x090a  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x090d  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0935  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x094a  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x097c  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0984 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:383:0x098c  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0992  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0994  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x099c  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x09ab  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x09b0 A[PHI: r4
  0x09b0: PHI (r4v123 int) = (r4v120 int), (r4v135 int) binds: [B:401:0x09b6, B:397:0x09ae] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x09b3 A[PHI: r4
  0x09b3: PHI (r4v122 int) = (r4v120 int), (r4v135 int) binds: [B:401:0x09b6, B:397:0x09ae] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:405:0x09bd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x09c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0a17  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0a1a  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0a23  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0a4d  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0a59  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0a64  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0a7e  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0a81  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0aa4  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0aa8  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0ab5  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0ae1  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0b10  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0b46  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0b4f  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0b6b  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0b6f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0b8a  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0b8d  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0bad  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0be9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0bfe  */
    /* JADX WARN: Removed duplicated region for block: B:502:0x0c01  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0c2b  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0c36  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0c40  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0cd0  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0cd8  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0ceb  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0d03  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0d35  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0d59  */
    /* JADX WARN: Removed duplicated region for block: B:566:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float f;
        int iSave;
        int i;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float fM1124dp;
        float f8;
        float fM1124dp2;
        float fM1124dp3;
        float fM1124dp4;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        int i2;
        boolean z;
        int i3;
        float fMin;
        float fMax;
        float f18;
        float f19;
        int i4;
        Path[] pathArr;
        Path[] pathArr2;
        Path[] pathArr3;
        Path[] pathArr4;
        Drawable drawable;
        int i5;
        Drawable drawable2;
        Drawable drawable3;
        Rect rect;
        Drawable drawable4;
        int i6;
        int i7;
        int i8;
        float f20;
        int i9;
        int i10;
        int i11;
        int i12;
        float f21;
        float f22;
        int i13;
        int i14;
        int i15;
        float f23;
        int i16;
        float f24;
        int i17;
        int i18;
        float fMin2;
        float f25;
        int i19;
        float f26;
        int i20;
        float f27;
        long j;
        int i21;
        int i22;
        Path path;
        Path path2;
        Path path3;
        int i23;
        float f28;
        int i24;
        float f29;
        float fMin3;
        float f30;
        int iMin;
        float f31;
        float fCenterX;
        float fM1124dp5;
        float f32;
        float f33;
        float f34;
        float fCenterX2;
        int iCenterY;
        int iCenterY2;
        float f35;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        Canvas canvas2 = canvas;
        Rect bounds = getBounds();
        Theme.MessageDrawable messageDrawable = this.messageDrawable;
        if (messageDrawable != null && messageDrawable.hasGradient() && !this.hasOverlayImage) {
            Shader gradientShader = this.messageDrawable.getGradientShader();
            this.paint.setShader(gradientShader);
            this.paint2.setShader(gradientShader);
            this.paint3.setShader(gradientShader);
        } else if (this.gradientDrawable != null && !this.hasOverlayImage) {
            this.gradientMatrix.reset();
            this.gradientMatrix.setTranslate(0.0f, bounds.top);
            this.gradientDrawable.setLocalMatrix(this.gradientMatrix);
            this.paint.setShader(this.gradientDrawable);
            this.paint2.setShader(this.gradientDrawable);
            this.paint3.setShader(this.gradientDrawable);
        } else {
            this.paint.setShader(null);
            this.paint2.setShader(null);
            this.paint3.setShader(null);
        }
        int iCenterX = bounds.centerX();
        int iCenterY3 = bounds.centerY();
        int i30 = this.nextIcon;
        if (i30 == 4) {
            int i31 = this.currentIcon;
            if (i31 == 3 || i31 == 14) {
                f = 0.0f;
                i = 0;
            } else {
                iSave = canvas2.save();
                float f36 = 1.0f - this.transitionProgress;
                f = 0.0f;
                canvas2.scale(f36, f36, iCenterX, iCenterY3);
                i = iSave;
            }
        } else {
            f = 0.0f;
            if ((i30 == 6 || i30 == 10) && this.currentIcon == 4) {
                iSave = canvas2.save();
                float f37 = this.transitionProgress;
                canvas2.scale(f37, f37, iCenterX, iCenterY3);
                i = iSave;
            }
            i = 0;
        }
        AndroidUtilities.m1124dp(3.0f);
        float interpolation = 90.0f;
        if (this.currentIcon == 2 || this.nextIcon == 2) {
            applyShaderMatrix(false);
            if (this.drawProgressCircle) {
                float f38 = iCenterY3;
                float fM1124dp6 = f38 - (AndroidUtilities.m1124dp(9.0f) * this.scale);
                float fM1124dp7 = (AndroidUtilities.m1124dp(9.0f) * this.scale) + f38;
                float fM1124dp8 = (AndroidUtilities.m1124dp(12.0f) * this.scale) + f38;
                int i32 = this.currentIcon;
                if ((i32 == 3 || i32 == 14) && this.nextIcon == 2) {
                    this.paint.setAlpha((int) (Math.min(1.0f, this.transitionProgress / 0.5f) * 255.0f));
                    f7 = this.transitionProgress;
                    fM1124dp = (AndroidUtilities.m1124dp(12.0f) * this.scale) + f38;
                    f8 = 1.0f;
                } else {
                    int i33 = this.nextIcon;
                    if (i33 != 3 && i33 != 14 && i33 != 2) {
                        this.paint.setAlpha((int) (Math.min(1.0f, this.savedTransitionProgress / 0.5f) * 255.0f * (1.0f - this.transitionProgress)));
                        f17 = this.savedTransitionProgress;
                    } else {
                        this.paint.setAlpha(255);
                        f17 = this.transitionProgress;
                    }
                    f7 = f17;
                    f8 = 1.0f;
                    fM1124dp = f38 + (AndroidUtilities.m1124dp(1.0f) * this.scale);
                }
                if (this.animatingTransition) {
                    int i34 = this.nextIcon;
                    if (i34 == 2 || f7 <= 0.5f) {
                        if (i34 == 2) {
                            f13 = 1.0f - f7;
                        } else {
                            f13 = f7 / 0.5f;
                            f7 = 1.0f - f13;
                        }
                        fM1124dp6 += (fM1124dp - fM1124dp6) * f13;
                        fM1124dp7 += (fM1124dp8 - fM1124dp7) * f13;
                        float f39 = iCenterX;
                        fM1124dp2 = f39 - ((AndroidUtilities.m1124dp(8.0f) * f7) * this.scale);
                        fM1124dp3 = f39 + (AndroidUtilities.m1124dp(8.0f) * f7 * this.scale);
                        fM1124dp4 = AndroidUtilities.m1124dp(8.0f) * f7;
                        f9 = this.scale;
                    } else {
                        float fM1124dp9 = AndroidUtilities.m1124dp(13.0f);
                        float f40 = this.scale;
                        float fM1124dp10 = (fM1124dp9 * f40 * f40) + (this.isMini ? AndroidUtilities.m1124dp(2.0f) : 0);
                        float f41 = f7 - 0.5f;
                        float f42 = f41 / 0.5f;
                        if (f41 > 0.2f) {
                            f15 = (f41 - 0.2f) / 0.3f;
                            f14 = f8;
                        } else {
                            f14 = f41 / 0.2f;
                            f15 = f;
                        }
                        float f43 = iCenterX;
                        float f44 = f43 - fM1124dp10;
                        float f45 = fM1124dp10 / 2.0f;
                        this.rect.set(f44, fM1124dp8 - f45, f43, f45 + fM1124dp8);
                        float f46 = f15 * 100.0f;
                        canvas2.drawArc(this.rect, f46, (f42 * 104.0f) - f46, false, this.paint);
                        float f47 = fM1124dp + ((fM1124dp8 - fM1124dp) * f14);
                        if (f15 > f) {
                            float f48 = this.nextIcon == 14 ? f : (-45.0f) * (f8 - f15);
                            float fM1124dp11 = AndroidUtilities.m1124dp(7.0f) * f15 * this.scale;
                            int iMin2 = (int) (f15 * 255.0f);
                            int i35 = this.nextIcon;
                            if (i35 != 3 && i35 != 14 && i35 != 2) {
                                float f49 = f8;
                                iMin2 = (int) (iMin2 * (f49 - Math.min(f49, this.transitionProgress / 0.5f)));
                            }
                            int i36 = iMin2;
                            if (f48 != f) {
                                canvas2.save();
                                f16 = f38;
                                canvas2.rotate(f48, f43, f16);
                            } else {
                                f16 = f38;
                            }
                            if (i36 != 0) {
                                this.paint.setAlpha(i36);
                                if (this.nextIcon == 14) {
                                    this.paint3.setAlpha(i36);
                                    this.rect.set(iCenterX - AndroidUtilities.m1124dp(3.5f), iCenterY3 - AndroidUtilities.m1124dp(3.5f), AndroidUtilities.m1124dp(3.5f) + iCenterX, AndroidUtilities.m1124dp(3.5f) + iCenterY3);
                                    canvas2.drawRoundRect(this.rect, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), this.paint3);
                                    this.paint.setAlpha((int) (i36 * 0.15f));
                                    int iM1124dp = AndroidUtilities.m1124dp(this.isMini ? 2.0f : 4.0f);
                                    this.rect.set(bounds.left + iM1124dp, bounds.top + iM1124dp, bounds.right - iM1124dp, bounds.bottom - iM1124dp);
                                    canvas2.drawArc(this.rect, 0.0f, 360.0f, false, this.paint);
                                    this.paint.setAlpha(i36);
                                } else {
                                    float f50 = f43 - fM1124dp11;
                                    float f51 = f16 - fM1124dp11;
                                    float f52 = f43 + fM1124dp11;
                                    float f53 = f16 + fM1124dp11;
                                    canvas.drawLine(f50, f51, f52, f53, this.paint);
                                    canvas.drawLine(f52, f51, f50, f53, this.paint);
                                }
                            }
                            if (f48 != f) {
                                canvas.restore();
                            }
                        }
                        fM1124dp7 = fM1124dp8;
                        fM1124dp3 = f43;
                        fM1124dp2 = fM1124dp3;
                        fM1124dp6 = f47;
                        float f54 = fM1124dp3;
                        f10 = fM1124dp7;
                        float f55 = fM1124dp8;
                        f11 = fM1124dp2;
                        if (fM1124dp6 != f10) {
                            float f56 = iCenterX;
                            canvas.drawLine(f56, fM1124dp6, f56, f10, this.paint);
                        }
                        f12 = iCenterX;
                        if (f11 == f12) {
                            canvas2 = canvas;
                            canvas2.drawLine(f11, f55, f12, f10, this.paint);
                            canvas2.drawLine(f54, f55, f12, f10, this.paint);
                        } else {
                            canvas2 = canvas;
                        }
                    }
                } else {
                    float f57 = iCenterX;
                    fM1124dp2 = f57 - (AndroidUtilities.m1124dp(8.0f) * this.scale);
                    fM1124dp3 = f57 + (AndroidUtilities.m1124dp(8.0f) * this.scale);
                    fM1124dp4 = AndroidUtilities.m1124dp(8.0f);
                    f9 = this.scale;
                }
                fM1124dp8 = fM1124dp7 - (fM1124dp4 * f9);
                float f542 = fM1124dp3;
                f10 = fM1124dp7;
                float f552 = fM1124dp8;
                f11 = fM1124dp2;
                if (fM1124dp6 != f10) {
                }
                f12 = iCenterX;
                if (f11 == f12) {
                }
            } else {
                boolean z2 = this.currentIcon == 14 || this.nextIcon == 14;
                if (this.nextIcon == 2) {
                    f2 = 1.0f;
                    f3 = 1.0f - this.transitionProgress;
                } else {
                    f2 = 1.0f;
                    f3 = this.transitionProgress;
                }
                float f58 = this.scale * this.downloadIconScale;
                float fM1124dp12 = AndroidUtilities.m1124dp(8.0f) * f58;
                float fM1124dp13 = AndroidUtilities.m1124dp(f2) * f58;
                float fM1124dp14 = AndroidUtilities.m1124dp(7.0f) * f58;
                float fM1124dp15 = AndroidUtilities.m1124dp(9.0f) * f58;
                float fM1124dp16 = AndroidUtilities.m1124dp(2.0f) * f58;
                float fM1124dp17 = AndroidUtilities.m1124dp(3.5f);
                if (z2) {
                    float f59 = 1.0f - f3;
                    if (f59 > f) {
                        canvas2.save();
                        float f60 = iCenterX;
                        float f61 = iCenterY3;
                        canvas2.scale(f59, f59, f60, f61);
                        this.paint.setAlpha((int) (f59 * 255.0f * this.overrideAlpha));
                        float f62 = f61 + fM1124dp15;
                        float f63 = f62 - fM1124dp12;
                        f4 = fM1124dp17;
                        canvas2.drawLine(f60, f61 - fM1124dp15, f60, f62, this.paint);
                        canvas.drawLine(f60 - fM1124dp12, f63, f60, f62, this.paint);
                        canvas2 = canvas;
                        canvas2.drawLine(f60 + fM1124dp12, f63, f60, f62, this.paint);
                        canvas2.restore();
                    } else {
                        f4 = fM1124dp17;
                    }
                    if (f3 > f) {
                        canvas2.save();
                        float f64 = iCenterX;
                        float f65 = iCenterY3;
                        canvas2.scale(f3, f3, f64, f65);
                        this.paint3.setAlpha((int) (f3 * 255.0f * this.overrideAlpha));
                        this.rect.set(f64 - f4, f65 - f4, f64 + f4, f65 + f4);
                        canvas2.drawRoundRect(this.rect, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), this.paint3);
                        canvas2.restore();
                    }
                } else {
                    int i37 = this.currentIcon;
                    if ((i37 == 3 || this.nextIcon == 3) && this.animatingTransition) {
                        canvas2.save();
                        float f66 = iCenterX;
                        float f67 = iCenterY3;
                        canvas2.rotate(f3 * 90.0f, f66, f67);
                        float f68 = 1.0f - f3;
                        if (f68 > f) {
                            this.paint.setAlpha((int) (f68 * 255.0f));
                            float f69 = f68 * fM1124dp15;
                            f6 = f67;
                            canvas2.drawLine(f66, f67 - f69, f66, f69 + f67, this.paint);
                            f5 = f66;
                        } else {
                            f5 = f66;
                            f6 = f67;
                        }
                        this.paint.setAlpha(255);
                        float f70 = (f6 + fM1124dp13) - (fM1124dp12 * f3);
                        float f71 = (f6 + fM1124dp15) - (fM1124dp16 * f3);
                        float f72 = fM1124dp13 * f3;
                        float f73 = fM1124dp14 * f3;
                        canvas.drawLine((f5 - fM1124dp12) + f72, f70, f5 + f73, f71, this.paint);
                        canvas2 = canvas;
                        canvas2.drawLine((f5 + fM1124dp12) - f72, f70, f5 - f73, f71, this.paint);
                        canvas2.restore();
                    } else {
                        float f74 = 1.0f - (this.animatingTransition ? f3 : i37 == 2 ? f : 1.0f);
                        int i38 = (int) (f74 * 255.0f);
                        if (i38 > 0) {
                            canvas2.save();
                            float f75 = iCenterX;
                            float f76 = iCenterY3;
                            canvas2.scale(f74, f74, f75, f76);
                            this.paint.setAlpha(i38);
                            float f77 = f76 + fM1124dp15;
                            float f78 = f77 - fM1124dp12;
                            canvas2.drawLine(f75, f76 - fM1124dp15, f75, f77, this.paint);
                            canvas.drawLine(f75 - fM1124dp12, f78, f75, f77, this.paint);
                            canvas2 = canvas;
                            canvas2.drawLine(f75 + fM1124dp12, f78, f75, f77, this.paint);
                            canvas2.restore();
                        }
                    }
                }
            }
        }
        int i39 = this.currentIcon;
        if (i39 == 3 || i39 == 14) {
            i2 = 15;
            z = false;
        } else if (i39 == 4 && ((i29 = this.nextIcon) == 14 || i29 == 3)) {
            z = false;
            i2 = 15;
        } else {
            if (i39 == 10 || this.nextIcon == 10 || i39 == 13) {
                int i40 = this.nextIcon;
                int i41 = (i40 == 4 || i40 == 6) ? (int) ((1.0f - this.transitionProgress) * 255.0f) : 255;
                if (i41 != 0) {
                    applyShaderMatrix(false);
                    this.paint.setAlpha((int) (i41 * this.overrideAlpha));
                    if (this.drawProgressCircle) {
                        float fMax2 = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                        int iM1124dp2 = AndroidUtilities.m1124dp(this.isMini ? 2.0f : 4.0f);
                        this.rect.set(bounds.left + iM1124dp2, bounds.top + iM1124dp2, bounds.right - iM1124dp2, bounds.bottom - iM1124dp2);
                        i2 = 15;
                        canvas2.drawArc(this.rect, this.downloadRadOffset, fMax2, false, this.paint);
                    } else {
                        i2 = 15;
                    }
                }
            }
            i3 = this.currentIcon;
            if (i3 == this.nextIcon) {
                f19 = 1.0f;
                f18 = 1.0f;
            } else {
                if (i3 == 4 || i3 == 3 || i3 == 14) {
                    fMin = this.transitionProgress;
                    fMax = 1.0f - fMin;
                } else {
                    fMin = Math.min(1.0f, this.transitionProgress / 0.5f);
                    fMax = Math.max(f, 1.0f - (this.transitionProgress / 0.5f));
                }
                f18 = fMax;
                f19 = fMin;
            }
            i4 = this.nextIcon;
            if (i4 == i2) {
                pathArr = Theme.chat_updatePath;
            } else {
                if (this.currentIcon == i2) {
                    pathArr2 = Theme.chat_updatePath;
                    pathArr = null;
                    if (i4 != 5) {
                        pathArr = Theme.chat_filePath;
                    } else if (this.currentIcon == 5) {
                        pathArr2 = Theme.chat_filePath;
                    }
                    pathArr3 = pathArr;
                    pathArr4 = pathArr2;
                    if (i4 != 7) {
                        drawable2 = Theme.chat_flameIcon;
                        drawable = null;
                        i5 = 8;
                    } else {
                        drawable = this.currentIcon == 7 ? Theme.chat_flameIcon : null;
                        i5 = 8;
                        drawable2 = null;
                    }
                    if (i4 != i5) {
                        drawable2 = Theme.chat_gifIcon;
                    } else if (this.currentIcon == i5) {
                        drawable = Theme.chat_gifIcon;
                    }
                    drawable3 = drawable;
                    if (this.currentIcon != 9 || i4 == 9) {
                        applyShaderMatrix(false);
                        this.paint.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
                        int iM1124dp3 = AndroidUtilities.m1124dp(7.0f) + iCenterY3;
                        int iM1124dp4 = iCenterX - AndroidUtilities.m1124dp(3.0f);
                        if (this.currentIcon != this.nextIcon) {
                            canvas2.save();
                            float f79 = this.transitionProgress;
                            canvas2.scale(f79, f79, iCenterX, iCenterY3);
                        }
                        float f80 = iM1124dp4;
                        float f81 = iM1124dp3;
                        rect = bounds;
                        drawable4 = drawable2;
                        canvas2.drawLine(iM1124dp4 - AndroidUtilities.m1124dp(6.0f), iM1124dp3 - AndroidUtilities.m1124dp(6.0f), f80, f81, this.paint);
                        canvas2 = canvas;
                        canvas2.drawLine(f80, f81, iM1124dp4 + AndroidUtilities.m1124dp(12.0f), iM1124dp3 - AndroidUtilities.m1124dp(12.0f), this.paint);
                        if (this.currentIcon != this.nextIcon) {
                            canvas2.restore();
                        }
                    } else {
                        rect = bounds;
                        drawable4 = drawable2;
                    }
                    if (this.currentIcon != 12 || this.nextIcon == 12) {
                        applyShaderMatrix(false);
                        i6 = this.currentIcon;
                        i7 = this.nextIcon;
                        if (i6 != i7) {
                            i8 = 13;
                            f20 = 1.0f;
                        } else {
                            i8 = 13;
                            if (i7 == 13) {
                                f20 = this.transitionProgress;
                            } else {
                                f20 = 1.0f - this.transitionProgress;
                            }
                        }
                        this.paint.setAlpha(i6 != i7 ? 255 : (int) (f20 * 255.0f));
                        AndroidUtilities.m1124dp(7.0f);
                        AndroidUtilities.m1124dp(3.0f);
                        if (this.currentIcon != this.nextIcon) {
                            canvas2.save();
                            canvas2.scale(f20, f20, iCenterX, iCenterY3);
                        }
                        float fM1124dp18 = AndroidUtilities.m1124dp(7.0f) * this.scale;
                        float f82 = iCenterX;
                        float f83 = f82 - fM1124dp18;
                        float f84 = iCenterY3;
                        float f85 = f84 - fM1124dp18;
                        float f86 = f82 + fM1124dp18;
                        float f87 = fM1124dp18 + f84;
                        i9 = i;
                        i10 = i8;
                        canvas2.drawLine(f83, f85, f86, f87, this.paint);
                        canvas2 = canvas;
                        canvas2.drawLine(f86, f85, f83, f87, this.paint);
                        if (this.currentIcon != this.nextIcon) {
                            canvas2.restore();
                        }
                    } else {
                        i9 = i;
                        i10 = 13;
                    }
                    if (this.currentIcon != i10 || this.nextIcon == i10) {
                        applyShaderMatrix(false);
                        i11 = this.currentIcon;
                        i12 = this.nextIcon;
                        if (i11 != i12) {
                            f21 = 1.0f;
                        } else if (i12 == i10) {
                            f21 = this.transitionProgress;
                        } else {
                            f21 = 1.0f - this.transitionProgress;
                        }
                        this.textPaint.setAlpha((int) (f21 * 255.0f));
                        int iM1124dp5 = AndroidUtilities.m1124dp(5.0f) + iCenterY3;
                        int i42 = iCenterX - (this.percentStringWidth / 2);
                        f22 = 5.0f;
                        if (this.currentIcon != this.nextIcon) {
                            canvas2.save();
                            canvas2.scale(f21, f21, iCenterX, iCenterY3);
                        }
                        i13 = (int) (this.animatedDownloadProgress * 100.0f);
                        if (this.percentString != null || i13 != this.lastPercent) {
                            this.lastPercent = i13;
                            this.percentString = String.format("%d%%", Integer.valueOf(i13));
                            this.percentStringWidth = (int) Math.ceil(this.textPaint.measureText(r3));
                        }
                        canvas2.drawText(this.percentString, i42, iM1124dp5, this.textPaint);
                        if (this.currentIcon != this.nextIcon) {
                            canvas2.restore();
                        }
                    } else {
                        f22 = 5.0f;
                    }
                    i14 = this.currentIcon;
                    if (i14 != 0 || i14 == 1 || (i23 = this.nextIcon) == 0 || i23 == 1) {
                        if (i14 != 0 && this.nextIcon == 1) {
                            if (!this.animatingTransition) {
                            }
                        } else {
                            if (i14 == 1) {
                                i15 = this.nextIcon != 0 ? 1 : 1;
                                if (!this.animatingTransition) {
                                    if (this.nextIcon == 0) {
                                        f23 = 1.0f - this.transitionProgress;
                                    } else {
                                        f23 = this.transitionProgress;
                                    }
                                    i15 = 1;
                                    i16 = this.nextIcon;
                                    if ((i16 != 0 || i16 == i15) && (i14 == 0 || i14 == i15)) {
                                        this.paint2.setAlpha(255);
                                    } else if (i16 == 4) {
                                        this.paint2.setAlpha((int) ((1.0f - this.transitionProgress) * 255.0f));
                                    } else {
                                        this.paint2.setAlpha(i14 == i16 ? 255 : (int) (this.transitionProgress * 255.0f));
                                    }
                                    applyShaderMatrix(true);
                                    canvas2.save();
                                    canvas2.translate(rect.centerX() + (AndroidUtilities.m1124dp(1.0f) * (1.0f - f23)), rect.centerY());
                                    f24 = f23 * 500.0f;
                                    i17 = this.currentIcon;
                                    float f88 = i17 == 1 ? 90.0f : 0.0f;
                                    if (i17 == 0 && this.nextIcon == 1) {
                                        if (f24 < 384.0f) {
                                            interpolation = CubicBezierInterpolator.EASE_BOTH.getInterpolation(f24 / 384.0f) * 95.0f;
                                        } else if (f24 < 484.0f) {
                                            interpolation = 95.0f - (CubicBezierInterpolator.EASE_BOTH.getInterpolation((f24 - 384.0f) / 100.0f) * f22);
                                        }
                                        f24 += 100.0f;
                                    } else {
                                        if (i17 == 1 && this.nextIcon == 0) {
                                            if (f24 >= 100.0f) {
                                                interpolation = CubicBezierInterpolator.EASE_BOTH.getInterpolation(f24 / 100.0f) * (-5.0f);
                                            } else if (f24 < 484.0f) {
                                                interpolation = (CubicBezierInterpolator.EASE_BOTH.getInterpolation((f24 - 100.0f) / 384.0f) * 95.0f) - 5.0f;
                                            }
                                        }
                                        canvas2.rotate(f88);
                                        i18 = this.currentIcon;
                                        if ((i18 != 0 && i18 != 1) || i18 == 4) {
                                            canvas2.scale(f19, f19);
                                        }
                                        Theme.playPauseAnimator.draw(canvas2, this.paint2, f24);
                                        canvas2.scale(1.0f, -1.0f);
                                        Theme.playPauseAnimator.draw(canvas2, this.paint2, f24);
                                        canvas2.restore();
                                    }
                                    f88 = interpolation;
                                    canvas2.rotate(f88);
                                    i18 = this.currentIcon;
                                    if (i18 != 0) {
                                        canvas2.scale(f19, f19);
                                        Theme.playPauseAnimator.draw(canvas2, this.paint2, f24);
                                        canvas2.scale(1.0f, -1.0f);
                                        Theme.playPauseAnimator.draw(canvas2, this.paint2, f24);
                                        canvas2.restore();
                                    } else {
                                        canvas2.scale(f19, f19);
                                        Theme.playPauseAnimator.draw(canvas2, this.paint2, f24);
                                        canvas2.scale(1.0f, -1.0f);
                                        Theme.playPauseAnimator.draw(canvas2, this.paint2, f24);
                                        canvas2.restore();
                                    }
                                } else {
                                    i15 = 1;
                                    f23 = this.nextIcon == 1 ? 1.0f : 0.0f;
                                    i16 = this.nextIcon;
                                    if (i16 != 0) {
                                        this.paint2.setAlpha(255);
                                        applyShaderMatrix(true);
                                        canvas2.save();
                                        canvas2.translate(rect.centerX() + (AndroidUtilities.m1124dp(1.0f) * (1.0f - f23)), rect.centerY());
                                        f24 = f23 * 500.0f;
                                        i17 = this.currentIcon;
                                        if (i17 == 1) {
                                        }
                                        if (i17 == 0) {
                                            if (i17 == 1) {
                                                if (f24 >= 100.0f) {
                                                }
                                                f88 = interpolation;
                                            }
                                            canvas2.rotate(f88);
                                            i18 = this.currentIcon;
                                            if (i18 != 0) {
                                            }
                                        }
                                    } else {
                                        this.paint2.setAlpha(255);
                                        applyShaderMatrix(true);
                                        canvas2.save();
                                        canvas2.translate(rect.centerX() + (AndroidUtilities.m1124dp(1.0f) * (1.0f - f23)), rect.centerY());
                                        f24 = f23 * 500.0f;
                                        i17 = this.currentIcon;
                                        if (i17 == 1) {
                                        }
                                        if (i17 == 0) {
                                        }
                                    }
                                }
                            }
                            if (i14 != i15) {
                            }
                            i16 = this.nextIcon;
                            if (i16 != 0) {
                            }
                        }
                    }
                    if (this.currentIcon != 6 || this.nextIcon == 6) {
                        applyShaderMatrix(false);
                        if (this.currentIcon == 6) {
                            float f89 = this.transitionProgress;
                            if (f89 > 0.5f) {
                                float f90 = (f89 - 0.5f) / 0.5f;
                                fMin2 = 1.0f - Math.min(1.0f, f90 / 0.5f);
                                f27 = f90 > 0.5f ? (f90 - 0.5f) / 0.5f : 0.0f;
                            } else {
                                f27 = 0.0f;
                                fMin2 = 1.0f;
                            }
                            this.paint.setAlpha(255);
                            f25 = f27;
                        } else {
                            if (this.nextIcon != 6) {
                                this.paint.setAlpha((int) ((1.0f - this.transitionProgress) * 255.0f));
                            } else {
                                this.paint.setAlpha(255);
                            }
                            fMin2 = 0.0f;
                            f25 = 1.0f;
                        }
                        int iM1124dp6 = AndroidUtilities.m1124dp(7.0f) + iCenterY3;
                        int iM1124dp7 = iCenterX - AndroidUtilities.m1124dp(3.0f);
                        if (fMin2 >= 1.0f) {
                            i19 = iM1124dp6;
                            f26 = f19;
                            i20 = iM1124dp7;
                            canvas.drawLine(iM1124dp7 - AndroidUtilities.m1124dp(6.0f), iM1124dp6 - AndroidUtilities.m1124dp(6.0f), iM1124dp7 - (AndroidUtilities.m1124dp(6.0f) * fMin2), iM1124dp6 - (AndroidUtilities.m1124dp(6.0f) * fMin2), this.paint);
                        } else {
                            i19 = iM1124dp6;
                            f26 = f19;
                            i20 = iM1124dp7;
                        }
                        if (f25 <= 0.0f) {
                            float f91 = i20;
                            float f92 = i19;
                            canvas2 = canvas;
                            canvas2.drawLine(f91, f92, f91 + (AndroidUtilities.m1124dp(12.0f) * f25), f92 - (AndroidUtilities.m1124dp(12.0f) * f25), this.paint);
                        } else {
                            canvas2 = canvas;
                        }
                    } else {
                        f26 = f19;
                    }
                    if (drawable3 != null && drawable3 != drawable4) {
                        int intrinsicWidth = (int) (drawable3.getIntrinsicWidth() * f18);
                        int intrinsicHeight = (int) (drawable3.getIntrinsicHeight() * f18);
                        drawable3.setColorFilter(this.colorFilter);
                        drawable3.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                        int i43 = intrinsicWidth / 2;
                        int i44 = intrinsicHeight / 2;
                        drawable3.setBounds(iCenterX - i43, iCenterY3 - i44, i43 + iCenterX, i44 + iCenterY3);
                        drawable3.draw(canvas2);
                    }
                    if (drawable4 != null) {
                        int intrinsicWidth2 = (int) (drawable4.getIntrinsicWidth() * f26);
                        int intrinsicHeight2 = (int) (drawable4.getIntrinsicHeight() * f26);
                        drawable4.setColorFilter(this.colorFilter);
                        drawable4.setAlpha(this.currentIcon == this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
                        int i45 = intrinsicWidth2 / 2;
                        int i46 = intrinsicHeight2 / 2;
                        drawable4.setBounds(iCenterX - i45, iCenterY3 - i46, i45 + iCenterX, i46 + iCenterY3);
                        drawable4.draw(canvas2);
                    }
                    if (pathArr4 != null && pathArr4 != pathArr3) {
                        int iM1124dp8 = AndroidUtilities.m1124dp(24.0f);
                        this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                        this.paint2.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                        applyShaderMatrix(true);
                        canvas2.save();
                        canvas2.translate(iCenterX, iCenterY3);
                        canvas2.scale(f18, f18);
                        float f93 = (-iM1124dp8) / 2;
                        canvas2.translate(f93, f93);
                        path2 = pathArr4[0];
                        if (path2 != null) {
                            canvas2.drawPath(path2, this.paint2);
                        }
                        path3 = pathArr4[1];
                        if (path3 != null) {
                            canvas2.drawPath(path3, this.backPaint);
                        }
                        canvas2.restore();
                    }
                    if (pathArr3 != null) {
                        int iM1124dp9 = AndroidUtilities.m1124dp(24.0f);
                        int i47 = this.currentIcon == this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f);
                        this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                        this.paint2.setAlpha(i47);
                        applyShaderMatrix(true);
                        canvas2.save();
                        canvas2.translate(iCenterX, iCenterY3);
                        float f94 = f26;
                        canvas2.scale(f94, f94);
                        float f95 = (-iM1124dp9) / 2;
                        canvas2.translate(f95, f95);
                        Path path4 = pathArr3[0];
                        if (path4 != null) {
                            canvas2.drawPath(path4, this.paint2);
                        }
                        if (pathArr3.length >= 3 && (path = pathArr3[2]) != null) {
                            canvas2.drawPath(path, this.paint);
                        }
                        Path path5 = pathArr3[1];
                        if (path5 != null) {
                            if (i47 != 255) {
                                int alpha = this.backPaint.getAlpha();
                                this.backPaint.setAlpha((int) (alpha * (i47 / 255.0f)));
                                canvas2.drawPath(pathArr3[1], this.backPaint);
                                this.backPaint.setAlpha(alpha);
                            } else {
                                canvas2.drawPath(path5, this.backPaint);
                            }
                        }
                        canvas2.restore();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    j = jCurrentTimeMillis - this.lastAnimationTime;
                    if (j > 17) {
                        j = 17;
                    }
                    this.lastAnimationTime = jCurrentTimeMillis;
                    i21 = this.currentIcon;
                    if (i21 != 3 || i21 == 14 || ((i21 == 4 && this.nextIcon == 14) || i21 == 10 || i21 == 13)) {
                        float f96 = this.downloadRadOffset + ((360 * j) / 2500.0f);
                        this.downloadRadOffset = f96;
                        this.downloadRadOffset = getCircleValue(f96);
                        if (this.nextIcon != 2) {
                            float f97 = this.downloadProgress;
                            float f98 = this.downloadProgressAnimationStart;
                            float f99 = f97 - f98;
                            if (f99 > 0.0f) {
                                float f100 = this.downloadProgressTime + j;
                                this.downloadProgressTime = f100;
                                if (f100 >= 200.0f) {
                                    this.animatedDownloadProgress = f97;
                                    this.downloadProgressAnimationStart = f97;
                                    this.downloadProgressTime = 0.0f;
                                } else {
                                    this.animatedDownloadProgress = f98 + (f99 * this.interpolator.getInterpolation(f100 / 200.0f));
                                }
                            }
                        }
                        invalidateSelf();
                    }
                    if (this.animatingTransition) {
                        float f101 = this.transitionProgress;
                        if (f101 < 1.0f) {
                            float f102 = f101 + (j / this.transitionAnimationTime);
                            this.transitionProgress = f102;
                            if (f102 >= 1.0f) {
                                this.currentIcon = this.nextIcon;
                                this.transitionProgress = 1.0f;
                                this.animatingTransition = false;
                            }
                            invalidateSelf();
                        }
                    }
                    i22 = i9;
                    if (i22 < 1) {
                        canvas2.restoreToCount(i22);
                        return;
                    }
                    return;
                }
                pathArr = null;
            }
            pathArr2 = null;
            if (i4 != 5) {
            }
            pathArr3 = pathArr;
            pathArr4 = pathArr2;
            if (i4 != 7) {
            }
            if (i4 != i5) {
            }
            drawable3 = drawable;
            if (this.currentIcon != 9) {
                applyShaderMatrix(false);
                this.paint.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
                int iM1124dp32 = AndroidUtilities.m1124dp(7.0f) + iCenterY3;
                int iM1124dp42 = iCenterX - AndroidUtilities.m1124dp(3.0f);
                if (this.currentIcon != this.nextIcon) {
                }
                float f802 = iM1124dp42;
                float f812 = iM1124dp32;
                rect = bounds;
                drawable4 = drawable2;
                canvas2.drawLine(iM1124dp42 - AndroidUtilities.m1124dp(6.0f), iM1124dp32 - AndroidUtilities.m1124dp(6.0f), f802, f812, this.paint);
                canvas2 = canvas;
                canvas2.drawLine(f802, f812, iM1124dp42 + AndroidUtilities.m1124dp(12.0f), iM1124dp32 - AndroidUtilities.m1124dp(12.0f), this.paint);
                if (this.currentIcon != this.nextIcon) {
                }
            }
            if (this.currentIcon != 12) {
                applyShaderMatrix(false);
                i6 = this.currentIcon;
                i7 = this.nextIcon;
                if (i6 != i7) {
                }
                this.paint.setAlpha(i6 != i7 ? 255 : (int) (f20 * 255.0f));
                AndroidUtilities.m1124dp(7.0f);
                AndroidUtilities.m1124dp(3.0f);
                if (this.currentIcon != this.nextIcon) {
                }
                float fM1124dp182 = AndroidUtilities.m1124dp(7.0f) * this.scale;
                float f822 = iCenterX;
                float f832 = f822 - fM1124dp182;
                float f842 = iCenterY3;
                float f852 = f842 - fM1124dp182;
                float f862 = f822 + fM1124dp182;
                float f872 = fM1124dp182 + f842;
                i9 = i;
                i10 = i8;
                canvas2.drawLine(f832, f852, f862, f872, this.paint);
                canvas2 = canvas;
                canvas2.drawLine(f862, f852, f832, f872, this.paint);
                if (this.currentIcon != this.nextIcon) {
                }
            }
            if (this.currentIcon != i10) {
                applyShaderMatrix(false);
                i11 = this.currentIcon;
                i12 = this.nextIcon;
                if (i11 != i12) {
                }
                this.textPaint.setAlpha((int) (f21 * 255.0f));
                int iM1124dp52 = AndroidUtilities.m1124dp(5.0f) + iCenterY3;
                int i422 = iCenterX - (this.percentStringWidth / 2);
                f22 = 5.0f;
                if (this.currentIcon != this.nextIcon) {
                }
                i13 = (int) (this.animatedDownloadProgress * 100.0f);
                if (this.percentString != null) {
                    this.lastPercent = i13;
                    this.percentString = String.format("%d%%", Integer.valueOf(i13));
                    this.percentStringWidth = (int) Math.ceil(this.textPaint.measureText(r3));
                    canvas2.drawText(this.percentString, i422, iM1124dp52, this.textPaint);
                    if (this.currentIcon != this.nextIcon) {
                    }
                }
            }
            i14 = this.currentIcon;
            if (i14 != 0) {
                if (i14 != 0) {
                    if (i14 == 1) {
                    }
                    if (i14 != i15) {
                    }
                    i16 = this.nextIcon;
                    if (i16 != 0) {
                    }
                }
            }
            if (this.currentIcon != 6) {
                applyShaderMatrix(false);
                if (this.currentIcon == 6) {
                }
                int iM1124dp62 = AndroidUtilities.m1124dp(7.0f) + iCenterY3;
                int iM1124dp72 = iCenterX - AndroidUtilities.m1124dp(3.0f);
                if (fMin2 >= 1.0f) {
                }
                if (f25 <= 0.0f) {
                }
            }
            if (drawable3 != null) {
                int intrinsicWidth3 = (int) (drawable3.getIntrinsicWidth() * f18);
                int intrinsicHeight3 = (int) (drawable3.getIntrinsicHeight() * f18);
                drawable3.setColorFilter(this.colorFilter);
                drawable3.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                int i432 = intrinsicWidth3 / 2;
                int i442 = intrinsicHeight3 / 2;
                drawable3.setBounds(iCenterX - i432, iCenterY3 - i442, i432 + iCenterX, i442 + iCenterY3);
                drawable3.draw(canvas2);
            }
            if (drawable4 != null) {
            }
            if (pathArr4 != null) {
                int iM1124dp82 = AndroidUtilities.m1124dp(24.0f);
                this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                this.paint2.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                applyShaderMatrix(true);
                canvas2.save();
                canvas2.translate(iCenterX, iCenterY3);
                canvas2.scale(f18, f18);
                float f932 = (-iM1124dp82) / 2;
                canvas2.translate(f932, f932);
                path2 = pathArr4[0];
                if (path2 != null) {
                }
                path3 = pathArr4[1];
                if (path3 != null) {
                }
                canvas2.restore();
            }
            if (pathArr3 != null) {
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            j = jCurrentTimeMillis2 - this.lastAnimationTime;
            if (j > 17) {
            }
            this.lastAnimationTime = jCurrentTimeMillis2;
            i21 = this.currentIcon;
            if (i21 != 3) {
                float f962 = this.downloadRadOffset + ((360 * j) / 2500.0f);
                this.downloadRadOffset = f962;
                this.downloadRadOffset = getCircleValue(f962);
                if (this.nextIcon != 2) {
                }
                invalidateSelf();
            }
            if (this.animatingTransition) {
            }
            i22 = i9;
            if (i22 < 1) {
            }
        }
        applyShaderMatrix(z);
        int i48 = this.nextIcon;
        if (i48 == 2) {
            if (this.drawProgressCircle) {
                float f103 = this.transitionProgress;
                if (f103 <= 0.5f) {
                    float f104 = 1.0f - (f103 / 0.5f);
                    fM1124dp5 = AndroidUtilities.m1124dp(7.0f) * f104 * this.scale;
                    i28 = (int) (f104 * 255.0f);
                } else {
                    fM1124dp5 = f;
                    i28 = 0;
                }
                iMin = i28;
                f28 = 360.0f;
                fCenterX = f;
                f32 = fCenterX;
                f31 = f32;
                f30 = 1.0f;
            }
            i3 = this.currentIcon;
            if (i3 == this.nextIcon) {
            }
            i4 = this.nextIcon;
            if (i4 == i2) {
            }
            pathArr2 = null;
            if (i4 != 5) {
            }
            pathArr3 = pathArr;
            pathArr4 = pathArr2;
            if (i4 != 7) {
            }
            if (i4 != i5) {
            }
            drawable3 = drawable;
            if (this.currentIcon != 9) {
            }
            if (this.currentIcon != 12) {
            }
            if (this.currentIcon != i10) {
            }
            i14 = this.currentIcon;
            if (i14 != 0) {
            }
            if (this.currentIcon != 6) {
            }
            if (drawable3 != null) {
            }
            if (drawable4 != null) {
            }
            if (pathArr4 != null) {
            }
            if (pathArr3 != null) {
            }
            long jCurrentTimeMillis22 = System.currentTimeMillis();
            j = jCurrentTimeMillis22 - this.lastAnimationTime;
            if (j > 17) {
            }
            this.lastAnimationTime = jCurrentTimeMillis22;
            i21 = this.currentIcon;
            if (i21 != 3) {
            }
            if (this.animatingTransition) {
            }
            i22 = i9;
            if (i22 < 1) {
            }
        } else {
            if (i48 == i2 || i48 == 0 || i48 == 1 || i48 == 5 || i48 == 8 || i48 == 9 || i48 == 7) {
                f28 = 360.0f;
                i24 = 6;
            } else if (i48 == 6) {
                i24 = 6;
                f28 = 360.0f;
            } else if (i48 == 4) {
                f30 = 1.0f - this.transitionProgress;
                fM1124dp5 = AndroidUtilities.m1124dp(7.0f) * this.scale;
                int i49 = (int) (f30 * 255.0f);
                if (this.currentIcon == 14) {
                    fCenterX = bounds.left;
                    iCenterY2 = bounds.top;
                } else {
                    fCenterX = bounds.centerX();
                    iCenterY2 = bounds.centerY();
                }
                iMin = i49;
                f28 = 360.0f;
                f32 = f;
                f31 = iCenterY2;
            } else if (i48 == 14 || i48 == 3) {
                float f105 = this.transitionProgress;
                float f106 = 1.0f - f105;
                if (this.currentIcon == 4) {
                    f34 = f105;
                    f33 = f;
                } else {
                    f33 = f106 * 45.0f;
                    f34 = 1.0f;
                }
                float fM1124dp19 = AndroidUtilities.m1124dp(7.0f) * this.scale;
                int i50 = (int) (f105 * 255.0f);
                f28 = 360.0f;
                if (this.nextIcon == 14) {
                    fCenterX2 = bounds.left;
                    iCenterY = bounds.top;
                } else {
                    fCenterX2 = bounds.centerX();
                    iCenterY = bounds.centerY();
                }
                f31 = iCenterY;
                iMin = i50;
                f30 = f34;
                fM1124dp5 = fM1124dp19;
                f32 = f33;
                fCenterX = fCenterX2;
            } else {
                fM1124dp5 = AndroidUtilities.m1124dp(7.0f) * this.scale;
                f28 = 360.0f;
                fCenterX = f;
                f32 = fCenterX;
                f31 = f32;
                f30 = 1.0f;
                f29 = 1.0f;
                iMin = 255;
                if (f30 != f29) {
                    canvas2.save();
                    canvas2.scale(f30, f30, fCenterX, f31);
                }
                if (f32 != f) {
                    canvas2.save();
                    canvas2.rotate(f32, iCenterX, iCenterY3);
                }
                if (iMin != 0) {
                    float f107 = iMin;
                    this.paint.setAlpha((int) (this.overrideAlpha * f107));
                    if (this.currentIcon == 14 || this.nextIcon == 14) {
                        f35 = 4.0f;
                        this.paint3.setAlpha((int) (f107 * this.overrideAlpha));
                        this.rect.set(iCenterX - AndroidUtilities.m1124dp(3.5f), iCenterY3 - AndroidUtilities.m1124dp(3.5f), AndroidUtilities.m1124dp(3.5f) + iCenterX, AndroidUtilities.m1124dp(3.5f) + iCenterY3);
                        canvas2.drawRoundRect(this.rect, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), this.paint3);
                    } else {
                        float f108 = iCenterX;
                        float f109 = f108 - fM1124dp5;
                        float f110 = iCenterY3;
                        float f111 = f110 - fM1124dp5;
                        float f112 = f108 + fM1124dp5;
                        float f113 = f110 + fM1124dp5;
                        f35 = 4.0f;
                        canvas2.drawLine(f109, f111, f112, f113, this.paint);
                        canvas2 = canvas;
                        canvas2.drawLine(f112, f111, f109, f113, this.paint);
                    }
                } else {
                    f35 = 4.0f;
                }
                if (f32 != f) {
                    canvas2.restore();
                }
                if (f30 != f29) {
                    canvas2.restore();
                }
                i25 = this.currentIcon;
                if ((i25 == 3 || i25 == 14 || (i25 == 4 && ((i27 = this.nextIcon) == 14 || i27 == 3))) && iMin != 0 && this.drawProgressCircle) {
                    float fMax3 = Math.max(f35, this.animatedDownloadProgress * f28);
                    int iM1124dp10 = AndroidUtilities.m1124dp(this.isMini ? 2.0f : f35);
                    this.rect.set(bounds.left + iM1124dp10, bounds.top + iM1124dp10, bounds.right - iM1124dp10, bounds.bottom - iM1124dp10);
                    i26 = this.currentIcon;
                    if (i26 == 14 || (i26 == 4 && this.nextIcon == 14)) {
                        this.paint.setAlpha((int) (iMin * 0.15f * this.overrideAlpha));
                        canvas2.drawArc(this.rect, 0.0f, 360.0f, false, this.paint);
                        this.paint.setAlpha(iMin);
                    }
                    canvas2 = canvas;
                    canvas2.drawArc(this.rect, this.downloadRadOffset, fMax3, false, this.paint);
                }
                i3 = this.currentIcon;
                if (i3 == this.nextIcon) {
                }
                i4 = this.nextIcon;
                if (i4 == i2) {
                }
                pathArr2 = null;
                if (i4 != 5) {
                }
                pathArr3 = pathArr;
                pathArr4 = pathArr2;
                if (i4 != 7) {
                }
                if (i4 != i5) {
                }
                drawable3 = drawable;
                if (this.currentIcon != 9) {
                }
                if (this.currentIcon != 12) {
                }
                if (this.currentIcon != i10) {
                }
                i14 = this.currentIcon;
                if (i14 != 0) {
                }
                if (this.currentIcon != 6) {
                }
                if (drawable3 != null) {
                }
                if (drawable4 != null) {
                }
                if (pathArr4 != null) {
                }
                if (pathArr3 != null) {
                }
                long jCurrentTimeMillis222 = System.currentTimeMillis();
                j = jCurrentTimeMillis222 - this.lastAnimationTime;
                if (j > 17) {
                }
                this.lastAnimationTime = jCurrentTimeMillis222;
                i21 = this.currentIcon;
                if (i21 != 3) {
                }
                if (this.animatingTransition) {
                }
                i22 = i9;
                if (i22 < 1) {
                }
            }
            if (i48 == i24) {
                f29 = 1.0f;
                fMin3 = Math.min(1.0f, this.transitionProgress / 0.5f);
            } else {
                f29 = 1.0f;
                fMin3 = this.transitionProgress;
            }
            f30 = f29 - fMin3;
            float fCenterX3 = bounds.centerX();
            float fCenterY = bounds.centerY();
            float fM1124dp20 = AndroidUtilities.m1124dp(7.0f) * f30 * this.scale;
            iMin = (int) (Math.min(f29, f30 * 2.0f) * 255.0f);
            f31 = fCenterY;
            fCenterX = fCenterX3;
            fM1124dp5 = fM1124dp20;
            f32 = f;
            if (f30 != f29) {
            }
            if (f32 != f) {
            }
            if (iMin != 0) {
            }
            if (f32 != f) {
            }
            if (f30 != f29) {
            }
            i25 = this.currentIcon;
            if (i25 == 3) {
                float fMax32 = Math.max(f35, this.animatedDownloadProgress * f28);
                int iM1124dp102 = AndroidUtilities.m1124dp(this.isMini ? 2.0f : f35);
                this.rect.set(bounds.left + iM1124dp102, bounds.top + iM1124dp102, bounds.right - iM1124dp102, bounds.bottom - iM1124dp102);
                i26 = this.currentIcon;
                if (i26 == 14) {
                    this.paint.setAlpha((int) (iMin * 0.15f * this.overrideAlpha));
                    canvas2.drawArc(this.rect, 0.0f, 360.0f, false, this.paint);
                    this.paint.setAlpha(iMin);
                    canvas2 = canvas;
                    canvas2.drawArc(this.rect, this.downloadRadOffset, fMax32, false, this.paint);
                }
            } else {
                float fMax322 = Math.max(f35, this.animatedDownloadProgress * f28);
                int iM1124dp1022 = AndroidUtilities.m1124dp(this.isMini ? 2.0f : f35);
                this.rect.set(bounds.left + iM1124dp1022, bounds.top + iM1124dp1022, bounds.right - iM1124dp1022, bounds.bottom - iM1124dp1022);
                i26 = this.currentIcon;
                if (i26 == 14) {
                }
            }
            i3 = this.currentIcon;
            if (i3 == this.nextIcon) {
            }
            i4 = this.nextIcon;
            if (i4 == i2) {
            }
            pathArr2 = null;
            if (i4 != 5) {
            }
            pathArr3 = pathArr;
            pathArr4 = pathArr2;
            if (i4 != 7) {
            }
            if (i4 != i5) {
            }
            drawable3 = drawable;
            if (this.currentIcon != 9) {
            }
            if (this.currentIcon != 12) {
            }
            if (this.currentIcon != i10) {
            }
            i14 = this.currentIcon;
            if (i14 != 0) {
            }
            if (this.currentIcon != 6) {
            }
            if (drawable3 != null) {
            }
            if (drawable4 != null) {
            }
            if (pathArr4 != null) {
            }
            if (pathArr3 != null) {
            }
            long jCurrentTimeMillis2222 = System.currentTimeMillis();
            j = jCurrentTimeMillis2222 - this.lastAnimationTime;
            if (j > 17) {
            }
            this.lastAnimationTime = jCurrentTimeMillis2222;
            i21 = this.currentIcon;
            if (i21 != 3) {
            }
            if (this.animatingTransition) {
            }
            i22 = i9;
            if (i22 < 1) {
            }
        }
        f29 = 1.0f;
        if (f30 != f29) {
        }
        if (f32 != f) {
        }
        if (iMin != 0) {
        }
        if (f32 != f) {
        }
        if (f30 != f29) {
        }
        i25 = this.currentIcon;
        if (i25 == 3) {
        }
        i3 = this.currentIcon;
        if (i3 == this.nextIcon) {
        }
        i4 = this.nextIcon;
        if (i4 == i2) {
        }
        pathArr2 = null;
        if (i4 != 5) {
        }
        pathArr3 = pathArr;
        pathArr4 = pathArr2;
        if (i4 != 7) {
        }
        if (i4 != i5) {
        }
        drawable3 = drawable;
        if (this.currentIcon != 9) {
        }
        if (this.currentIcon != 12) {
        }
        if (this.currentIcon != i10) {
        }
        i14 = this.currentIcon;
        if (i14 != 0) {
        }
        if (this.currentIcon != 6) {
        }
        if (drawable3 != null) {
        }
        if (drawable4 != null) {
        }
        if (pathArr4 != null) {
        }
        if (pathArr3 != null) {
        }
        long jCurrentTimeMillis22222 = System.currentTimeMillis();
        j = jCurrentTimeMillis22222 - this.lastAnimationTime;
        if (j > 17) {
        }
        this.lastAnimationTime = jCurrentTimeMillis22222;
        i21 = this.currentIcon;
        if (i21 != 3) {
        }
        if (this.animatingTransition) {
        }
        i22 = i9;
        if (i22 < 1) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m1124dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m1124dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return AndroidUtilities.m1124dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return AndroidUtilities.m1124dp(48.0f);
    }
}
