package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextPaint;
import android.view.View;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class CheckBoxBase {
    private static Paint eraser;
    private static Paint forbidPaint;
    private static Paint paint;
    public long animationDuration;
    private boolean attachedToWindow;
    private int background2ColorKey;
    private int backgroundColor;
    private int backgroundColorKey;
    private Paint backgroundPaint;
    private int backgroundType;
    private ObjectAnimator checkAnimator;
    private Paint checkPaint;
    private String checkedText;
    private GenericProvider circlePaintProvider;
    private boolean cutCheck;
    private boolean drawUnchecked;
    private boolean forbidden;
    private boolean isChecked;
    private Theme.MessageDrawable messageDrawable;
    private View parentView;
    private float progress;
    private ProgressDelegate progressDelegate;
    private Theme.ResourcesProvider resourcesProvider;
    private float size;
    private int strokeBackgroundKey;
    private int strokeBackgroundWidth;
    private TextPaint textPaint;
    private boolean useDefaultCheck;
    public android.graphics.Rect bounds = new android.graphics.Rect();
    private RectF rect = new RectF();
    public float checkScale = 1.0f;
    private float alpha = 1.0f;
    private Path path = new Path();
    private boolean enabled = true;
    private float backgroundAlpha = 1.0f;
    private int checkColorKey = Theme.key_checkboxCheck;

    /* JADX INFO: loaded from: classes7.dex */
    public interface ProgressDelegate {
        void setProgress(float f);
    }

    public void setAlpha(float f) {
        this.alpha = f;
        invalidate();
    }

    public void setCuttingCheck(boolean z) {
        if (this.cutCheck == z) {
            return;
        }
        this.cutCheck = z;
        this.checkPaint.setXfermode(z ? new PorterDuffXfermode(PorterDuff.Mode.CLEAR) : null);
    }

    public CheckBoxBase(View view, int i, Theme.ResourcesProvider resourcesProvider) {
        int i2 = Theme.key_chat_serviceBackground;
        this.backgroundColorKey = i2;
        this.background2ColorKey = i2;
        this.strokeBackgroundKey = Theme.key_dialogBackground;
        this.strokeBackgroundWidth = -1;
        this.drawUnchecked = true;
        this.circlePaintProvider = new GenericProvider() { // from class: org.telegram.ui.Components.CheckBoxBase$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return CheckBoxBase.paint;
            }
        };
        this.animationDuration = 200L;
        this.resourcesProvider = resourcesProvider;
        this.parentView = view;
        this.size = i;
        if (paint == null) {
            paint = new Paint(1);
            Paint paint2 = new Paint(1);
            eraser = paint2;
            paint2.setColor(0);
            eraser.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        Paint paint3 = new Paint(1);
        this.checkPaint = paint3;
        paint3.setStrokeCap(Paint.Cap.ROUND);
        Paint paint4 = this.checkPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint4.setStyle(style);
        this.checkPaint.setStrokeJoin(Paint.Join.ROUND);
        this.checkPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        Paint paint5 = new Paint(1);
        this.backgroundPaint = paint5;
        paint5.setStyle(style);
        this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.2f));
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public void onAttachedToWindow() {
        this.attachedToWindow = true;
    }

    public void onDetachedFromWindow() {
        this.attachedToWindow = false;
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        android.graphics.Rect rect = this.bounds;
        rect.left = i;
        rect.top = i2;
        rect.right = i + i3;
        rect.bottom = i2 + i4;
    }

    public void setDrawUnchecked(boolean z) {
        this.drawUnchecked = z;
    }

    public boolean getDrawUnchecked() {
        return this.drawUnchecked;
    }

    @Keep
    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        invalidate();
        ProgressDelegate progressDelegate = this.progressDelegate;
        if (progressDelegate != null) {
            progressDelegate.setProgress(f);
        }
    }

    public void setForbidden(boolean z) {
        if (this.forbidden == z) {
            return;
        }
        this.forbidden = z;
        invalidate();
    }

    private void invalidate() {
        if (this.parentView.getParent() != null) {
            ((View) this.parentView.getParent()).invalidate();
        }
        this.parentView.invalidate();
    }

    public void setProgressDelegate(ProgressDelegate progressDelegate) {
        this.progressDelegate = progressDelegate;
    }

    @Keep
    public float getProgress() {
        return this.progress;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setBackgroundType(int i) {
        this.backgroundType = i;
        if (i == 12 || i == 13) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
            return;
        }
        if (i == 4 || i == 5) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.9f));
            if (i == 5) {
                this.checkPaint.setStrokeWidth(AndroidUtilities.dp(1.5f));
                return;
            }
            return;
        }
        if (i == 3) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        } else if (i != 0) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.5f));
        }
    }

    public void cancelCheckAnimator() {
        ObjectAnimator objectAnimator = this.checkAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.checkAnimator = null;
        }
    }

    private void animateToCheckedState(boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "progress", z ? 1.0f : 0.0f);
        this.checkAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.CheckBoxBase.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator.equals(CheckBoxBase.this.checkAnimator)) {
                    CheckBoxBase.this.checkAnimator = null;
                }
                if (CheckBoxBase.this.isChecked) {
                    return;
                }
                CheckBoxBase.this.checkedText = null;
            }
        });
        this.checkAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.checkAnimator.setDuration(this.animationDuration);
        this.checkAnimator.start();
    }

    public void setColor(int i, int i2, int i3) {
        this.backgroundColorKey = i;
        this.background2ColorKey = i2;
        this.checkColorKey = i3;
        invalidate();
    }

    public void setStrokeBackgroundColor(int i) {
        this.strokeBackgroundKey = i;
        invalidate();
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
        invalidate();
    }

    public void setBackgroundDrawable(Theme.MessageDrawable messageDrawable) {
        this.messageDrawable = messageDrawable;
    }

    public void setUseDefaultCheck(boolean z) {
        this.useDefaultCheck = z;
    }

    public void setBackgroundAlpha(float f) {
        this.backgroundAlpha = f;
    }

    public void setNum(int i) {
        if (i >= 0) {
            this.checkedText = _UrlKt.FRAGMENT_ENCODE_SET + (i + 1);
        } else if (this.checkAnimator == null) {
            this.checkedText = null;
        }
        invalidate();
    }

    public void setChecked(boolean z, boolean z2) {
        setChecked(-1, z, z2);
    }

    public void setChecked(int i, boolean z, boolean z2) {
        if (i >= 0) {
            this.checkedText = _UrlKt.FRAGMENT_ENCODE_SET + (i + 1);
            invalidate();
        }
        if (z == this.isChecked) {
            return;
        }
        this.isChecked = z;
        if (this.attachedToWindow && z2) {
            animateToCheckedState(z);
        } else {
            cancelCheckAnimator();
            setProgress(z ? 1.0f : 0.0f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:224:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float f;
        float fDp;
        float f2;
        int i;
        int i2;
        float f3;
        float f4;
        float f5;
        Canvas canvas2;
        int i3;
        float f6;
        int i4;
        int i5;
        float f7;
        char c;
        int i6;
        char c2;
        int i7;
        float f8;
        float f9;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float fDp2 = AndroidUtilities.dp(this.size / 2.0f);
        int i13 = this.backgroundType;
        if (i13 == 12 || i13 == 13) {
            fDp2 = AndroidUtilities.dp(10.0f);
        } else {
            if (i13 != 0 && i13 != 11) {
                f = fDp2;
                fDp = fDp2 - AndroidUtilities.dp(0.2f);
            }
            float f10 = !this.forbidden ? 1.0f : this.progress;
            f2 = f10 < 0.5f ? 1.0f : f10 / 0.5f;
            int iCenterX = this.bounds.centerX();
            int iCenterY = this.bounds.centerY();
            if (this.cutCheck) {
                i = iCenterX;
                i2 = iCenterY;
                f3 = 2.0f;
                f4 = 1.0f;
                f5 = f10;
                canvas2 = canvas;
            } else {
                float f11 = iCenterX;
                float f12 = iCenterY;
                f3 = 2.0f;
                i = iCenterX;
                i2 = iCenterY;
                f4 = 1.0f;
                f5 = f10;
                canvas2 = canvas;
                canvas2.saveLayerAlpha(f11 - f, f12 - f, f11 + f, f12 + f, 255, 31);
            }
            i3 = this.backgroundColorKey;
            if (i3 < 0) {
                if (this.drawUnchecked) {
                    int i14 = this.backgroundType;
                    if (i14 == 12 || i14 == 13) {
                        paint.setColor(getThemedColor(i3));
                        paint.setAlpha((int) (this.backgroundAlpha * 255.0f));
                        this.backgroundPaint.setColor(getThemedColor(this.checkColorKey));
                    } else if (i14 == 6 || i14 == 7) {
                        paint.setColor(getThemedColor(this.background2ColorKey));
                        this.backgroundPaint.setColor(getThemedColor(this.checkColorKey));
                    } else if (i14 == 10 || i14 == 14) {
                        this.backgroundPaint.setColor(getThemedColor(this.background2ColorKey));
                    } else {
                        paint.setColor((Theme.getServiceMessageColor() & 16777215) | 671088640);
                        this.backgroundPaint.setColor(getThemedColor(this.checkColorKey));
                    }
                } else {
                    Paint paint2 = this.backgroundPaint;
                    int i15 = this.background2ColorKey;
                    if (i15 < 0) {
                        i15 = this.checkColorKey;
                    }
                    paint2.setColor(AndroidUtilities.getOffsetColor(16777215, getThemedColor(i15), f5, this.backgroundAlpha));
                }
            } else if (this.drawUnchecked) {
                paint.setColor(Color.argb((int) (this.backgroundAlpha * 25.0f), 0, 0, 0));
                if (this.backgroundType == 8) {
                    this.backgroundPaint.setColor(getThemedColor(this.background2ColorKey));
                } else {
                    this.backgroundPaint.setColor(AndroidUtilities.getOffsetColor(-1, getThemedColor(this.checkColorKey), f5, this.backgroundAlpha));
                }
            } else if (this.backgroundColor != 0) {
                this.backgroundPaint.setColor(0);
            } else {
                Paint paint3 = this.backgroundPaint;
                int i16 = this.background2ColorKey;
                if (i16 < 0) {
                    i16 = this.checkColorKey;
                }
                paint3.setColor(AndroidUtilities.getOffsetColor(16777215, getThemedColor(i16), f5, this.backgroundAlpha));
            }
            if (this.drawUnchecked || (i12 = this.backgroundType) < 0 || i12 == 12 || i12 == 13) {
                f6 = 1.5f;
            } else if (i12 == 8 || i12 == 10 || i12 == 14) {
                f6 = 1.5f;
                canvas2.drawCircle(i, i2, f - AndroidUtilities.dp(1.5f), this.backgroundPaint);
            } else if (i12 == 6 || i12 == 7) {
                float f13 = i;
                float f14 = i2;
                f6 = 1.5f;
                canvas2.drawCircle(f13, f14, f - AndroidUtilities.dp(f4), paint);
                canvas2.drawCircle(f13, f14, f - AndroidUtilities.dp(1.5f), this.backgroundPaint);
            } else {
                canvas2.drawCircle(i, i2, f, paint);
                f6 = 1.5f;
            }
            paint.setColor(getThemedColor(this.checkColorKey));
            i4 = this.backgroundType;
            if (i4 != -1 || i4 == 7 || i4 == 8 || i4 == 9 || i4 == 10 || i4 == 14) {
                i5 = 9;
                f7 = 0.0f;
                c = 0;
            } else if (i4 == 12 || i4 == 13) {
                i5 = 9;
                f7 = 0.0f;
                c = 0;
                this.backgroundPaint.setStyle(Paint.Style.FILL);
                Theme.MessageDrawable messageDrawable = this.messageDrawable;
                if (messageDrawable != null && messageDrawable.hasGradient()) {
                    Shader gradientShader = this.messageDrawable.getGradientShader();
                    Matrix matrix = this.messageDrawable.getMatrix();
                    matrix.reset();
                    this.messageDrawable.applyMatrixScale();
                    matrix.postTranslate(0.0f, (-this.messageDrawable.getTopY()) + this.bounds.top);
                    gradientShader.setLocalMatrix(matrix);
                    this.backgroundPaint.setShader(gradientShader);
                } else {
                    this.backgroundPaint.setShader(null);
                }
                canvas2.drawCircle(i, i2, (f - AndroidUtilities.dp(f4)) * this.backgroundAlpha, this.backgroundPaint);
                this.backgroundPaint.setStyle(Paint.Style.STROKE);
            } else if (i4 == 0 || i4 == 11) {
                i5 = 9;
                f7 = 0.0f;
                c = 0;
                canvas2.drawCircle(i, i2, f, this.backgroundPaint);
            } else {
                float f15 = i;
                float f16 = i2;
                this.rect.set(f15 - fDp, f16 - fDp, f15 + fDp, f16 + fDp);
                int i17 = this.backgroundType;
                if (i17 == 6) {
                    i9 = (int) ((-360.0f) * f5);
                    i10 = 0;
                } else if (i17 == 1) {
                    i9 = (int) ((-360.0f) * f5);
                    i10 = -90;
                } else {
                    int i18 = (int) (360.0f * f5);
                    if (LocaleController.isRTL) {
                        i18 = -i18;
                    }
                    i9 = i18;
                    i10 = 90;
                }
                if (i17 == 6) {
                    int themedColor = getThemedColor(this.strokeBackgroundKey);
                    int iAlpha = Color.alpha(themedColor);
                    this.backgroundPaint.setColor(themedColor);
                    this.backgroundPaint.setAlpha((int) (iAlpha * f5));
                    int i19 = i10;
                    i11 = i19;
                    f7 = 0.0f;
                    i5 = 9;
                    c = 0;
                    canvas2.drawArc(this.rect, i19, i9, false, this.backgroundPaint);
                    int themedColor2 = getThemedColor(Theme.key_chat_attachPhotoBackground);
                    int iAlpha2 = Color.alpha(themedColor2);
                    this.backgroundPaint.setColor(themedColor2);
                    this.backgroundPaint.setAlpha((int) (iAlpha2 * f5));
                } else {
                    i11 = i10;
                    f7 = 0.0f;
                    i5 = 9;
                    c = 0;
                }
                canvas2 = canvas;
                canvas2.drawArc(this.rect, i11, i9, false, this.backgroundPaint);
            }
            if (f2 > f7) {
                float f17 = f5 < 0.5f ? f7 : (f5 - 0.5f) / 0.5f;
                int i20 = this.backgroundType;
                if (i20 == i5) {
                    paint.setColor(getThemedColor(this.background2ColorKey));
                } else if (i20 == 11 || i20 == 6 || i20 == 7 || i20 == 10 || ((!this.drawUnchecked && this.backgroundColorKey >= 0) || i20 == 14)) {
                    paint.setColor(getThemedColor(this.backgroundColorKey));
                } else {
                    int i21 = this.backgroundColor;
                    if (i21 != 0) {
                        paint.setColor(i21);
                    } else {
                        paint.setColor(getThemedColor(this.enabled ? Theme.key_checkbox : Theme.key_checkboxDisabled));
                    }
                }
                if (this.forbidden) {
                    paint.setColor(this.backgroundPaint.getColor());
                } else if (this.alpha < f4) {
                    paint.setColor(ColorUtils.blendARGB(this.backgroundPaint.getColor(), paint.getColor(), this.alpha));
                }
                if (!this.useDefaultCheck && (i8 = this.checkColorKey) >= 0) {
                    this.checkPaint.setColor(getThemedColor(i8));
                } else {
                    this.checkPaint.setColor(getThemedColor(Theme.key_checkboxCheck));
                }
                if (this.alpha < f4 && Theme.isCurrentThemeDark()) {
                    this.checkPaint.setColor(ColorUtils.blendARGB(paint.getColor(), this.checkPaint.getColor(), this.alpha));
                }
                if (this.backgroundType != -1) {
                    float fDp3 = AndroidUtilities.dp(this.size) / f3;
                    int iSave = canvas2.save();
                    canvas2.translate(i - fDp3, i2 - fDp3);
                    i6 = -1;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, AndroidUtilities.dp(this.size), AndroidUtilities.dp(this.size), 255, 31);
                    Paint paint4 = (Paint) this.circlePaintProvider.provide(null);
                    int i22 = this.backgroundType;
                    if (i22 == 12 || i22 == 13) {
                        int alpha = paint4.getAlpha();
                        paint4.setAlpha((int) (f2 * 255.0f));
                        canvas2.drawCircle(fDp3, fDp3, f * f2, paint4);
                        if (paint4 != paint) {
                            paint4.setAlpha(alpha);
                        }
                    } else {
                        float fDp4 = f - AndroidUtilities.dp(0.5f);
                        canvas2.drawCircle(fDp3, fDp3, fDp4, paint4);
                        canvas2.drawCircle(fDp3, fDp3, fDp4 * (f4 - f2), eraser);
                    }
                    canvas2.restoreToCount(iSave);
                } else {
                    i6 = -1;
                }
                if (this.forbidden) {
                    if (forbidPaint == null) {
                        Paint paint5 = new Paint(1);
                        forbidPaint = paint5;
                        paint5.setStyle(Paint.Style.STROKE);
                        forbidPaint.setStrokeCap(Paint.Cap.ROUND);
                        forbidPaint.setStrokeJoin(Paint.Join.ROUND);
                        Paint paint6 = forbidPaint;
                        float fDp5 = AndroidUtilities.dp(0.66f);
                        float fDp6 = AndroidUtilities.dp(4.0f);
                        float[] fArr = new float[2];
                        fArr[c] = fDp5;
                        fArr[1] = fDp6;
                        paint6.setPathEffect(new DashPathEffect(fArr, f7));
                    }
                    forbidPaint.setStrokeWidth(AndroidUtilities.dp(1.66f));
                    forbidPaint.setColor(getThemedColor(Theme.key_switchTrack));
                    canvas2.drawCircle(i, i2, AndroidUtilities.dp(9.0f), forbidPaint);
                } else if (f17 != f7) {
                    if (this.checkedText != null) {
                        if (this.textPaint == null) {
                            i7 = 1;
                            TextPaint textPaint = new TextPaint(1);
                            this.textPaint = textPaint;
                            textPaint.setTypeface(AndroidUtilities.bold());
                        } else {
                            i7 = 1;
                        }
                        int length = this.checkedText.length();
                        if (length == 0 || length == i7 || length == 2) {
                            f8 = 14.0f;
                            f9 = 18.0f;
                        } else if (length != 3) {
                            f8 = 8.0f;
                            f9 = 15.75f;
                        } else {
                            f9 = 16.5f;
                            f8 = 10.0f;
                        }
                        this.textPaint.setTextSize(AndroidUtilities.dp(f8));
                        this.textPaint.setColor(getThemedColor(this.checkColorKey));
                        canvas2.save();
                        float f18 = i;
                        canvas2.scale(f17, f4, f18, i2);
                        String str = this.checkedText;
                        canvas2.drawText(str, f18 - (this.textPaint.measureText(str) / f3), AndroidUtilities.dp(f9), this.textPaint);
                        canvas2.restore();
                    } else {
                        this.path.reset();
                        int i23 = this.backgroundType;
                        float f19 = i23 == i6 ? 1.4f : i23 == 5 ? 0.8f : 1.0f;
                        float fDp7 = AndroidUtilities.dp(9.0f * f19) * f17;
                        float fDp8 = AndroidUtilities.dp(f19 * 4.0f) * f17;
                        int iDp = i - AndroidUtilities.dp(f6);
                        int iDp2 = AndroidUtilities.dp(4.0f) + i2;
                        float fSqrt = (float) Math.sqrt((fDp8 * fDp8) / f3);
                        float f20 = iDp;
                        float f21 = iDp2;
                        this.path.moveTo(f20 - fSqrt, f21 - fSqrt);
                        this.path.lineTo(f20, f21);
                        float fSqrt2 = (float) Math.sqrt((fDp7 * fDp7) / f3);
                        this.path.lineTo(f20 + fSqrt2, f21 - fSqrt2);
                        if (this.cutCheck || this.checkScale != 1.0f) {
                            canvas2.save();
                            float f22 = this.checkScale;
                            canvas2.scale(f22, f22, i, i2);
                            c2 = 1;
                        } else {
                            c2 = c;
                        }
                        canvas2.drawPath(this.path, this.checkPaint);
                        if (c2 != 0) {
                            canvas2.restore();
                        }
                    }
                }
            }
            if (this.cutCheck) {
                return;
            }
            canvas2.restore();
            return;
        }
        f = fDp2;
        fDp = f;
        if (!this.forbidden) {
        }
        if (f10 < 0.5f) {
        }
        int iCenterX2 = this.bounds.centerX();
        int iCenterY2 = this.bounds.centerY();
        if (this.cutCheck) {
        }
        i3 = this.backgroundColorKey;
        if (i3 < 0) {
        }
        if (this.drawUnchecked) {
            f6 = 1.5f;
        }
        paint.setColor(getThemedColor(this.checkColorKey));
        i4 = this.backgroundType;
        if (i4 != -1) {
            i5 = 9;
            f7 = 0.0f;
            c = 0;
        }
        if (f2 > f7) {
        }
        if (this.cutCheck) {
        }
    }

    public void setCirclePaintProvider(GenericProvider genericProvider) {
        this.circlePaintProvider = genericProvider;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
