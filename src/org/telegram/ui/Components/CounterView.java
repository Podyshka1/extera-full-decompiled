package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class CounterView extends View {
    public CounterDrawable counterDrawable;
    private final Theme.ResourcesProvider resourcesProvider;

    public CounterView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setVisibility(8);
        CounterDrawable counterDrawable = new CounterDrawable(this, true, resourcesProvider);
        this.counterDrawable = counterDrawable;
        counterDrawable.updateVisibility = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.counterDrawable.setSize(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.counterDrawable.draw(canvas);
    }

    public void setColors(int i, int i2) {
        this.counterDrawable.textColorKey = i;
        this.counterDrawable.circleColorKey = i2;
    }

    public void setGravity(int i) {
        this.counterDrawable.gravity = i;
    }

    public void setReverse(boolean z) {
        this.counterDrawable.reverseAnimation = z;
    }

    public void setCount(int i, boolean z) {
        this.counterDrawable.setCount(i, z);
    }

    public static class CounterDrawable {
        public boolean addServiceGradient;
        private int circleColor;
        public Paint circlePaint;
        private boolean countAnimationIncrement;
        private String countAnimationNewText;
        private float[] countAnimationNewX;
        private String countAnimationOldText;
        private float[] countAnimationOldX;
        private ValueAnimator countAnimator;
        private StaticLayout countLayout;
        private float countLayoutWidth;
        float countLeft;
        private StaticLayout countOldLayout;
        private int countWidth;
        private int countWidthOld;
        int currentCount;
        CharSequence currentText;
        private boolean drawBackground;
        public float horizontalPadding;
        int lastH;
        private View parent;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean reverseAnimation;
        public boolean shortFormat;
        private int textColor;
        public boolean updateVisibility;
        int width;

        /* JADX INFO: renamed from: x */
        float f1102x;
        public float circleScale = 1.0f;
        int animationType = -1;
        public TextPaint textPaint = new TextPaint(1);
        public RectF rectF = new RectF();
        public float countChangeProgress = 1.0f;
        private int textColorKey = Theme.key_chat_goDownButtonCounter;
        private int circleColorKey = Theme.key_chat_goDownButtonCounterBackground;
        public int gravity = 17;
        public float radius = 11.5f;
        int type = 0;

        public CounterDrawable(View view, boolean z, Theme.ResourcesProvider resourcesProvider) {
            this.parent = view;
            this.resourcesProvider = resourcesProvider;
            this.drawBackground = z;
            if (z) {
                Paint paint = new Paint(1);
                this.circlePaint = paint;
                paint.setColor(-16777216);
            }
            this.textPaint.setTypeface(AndroidUtilities.bold());
            this.textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        }

        public void setSize(int i, int i2) {
            if (i != this.lastH) {
                int i3 = this.currentCount;
                this.currentCount = -1;
                setCount(i3, this.animationType == 0);
                this.lastH = i;
            }
            this.width = i2;
        }

        private void drawInternal(Canvas canvas) {
            boolean z;
            float f = this.radius * 2.0f;
            float fDp = (this.lastH - AndroidUtilities.dp(f)) / 2.0f;
            updateX(this.countWidth);
            RectF rectF = this.rectF;
            float f2 = this.f1102x;
            rectF.set(f2, fDp, this.countWidth + f2 + AndroidUtilities.dp(this.radius - 0.5f), AndroidUtilities.dp(f) + fDp);
            if (this.circlePaint != null && this.drawBackground) {
                if (this.circleScale != 1.0f) {
                    canvas.save();
                    float f3 = this.circleScale;
                    canvas.scale(f3, f3, this.rectF.centerX(), this.rectF.centerY());
                    z = true;
                } else {
                    z = false;
                }
                RectF rectF2 = this.rectF;
                float f4 = this.radius;
                float f5 = AndroidUtilities.density;
                canvas.drawRoundRect(rectF2, f4 * f5, f4 * f5, this.circlePaint);
                if (this.addServiceGradient && Theme.hasGradientService()) {
                    RectF rectF3 = this.rectF;
                    float f6 = this.radius;
                    float f7 = AndroidUtilities.density;
                    canvas.drawRoundRect(rectF3, f6 * f7, f6 * f7, Theme.chat_actionBackgroundGradientDarkenPaint);
                }
                if (z) {
                    canvas.restore();
                }
            }
            if (this.countLayout != null) {
                canvas.save();
                canvas.translate(this.countLeft, fDp + AndroidUtilities.dp(4.0f));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
        }

        public void setCount(int i, boolean z) {
            setText(getStringOfCCount(i), z, i, false);
        }

        public void setText(CharSequence charSequence, boolean z, int i, boolean z2) {
            View view;
            View view2;
            if (TextUtils.equals(charSequence, this.currentText)) {
                return;
            }
            ValueAnimator valueAnimator = this.countAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (i > 0 && this.updateVisibility && (view2 = this.parent) != null) {
                view2.setVisibility(0);
            }
            if (Math.abs(i - this.currentCount) > 99) {
                z = false;
            }
            if (!z) {
                this.currentCount = i;
                this.currentText = charSequence;
                if (i == 0) {
                    if (!this.updateVisibility || (view = this.parent) == null) {
                        return;
                    }
                    view.setVisibility(8);
                    return;
                }
                this.countWidth = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(this.textPaint.measureText(charSequence.toString())));
                StaticLayout staticLayout = new StaticLayout(charSequence, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                this.countLayout = staticLayout;
                this.countLayoutWidth = staticLayout.getLineCount() >= 1 ? this.countLayout.getLineWidth(0) : 0.0f;
                View view3 = this.parent;
                if (view3 != null) {
                    view3.invalidate();
                    return;
                }
                return;
            }
            if (z) {
                ValueAnimator valueAnimator2 = this.countAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.countChangeProgress = 0.0f;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.countAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.CounterView$CounterDrawable$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        this.f$0.lambda$setText$0(valueAnimator3);
                    }
                });
                this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.CounterView.CounterDrawable.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        CounterDrawable counterDrawable = CounterDrawable.this;
                        counterDrawable.countChangeProgress = 1.0f;
                        counterDrawable.countOldLayout = null;
                        CounterDrawable.this.countAnimationOldText = null;
                        CounterDrawable.this.countAnimationNewText = null;
                        CounterDrawable.this.countAnimationOldX = null;
                        CounterDrawable.this.countAnimationNewX = null;
                        if (CounterDrawable.this.parent != null) {
                            CounterDrawable counterDrawable2 = CounterDrawable.this;
                            if (counterDrawable2.currentCount == 0 && counterDrawable2.updateVisibility) {
                                counterDrawable2.parent.setVisibility(8);
                            }
                            CounterDrawable.this.parent.invalidate();
                        }
                        CounterDrawable.this.animationType = -1;
                    }
                });
                if (this.currentCount <= 0) {
                    this.animationType = 0;
                    this.countAnimator.setDuration(220L);
                    this.countAnimator.setInterpolator(new OvershootInterpolator());
                } else if (i == 0) {
                    this.animationType = 1;
                    this.countAnimator.setDuration(150L);
                    this.countAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                } else {
                    this.animationType = 2;
                    this.countAnimator.setDuration(430L);
                    this.countAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                }
                if (this.countLayout != null) {
                    CharSequence charSequence2 = this.currentText;
                    if (charSequence2.length() == charSequence.length() && !z2) {
                        this.countAnimationOldText = charSequence2.toString();
                        this.countAnimationNewText = charSequence.toString();
                        this.countAnimationOldX = getCharOffsets(this.countAnimationOldText);
                        this.countAnimationNewX = getCharOffsets(this.countAnimationNewText);
                    } else {
                        this.countOldLayout = this.countLayout;
                    }
                }
                this.countWidthOld = this.countWidth;
                this.countAnimationIncrement = i > this.currentCount;
                this.countAnimator.start();
            }
            if (i > 0) {
                this.countWidth = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(this.textPaint.measureText(charSequence.toString())));
                StaticLayout staticLayout2 = new StaticLayout(charSequence, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                this.countLayout = staticLayout2;
                this.countLayoutWidth = staticLayout2.getLineCount() >= 1 ? this.countLayout.getLineWidth(0) : 0.0f;
            }
            this.currentCount = i;
            this.currentText = charSequence;
            View view4 = this.parent;
            if (view4 != null) {
                view4.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$0(ValueAnimator valueAnimator) {
            this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            View view = this.parent;
            if (view != null) {
                view.invalidate();
            }
        }

        private float[] getCharOffsets(String str) {
            int iMax = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(this.textPaint.measureText(str)));
            float f = ((-iMax) / 2.0f) + ((iMax - (((int) r0) & (-2))) >> 1);
            int length = str.length();
            float[] fArr = new float[length];
            for (int i = 0; i < length; i++) {
                fArr[i] = this.textPaint.measureText(str, 0, i) + f;
            }
            return fArr;
        }

        public int getCurrentWidth() {
            return (int) Math.ceil(this.countLayoutWidth);
        }

        private String getStringOfCCount(int i) {
            if (this.shortFormat) {
                return AndroidUtilities.formatWholeNumber(i, 0);
            }
            return String.valueOf(i);
        }

        public void draw(Canvas canvas) {
            float f;
            boolean z;
            float f2;
            float f3;
            Paint paint;
            float interpolation;
            Canvas canvas2 = canvas;
            int i = this.type;
            if (i != 1 && i != 2) {
                int themedColor = getThemedColor(this.textColorKey);
                int themedColor2 = getThemedColor(this.circleColorKey);
                if (this.textColor != themedColor) {
                    this.textColor = themedColor;
                    this.textPaint.setColor(themedColor);
                }
                Paint paint2 = this.circlePaint;
                if (paint2 != null && this.circleColor != themedColor2) {
                    this.circleColor = themedColor2;
                    paint2.setColor(themedColor2);
                }
            }
            float f4 = this.countChangeProgress;
            if (f4 != 1.0f) {
                int i2 = this.animationType;
                if (i2 == 0 || i2 == 1) {
                    updateX(this.countWidth);
                    float f5 = this.countLeft + (this.countWidth / 2.0f);
                    float f6 = this.lastH / 2.0f;
                    canvas2.save();
                    int i3 = this.animationType;
                    float f7 = this.countChangeProgress;
                    if (i3 != 0) {
                        f7 = 1.0f - f7;
                    }
                    canvas2.scale(f7, f7, f5, f6);
                    drawInternal(canvas);
                    canvas2.restore();
                    return;
                }
                float f8 = f4 * 2.0f;
                float f9 = f8 > 1.0f ? 1.0f : f8;
                float fDp = (this.lastH - AndroidUtilities.dp(this.radius * 2.0f)) / 2.0f;
                int i4 = this.countWidth;
                int i5 = this.countWidthOld;
                float f10 = i4 == i5 ? i4 : (i4 * f9) + (i5 * (1.0f - f9));
                updateX(f10);
                if (this.countAnimationIncrement) {
                    float f11 = this.countChangeProgress;
                    if (f11 <= 0.5f) {
                        interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(f11 * 2.0f);
                    } else {
                        interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(1.0f - ((f11 - 0.5f) * 2.0f));
                    }
                    f = (interpolation * 0.1f) + 1.0f;
                } else {
                    f = 1.0f;
                }
                RectF rectF = this.rectF;
                float f12 = this.f1102x;
                rectF.set(f12, fDp, f12 + f10 + AndroidUtilities.dp(this.radius - 0.5f), AndroidUtilities.dp(this.radius * 2.0f) + fDp);
                canvas2.save();
                canvas2.scale(f, f, this.rectF.centerX(), this.rectF.centerY());
                if (this.circleScale != 1.0f) {
                    canvas2.save();
                    float f13 = this.circleScale;
                    canvas2.scale(f13, f13, this.rectF.centerX(), this.rectF.centerY());
                    z = true;
                } else {
                    z = false;
                }
                if (this.drawBackground && (paint = this.circlePaint) != null) {
                    RectF rectF2 = this.rectF;
                    float f14 = this.radius;
                    float f15 = AndroidUtilities.density;
                    canvas2.drawRoundRect(rectF2, f14 * f15, f14 * f15, paint);
                    if (this.addServiceGradient && Theme.hasGradientService()) {
                        RectF rectF3 = this.rectF;
                        float f16 = this.radius;
                        float f17 = AndroidUtilities.density;
                        canvas2.drawRoundRect(rectF3, f16 * f17, f16 * f17, Theme.chat_actionBackgroundGradientDarkenPaint);
                    }
                }
                if (z) {
                    canvas2.restore();
                }
                canvas2.clipRect(this.rectF);
                boolean z2 = this.reverseAnimation != this.countAnimationIncrement;
                if (this.countAnimationNewText != null && this.countLayout != null) {
                    float f18 = this.countLeft + (f10 / 2.0f);
                    float fDp2 = fDp + AndroidUtilities.dp(4.0f) + this.countLayout.getLineBaseline(0);
                    int iDp = AndroidUtilities.dp(13.0f);
                    if (!z2) {
                        iDp = -iDp;
                    }
                    float f19 = 1.0f - f9;
                    float f20 = fDp2 + (iDp * f19);
                    int iDp2 = AndroidUtilities.dp(13.0f);
                    if (z2) {
                        iDp2 = -iDp2;
                    }
                    float f21 = fDp2 + (iDp2 * f9);
                    int i6 = 0;
                    while (i6 < this.countAnimationNewText.length()) {
                        char cCharAt = this.countAnimationOldText.charAt(i6);
                        char cCharAt2 = this.countAnimationNewText.charAt(i6);
                        TextPaint textPaint = this.textPaint;
                        if (cCharAt == cCharAt2) {
                            textPaint.setAlpha(255);
                            canvas2.drawText(this.countAnimationNewText, i6, i6 + 1, AndroidUtilities.lerp(this.countAnimationOldX[i6], this.countAnimationNewX[i6], f9) + f18, fDp2, (Paint) this.textPaint);
                            f2 = fDp2;
                            canvas2 = canvas;
                            f3 = f20;
                        } else {
                            f2 = fDp2;
                            textPaint.setAlpha((int) (f19 * 255.0f));
                            int i7 = i6 + 1;
                            canvas.drawText(this.countAnimationOldText, i6, i7, f18 + this.countAnimationOldX[i6], f21, (Paint) this.textPaint);
                            this.textPaint.setAlpha((int) (f9 * 255.0f));
                            canvas2 = canvas;
                            f3 = f20;
                            canvas2.drawText(this.countAnimationNewText, i6, i7, f18 + this.countAnimationNewX[i6], f3, (Paint) this.textPaint);
                        }
                        i6++;
                        f20 = f3;
                        fDp2 = f2;
                    }
                } else {
                    if (this.countLayout != null) {
                        canvas2.save();
                        float f22 = this.countLeft;
                        float fDp3 = AndroidUtilities.dp(4.0f) + fDp;
                        int iDp3 = AndroidUtilities.dp(13.0f);
                        if (!z2) {
                            iDp3 = -iDp3;
                        }
                        canvas2.translate(f22, fDp3 + (iDp3 * (1.0f - f9)));
                        this.textPaint.setAlpha((int) (f9 * 255.0f));
                        this.countLayout.draw(canvas2);
                        canvas2.restore();
                    }
                    if (this.countOldLayout != null) {
                        canvas2.save();
                        canvas2.translate(this.countLeft, fDp + AndroidUtilities.dp(4.0f) + ((z2 ? -AndroidUtilities.dp(13.0f) : AndroidUtilities.dp(13.0f)) * f9));
                        this.textPaint.setAlpha((int) ((1.0f - f9) * 255.0f));
                        this.countOldLayout.draw(canvas2);
                        canvas2.restore();
                    }
                }
                this.textPaint.setAlpha(255);
                canvas2.restore();
                return;
            }
            drawInternal(canvas);
        }

        public void updateBackgroundRect() {
            float f = this.countChangeProgress;
            if (f != 1.0f) {
                int i = this.animationType;
                if (i == 0 || i == 1) {
                    updateX(this.countWidth);
                    float fDp = (this.lastH - AndroidUtilities.dp(this.radius * 2.0f)) / 2.0f;
                    RectF rectF = this.rectF;
                    float f2 = this.f1102x;
                    rectF.set(f2, fDp, this.countWidth + f2 + AndroidUtilities.dp(11.0f), AndroidUtilities.dp(23.0f) + fDp);
                    return;
                }
                float f3 = f * 2.0f;
                if (f3 > 1.0f) {
                    f3 = 1.0f;
                }
                float fDp2 = (this.lastH - AndroidUtilities.dp(this.radius * 2.0f)) / 2.0f;
                int i2 = this.countWidth;
                int i3 = this.countWidthOld;
                float f4 = i2 == i3 ? i2 : (i2 * f3) + (i3 * (1.0f - f3));
                updateX(f4);
                RectF rectF2 = this.rectF;
                float f5 = this.f1102x;
                rectF2.set(f5, fDp2, f4 + f5 + AndroidUtilities.dp(11.0f), AndroidUtilities.dp(23.0f) + fDp2);
                return;
            }
            updateX(this.countWidth);
            float fDp3 = (this.lastH - AndroidUtilities.dp(this.radius * 2.0f)) / 2.0f;
            RectF rectF3 = this.rectF;
            float f6 = this.f1102x;
            rectF3.set(f6, fDp3, this.countWidth + f6 + AndroidUtilities.dp(11.0f), AndroidUtilities.dp(23.0f) + fDp3);
        }

        private void updateX(float f) {
            float fDp = this.drawBackground ? AndroidUtilities.dp(5.5f) : 0.0f;
            int i = this.gravity;
            if (i == 5) {
                float f2 = this.width - fDp;
                this.countLeft = f2;
                float f3 = this.horizontalPadding;
                if (f3 != 0.0f) {
                    this.countLeft = f2 - Math.max(f3 + (f / 2.0f), f);
                } else {
                    this.countLeft = f2 - f;
                }
            } else if (i == 3) {
                this.countLeft = fDp;
            } else {
                this.countLeft = (int) ((this.width - f) / 2.0f);
            }
            this.f1102x = this.countLeft - fDp;
        }

        public float getCenterX() {
            updateX(this.countWidth);
            return this.countLeft + (this.countWidth / 2.0f);
        }

        public void setType(int i) {
            this.type = i;
        }

        public void setParent(View view) {
            this.parent = view;
        }

        public int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }

        public int getWidth() {
            if (this.currentCount == 0) {
                return 0;
            }
            return this.countWidth + AndroidUtilities.dp(this.radius - 0.5f);
        }
    }

    public float getEnterProgress() {
        int i;
        CounterDrawable counterDrawable = this.counterDrawable;
        float f = counterDrawable.countChangeProgress;
        return (f == 1.0f || !((i = counterDrawable.animationType) == 0 || i == 1)) ? counterDrawable.currentCount == 0 ? 0.0f : 1.0f : i == 0 ? f : 1.0f - f;
    }
}
