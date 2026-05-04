package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class PinnedLineView extends View {
    float animateFromPosition;
    int animateFromTotal;
    int animateToPosition;
    int animateToTotal;
    boolean animationInProgress;
    float animationProgress;
    ValueAnimator animator;
    private int color;
    Paint fadePaint;
    Paint fadePaint2;
    private int lineHFrom;
    private int lineHTo;
    private int nextPosition;
    Paint paint;
    RectF rectF;
    boolean replaceInProgress;
    private final Theme.ResourcesProvider resourcesProvider;
    Paint selectedPaint;
    int selectedPosition;
    private float startOffsetFrom;
    private float startOffsetTo;
    int totalCount;

    public PinnedLineView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.selectedPosition = -1;
        this.totalCount = 0;
        this.rectF = new RectF();
        this.paint = new Paint(1);
        this.selectedPaint = new Paint(1);
        this.nextPosition = -1;
        this.resourcesProvider = resourcesProvider;
        Paint paint = this.paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        Paint paint2 = this.paint;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint2.setStrokeCap(cap);
        this.selectedPaint.setStyle(style);
        this.selectedPaint.setStrokeCap(cap);
        this.fadePaint = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.fadePaint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.m1124dp(6.0f), new int[]{-1, 0}, new float[]{0.0f, 1.0f}, tileMode));
        Paint paint3 = this.fadePaint;
        PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
        paint3.setXfermode(new PorterDuffXfermode(mode));
        this.fadePaint2 = new Paint();
        this.fadePaint2.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.m1124dp(6.0f), new int[]{0, -1}, new float[]{0.0f, 1.0f}, tileMode));
        this.fadePaint2.setXfermode(new PorterDuffXfermode(mode));
        updateColors();
    }

    public void updateColors() {
        int themedColor = getThemedColor(Theme.key_chat_topPanelLine);
        this.color = themedColor;
        this.paint.setColor(ColorUtils.setAlphaComponent(themedColor, (int) ((Color.alpha(themedColor) / 255.0f) * 112.0f)));
        this.selectedPaint.setColor(this.color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectPosition(int i) {
        if (this.replaceInProgress) {
            this.nextPosition = i;
            return;
        }
        if (this.animationInProgress) {
            if (this.animateToPosition == i) {
                return;
            }
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float f = this.animateFromPosition;
            float f2 = this.animationProgress;
            this.animateFromPosition = (f * (1.0f - f2)) + (this.animateToPosition * f2);
        } else {
            this.animateFromPosition = this.selectedPosition;
        }
        if (i != this.selectedPosition) {
            this.animateToPosition = i;
            this.animationInProgress = true;
            this.animationProgress = 0.0f;
            invalidate();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.animator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PinnedLineView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$selectPosition$0(valueAnimator2);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PinnedLineView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PinnedLineView pinnedLineView = PinnedLineView.this;
                    pinnedLineView.animationInProgress = false;
                    pinnedLineView.selectedPosition = pinnedLineView.animateToPosition;
                    pinnedLineView.invalidate();
                    if (PinnedLineView.this.nextPosition >= 0) {
                        PinnedLineView pinnedLineView2 = PinnedLineView.this;
                        pinnedLineView2.selectPosition(pinnedLineView2.nextPosition);
                        PinnedLineView.this.nextPosition = -1;
                    }
                }
            });
            this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.animator.setDuration(220L);
            this.animator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectPosition$0(ValueAnimator valueAnimator) {
        this.animationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int iMax;
        Canvas canvas2;
        float measuredHeight;
        float measuredHeight2;
        float f;
        super.onDraw(canvas);
        if (this.selectedPosition < 0 || (iMax = this.totalCount) == 0) {
            return;
        }
        if (this.replaceInProgress) {
            iMax = Math.max(this.animateFromTotal, this.animateToTotal);
        }
        boolean z = iMax > 3;
        if (z) {
            canvas2 = canvas;
            canvas2.saveLayerAlpha(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
        } else {
            canvas2 = canvas;
        }
        int iM1124dp = AndroidUtilities.m1124dp(8.0f);
        float f2 = 1.0f;
        if (this.replaceInProgress) {
            float f3 = this.lineHFrom;
            float f4 = this.animationProgress;
            measuredHeight = (f3 * (1.0f - f4)) + (this.lineHTo * f4);
        } else if (this.totalCount == 0) {
            return;
        } else {
            measuredHeight = (getMeasuredHeight() - (iM1124dp * 2)) / Math.min(this.totalCount, 3);
        }
        if (measuredHeight == 0.0f) {
            return;
        }
        float fDpf2 = AndroidUtilities.dpf2(0.7f);
        if (this.replaceInProgress) {
            float f5 = this.startOffsetFrom;
            float f6 = this.animationProgress;
            measuredHeight2 = (f5 * (1.0f - f6)) + (this.startOffsetTo * f6);
        } else {
            if (this.animationInProgress) {
                float f7 = this.animationProgress;
                measuredHeight2 = ((this.animateFromPosition - 1.0f) * measuredHeight * (1.0f - f7)) + ((this.animateToPosition - 1) * measuredHeight * f7);
            } else {
                measuredHeight2 = (this.selectedPosition - 1) * measuredHeight;
            }
            if (measuredHeight2 < 0.0f) {
                measuredHeight2 = 0.0f;
            } else {
                float f8 = iM1124dp;
                if ((((this.totalCount - 1) * measuredHeight) + f8) - measuredHeight2 < (getMeasuredHeight() - iM1124dp) - measuredHeight) {
                    measuredHeight2 = (f8 + ((this.totalCount - 1) * measuredHeight)) - ((getMeasuredHeight() - iM1124dp) - measuredHeight);
                }
            }
        }
        float measuredWidth = getMeasuredWidth() / 2.0f;
        float f9 = iM1124dp;
        int iMax2 = Math.max(0, (int) (((f9 + measuredHeight2) / measuredHeight) - 1.0f));
        int iMin = Math.min(iMax2 + 6, this.replaceInProgress ? Math.max(this.animateFromTotal, this.animateToTotal) : this.totalCount);
        while (iMax2 < iMin) {
            float f10 = ((iMax2 * measuredHeight) + f9) - measuredHeight2;
            float f11 = f10 + measuredHeight;
            if (f11 < 0.0f || f10 > getMeasuredHeight()) {
                f = f2;
            } else {
                this.rectF.set(0.0f, f10 + fDpf2, getMeasuredWidth(), f11 - fDpf2);
                boolean z2 = this.replaceInProgress;
                if (z2 && iMax2 >= this.animateToTotal) {
                    f = f2;
                    this.paint.setColor(ColorUtils.setAlphaComponent(this.color, (int) ((Color.alpha(r15) / 255.0f) * 76.0f * (f - this.animationProgress))));
                    canvas2.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.paint);
                    this.paint.setColor(ColorUtils.setAlphaComponent(this.color, (int) ((Color.alpha(r12) / 255.0f) * 76.0f)));
                } else {
                    f = f2;
                    if (z2 && iMax2 >= this.animateFromTotal) {
                        this.paint.setColor(ColorUtils.setAlphaComponent(this.color, (int) ((Color.alpha(r12) / 255.0f) * 76.0f * this.animationProgress)));
                        canvas2.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.paint);
                        this.paint.setColor(ColorUtils.setAlphaComponent(this.color, (int) ((Color.alpha(r12) / 255.0f) * 76.0f)));
                    } else {
                        canvas2.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.paint);
                    }
                }
            }
            iMax2++;
            f2 = f;
        }
        float f12 = f2;
        if (this.animationInProgress) {
            float f13 = this.animateFromPosition;
            float f14 = this.animationProgress;
            float f15 = (f9 + (((f13 * (f12 - f14)) + (this.animateToPosition * f14)) * measuredHeight)) - measuredHeight2;
            this.rectF.set(0.0f, f15 + fDpf2, getMeasuredWidth(), (f15 + measuredHeight) - fDpf2);
            canvas2.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.selectedPaint);
        } else {
            float f16 = (f9 + (this.selectedPosition * measuredHeight)) - measuredHeight2;
            this.rectF.set(0.0f, f16 + fDpf2, getMeasuredWidth(), (f16 + measuredHeight) - fDpf2);
            canvas2.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.selectedPaint);
        }
        if (z) {
            canvas2.drawRect(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.m1124dp(6.0f), this.fadePaint);
            canvas.drawRect(0.0f, getMeasuredHeight() - AndroidUtilities.m1124dp(6.0f), getMeasuredWidth(), getMeasuredHeight(), this.fadePaint);
            canvas.translate(0.0f, getMeasuredHeight() - AndroidUtilities.m1124dp(6.0f));
            canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.m1124dp(6.0f), this.fadePaint2);
        }
    }

    public void set(int i, int i2, boolean z) {
        int i3 = this.selectedPosition;
        if (i3 < 0 || i2 == 0 || this.totalCount == 0) {
            z = false;
        }
        if (!z) {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.selectedPosition = i;
            this.totalCount = i2;
            invalidate();
            return;
        }
        if (this.totalCount != i2 || (Math.abs(i3 - i) > 2 && !this.animationInProgress && !this.replaceInProgress)) {
            ValueAnimator valueAnimator2 = this.animator;
            if (valueAnimator2 != null) {
                this.nextPosition = 0;
                valueAnimator2.cancel();
            }
            int iM1124dp = AndroidUtilities.m1124dp(8.0f);
            int i4 = iM1124dp * 2;
            this.lineHFrom = (getMeasuredHeight() - i4) / Math.min(this.totalCount, 3);
            this.lineHTo = (getMeasuredHeight() - i4) / Math.min(i2, 3);
            float f = (this.selectedPosition - 1) * this.lineHFrom;
            this.startOffsetFrom = f;
            if (f < 0.0f) {
                this.startOffsetFrom = 0.0f;
            } else {
                float f2 = (((this.totalCount - 1) * r3) + iM1124dp) - f;
                int measuredHeight = getMeasuredHeight() - iM1124dp;
                int i5 = this.lineHFrom;
                if (f2 < measuredHeight - i5) {
                    this.startOffsetFrom = (((this.totalCount - 1) * i5) + iM1124dp) - ((getMeasuredHeight() - iM1124dp) - this.lineHFrom);
                }
            }
            float f3 = (i - 1) * this.lineHTo;
            this.startOffsetTo = f3;
            if (f3 < 0.0f) {
                this.startOffsetTo = 0.0f;
            } else {
                int i6 = i2 - 1;
                float f4 = ((r3 * i6) + iM1124dp) - f3;
                int measuredHeight2 = getMeasuredHeight() - iM1124dp;
                int i7 = this.lineHTo;
                if (f4 < measuredHeight2 - i7) {
                    this.startOffsetTo = ((i6 * i7) + iM1124dp) - ((getMeasuredHeight() - iM1124dp) - this.lineHTo);
                }
            }
            this.animateFromPosition = this.selectedPosition;
            this.animateToPosition = i;
            this.selectedPosition = i;
            this.animateFromTotal = this.totalCount;
            this.animateToTotal = i2;
            this.totalCount = i2;
            this.replaceInProgress = true;
            this.animationInProgress = true;
            this.animationProgress = 0.0f;
            invalidate();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.animator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PinnedLineView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    this.f$0.lambda$set$1(valueAnimator3);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PinnedLineView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PinnedLineView pinnedLineView = PinnedLineView.this;
                    pinnedLineView.replaceInProgress = false;
                    pinnedLineView.animationInProgress = false;
                    pinnedLineView.invalidate();
                    if (PinnedLineView.this.nextPosition >= 0) {
                        PinnedLineView pinnedLineView2 = PinnedLineView.this;
                        pinnedLineView2.selectPosition(pinnedLineView2.nextPosition);
                        PinnedLineView.this.nextPosition = -1;
                    }
                }
            });
            this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.animator.setDuration(220L);
            this.animator.start();
            return;
        }
        selectPosition(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$1(ValueAnimator valueAnimator) {
        this.animationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
