package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public class SubstringLayoutAnimator {
    private StaticLayout animateInLayout;
    private StaticLayout animateOutLayout;
    private StaticLayout animateStableLayout;
    public boolean animateTextChange;
    private boolean animateTextChangeOut;
    private float hintProgress;
    private final View parentView;
    private boolean replaceAnimation;
    ValueAnimator valueAnimator;
    private float xOffset;

    public SubstringLayoutAnimator(View view) {
        this.parentView = view;
    }

    public void create(StaticLayout staticLayout, CharSequence charSequence, CharSequence charSequence2, TextPaint textPaint) {
        String string;
        String string2;
        boolean z;
        if (staticLayout == null || charSequence.equals(charSequence2)) {
            return;
        }
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (charSequence.length() > charSequence2.length()) {
            string = charSequence.toString();
            string2 = charSequence2.toString();
            z = true;
        } else {
            string = charSequence2.toString();
            string2 = charSequence.toString();
            z = false;
        }
        int iIndexOf = string.indexOf(string2);
        if (iIndexOf >= 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(string);
            if (iIndexOf != 0) {
                spannableStringBuilder2.setSpan(new EmptyStubSpan(), 0, iIndexOf, 0);
            }
            if (string2.length() + iIndexOf != string.length()) {
                spannableStringBuilder2.setSpan(new EmptyStubSpan(), string2.length() + iIndexOf, string.length(), 0);
            }
            spannableStringBuilder.setSpan(new EmptyStubSpan(), iIndexOf, string2.length() + iIndexOf, 0);
            int iDp = AndroidUtilities.dp(400.0f);
            Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
            this.animateInLayout = new StaticLayout(spannableStringBuilder, textPaint, iDp, alignment, 1.0f, 0.0f, false);
            StaticLayout staticLayout2 = new StaticLayout(spannableStringBuilder2, textPaint, AndroidUtilities.dp(400.0f), alignment, 1.0f, 0.0f, false);
            this.animateStableLayout = staticLayout2;
            this.animateTextChange = true;
            this.animateTextChangeOut = z;
            this.xOffset = iIndexOf == 0 ? 0.0f : -staticLayout2.getPrimaryHorizontal(iIndexOf);
            this.animateOutLayout = null;
            this.replaceAnimation = false;
        } else {
            int iDp2 = AndroidUtilities.dp(400.0f);
            Layout.Alignment alignment2 = Layout.Alignment.ALIGN_NORMAL;
            this.animateInLayout = new StaticLayout(charSequence2, textPaint, iDp2, alignment2, 1.0f, 0.0f, false);
            this.animateOutLayout = new StaticLayout(charSequence, textPaint, AndroidUtilities.dp(400.0f), alignment2, 1.0f, 0.0f, false);
            this.animateStableLayout = null;
            this.animateTextChange = true;
            this.replaceAnimation = true;
            this.xOffset = 0.0f;
        }
        this.hintProgress = 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.valueAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SubstringLayoutAnimator$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$create$0(valueAnimator2);
            }
        });
        this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SubstringLayoutAnimator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SubstringLayoutAnimator.this.animateTextChange = false;
            }
        });
        this.valueAnimator.setDuration(150L);
        this.valueAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$create$0(ValueAnimator valueAnimator) {
        this.hintProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.parentView.invalidate();
    }

    public void draw(Canvas canvas, TextPaint textPaint) {
        if (this.animateTextChange) {
            float f = this.xOffset;
            boolean z = this.animateTextChangeOut;
            float f2 = this.hintProgress;
            if (!z) {
                f2 = 1.0f - f2;
            }
            float f3 = f * f2;
            int alpha = textPaint.getAlpha();
            if (this.animateStableLayout != null) {
                canvas.save();
                canvas.translate(f3, 0.0f);
                this.animateStableLayout.draw(canvas);
                canvas.restore();
            }
            if (this.animateInLayout != null) {
                boolean z2 = this.animateTextChangeOut;
                float f4 = this.hintProgress;
                if (z2) {
                    f4 = 1.0f - f4;
                }
                canvas.save();
                textPaint.setAlpha((int) (alpha * f4));
                canvas.translate(f3, 0.0f);
                if (this.replaceAnimation) {
                    float f5 = (f4 * 0.1f) + 0.9f;
                    canvas.scale(f5, f5, f3, this.parentView.getMeasuredHeight() / 2.0f);
                }
                this.animateInLayout.draw(canvas);
                canvas.restore();
                textPaint.setAlpha(alpha);
            }
            if (this.animateOutLayout != null) {
                boolean z3 = this.animateTextChangeOut;
                float f6 = this.hintProgress;
                if (!z3) {
                    f6 = 1.0f - f6;
                }
                canvas.save();
                float f7 = alpha;
                boolean z4 = this.animateTextChangeOut;
                float f8 = this.hintProgress;
                if (!z4) {
                    f8 = 1.0f - f8;
                }
                textPaint.setAlpha((int) (f7 * f8));
                canvas.translate(f3, 0.0f);
                if (this.replaceAnimation) {
                    float f9 = (f6 * 0.1f) + 0.9f;
                    canvas.scale(f9, f9, f3, this.parentView.getMeasuredHeight() / 2.0f);
                }
                this.animateOutLayout.draw(canvas);
                canvas.restore();
                textPaint.setAlpha(alpha);
            }
        }
    }

    public void cancel() {
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.animateTextChange = false;
    }
}
