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
import android.graphics.Rect;
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
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class CheckBoxBase {
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
    private GenericProvider<Void, Paint> circlePaintProvider;
    private float customRadius;
    private float customRadiusFactor;
    private boolean cutCheck;
    private boolean drawUnchecked;
    private boolean forbidden;
    private boolean isChecked;
    private MessageDrawable messageDrawable;
    private View parentView;
    private float progress;
    private ProgressDelegate progressDelegate;
    private Theme.ResourcesProvider resourcesProvider;
    private float size;
    private int strokeBackgroundKey;
    private int strokeBackgroundWidth;
    private TextPaint textPaint;
    private boolean useDefaultCheck;
    public Rect bounds = new Rect();
    private RectF rect = new RectF();
    public float checkScale = 1.0f;
    private float alpha = 1.0f;
    private Path path = new Path();
    private boolean enabled = true;
    private float backgroundAlpha = 1.0f;
    private int checkColorKey = Theme.key_checkboxCheck;

    public interface ProgressDelegate {
        void setProgress(float f);
    }

    public void setAlpha(float f) {
        if (this.alpha == f) {
            return;
        }
        this.alpha = f;
        invalidate();
    }

    public void setCuttingCheck(boolean z) {
        if (this.cutCheck == z) {
            return;
        }
        this.cutCheck = z;
        this.checkPaint.setXfermode(z ? new PorterDuffXfermode(PorterDuff.Mode.CLEAR) : null);
        invalidate();
    }

    public CheckBoxBase(View view, int i, Theme.ResourcesProvider resourcesProvider) {
        int i2 = Theme.key_chat_serviceBackground;
        this.backgroundColorKey = i2;
        this.background2ColorKey = i2;
        this.strokeBackgroundKey = Theme.key_dialogBackground;
        this.strokeBackgroundWidth = -1;
        this.customRadius = 0.0f;
        this.customRadiusFactor = 1.0f;
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
        }
        Paint paint2 = new Paint(1);
        this.checkPaint = paint2;
        paint2.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = this.checkPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint3.setStyle(style);
        this.checkPaint.setStrokeJoin(Paint.Join.ROUND);
        this.checkPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        Paint paint4 = new Paint(1);
        this.backgroundPaint = paint4;
        paint4.setStyle(style);
        this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.2f));
    }

    public void setSize(float f) {
        if (this.size == f) {
            return;
        }
        this.size = f;
        invalidate();
    }

    public void setParentView(View view) {
        this.parentView = view;
    }

    public View getParentView() {
        return this.parentView;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        if (this.resourcesProvider == resourcesProvider) {
            return;
        }
        this.resourcesProvider = resourcesProvider;
        invalidate();
    }

    public void onAttachedToWindow() {
        this.attachedToWindow = true;
    }

    public void onDetachedFromWindow() {
        this.attachedToWindow = false;
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        int i5 = i3 + i;
        int i6 = i4 + i2;
        Rect rect = this.bounds;
        if (rect.left == i && rect.top == i2 && rect.right == i5 && rect.bottom == i6) {
            return;
        }
        rect.left = i;
        rect.top = i2;
        rect.right = i5;
        rect.bottom = i6;
        invalidate();
    }

    public void setCustomRadius(float f) {
        if (this.customRadius == f) {
            return;
        }
        this.customRadius = f;
        invalidate();
    }

    public void setCustomRadiusFactor(float f) {
        if (this.customRadiusFactor == f) {
            return;
        }
        this.customRadiusFactor = f;
        invalidate();
    }

    public void setDrawUnchecked(boolean z) {
        if (this.drawUnchecked == z) {
            return;
        }
        this.drawUnchecked = z;
        invalidate();
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
        View view = this.parentView;
        if (view == null) {
            return;
        }
        if (view.getParent() != null) {
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
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        invalidate();
    }

    public void setBackgroundType(int i) {
        if (this.backgroundType == i) {
            return;
        }
        this.backgroundType = i;
        if (i == 12 || i == 13) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
        } else if (i == 4 || i == 5) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.9f));
            if (i == 5) {
                this.checkPaint.setStrokeWidth(AndroidUtilities.dp(1.5f));
            }
        } else if (i == 3) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        } else if (i != 0) {
            this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.5f));
        }
        invalidate();
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
        if (this.backgroundColorKey == i && this.background2ColorKey == i2 && this.checkColorKey == i3) {
            return;
        }
        this.backgroundColorKey = i;
        this.background2ColorKey = i2;
        this.checkColorKey = i3;
        invalidate();
    }

    public void setStrokeBackgroundColor(int i) {
        if (this.strokeBackgroundKey == i) {
            return;
        }
        this.strokeBackgroundKey = i;
        invalidate();
    }

    public void setBackgroundColor(int i) {
        if (this.backgroundColor == i) {
            return;
        }
        this.backgroundColor = i;
        invalidate();
    }

    public void setBackgroundDrawable(MessageDrawable messageDrawable) {
        if (this.messageDrawable == messageDrawable) {
            return;
        }
        this.messageDrawable = messageDrawable;
        invalidate();
    }

    public void setUseDefaultCheck(boolean z) {
        if (this.useDefaultCheck == z) {
            return;
        }
        this.useDefaultCheck = z;
        invalidate();
    }

    public void setBackgroundAlpha(float f) {
        if (this.backgroundAlpha == f) {
            return;
        }
        this.backgroundAlpha = f;
        invalidate();
    }

    public void setNum(int i) {
        String str;
        if (i >= 0) {
            str = _UrlKt.FRAGMENT_ENCODE_SET + (i + 1);
        } else {
            str = this.checkAnimator != null ? this.checkedText : null;
        }
        String str2 = this.checkedText;
        if (str2 == null) {
            if (str == null) {
                return;
            }
        } else if (str2.equals(str)) {
            return;
        }
        this.checkedText = str;
        invalidate();
    }

    public void setChecked(boolean z, boolean z2) {
        setChecked(-1, z, z2);
    }

    public void setChecked(int i, boolean z, boolean z2) {
        if (i >= 0) {
            String str = _UrlKt.FRAGMENT_ENCODE_SET + (i + 1);
            String str2 = this.checkedText;
            if (str2 == null || !str2.equals(str)) {
                this.checkedText = str;
                invalidate();
            }
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

    /* JADX WARN: Removed duplicated region for block: B:135:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0646  */
    /* JADX WARN: Removed duplicated region for block: B:259:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x023c A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float f;
        float fDp;
        float f2;
        boolean z;
        float f3;
        int i;
        int i2;
        float f4;
        Canvas canvas2;
        int i3;
        float f5;
        int i4;
        int i5;
        float f6;
        int i6;
        int i7;
        int i8;
        float f7;
        float f8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float fDp2 = AndroidUtilities.dp(this.size / 2.0f);
        int i15 = this.backgroundType;
        if (i15 == 12 || i15 == 13) {
            fDp2 = AndroidUtilities.dp(10.0f);
        } else {
            if (i15 != 0 && i15 != 11) {
                f = fDp2;
                fDp = fDp2 - AndroidUtilities.dp(0.2f);
            }
            float f9 = !this.forbidden ? 1.0f : this.progress;
            f2 = f9 < 0.5f ? 1.0f : f9 / 0.5f;
            int iCenterX = this.bounds.centerX();
            int iCenterY = this.bounds.centerY();
            z = !this.cutCheck && f2 > 0.0f && f9 >= 0.5f && !this.forbidden && this.checkedText == null;
            if (z) {
                f3 = f9;
                i = iCenterX;
                i2 = iCenterY;
                f4 = 0.0f;
                canvas2 = canvas;
            } else {
                float f10 = iCenterX;
                float f11 = iCenterY;
                f3 = f9;
                f4 = 0.0f;
                i = iCenterX;
                i2 = iCenterY;
                canvas2 = canvas;
                canvas2.saveLayerAlpha(f10 - f, f11 - f, f10 + f, f11 + f, 255, 31);
            }
            i3 = this.backgroundColorKey;
            boolean z2 = this.drawUnchecked;
            if (i3 >= 0) {
                f5 = 1.0f;
                if (z2) {
                    paint.setColor(Color.argb((int) (this.backgroundAlpha * 25.0f), 0, 0, 0));
                    int i16 = this.backgroundType;
                    Paint paint2 = this.backgroundPaint;
                    if (i16 == 8) {
                        paint2.setColor(getThemedColor(this.background2ColorKey));
                    } else {
                        paint2.setColor(AndroidUtilities.getOffsetColor(-1, getThemedColor(this.checkColorKey), f3, this.backgroundAlpha));
                    }
                } else {
                    int i17 = this.backgroundColor;
                    Paint paint3 = this.backgroundPaint;
                    if (i17 != 0) {
                        paint3.setColor(0);
                    } else {
                        int i18 = this.background2ColorKey;
                        if (i18 < 0) {
                            i18 = this.checkColorKey;
                        }
                        paint3.setColor(AndroidUtilities.getOffsetColor(16777215, getThemedColor(i18), f3, this.backgroundAlpha));
                    }
                }
            } else if (z2) {
                int i19 = this.backgroundType;
                if (i19 == 12 || i19 == 13) {
                    paint.setColor(getThemedColor(i3));
                    paint.setAlpha((int) (this.backgroundAlpha * 255.0f));
                    this.backgroundPaint.setColor(getThemedColor(this.checkColorKey));
                } else if (i19 == 6 || i19 == 7) {
                    paint.setColor(getThemedColor(this.background2ColorKey));
                    this.backgroundPaint.setColor(getThemedColor(this.checkColorKey));
                } else if (i19 == 10 || i19 == 14) {
                    this.backgroundPaint.setColor(getThemedColor(this.background2ColorKey));
                } else {
                    paint.setColor((Theme.getServiceMessageColor() & 16777215) | 671088640);
                    this.backgroundPaint.setColor(getThemedColor(this.checkColorKey));
                }
                f5 = 1.0f;
            } else {
                Paint paint4 = this.backgroundPaint;
                int i20 = this.background2ColorKey;
                if (i20 < 0) {
                    i20 = this.checkColorKey;
                }
                f5 = 1.0f;
                paint4.setColor(AndroidUtilities.getOffsetColor(16777215, getThemedColor(i20), f3, this.backgroundAlpha));
            }
            if (this.drawUnchecked || (i13 = this.backgroundType) < 0 || i13 == 12 || i13 == 13) {
                i4 = 7;
                i5 = i2;
                f6 = f5;
            } else {
                if (i13 == 8 || i13 == 10 || i13 == 14) {
                    int i21 = i2;
                    if (this.customRadius > f4) {
                        float fDp3 = f - AndroidUtilities.dp(1.5f);
                        float fLerp = AndroidUtilities.lerp(fDp3, this.customRadius, this.customRadiusFactor);
                        float f12 = i;
                        float f13 = i21;
                        f6 = f5;
                        i5 = i21;
                        i4 = 7;
                        i6 = -1;
                        canvas2.drawRoundRect(f12 - fDp3, f13 - fDp3, f12 + fDp3, f13 + fDp3, fLerp, fLerp, this.backgroundPaint);
                    } else {
                        i5 = i21;
                        f6 = f5;
                        i4 = 7;
                        i6 = -1;
                        canvas2.drawCircle(i, i5, f - AndroidUtilities.dp(1.5f), this.backgroundPaint);
                    }
                    paint.setColor(getThemedColor(this.checkColorKey));
                    i7 = this.backgroundType;
                    if (i7 == i6 || i7 == i4 || i7 == 8 || i7 == 9 || i7 == 10 || i7 == 14) {
                        f4 = 0.0f;
                    } else if (i7 == 12 || i7 == 13) {
                        this.backgroundPaint.setStyle(Paint.Style.FILL);
                        MessageDrawable messageDrawable = this.messageDrawable;
                        if (messageDrawable != null && messageDrawable.hasGradient()) {
                            Shader gradientShader = this.messageDrawable.getGradientShader();
                            Matrix matrix = this.messageDrawable.getMatrix();
                            matrix.reset();
                            this.messageDrawable.applyMatrixScale();
                            matrix.postTranslate(f4, (-this.messageDrawable.getTopY()) + this.bounds.top);
                            gradientShader.setLocalMatrix(matrix);
                            this.backgroundPaint.setShader(gradientShader);
                        } else {
                            this.backgroundPaint.setShader(null);
                        }
                        canvas2.drawCircle(i, i5, (f - AndroidUtilities.dp(f6)) * this.backgroundAlpha, this.backgroundPaint);
                        this.backgroundPaint.setStyle(Paint.Style.STROKE);
                        f4 = 0.0f;
                    } else if (i7 == 0 || i7 == 11) {
                        canvas2.drawCircle(i, i5, f, this.backgroundPaint);
                    } else {
                        float f14 = i;
                        float f15 = i5;
                        this.rect.set(f14 - fDp, f15 - fDp, f14 + fDp, f15 + fDp);
                        int i22 = this.backgroundType;
                        if (i22 == 6) {
                            i10 = (int) ((-360.0f) * f3);
                            i11 = 0;
                        } else if (i22 == 1) {
                            i10 = (int) ((-360.0f) * f3);
                            i11 = -90;
                        } else {
                            int i23 = (int) (360.0f * f3);
                            if (LocaleController.isRTL) {
                                i23 = -i23;
                            }
                            i10 = i23;
                            i11 = 90;
                        }
                        if (i22 == 6) {
                            int themedColor = getThemedColor(this.strokeBackgroundKey);
                            int iAlpha = Color.alpha(themedColor);
                            this.backgroundPaint.setColor(themedColor);
                            this.backgroundPaint.setAlpha((int) (iAlpha * f3));
                            int i24 = i11;
                            i12 = i24;
                            canvas2.drawArc(this.rect, i24, i10, false, this.backgroundPaint);
                            int themedColor2 = getThemedColor(Theme.key_chat_attachPhotoBackground);
                            int iAlpha2 = Color.alpha(themedColor2);
                            this.backgroundPaint.setColor(themedColor2);
                            this.backgroundPaint.setAlpha((int) (iAlpha2 * f3));
                        } else {
                            i12 = i11;
                        }
                        canvas2 = canvas;
                        canvas2.drawArc(this.rect, i12, i10, false, this.backgroundPaint);
                    }
                    if (f2 > f4) {
                        float f16 = f3 < 0.5f ? 0.0f : (f3 - 0.5f) / 0.5f;
                        int i25 = this.backgroundType;
                        if (i25 == 9) {
                            paint.setColor(getThemedColor(this.background2ColorKey));
                        } else if (i25 == 11 || i25 == 6 || i25 == i4 || i25 == 10 || ((!this.drawUnchecked && this.backgroundColorKey >= 0) || i25 == 14)) {
                            paint.setColor(getThemedColor(this.backgroundColorKey));
                        } else {
                            int i26 = this.backgroundColor;
                            if (i26 != 0) {
                                paint.setColor(i26);
                            } else {
                                paint.setColor(getThemedColor(this.enabled ? Theme.key_checkbox : Theme.key_checkboxDisabled));
                            }
                        }
                        if (this.forbidden) {
                            paint.setColor(this.backgroundPaint.getColor());
                        } else if (this.alpha < f6) {
                            paint.setColor(ColorUtils.blendARGB(this.backgroundPaint.getColor(), paint.getColor(), this.alpha));
                        }
                        if (!this.useDefaultCheck && (i9 = this.checkColorKey) >= 0) {
                            this.checkPaint.setColor(getThemedColor(i9));
                        } else {
                            this.checkPaint.setColor(getThemedColor(Theme.key_checkboxCheck));
                        }
                        if (this.alpha < f6 && Theme.isCurrentThemeDark()) {
                            this.checkPaint.setColor(ColorUtils.blendARGB(paint.getColor(), this.checkPaint.getColor(), this.alpha));
                        }
                        if (this.backgroundType != -1) {
                            float fDp4 = AndroidUtilities.dp(this.size) / 2.0f;
                            int iSave = canvas2.save();
                            canvas2.translate(i - fDp4, i5 - fDp4);
                            boolean z3 = f2 < f6;
                            if (z3) {
                                canvas2.saveLayerAlpha(0.0f, 0.0f, AndroidUtilities.dp(this.size), AndroidUtilities.dp(this.size), 255, 31);
                            }
                            Paint paintProvide = this.circlePaintProvider.provide(null);
                            int i27 = this.backgroundType;
                            if (i27 == 12 || i27 == 13) {
                                canvas2 = canvas;
                                int alpha = paintProvide.getAlpha();
                                paintProvide.setAlpha((int) (f2 * 255.0f));
                                canvas2.drawCircle(fDp4, fDp4, f * f2, paintProvide);
                                if (paintProvide != paint) {
                                    paintProvide.setAlpha(alpha);
                                }
                            } else if (this.customRadius > 0.0f) {
                                float fDp5 = f - AndroidUtilities.dp(0.5f);
                                float fLerp2 = AndroidUtilities.lerp(fDp5, this.customRadius, this.customRadiusFactor);
                                float f17 = fDp4 - fDp5;
                                float f18 = fDp4 + fDp5;
                                canvas.drawRoundRect(f17, f17, f18, f18, fLerp2, fLerp2, paintProvide);
                                float f19 = fDp5 * (f6 - f2);
                                float fLerp3 = AndroidUtilities.lerp(f19, this.customRadius, this.customRadiusFactor);
                                if (!z3 || f19 <= 0.0f) {
                                    canvas2 = canvas;
                                } else {
                                    float f20 = fDp4 - f19;
                                    float f21 = fDp4 + f19;
                                    canvas2 = canvas;
                                    canvas2.drawRoundRect(f20, f20, f21, f21, fLerp3, fLerp3, Theme.PAINT_CLEAR);
                                }
                            } else {
                                canvas2 = canvas;
                                float fDp6 = f - AndroidUtilities.dp(0.5f);
                                canvas2.drawCircle(fDp4, fDp4, fDp6, paintProvide);
                                float f22 = fDp6 * (f6 - f2);
                                if (z3 && f22 > 0.0f) {
                                    canvas2.drawCircle(fDp4, fDp4, f22, Theme.PAINT_CLEAR);
                                }
                            }
                            canvas2.restoreToCount(iSave);
                        }
                        if (this.forbidden) {
                            if (forbidPaint == null) {
                                Paint paint5 = new Paint(1);
                                forbidPaint = paint5;
                                paint5.setStyle(Paint.Style.STROKE);
                                forbidPaint.setStrokeCap(Paint.Cap.ROUND);
                                forbidPaint.setStrokeJoin(Paint.Join.ROUND);
                                forbidPaint.setPathEffect(new DashPathEffect(new float[]{AndroidUtilities.dp(0.66f), AndroidUtilities.dp(4.0f)}, 0.0f));
                            }
                            forbidPaint.setStrokeWidth(AndroidUtilities.dp(1.66f));
                            forbidPaint.setColor(getThemedColor(Theme.key_switchTrack));
                            canvas2.drawCircle(i, i5, AndroidUtilities.dp(9.0f), forbidPaint);
                        } else if (f16 != 0.0f) {
                            if (this.checkedText != null) {
                                if (this.textPaint == null) {
                                    i8 = 1;
                                    TextPaint textPaint = new TextPaint(1);
                                    this.textPaint = textPaint;
                                    textPaint.setTypeface(AndroidUtilities.bold());
                                } else {
                                    i8 = 1;
                                }
                                int length = this.checkedText.length();
                                if (length == 0 || length == i8 || length == 2) {
                                    f7 = 14.0f;
                                    f8 = 18.0f;
                                } else if (length != 3) {
                                    f7 = 8.0f;
                                    f8 = 15.75f;
                                } else {
                                    f8 = 16.5f;
                                    f7 = 10.0f;
                                }
                                this.textPaint.setTextSize(AndroidUtilities.dp(f7));
                                this.textPaint.setColor(getThemedColor(this.checkColorKey));
                                canvas2.save();
                                float f23 = i;
                                canvas2.scale(f16, f6, f23, i5);
                                String str = this.checkedText;
                                canvas2.drawText(str, f23 - (this.textPaint.measureText(str) / 2.0f), AndroidUtilities.dp(f8), this.textPaint);
                                canvas2.restore();
                            } else {
                                float f24 = f6;
                                boolean z4 = true;
                                this.path.reset();
                                int i28 = this.backgroundType;
                                float f25 = i28 == -1 ? 1.4f : i28 == 5 ? 0.8f : f24;
                                float fDp7 = AndroidUtilities.dp(9.0f * f25) * f16;
                                float fDp8 = AndroidUtilities.dp(f25 * 4.0f) * f16;
                                int iDp = i - AndroidUtilities.dp(1.5f);
                                int iDp2 = AndroidUtilities.dp(4.0f) + i5;
                                float fSqrt = (float) Math.sqrt((fDp8 * fDp8) / 2.0f);
                                float f26 = iDp;
                                float f27 = iDp2;
                                this.path.moveTo(f26 - fSqrt, f27 - fSqrt);
                                this.path.lineTo(f26, f27);
                                float fSqrt2 = (float) Math.sqrt((fDp7 * fDp7) / 2.0f);
                                this.path.lineTo(f26 + fSqrt2, f27 - fSqrt2);
                                if (z || this.checkScale != f24) {
                                    canvas2.save();
                                    float f28 = this.checkScale;
                                    canvas2.scale(f28, f28, i, i5);
                                } else {
                                    z4 = false;
                                }
                                canvas2.drawPath(this.path, this.checkPaint);
                                if (z4) {
                                    canvas2.restore();
                                }
                            }
                        }
                    }
                    if (z) {
                        canvas2.restore();
                        return;
                    }
                    return;
                }
                if (i13 == 6 || i13 == 7) {
                    i14 = i2;
                    float f29 = i;
                    float f30 = i14;
                    canvas2.drawCircle(f29, f30, f - AndroidUtilities.dp(f5), paint);
                    canvas2.drawCircle(f29, f30, f - AndroidUtilities.dp(1.5f), this.backgroundPaint);
                } else {
                    i14 = i2;
                    canvas2.drawCircle(i, i14, f, paint);
                }
                i5 = i14;
                f6 = f5;
                i4 = 7;
            }
            i6 = -1;
            paint.setColor(getThemedColor(this.checkColorKey));
            i7 = this.backgroundType;
            if (i7 == i6) {
                f4 = 0.0f;
            }
            if (f2 > f4) {
            }
            if (z) {
            }
        }
        f = fDp2;
        fDp = f;
        if (!this.forbidden) {
        }
        if (f9 < 0.5f) {
        }
        int iCenterX2 = this.bounds.centerX();
        int iCenterY2 = this.bounds.centerY();
        if (this.cutCheck) {
        }
        if (z) {
        }
        i3 = this.backgroundColorKey;
        boolean z22 = this.drawUnchecked;
        if (i3 >= 0) {
        }
        if (this.drawUnchecked) {
            i4 = 7;
            i5 = i2;
            f6 = f5;
            i6 = -1;
        }
        paint.setColor(getThemedColor(this.checkColorKey));
        i7 = this.backgroundType;
        if (i7 == i6) {
        }
        if (f2 > f4) {
        }
        if (z) {
        }
    }

    public void setCirclePaintProvider(GenericProvider<Void, Paint> genericProvider) {
        if (this.circlePaintProvider == genericProvider) {
            return;
        }
        this.circlePaintProvider = genericProvider;
        invalidate();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
