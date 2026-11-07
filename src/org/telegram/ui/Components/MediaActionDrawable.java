package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.annotation.Keep;
import android.text.TextPaint;
import android.util.SparseArray;
import android.view.animation.DecelerateInterpolator;
import com.exteragram.messenger.plugins.PluginsController;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;

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
    private MessageDrawable messageDrawable;
    private int nextIcon;
    private String percentString;
    private int percentStringWidth;
    private float savedTransitionProgress;
    private TextPaint textPaint = new TextPaint(1);
    public Paint paint = new Paint(1);
    private Paint backPaint = new Paint(1);
    public Paint paint2 = new Paint(1);
    private Paint paint3 = new Paint(1);
    private Paint drawablePaint = new Paint(1);
    private RectF rect = new RectF();
    private final ColorFilter whiteColorFilter = new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN);
    private final SparseArray<Drawable[]> customIconDrawables = new SparseArray<>();
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

    public static boolean isCustomFileIcon(int i) {
        return i == 16 || i == 17 || i == 18 || PluginsController.isPluginFileIcon(i);
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
        this.paint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint3.setColor(-1);
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        this.textPaint.setColor(-1);
        this.paint2.setColor(-1);
    }

    public void setOverrideAlpha(float f) {
        this.overrideAlpha = f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
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
        this.paint.setStrokeWidth(AndroidUtilities.dp(z ? 2.0f : 3.0f));
    }

    private void drawTintedDrawable(Canvas canvas, Drawable drawable, int i, int i2, float f, int i3) {
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * f)) / 2;
        int i4 = i - intrinsicWidth;
        int intrinsicHeight = ((int) (drawable.getIntrinsicHeight() * f)) / 2;
        int i5 = i2 - intrinsicHeight;
        int i6 = i + intrinsicWidth;
        int i7 = i2 + intrinsicHeight;
        applyShaderMatrix(true);
        float f2 = i4;
        float f3 = i5;
        float f4 = i6;
        float f5 = i7;
        int iSaveLayer = canvas.saveLayer(f2, f3, f4, f5, null);
        drawable.setColorFilter(this.whiteColorFilter);
        drawable.setAlpha(255);
        drawable.setBounds(i4, i5, i6, i7);
        drawable.draw(canvas);
        this.drawablePaint.set(this.paint2);
        this.drawablePaint.setAlpha(i3);
        this.drawablePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawRect(f2, f3, f4, f5, this.drawablePaint);
        this.drawablePaint.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
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
        int i4 = this.currentIcon;
        if (z) {
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
            if (i4 == i) {
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

    public void setBackgroundDrawable(MessageDrawable messageDrawable) {
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
            this.paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
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
        MessageDrawable messageDrawable = this.messageDrawable;
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
    /* JADX WARN: Removed duplicated region for block: B:165:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x06f1  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x06fa  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0721  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0724  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0744  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x074b  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x077a  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x077f  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x07ae  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x07b2  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x07bf  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x07c4  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x07d1  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x07d8  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x07e1  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x07ea  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x07f1  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x07f6  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x07ff  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0805  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0814 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0816  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0828  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x082b  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0844  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0851  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0892  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x089b  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x089f  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x08b0  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x08b5  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x08c4  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x08c7  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x08d9  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0918  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x091c  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x092b  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x092e  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0954  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0969  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0998  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x09a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x09a8  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x09ae  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x09b0  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x09ba  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x09c5  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x09c8 A[PHI: r3
  0x09c8: PHI (r3v107 int) = (r3v103 int), (r3v128 int) binds: [B:414:0x09d0, B:409:0x09c6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x09cb A[PHI: r3
  0x09cb: PHI (r3v106 int) = (r3v103 int), (r3v128 int) binds: [B:414:0x09d0, B:409:0x09c6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x09cf  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x09d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x09d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0a2c  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0a2f  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0a38  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0a62  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0a6e  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0a79  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0a93  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0a96  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0ab9  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x0abd  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0aca  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0af6  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0b23  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0b59  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0b62  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0b7f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:502:0x0bd7  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0bdf  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0c27  */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0c2d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0c42  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x0c45  */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0c6f  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x0c7a  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0c84  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0d10  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0d18  */
    /* JADX WARN: Removed duplicated region for block: B:562:0x0d2b  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0d43  */
    /* JADX WARN: Removed duplicated region for block: B:573:0x0d73  */
    /* JADX WARN: Removed duplicated region for block: B:581:0x0d95  */
    /* JADX WARN: Removed duplicated region for block: B:583:? A[RETURN, SYNTHETIC] */
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
        float fDp;
        float f6;
        float fDp2;
        float fDp3;
        float fDp4;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        int i2;
        boolean z;
        int i3;
        float fMin;
        float fMax;
        float f16;
        float f17;
        int i4;
        Path[] pathArr;
        Path[] pathArr2;
        Path[] pathArr3;
        Path[] pathArr4;
        int i5;
        Drawable drawable;
        Drawable drawable2;
        Rect rect;
        Drawable drawable3;
        int i6;
        int i7;
        float f18;
        int i8;
        float f19;
        int i9;
        int i10;
        int i11;
        float f20;
        float f21;
        int i12;
        int i13;
        int i14;
        float f22;
        int i15;
        float f23;
        int i16;
        int i17;
        boolean z2;
        float fMin2;
        float f24;
        int i18;
        float f25;
        int i19;
        float f26;
        Canvas canvas2;
        int i20;
        int i21;
        float f27;
        float f28;
        long j;
        int i22;
        Path path;
        Path path2;
        Path path3;
        int i23;
        float f29;
        float f30;
        float f31;
        int iMin;
        float f32;
        float fCenterX;
        float fDp5;
        float f33;
        int i24;
        float f34;
        float f35;
        float fCenterX2;
        int iCenterY;
        int iCenterY2;
        float f36;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        Canvas canvas3 = canvas;
        Rect bounds = getBounds();
        MessageDrawable messageDrawable = this.messageDrawable;
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
                iSave = canvas3.save();
                float f37 = 1.0f - this.transitionProgress;
                f = 0.0f;
                canvas3.scale(f37, f37, iCenterX, iCenterY3);
                i = iSave;
            }
        } else {
            f = 0.0f;
            if ((i30 == 6 || i30 == 10) && this.currentIcon == 4) {
                iSave = canvas3.save();
                float f38 = this.transitionProgress;
                canvas3.scale(f38, f38, iCenterX, iCenterY3);
                i = iSave;
            }
            i = 0;
        }
        AndroidUtilities.dp(3.0f);
        float interpolation = 90.0f;
        if (this.currentIcon == 2 || this.nextIcon == 2) {
            applyShaderMatrix(false);
            if (this.drawProgressCircle) {
                float f39 = iCenterY3;
                float fDp6 = f39 - (AndroidUtilities.dp(9.0f) * this.scale);
                float fDp7 = (AndroidUtilities.dp(9.0f) * this.scale) + f39;
                float fDp8 = (AndroidUtilities.dp(12.0f) * this.scale) + f39;
                int i32 = this.currentIcon;
                if ((i32 == 3 || i32 == 14) && this.nextIcon == 2) {
                    this.paint.setAlpha((int) (Math.min(1.0f, this.transitionProgress / 0.5f) * 255.0f));
                    f5 = this.transitionProgress;
                    fDp = (AndroidUtilities.dp(12.0f) * this.scale) + f39;
                    f6 = 1.0f;
                } else {
                    int i33 = this.nextIcon;
                    if (i33 != 3 && i33 != 14 && i33 != 2) {
                        this.paint.setAlpha((int) (Math.min(1.0f, this.savedTransitionProgress / 0.5f) * 255.0f * (1.0f - this.transitionProgress)));
                        f15 = this.savedTransitionProgress;
                    } else {
                        this.paint.setAlpha(255);
                        f15 = this.transitionProgress;
                    }
                    f5 = f15;
                    f6 = 1.0f;
                    fDp = f39 + (AndroidUtilities.dp(1.0f) * this.scale);
                }
                if (this.animatingTransition) {
                    int i34 = this.nextIcon;
                    if (i34 == 2 || f5 <= 0.5f) {
                        if (i34 == 2) {
                            f11 = 1.0f - f5;
                        } else {
                            f11 = f5 / 0.5f;
                            f5 = 1.0f - f11;
                        }
                        fDp6 += (fDp - fDp6) * f11;
                        fDp7 += (fDp8 - fDp7) * f11;
                        float f40 = iCenterX;
                        fDp2 = f40 - ((AndroidUtilities.dp(8.0f) * f5) * this.scale);
                        fDp3 = f40 + (AndroidUtilities.dp(8.0f) * f5 * this.scale);
                        fDp4 = AndroidUtilities.dp(8.0f) * f5;
                        f7 = this.scale;
                    } else {
                        float fDp9 = AndroidUtilities.dp(13.0f);
                        float f41 = this.scale;
                        float fDp10 = (fDp9 * f41 * f41) + (this.isMini ? AndroidUtilities.dp(2.0f) : 0);
                        float f42 = f5 - 0.5f;
                        float f43 = f42 / 0.5f;
                        if (f42 > 0.2f) {
                            f13 = (f42 - 0.2f) / 0.3f;
                            f12 = f6;
                        } else {
                            f12 = f42 / 0.2f;
                            f13 = f;
                        }
                        float f44 = iCenterX;
                        float f45 = f44 - fDp10;
                        float f46 = fDp10 / 2.0f;
                        this.rect.set(f45, fDp8 - f46, f44, f46 + fDp8);
                        float f47 = f13 * 100.0f;
                        canvas3.drawArc(this.rect, f47, (f43 * 104.0f) - f47, false, this.paint);
                        float f48 = fDp + ((fDp8 - fDp) * f12);
                        if (f13 > f) {
                            float f49 = this.nextIcon == 14 ? f : (-45.0f) * (f6 - f13);
                            float fDp11 = AndroidUtilities.dp(7.0f) * f13 * this.scale;
                            int iMin2 = (int) (f13 * 255.0f);
                            int i35 = this.nextIcon;
                            if (i35 != 3 && i35 != 14 && i35 != 2) {
                                float f50 = f6;
                                iMin2 = (int) (iMin2 * (f50 - Math.min(f50, this.transitionProgress / 0.5f)));
                            }
                            int i36 = iMin2;
                            if (f49 != f) {
                                canvas3.save();
                                f14 = f39;
                                canvas3.rotate(f49, f44, f14);
                            } else {
                                f14 = f39;
                            }
                            if (i36 != 0) {
                                this.paint.setAlpha(i36);
                                if (this.nextIcon == 14) {
                                    this.paint3.setAlpha(i36);
                                    this.rect.set(iCenterX - AndroidUtilities.dp(3.5f), iCenterY3 - AndroidUtilities.dp(3.5f), AndroidUtilities.dp(3.5f) + iCenterX, AndroidUtilities.dp(3.5f) + iCenterY3);
                                    canvas3.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint3);
                                    this.paint.setAlpha((int) (i36 * 0.15f));
                                    int iDp = AndroidUtilities.dp(this.isMini ? 2.0f : 4.0f);
                                    this.rect.set(bounds.left + iDp, bounds.top + iDp, bounds.right - iDp, bounds.bottom - iDp);
                                    canvas3.drawArc(this.rect, 0.0f, 360.0f, false, this.paint);
                                    this.paint.setAlpha(i36);
                                } else {
                                    float f51 = f44 - fDp11;
                                    float f52 = f14 - fDp11;
                                    float f53 = f44 + fDp11;
                                    float f54 = f14 + fDp11;
                                    canvas.drawLine(f51, f52, f53, f54, this.paint);
                                    canvas.drawLine(f53, f52, f51, f54, this.paint);
                                }
                            }
                            if (f49 != f) {
                                canvas.restore();
                            }
                        }
                        fDp7 = fDp8;
                        fDp3 = f44;
                        fDp2 = fDp3;
                        fDp6 = f48;
                        float f55 = fDp3;
                        f8 = fDp7;
                        float f56 = fDp8;
                        f9 = fDp2;
                        if (fDp6 != f8) {
                            float f57 = iCenterX;
                            canvas.drawLine(f57, fDp6, f57, f8, this.paint);
                        }
                        f10 = iCenterX;
                        if (f9 == f10) {
                            canvas3 = canvas;
                            canvas3.drawLine(f9, f56, f10, f8, this.paint);
                            canvas3.drawLine(f55, f56, f10, f8, this.paint);
                        } else {
                            canvas3 = canvas;
                        }
                    }
                } else {
                    float f58 = iCenterX;
                    fDp2 = f58 - (AndroidUtilities.dp(8.0f) * this.scale);
                    fDp3 = f58 + (AndroidUtilities.dp(8.0f) * this.scale);
                    fDp4 = AndroidUtilities.dp(8.0f);
                    f7 = this.scale;
                }
                fDp8 = fDp7 - (fDp4 * f7);
                float f552 = fDp3;
                f8 = fDp7;
                float f562 = fDp8;
                f9 = fDp2;
                if (fDp6 != f8) {
                }
                f10 = iCenterX;
                if (f9 == f10) {
                }
            } else {
                boolean z3 = this.currentIcon == 14 || this.nextIcon == 14;
                int i37 = this.nextIcon;
                float f59 = this.transitionProgress;
                float f60 = i37 == 2 ? 1.0f - f59 : f59;
                float f61 = this.scale * this.downloadIconScale;
                float fDp12 = AndroidUtilities.dp(8.0f) * f61;
                float fDp13 = AndroidUtilities.dp(1.0f) * f61;
                float fDp14 = AndroidUtilities.dp(7.0f) * f61;
                float fDp15 = AndroidUtilities.dp(9.0f) * f61;
                float fDp16 = AndroidUtilities.dp(2.0f) * f61;
                float fDp17 = AndroidUtilities.dp(3.5f);
                if (z3) {
                    float f62 = 1.0f - f60;
                    if (f62 > f) {
                        canvas3.save();
                        float f63 = iCenterX;
                        float f64 = iCenterY3;
                        canvas3.scale(f62, f62, f63, f64);
                        this.paint.setAlpha((int) (f62 * 255.0f * this.overrideAlpha));
                        float f65 = f64 + fDp15;
                        float f66 = f65 - fDp12;
                        f2 = fDp17;
                        canvas3.drawLine(f63, f64 - fDp15, f63, f65, this.paint);
                        canvas.drawLine(f63 - fDp12, f66, f63, f65, this.paint);
                        canvas3 = canvas;
                        canvas3.drawLine(f63 + fDp12, f66, f63, f65, this.paint);
                        canvas3.restore();
                    } else {
                        f2 = fDp17;
                    }
                    if (f60 > f) {
                        canvas3.save();
                        float f67 = iCenterX;
                        float f68 = iCenterY3;
                        canvas3.scale(f60, f60, f67, f68);
                        this.paint3.setAlpha((int) (f60 * 255.0f * this.overrideAlpha));
                        this.rect.set(f67 - f2, f68 - f2, f67 + f2, f68 + f2);
                        canvas3.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint3);
                        canvas3.restore();
                    }
                } else {
                    int i38 = this.currentIcon;
                    if ((i38 == 3 || this.nextIcon == 3) && this.animatingTransition) {
                        canvas3.save();
                        float f69 = iCenterX;
                        float f70 = iCenterY3;
                        canvas3.rotate(f60 * 90.0f, f69, f70);
                        float f71 = 1.0f - f60;
                        if (f71 > f) {
                            this.paint.setAlpha((int) (f71 * 255.0f));
                            float f72 = f71 * fDp15;
                            f4 = f70;
                            canvas3.drawLine(f69, f70 - f72, f69, f72 + f70, this.paint);
                            f3 = f69;
                        } else {
                            f3 = f69;
                            f4 = f70;
                        }
                        this.paint.setAlpha(255);
                        float f73 = (f4 + fDp13) - (fDp12 * f60);
                        float f74 = (f4 + fDp15) - (fDp16 * f60);
                        float f75 = fDp13 * f60;
                        float f76 = fDp14 * f60;
                        canvas.drawLine((f3 - fDp12) + f75, f73, f3 + f76, f74, this.paint);
                        canvas3 = canvas;
                        canvas3.drawLine((f3 + fDp12) - f75, f73, f3 - f76, f74, this.paint);
                        canvas3.restore();
                    } else {
                        float f77 = 1.0f - (this.animatingTransition ? f60 : i38 == 2 ? f : 1.0f);
                        int i39 = (int) (f77 * 255.0f);
                        if (i39 > 0) {
                            canvas3.save();
                            float f78 = iCenterX;
                            float f79 = iCenterY3;
                            canvas3.scale(f77, f77, f78, f79);
                            this.paint.setAlpha(i39);
                            float f80 = f79 + fDp15;
                            float f81 = f80 - fDp12;
                            canvas3.drawLine(f78, f79 - fDp15, f78, f80, this.paint);
                            canvas.drawLine(f78 - fDp12, f81, f78, f80, this.paint);
                            canvas3 = canvas;
                            canvas3.drawLine(f78 + fDp12, f81, f78, f80, this.paint);
                            canvas3.restore();
                        }
                    }
                }
            }
        }
        int i40 = this.currentIcon;
        if (i40 == 3 || i40 == 14) {
            i2 = 15;
            z = false;
        } else if (i40 == 4 && ((i29 = this.nextIcon) == 14 || i29 == 3)) {
            z = false;
            i2 = 15;
        } else {
            if (i40 == 10 || this.nextIcon == 10 || i40 == 13) {
                int i41 = this.nextIcon;
                int i42 = (i41 == 4 || i41 == 6) ? (int) ((1.0f - this.transitionProgress) * 255.0f) : 255;
                if (i42 != 0) {
                    applyShaderMatrix(false);
                    this.paint.setAlpha((int) (i42 * this.overrideAlpha));
                    if (this.drawProgressCircle) {
                        float fMax2 = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                        int iDp2 = AndroidUtilities.dp(this.isMini ? 2.0f : 4.0f);
                        this.rect.set(bounds.left + iDp2, bounds.top + iDp2, bounds.right - iDp2, bounds.bottom - iDp2);
                        i2 = 15;
                        canvas3.drawArc(this.rect, this.downloadRadOffset, fMax2, false, this.paint);
                    } else {
                        i2 = 15;
                    }
                }
            }
            i3 = this.currentIcon;
            if (i3 != this.nextIcon) {
                f17 = 1.0f;
                f16 = 1.0f;
            } else {
                if (i3 == 4 || i3 == 3 || i3 == 14) {
                    fMin = this.transitionProgress;
                    fMax = 1.0f - fMin;
                } else {
                    fMin = Math.min(1.0f, this.transitionProgress / 0.5f);
                    fMax = Math.max(f, 1.0f - (this.transitionProgress / 0.5f));
                }
                f16 = fMax;
                f17 = fMin;
            }
            i4 = this.nextIcon;
            if (i4 != i2) {
                pathArr = Theme.chat_updatePath;
            } else {
                if (this.currentIcon == i2) {
                    pathArr2 = Theme.chat_updatePath;
                    pathArr = null;
                    if (i4 == 5) {
                        pathArr = Theme.chat_filePath;
                    } else if (this.currentIcon == 5) {
                        pathArr2 = Theme.chat_filePath;
                    }
                    pathArr3 = pathArr;
                    pathArr4 = pathArr2;
                    Drawable customIconDrawable = isCustomFileIcon(i4) ? getCustomIconDrawable(this.nextIcon) : null;
                    Drawable customIconDrawable2 = isCustomFileIcon(this.currentIcon) ? getCustomIconDrawable(this.currentIcon) : null;
                    i5 = this.nextIcon;
                    if (i5 == 7) {
                        customIconDrawable = Theme.chat_flameIcon;
                    } else if (this.currentIcon == 7) {
                        customIconDrawable2 = Theme.chat_flameIcon;
                    }
                    if (i5 == 8) {
                        customIconDrawable = Theme.chat_gifIcon;
                    } else if (this.currentIcon == 8) {
                        customIconDrawable2 = Theme.chat_gifIcon;
                    }
                    drawable = customIconDrawable;
                    Drawable drawable4 = customIconDrawable2;
                    if (this.currentIcon == 9 || i5 == 9) {
                        applyShaderMatrix(false);
                        this.paint.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
                        int iDp3 = AndroidUtilities.dp(7.0f) + iCenterY3;
                        int iDp4 = iCenterX - AndroidUtilities.dp(3.0f);
                        if (this.currentIcon == this.nextIcon) {
                            canvas3.save();
                            float f82 = this.transitionProgress;
                            drawable2 = drawable4;
                            canvas3.scale(f82, f82, iCenterX, iCenterY3);
                        } else {
                            drawable2 = drawable4;
                        }
                        float f83 = iDp4;
                        float f84 = iDp3;
                        rect = bounds;
                        drawable3 = drawable2;
                        canvas3.drawLine(iDp4 - AndroidUtilities.dp(6.0f), iDp3 - AndroidUtilities.dp(6.0f), f83, f84, this.paint);
                        canvas3 = canvas;
                        canvas3.drawLine(f83, f84, iDp4 + AndroidUtilities.dp(12.0f), iDp3 - AndroidUtilities.dp(12.0f), this.paint);
                        if (this.currentIcon != this.nextIcon) {
                            canvas3.restore();
                        }
                    } else {
                        rect = bounds;
                        drawable3 = drawable4;
                    }
                    if (this.currentIcon == 12 || this.nextIcon == 12) {
                        applyShaderMatrix(false);
                        i6 = this.currentIcon;
                        i7 = this.nextIcon;
                        if (i6 != i7) {
                            i8 = 13;
                            f18 = 1.0f;
                        } else {
                            f18 = this.transitionProgress;
                            i8 = 13;
                            if (i7 != 13) {
                                f18 = 1.0f - f18;
                            }
                        }
                        this.paint.setAlpha(i6 != i7 ? 255 : (int) (f18 * 255.0f));
                        AndroidUtilities.dp(7.0f);
                        AndroidUtilities.dp(3.0f);
                        if (this.currentIcon != this.nextIcon) {
                            canvas3.save();
                            canvas3.scale(f18, f18, iCenterX, iCenterY3);
                        }
                        float fDp18 = AndroidUtilities.dp(7.0f) * this.scale;
                        float f85 = iCenterX;
                        float f86 = f85 - fDp18;
                        float f87 = iCenterY3;
                        float f88 = f87 - fDp18;
                        float f89 = f85 + fDp18;
                        float f90 = fDp18 + f87;
                        f19 = f16;
                        i9 = i8;
                        canvas3.drawLine(f86, f88, f89, f90, this.paint);
                        canvas3 = canvas;
                        canvas3.drawLine(f89, f88, f86, f90, this.paint);
                        if (this.currentIcon != this.nextIcon) {
                            canvas3.restore();
                        }
                    } else {
                        f19 = f16;
                        i9 = 13;
                    }
                    if (this.currentIcon == i9 || this.nextIcon == i9) {
                        applyShaderMatrix(false);
                        i10 = this.currentIcon;
                        i11 = this.nextIcon;
                        if (i10 != i11) {
                            f20 = 1.0f;
                        } else {
                            f20 = this.transitionProgress;
                            if (i11 != i9) {
                                f20 = 1.0f - f20;
                            }
                        }
                        this.textPaint.setAlpha((int) (f20 * 255.0f));
                        int iDp5 = AndroidUtilities.dp(5.0f) + iCenterY3;
                        int i43 = iCenterX - (this.percentStringWidth / 2);
                        f21 = 5.0f;
                        if (this.currentIcon != this.nextIcon) {
                            canvas3.save();
                            canvas3.scale(f20, f20, iCenterX, iCenterY3);
                        }
                        i12 = (int) (this.animatedDownloadProgress * 100.0f);
                        if (this.percentString != null || i12 != this.lastPercent) {
                            this.lastPercent = i12;
                            this.percentString = String.format("%d%%", Integer.valueOf(i12));
                            this.percentStringWidth = (int) Math.ceil(this.textPaint.measureText(r3));
                        }
                        canvas3.drawText(this.percentString, i43, iDp5, this.textPaint);
                        if (this.currentIcon != this.nextIcon) {
                            canvas3.restore();
                        }
                    } else {
                        f21 = 5.0f;
                    }
                    i13 = this.currentIcon;
                    if (i13 == 0 || i13 == 1 || (i23 = this.nextIcon) == 0 || i23 == 1) {
                        if (i13 != 0 && this.nextIcon == 1) {
                            z2 = this.animatingTransition;
                            int i44 = this.nextIcon;
                            if (!z2) {
                            }
                        } else {
                            if (i13 != 1) {
                                if (this.nextIcon != 0) {
                                    i14 = 1;
                                }
                                z2 = this.animatingTransition;
                                int i442 = this.nextIcon;
                                if (!z2) {
                                    float f91 = this.transitionProgress;
                                    if (i442 == 0) {
                                        f91 = 1.0f - f91;
                                    }
                                    f22 = f91;
                                    i14 = 1;
                                    i15 = this.nextIcon;
                                    if ((i15 == 0 && i15 != i14) || (i13 != 0 && i13 != i14)) {
                                        Paint paint = this.paint2;
                                        if (i15 == 4) {
                                            paint.setAlpha((int) ((1.0f - this.transitionProgress) * 255.0f));
                                        } else {
                                            paint.setAlpha(i13 == i15 ? 255 : (int) (this.transitionProgress * 255.0f));
                                        }
                                    } else {
                                        this.paint2.setAlpha(255);
                                    }
                                    applyShaderMatrix(true);
                                    canvas3.save();
                                    canvas3.translate(rect.centerX() + (AndroidUtilities.dp(1.0f) * (1.0f - f22)), rect.centerY());
                                    f23 = f22 * 500.0f;
                                    i16 = this.currentIcon;
                                    float f92 = i16 == 1 ? 90.0f : 0.0f;
                                    if (i16 == 0 && this.nextIcon == 1) {
                                        if (f23 < 384.0f) {
                                            interpolation = CubicBezierInterpolator.EASE_BOTH.getInterpolation(f23 / 384.0f) * 95.0f;
                                        } else if (f23 < 484.0f) {
                                            interpolation = 95.0f - (CubicBezierInterpolator.EASE_BOTH.getInterpolation((f23 - 384.0f) / 100.0f) * f21);
                                        }
                                        f23 += 100.0f;
                                    } else {
                                        if (i16 == 1 && this.nextIcon == 0) {
                                            if (f23 >= 100.0f) {
                                                interpolation = CubicBezierInterpolator.EASE_BOTH.getInterpolation(f23 / 100.0f) * (-5.0f);
                                            } else if (f23 < 484.0f) {
                                                interpolation = (CubicBezierInterpolator.EASE_BOTH.getInterpolation((f23 - 100.0f) / 384.0f) * 95.0f) - 5.0f;
                                            }
                                        }
                                        canvas3.rotate(f92);
                                        i17 = this.currentIcon;
                                        if ((i17 != 0 && i17 != 1) || i17 == 4) {
                                            canvas3.scale(f17, f17);
                                        }
                                        Theme.playPauseAnimator.draw(canvas3, this.paint2, f23);
                                        canvas3.scale(1.0f, -1.0f);
                                        Theme.playPauseAnimator.draw(canvas3, this.paint2, f23);
                                        canvas3.restore();
                                    }
                                    f92 = interpolation;
                                    canvas3.rotate(f92);
                                    i17 = this.currentIcon;
                                    if (i17 != 0) {
                                        canvas3.scale(f17, f17);
                                        Theme.playPauseAnimator.draw(canvas3, this.paint2, f23);
                                        canvas3.scale(1.0f, -1.0f);
                                        Theme.playPauseAnimator.draw(canvas3, this.paint2, f23);
                                        canvas3.restore();
                                    } else {
                                        canvas3.scale(f17, f17);
                                        Theme.playPauseAnimator.draw(canvas3, this.paint2, f23);
                                        canvas3.scale(1.0f, -1.0f);
                                        Theme.playPauseAnimator.draw(canvas3, this.paint2, f23);
                                        canvas3.restore();
                                    }
                                } else {
                                    i14 = 1;
                                    f22 = i442 == 1 ? 1.0f : 0.0f;
                                    i15 = this.nextIcon;
                                    if (i15 == 0) {
                                        this.paint2.setAlpha(255);
                                        applyShaderMatrix(true);
                                        canvas3.save();
                                        canvas3.translate(rect.centerX() + (AndroidUtilities.dp(1.0f) * (1.0f - f22)), rect.centerY());
                                        f23 = f22 * 500.0f;
                                        i16 = this.currentIcon;
                                        if (i16 == 1) {
                                        }
                                        if (i16 == 0) {
                                            if (i16 == 1) {
                                                if (f23 >= 100.0f) {
                                                }
                                                f92 = interpolation;
                                            }
                                            canvas3.rotate(f92);
                                            i17 = this.currentIcon;
                                            if (i17 != 0) {
                                            }
                                        }
                                    } else {
                                        this.paint2.setAlpha(255);
                                        applyShaderMatrix(true);
                                        canvas3.save();
                                        canvas3.translate(rect.centerX() + (AndroidUtilities.dp(1.0f) * (1.0f - f22)), rect.centerY());
                                        f23 = f22 * 500.0f;
                                        i16 = this.currentIcon;
                                        if (i16 == 1) {
                                        }
                                        if (i16 == 0) {
                                        }
                                    }
                                }
                            } else {
                                i14 = 1;
                            }
                            if (i13 != i14) {
                            }
                            i15 = this.nextIcon;
                            if (i15 == 0) {
                            }
                        }
                    }
                    if (this.currentIcon == 6 || this.nextIcon == 6) {
                        applyShaderMatrix(false);
                        if (this.currentIcon == 6) {
                            float f93 = this.transitionProgress;
                            if (f93 > 0.5f) {
                                float f94 = (f93 - 0.5f) / 0.5f;
                                fMin2 = 1.0f - Math.min(1.0f, f94 / 0.5f);
                                f26 = f94 > 0.5f ? (f94 - 0.5f) / 0.5f : 0.0f;
                            } else {
                                f26 = 0.0f;
                                fMin2 = 1.0f;
                            }
                            this.paint.setAlpha(255);
                            f24 = f26;
                        } else {
                            int i45 = this.nextIcon;
                            Paint paint2 = this.paint;
                            if (i45 != 6) {
                                paint2.setAlpha((int) ((1.0f - this.transitionProgress) * 255.0f));
                            } else {
                                paint2.setAlpha(255);
                            }
                            fMin2 = 0.0f;
                            f24 = 1.0f;
                        }
                        int iDp6 = AndroidUtilities.dp(7.0f) + iCenterY3;
                        int iDp7 = iCenterX - AndroidUtilities.dp(3.0f);
                        if (fMin2 >= 1.0f) {
                            i18 = iDp6;
                            f25 = f17;
                            i19 = iDp7;
                            canvas.drawLine(iDp7 - AndroidUtilities.dp(6.0f), iDp6 - AndroidUtilities.dp(6.0f), iDp7 - (AndroidUtilities.dp(6.0f) * fMin2), iDp6 - (AndroidUtilities.dp(6.0f) * fMin2), this.paint);
                        } else {
                            i18 = iDp6;
                            f25 = f17;
                            i19 = iDp7;
                        }
                        if (f24 > 0.0f) {
                            float f95 = i19;
                            float f96 = i18;
                            canvas.drawLine(f95, f96, f95 + (AndroidUtilities.dp(12.0f) * f24), f96 - (AndroidUtilities.dp(12.0f) * f24), this.paint);
                        }
                    } else {
                        f25 = f17;
                    }
                    if (drawable3 == null || drawable3 == drawable) {
                        canvas2 = canvas;
                        i20 = iCenterX;
                        i21 = iCenterY3;
                        f27 = f19;
                    } else {
                        int i46 = this.currentIcon;
                        int i47 = i46 == this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f);
                        if (isCustomFileIcon(i46)) {
                            canvas2 = canvas;
                            i20 = iCenterX;
                            i21 = iCenterY3;
                            float f97 = f19;
                            drawTintedDrawable(canvas2, drawable3, i20, i21, f97, i47);
                            f27 = f97;
                        } else {
                            canvas2 = canvas;
                            Drawable drawable5 = drawable3;
                            i20 = iCenterX;
                            i21 = iCenterY3;
                            f27 = f19;
                            drawable5.setColorFilter(this.colorFilter);
                            drawable5.setAlpha(i47);
                            int intrinsicWidth = ((int) (drawable5.getIntrinsicWidth() * f27)) / 2;
                            int intrinsicHeight = ((int) (drawable5.getIntrinsicHeight() * f27)) / 2;
                            drawable5.setBounds(i20 - intrinsicWidth, i21 - intrinsicHeight, intrinsicWidth + i20, i21 + intrinsicHeight);
                            drawable5.draw(canvas2);
                        }
                    }
                    if (drawable != null) {
                        int i48 = this.currentIcon;
                        int i49 = this.nextIcon;
                        int i50 = i48 == i49 ? 255 : (int) (this.transitionProgress * 255.0f);
                        if (isCustomFileIcon(i49)) {
                            f28 = f25;
                            drawTintedDrawable(canvas2, drawable, i20, i21, f28, i50);
                        } else {
                            f28 = f25;
                            drawable.setColorFilter(this.colorFilter);
                            drawable.setAlpha(i50);
                            int intrinsicWidth2 = ((int) (drawable.getIntrinsicWidth() * f28)) / 2;
                            int intrinsicHeight2 = ((int) (drawable.getIntrinsicHeight() * f28)) / 2;
                            drawable.setBounds(i20 - intrinsicWidth2, i21 - intrinsicHeight2, intrinsicWidth2 + i20, intrinsicHeight2 + i21);
                            drawable.draw(canvas2);
                        }
                    } else {
                        f28 = f25;
                    }
                    if (pathArr4 != null && pathArr4 != pathArr3) {
                        int iDp8 = AndroidUtilities.dp(24.0f);
                        this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                        this.paint2.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                        applyShaderMatrix(true);
                        canvas2.save();
                        canvas2.translate(i20, i21);
                        canvas2.scale(f27, f27);
                        float f98 = (-iDp8) / 2;
                        canvas2.translate(f98, f98);
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
                        int iDp9 = AndroidUtilities.dp(24.0f);
                        int i51 = this.currentIcon == this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f);
                        this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                        this.paint2.setAlpha(i51);
                        applyShaderMatrix(true);
                        canvas2.save();
                        canvas2.translate(i20, i21);
                        canvas2.scale(f28, f28);
                        float f99 = (-iDp9) / 2;
                        canvas2.translate(f99, f99);
                        Path path4 = pathArr3[0];
                        if (path4 != null) {
                            canvas2.drawPath(path4, this.paint2);
                        }
                        if (pathArr3.length >= 3 && (path = pathArr3[2]) != null) {
                            canvas2.drawPath(path, this.paint);
                        }
                        Path path5 = pathArr3[1];
                        if (path5 != null) {
                            Paint paint3 = this.backPaint;
                            if (i51 != 255) {
                                int alpha = paint3.getAlpha();
                                this.backPaint.setAlpha((int) (alpha * (i51 / 255.0f)));
                                canvas2.drawPath(pathArr3[1], this.backPaint);
                                this.backPaint.setAlpha(alpha);
                            } else {
                                canvas2.drawPath(path5, paint3);
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
                    i22 = this.currentIcon;
                    if (i22 == 3 || i22 == 14 || ((i22 == 4 && this.nextIcon == 14) || i22 == 10 || i22 == 13)) {
                        float f100 = this.downloadRadOffset + ((360 * j) / 2500.0f);
                        this.downloadRadOffset = f100;
                        this.downloadRadOffset = getCircleValue(f100);
                        if (this.nextIcon != 2) {
                            float f101 = this.downloadProgress;
                            float f102 = this.downloadProgressAnimationStart;
                            float f103 = f101 - f102;
                            if (f103 > 0.0f) {
                                float f104 = this.downloadProgressTime + j;
                                this.downloadProgressTime = f104;
                                if (f104 >= 200.0f) {
                                    this.animatedDownloadProgress = f101;
                                    this.downloadProgressAnimationStart = f101;
                                    this.downloadProgressTime = 0.0f;
                                } else {
                                    this.animatedDownloadProgress = f102 + (f103 * this.interpolator.getInterpolation(f104 / 200.0f));
                                }
                            }
                        }
                        invalidateSelf();
                    }
                    if (this.animatingTransition) {
                        float f105 = this.transitionProgress;
                        if (f105 < 1.0f) {
                            float f106 = f105 + (j / this.transitionAnimationTime);
                            this.transitionProgress = f106;
                            if (f106 >= 1.0f) {
                                this.currentIcon = this.nextIcon;
                                this.transitionProgress = 1.0f;
                                this.animatingTransition = false;
                            }
                            invalidateSelf();
                        }
                    }
                    if (i >= 1) {
                        canvas2.restoreToCount(i);
                        return;
                    }
                    return;
                }
                pathArr = null;
            }
            pathArr2 = null;
            if (i4 == 5) {
            }
            pathArr3 = pathArr;
            pathArr4 = pathArr2;
            if (isCustomFileIcon(i4)) {
            }
            if (isCustomFileIcon(this.currentIcon)) {
            }
            i5 = this.nextIcon;
            if (i5 == 7) {
            }
            if (i5 == 8) {
            }
            drawable = customIconDrawable;
            Drawable drawable42 = customIconDrawable2;
            if (this.currentIcon == 9) {
                applyShaderMatrix(false);
                this.paint.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
                int iDp32 = AndroidUtilities.dp(7.0f) + iCenterY3;
                int iDp42 = iCenterX - AndroidUtilities.dp(3.0f);
                if (this.currentIcon == this.nextIcon) {
                }
                float f832 = iDp42;
                float f842 = iDp32;
                rect = bounds;
                drawable3 = drawable2;
                canvas3.drawLine(iDp42 - AndroidUtilities.dp(6.0f), iDp32 - AndroidUtilities.dp(6.0f), f832, f842, this.paint);
                canvas3 = canvas;
                canvas3.drawLine(f832, f842, iDp42 + AndroidUtilities.dp(12.0f), iDp32 - AndroidUtilities.dp(12.0f), this.paint);
                if (this.currentIcon != this.nextIcon) {
                }
            }
            if (this.currentIcon == 12) {
                applyShaderMatrix(false);
                i6 = this.currentIcon;
                i7 = this.nextIcon;
                if (i6 != i7) {
                }
                this.paint.setAlpha(i6 != i7 ? 255 : (int) (f18 * 255.0f));
                AndroidUtilities.dp(7.0f);
                AndroidUtilities.dp(3.0f);
                if (this.currentIcon != this.nextIcon) {
                }
                float fDp182 = AndroidUtilities.dp(7.0f) * this.scale;
                float f852 = iCenterX;
                float f862 = f852 - fDp182;
                float f872 = iCenterY3;
                float f882 = f872 - fDp182;
                float f892 = f852 + fDp182;
                float f902 = fDp182 + f872;
                f19 = f16;
                i9 = i8;
                canvas3.drawLine(f862, f882, f892, f902, this.paint);
                canvas3 = canvas;
                canvas3.drawLine(f892, f882, f862, f902, this.paint);
                if (this.currentIcon != this.nextIcon) {
                }
            }
            if (this.currentIcon == i9) {
                applyShaderMatrix(false);
                i10 = this.currentIcon;
                i11 = this.nextIcon;
                if (i10 != i11) {
                }
                this.textPaint.setAlpha((int) (f20 * 255.0f));
                int iDp52 = AndroidUtilities.dp(5.0f) + iCenterY3;
                int i432 = iCenterX - (this.percentStringWidth / 2);
                f21 = 5.0f;
                if (this.currentIcon != this.nextIcon) {
                }
                i12 = (int) (this.animatedDownloadProgress * 100.0f);
                if (this.percentString != null) {
                    this.lastPercent = i12;
                    this.percentString = String.format("%d%%", Integer.valueOf(i12));
                    this.percentStringWidth = (int) Math.ceil(this.textPaint.measureText(r3));
                    canvas3.drawText(this.percentString, i432, iDp52, this.textPaint);
                    if (this.currentIcon != this.nextIcon) {
                    }
                }
            }
            i13 = this.currentIcon;
            if (i13 == 0) {
                if (i13 != 0) {
                    if (i13 != 1) {
                    }
                    if (i13 != i14) {
                    }
                    i15 = this.nextIcon;
                    if (i15 == 0) {
                    }
                }
            }
            if (this.currentIcon == 6) {
                applyShaderMatrix(false);
                if (this.currentIcon == 6) {
                }
                int iDp62 = AndroidUtilities.dp(7.0f) + iCenterY3;
                int iDp72 = iCenterX - AndroidUtilities.dp(3.0f);
                if (fMin2 >= 1.0f) {
                }
                if (f24 > 0.0f) {
                }
            }
            if (drawable3 == null) {
                canvas2 = canvas;
                i20 = iCenterX;
                i21 = iCenterY3;
                f27 = f19;
            }
            if (drawable != null) {
            }
            if (pathArr4 != null) {
                int iDp82 = AndroidUtilities.dp(24.0f);
                this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                this.paint2.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                applyShaderMatrix(true);
                canvas2.save();
                canvas2.translate(i20, i21);
                canvas2.scale(f27, f27);
                float f982 = (-iDp82) / 2;
                canvas2.translate(f982, f982);
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
            i22 = this.currentIcon;
            if (i22 == 3) {
                float f1002 = this.downloadRadOffset + ((360 * j) / 2500.0f);
                this.downloadRadOffset = f1002;
                this.downloadRadOffset = getCircleValue(f1002);
                if (this.nextIcon != 2) {
                }
                invalidateSelf();
            }
            if (this.animatingTransition) {
            }
            if (i >= 1) {
            }
        }
        applyShaderMatrix(z);
        int i52 = this.nextIcon;
        if (i52 == 2) {
            if (this.drawProgressCircle) {
                float f107 = this.transitionProgress;
                if (f107 <= 0.5f) {
                    float f108 = 1.0f - (f107 / 0.5f);
                    fDp5 = AndroidUtilities.dp(7.0f) * f108 * this.scale;
                    i28 = (int) (f108 * 255.0f);
                } else {
                    fDp5 = f;
                    i28 = 0;
                }
                iMin = i28;
                f29 = 360.0f;
                fCenterX = f;
                f33 = fCenterX;
                f32 = f33;
                f31 = 1.0f;
            }
            i3 = this.currentIcon;
            if (i3 != this.nextIcon) {
            }
            i4 = this.nextIcon;
            if (i4 != i2) {
            }
            pathArr2 = null;
            if (i4 == 5) {
            }
            pathArr3 = pathArr;
            pathArr4 = pathArr2;
            if (isCustomFileIcon(i4)) {
            }
            if (isCustomFileIcon(this.currentIcon)) {
            }
            i5 = this.nextIcon;
            if (i5 == 7) {
            }
            if (i5 == 8) {
            }
            drawable = customIconDrawable;
            Drawable drawable422 = customIconDrawable2;
            if (this.currentIcon == 9) {
            }
            if (this.currentIcon == 12) {
            }
            if (this.currentIcon == i9) {
            }
            i13 = this.currentIcon;
            if (i13 == 0) {
            }
            if (this.currentIcon == 6) {
            }
            if (drawable3 == null) {
            }
            if (drawable != null) {
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
            i22 = this.currentIcon;
            if (i22 == 3) {
            }
            if (this.animatingTransition) {
            }
            if (i >= 1) {
            }
        } else {
            if (i52 == i2 || i52 == 0 || i52 == 1 || i52 == 5 || isCustomFileIcon(i52) || (i24 = this.nextIcon) == 8 || i24 == 9 || i24 == 7 || i24 == 6) {
                f29 = 360.0f;
                int i53 = this.nextIcon;
                float fMin3 = this.transitionProgress;
                if (i53 == 6) {
                    f30 = 1.0f;
                    fMin3 = Math.min(1.0f, fMin3 / 0.5f);
                } else {
                    f30 = 1.0f;
                }
                f31 = f30 - fMin3;
                float fCenterX3 = bounds.centerX();
                float fCenterY = bounds.centerY();
                float fDp19 = AndroidUtilities.dp(7.0f) * f31 * this.scale;
                iMin = (int) (Math.min(f30, f31 * 2.0f) * 255.0f);
                f32 = fCenterY;
                fCenterX = fCenterX3;
                fDp5 = fDp19;
                f33 = f;
            } else if (i24 == 4) {
                f31 = 1.0f - this.transitionProgress;
                fDp5 = AndroidUtilities.dp(7.0f) * this.scale;
                int i54 = (int) (f31 * 255.0f);
                if (this.currentIcon == 14) {
                    fCenterX = bounds.left;
                    iCenterY2 = bounds.top;
                } else {
                    fCenterX = bounds.centerX();
                    iCenterY2 = bounds.centerY();
                }
                iMin = i54;
                f29 = 360.0f;
                f33 = f;
                f32 = iCenterY2;
            } else if (i24 == 14 || i24 == 3) {
                float f109 = this.transitionProgress;
                float f110 = 1.0f - f109;
                if (this.currentIcon == 4) {
                    f35 = f109;
                    f34 = f;
                } else {
                    f34 = f110 * 45.0f;
                    f35 = 1.0f;
                }
                float fDp20 = AndroidUtilities.dp(7.0f) * this.scale;
                int i55 = (int) (f109 * 255.0f);
                f29 = 360.0f;
                if (this.nextIcon == 14) {
                    fCenterX2 = bounds.left;
                    iCenterY = bounds.top;
                } else {
                    fCenterX2 = bounds.centerX();
                    iCenterY = bounds.centerY();
                }
                f32 = iCenterY;
                iMin = i55;
                f31 = f35;
                fDp5 = fDp20;
                f33 = f34;
                fCenterX = fCenterX2;
            } else {
                fDp5 = AndroidUtilities.dp(7.0f) * this.scale;
                f29 = 360.0f;
                fCenterX = f;
                f33 = fCenterX;
                f32 = f33;
                f31 = 1.0f;
                f30 = 1.0f;
                iMin = 255;
            }
            if (f31 != f30) {
                canvas3.save();
                canvas3.scale(f31, f31, fCenterX, f32);
            }
            if (f33 != f) {
                canvas3.save();
                canvas3.rotate(f33, iCenterX, iCenterY3);
            }
            if (iMin == 0) {
                float f111 = iMin;
                this.paint.setAlpha((int) (this.overrideAlpha * f111));
                if (this.currentIcon == 14 || this.nextIcon == 14) {
                    f36 = 4.0f;
                    this.paint3.setAlpha((int) (f111 * this.overrideAlpha));
                    this.rect.set(iCenterX - AndroidUtilities.dp(3.5f), iCenterY3 - AndroidUtilities.dp(3.5f), AndroidUtilities.dp(3.5f) + iCenterX, AndroidUtilities.dp(3.5f) + iCenterY3);
                    canvas3.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint3);
                } else {
                    float f112 = iCenterX;
                    float f113 = f112 - fDp5;
                    float f114 = iCenterY3;
                    float f115 = f114 - fDp5;
                    float f116 = f112 + fDp5;
                    float f117 = f114 + fDp5;
                    f36 = 4.0f;
                    canvas3.drawLine(f113, f115, f116, f117, this.paint);
                    canvas3 = canvas;
                    canvas3.drawLine(f116, f115, f113, f117, this.paint);
                }
            } else {
                f36 = 4.0f;
            }
            if (f33 != f) {
                canvas3.restore();
            }
            if (f31 != f30) {
                canvas3.restore();
            }
            i25 = this.currentIcon;
            if ((i25 != 3 || i25 == 14 || (i25 == 4 && ((i27 = this.nextIcon) == 14 || i27 == 3))) && iMin != 0 && this.drawProgressCircle) {
                float fMax3 = Math.max(f36, this.animatedDownloadProgress * f29);
                int iDp10 = AndroidUtilities.dp(this.isMini ? 2.0f : f36);
                this.rect.set(bounds.left + iDp10, bounds.top + iDp10, bounds.right - iDp10, bounds.bottom - iDp10);
                i26 = this.currentIcon;
                if (i26 == 14 || (i26 == 4 && this.nextIcon == 14)) {
                    this.paint.setAlpha((int) (iMin * 0.15f * this.overrideAlpha));
                    canvas3.drawArc(this.rect, 0.0f, 360.0f, false, this.paint);
                    this.paint.setAlpha(iMin);
                }
                canvas3 = canvas;
                canvas3.drawArc(this.rect, this.downloadRadOffset, fMax3, false, this.paint);
            }
            i3 = this.currentIcon;
            if (i3 != this.nextIcon) {
            }
            i4 = this.nextIcon;
            if (i4 != i2) {
            }
            pathArr2 = null;
            if (i4 == 5) {
            }
            pathArr3 = pathArr;
            pathArr4 = pathArr2;
            if (isCustomFileIcon(i4)) {
            }
            if (isCustomFileIcon(this.currentIcon)) {
            }
            i5 = this.nextIcon;
            if (i5 == 7) {
            }
            if (i5 == 8) {
            }
            drawable = customIconDrawable;
            Drawable drawable4222 = customIconDrawable2;
            if (this.currentIcon == 9) {
            }
            if (this.currentIcon == 12) {
            }
            if (this.currentIcon == i9) {
            }
            i13 = this.currentIcon;
            if (i13 == 0) {
            }
            if (this.currentIcon == 6) {
            }
            if (drawable3 == null) {
            }
            if (drawable != null) {
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
            i22 = this.currentIcon;
            if (i22 == 3) {
            }
            if (this.animatingTransition) {
            }
            if (i >= 1) {
            }
        }
        f30 = 1.0f;
        if (f31 != f30) {
        }
        if (f33 != f) {
        }
        if (iMin == 0) {
        }
        if (f33 != f) {
        }
        if (f31 != f30) {
        }
        i25 = this.currentIcon;
        if (i25 != 3) {
            float fMax32 = Math.max(f36, this.animatedDownloadProgress * f29);
            int iDp102 = AndroidUtilities.dp(this.isMini ? 2.0f : f36);
            this.rect.set(bounds.left + iDp102, bounds.top + iDp102, bounds.right - iDp102, bounds.bottom - iDp102);
            i26 = this.currentIcon;
            if (i26 == 14) {
                this.paint.setAlpha((int) (iMin * 0.15f * this.overrideAlpha));
                canvas3.drawArc(this.rect, 0.0f, 360.0f, false, this.paint);
                this.paint.setAlpha(iMin);
                canvas3 = canvas;
                canvas3.drawArc(this.rect, this.downloadRadOffset, fMax32, false, this.paint);
            }
        } else {
            float fMax322 = Math.max(f36, this.animatedDownloadProgress * f29);
            int iDp1022 = AndroidUtilities.dp(this.isMini ? 2.0f : f36);
            this.rect.set(bounds.left + iDp1022, bounds.top + iDp1022, bounds.right - iDp1022, bounds.bottom - iDp1022);
            i26 = this.currentIcon;
            if (i26 == 14) {
            }
        }
        i3 = this.currentIcon;
        if (i3 != this.nextIcon) {
        }
        i4 = this.nextIcon;
        if (i4 != i2) {
        }
        pathArr2 = null;
        if (i4 == 5) {
        }
        pathArr3 = pathArr;
        pathArr4 = pathArr2;
        if (isCustomFileIcon(i4)) {
        }
        if (isCustomFileIcon(this.currentIcon)) {
        }
        i5 = this.nextIcon;
        if (i5 == 7) {
        }
        if (i5 == 8) {
        }
        drawable = customIconDrawable;
        Drawable drawable42222 = customIconDrawable2;
        if (this.currentIcon == 9) {
        }
        if (this.currentIcon == 12) {
        }
        if (this.currentIcon == i9) {
        }
        i13 = this.currentIcon;
        if (i13 == 0) {
        }
        if (this.currentIcon == 6) {
        }
        if (drawable3 == null) {
        }
        if (drawable != null) {
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
        i22 = this.currentIcon;
        if (i22 == 3) {
        }
        if (this.animatingTransition) {
        }
        if (i >= 1) {
        }
    }

    private Drawable getCustomIconDrawable(int i) {
        Drawable pluginFileIconDrawable;
        if (i == 16) {
            pluginFileIconDrawable = Theme.chat_pluginIcon;
        } else if (i == 17) {
            pluginFileIconDrawable = Theme.chat_settingsIcon;
        } else if (i == 18) {
            pluginFileIconDrawable = Theme.chat_stickersIcon;
        } else {
            pluginFileIconDrawable = PluginsController.getPluginFileIconDrawable(i);
        }
        if (pluginFileIconDrawable == null) {
            return null;
        }
        Drawable[] drawableArr = this.customIconDrawables.get(i);
        if (drawableArr == null || drawableArr[0] != pluginFileIconDrawable) {
            Drawable.ConstantState constantState = pluginFileIconDrawable.getConstantState();
            drawableArr = new Drawable[]{pluginFileIconDrawable, constantState != null ? constantState.newDrawable().mutate() : pluginFileIconDrawable};
            this.customIconDrawables.put(i, drawableArr);
        }
        return drawableArr[1];
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return AndroidUtilities.dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return AndroidUtilities.dp(48.0f);
    }
}
