package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public abstract class TextSelectionHint extends View {

    /* JADX INFO: renamed from: a */
    Animator f2097a;
    int animateToEnd;
    int animateToStart;
    int currentEnd;
    int currentStart;
    Runnable dismissTunnable;
    int end;
    float endOffsetValue;
    float enterValue;
    private Interpolator interpolator;
    int lastW;
    int padding;
    Path path;
    float prepareProgress;
    private final Theme.ResourcesProvider resourcesProvider;
    Paint selectionPaint;
    private boolean showOnMeasure;
    boolean showing;
    int start;
    float startOffsetValue;
    StaticLayout textLayout;
    TextPaint textPaint;

    public TextSelectionHint(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.textPaint = new TextPaint(1);
        this.selectionPaint = new Paint(1);
        this.padding = AndroidUtilities.m1124dp(24.0f);
        this.interpolator = new OvershootInterpolator();
        this.dismissTunnable = new Runnable() { // from class: org.telegram.ui.Components.TextSelectionHint$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.hideInternal();
            }
        };
        this.path = new Path();
        this.resourcesProvider = resourcesProvider;
        int themedColor = getThemedColor(Theme.key_undo_infoColor);
        int iAlpha = Color.alpha(themedColor);
        this.textPaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        this.textPaint.setColor(themedColor);
        this.selectionPaint.setColor(themedColor);
        this.selectionPaint.setAlpha((int) (((double) iAlpha) * 0.14d));
        setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(6.0f), getThemedColor(Theme.key_undo_background)));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getMeasuredWidth() != this.lastW || this.textLayout == null) {
            Animator animator = this.f2097a;
            if (animator != null) {
                animator.removeAllListeners();
                this.f2097a.cancel();
            }
            String string = LocaleController.getString(C2888R.string.TextSelectionHint);
            Matcher matcher = Pattern.compile("\\*\\*.*\\*\\*").matcher(string);
            String strGroup = matcher.matches() ? matcher.group() : null;
            String strReplace = string.replace("**", _UrlKt.FRAGMENT_ENCODE_SET);
            this.textLayout = new StaticLayout(strReplace, this.textPaint, getMeasuredWidth() - (this.padding * 2), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.start = 0;
            this.end = 0;
            if (strGroup != null) {
                this.start = strReplace.indexOf(strGroup);
            }
            int i3 = this.start;
            if (i3 > 0) {
                this.end = i3 + strGroup.length();
            } else {
                int i4 = 0;
                for (int i5 = 0; i5 < strReplace.length(); i5++) {
                    if (strReplace.charAt(i5) == ' ') {
                        i4++;
                        if (i4 == 2) {
                            this.start = i5 + 1;
                        }
                        if (i4 == 3) {
                            this.end = i5 - 1;
                        }
                    }
                }
            }
            if (this.end == 0) {
                this.end = strReplace.length();
            }
            this.animateToStart = 0;
            StaticLayout staticLayout = this.textLayout;
            int offsetForHorizontal = staticLayout.getOffsetForHorizontal(staticLayout.getLineForOffset(this.end), this.textLayout.getWidth() - 1);
            this.animateToEnd = offsetForHorizontal;
            this.currentStart = this.start;
            this.currentEnd = this.end;
            if (this.showing) {
                this.prepareProgress = 1.0f;
                this.enterValue = 1.0f;
                this.currentStart = this.animateToStart;
                this.currentEnd = offsetForHorizontal;
                this.startOffsetValue = 0.0f;
                this.endOffsetValue = 0.0f;
            } else if (this.showOnMeasure) {
                show();
            }
            this.showOnMeasure = false;
            this.lastW = getMeasuredWidth();
        }
        int height = this.textLayout.getHeight() + (AndroidUtilities.m1124dp(8.0f) * 2);
        if (height < AndroidUtilities.m1124dp(56.0f)) {
            height = AndroidUtilities.m1124dp(56.0f);
        }
        setMeasuredDimension(getMeasuredWidth(), height);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        float f;
        float f2;
        int i2;
        float f3;
        Path.Direction direction;
        if (this.textLayout == null) {
            return;
        }
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.padding, (getMeasuredHeight() - this.textLayout.getHeight()) >> 1);
        if (this.enterValue != 0.0f) {
            drawSelection(canvas, this.textLayout, this.currentStart, this.currentEnd);
        }
        this.textLayout.draw(canvas);
        int iM1124dp = AndroidUtilities.m1124dp(14.0f);
        int lineForOffset = this.textLayout.getLineForOffset(this.currentEnd);
        this.textLayout.getPrimaryHorizontal(this.currentEnd);
        int lineBottom = this.textLayout.getLineBottom(lineForOffset);
        int i3 = this.currentEnd;
        int i4 = this.animateToEnd;
        if (i3 == i4) {
            roundedRect(this.path, this.textLayout.getPrimaryHorizontal(i4), this.textLayout.getLineTop(lineForOffset), this.textLayout.getPrimaryHorizontal(this.animateToEnd) + AndroidUtilities.dpf2(4.0f), this.textLayout.getLineBottom(lineForOffset), AndroidUtilities.dpf2(4.0f), AndroidUtilities.dpf2(4.0f), false, true);
            canvas.drawPath(this.path, this.selectionPaint);
        }
        float interpolation = this.interpolator.getInterpolation(this.enterValue);
        int primaryHorizontal = (int) (this.textLayout.getPrimaryHorizontal(this.animateToEnd) + (AndroidUtilities.dpf2(4.0f) * (1.0f - this.endOffsetValue)) + ((this.textLayout.getPrimaryHorizontal(this.end) - this.textLayout.getPrimaryHorizontal(this.animateToEnd)) * this.endOffsetValue));
        canvas.save();
        canvas.translate(primaryHorizontal, lineBottom);
        float f4 = iM1124dp;
        float f5 = f4 / 2.0f;
        canvas.scale(interpolation, interpolation, f5, f5);
        this.path.reset();
        Path path = this.path;
        Path.Direction direction2 = Path.Direction.CCW;
        path.addCircle(f5, f5, f5, direction2);
        this.path.addRect(0.0f, 0.0f, f5, f5, direction2);
        canvas.drawPath(this.path, this.textPaint);
        canvas.restore();
        int lineForOffset2 = this.textLayout.getLineForOffset(this.currentStart);
        this.textLayout.getPrimaryHorizontal(this.currentStart);
        int lineBottom2 = this.textLayout.getLineBottom(lineForOffset2);
        if (this.currentStart == this.animateToStart) {
            f = 4.0f;
            f3 = f5;
            f2 = 1.0f;
            direction = direction2;
            i = iM1124dp;
            i2 = lineBottom2;
            roundedRect(this.path, -AndroidUtilities.m1124dp(4.0f), this.textLayout.getLineTop(lineForOffset2), 0.0f, this.textLayout.getLineBottom(lineForOffset2), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), true, false);
            canvas.drawPath(this.path, this.selectionPaint);
        } else {
            i = iM1124dp;
            f = 4.0f;
            f2 = 1.0f;
            i2 = lineBottom2;
            f3 = f5;
            direction = direction2;
        }
        canvas.save();
        canvas.translate(((int) ((this.textLayout.getPrimaryHorizontal(this.animateToStart) - (AndroidUtilities.m1124dp(f) * (f2 - this.startOffsetValue))) + ((this.textLayout.getPrimaryHorizontal(this.start) - this.textLayout.getPrimaryHorizontal(this.animateToStart)) * this.startOffsetValue))) - i, i2);
        canvas.scale(interpolation, interpolation, f3, f3);
        this.path.reset();
        this.path.addCircle(f3, f3, f3, direction);
        this.path.addRect(f3, 0.0f, f4, f3, direction);
        canvas.drawPath(this.path, this.textPaint);
        canvas.restore();
        canvas.restore();
    }

    private void roundedRect(Path path, float f, float f2, float f3, float f4, float f5, float f6, boolean z, boolean z2) {
        path.reset();
        if (f5 < 0.0f) {
            f5 = 0.0f;
        }
        if (f6 < 0.0f) {
            f6 = 0.0f;
        }
        float f7 = f3 - f;
        float f8 = f4 - f2;
        float f9 = f7 / 2.0f;
        if (f5 > f9) {
            f5 = f9;
        }
        float f10 = f8 / 2.0f;
        if (f6 > f10) {
            f6 = f10;
        }
        float f11 = f7 - (f5 * 2.0f);
        float f12 = f8 - (2.0f * f6);
        path.moveTo(f3, f2 + f6);
        if (z2) {
            float f13 = -f6;
            path.rQuadTo(0.0f, f13, -f5, f13);
        } else {
            path.rLineTo(0.0f, -f6);
            path.rLineTo(-f5, 0.0f);
        }
        path.rLineTo(-f11, 0.0f);
        if (z) {
            float f14 = -f5;
            path.rQuadTo(f14, 0.0f, f14, f6);
        } else {
            path.rLineTo(-f5, 0.0f);
            path.rLineTo(0.0f, f6);
        }
        path.rLineTo(0.0f, f12);
        path.rLineTo(0.0f, f6);
        path.rLineTo(f5, 0.0f);
        path.rLineTo(f11, 0.0f);
        path.rLineTo(f5, 0.0f);
        path.rLineTo(0.0f, -f6);
        path.rLineTo(0.0f, -f12);
        path.close();
    }

    private void drawSelection(Canvas canvas, StaticLayout staticLayout, int i, int i2) {
        int lineForOffset = staticLayout.getLineForOffset(i);
        int lineForOffset2 = staticLayout.getLineForOffset(i2);
        int primaryHorizontal = (int) staticLayout.getPrimaryHorizontal(i);
        int primaryHorizontal2 = (int) staticLayout.getPrimaryHorizontal(i2);
        if (lineForOffset == lineForOffset2) {
            canvas.drawRect(primaryHorizontal, staticLayout.getLineTop(lineForOffset), primaryHorizontal2, staticLayout.getLineBottom(lineForOffset), this.selectionPaint);
            return;
        }
        canvas.drawRect(primaryHorizontal, staticLayout.getLineTop(lineForOffset), staticLayout.getLineWidth(lineForOffset), staticLayout.getLineBottom(lineForOffset), this.selectionPaint);
        canvas.drawRect(0.0f, staticLayout.getLineTop(lineForOffset2), primaryHorizontal2, staticLayout.getLineBottom(lineForOffset2), this.selectionPaint);
        while (true) {
            lineForOffset++;
            if (lineForOffset >= lineForOffset2) {
                return;
            } else {
                canvas.drawRect(0.0f, staticLayout.getLineTop(lineForOffset), staticLayout.getLineWidth(lineForOffset), staticLayout.getLineBottom(lineForOffset), this.selectionPaint);
            }
        }
    }

    public void show() {
        AndroidUtilities.cancelRunOnUIThread(this.dismissTunnable);
        Animator animator = this.f2097a;
        if (animator != null) {
            animator.removeAllListeners();
            this.f2097a.cancel();
        }
        if (getMeasuredHeight() == 0 || getMeasuredWidth() == 0) {
            this.showOnMeasure = true;
            return;
        }
        this.showing = true;
        setVisibility(0);
        this.prepareProgress = 0.0f;
        this.enterValue = 0.0f;
        this.currentStart = this.start;
        this.currentEnd = this.end;
        this.startOffsetValue = 1.0f;
        this.endOffsetValue = 1.0f;
        invalidate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TextSelectionHint$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$show$0(valueAnimator);
            }
        });
        valueAnimatorOfFloat.setDuration(210L);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TextSelectionHint$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$show$1(valueAnimator);
            }
        });
        valueAnimatorOfFloat2.setStartDelay(600L);
        valueAnimatorOfFloat2.setDuration(250L);
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setStartDelay(500L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TextSelectionHint$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$show$2(valueAnimator);
            }
        });
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
        valueAnimatorOfFloat3.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfFloat3.setDuration(500L);
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat4.setStartDelay(400L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TextSelectionHint$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$show$3(valueAnimator);
            }
        });
        valueAnimatorOfFloat4.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfFloat4.setDuration(900L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfFloat3, valueAnimatorOfFloat4);
        this.f2097a = animatorSet;
        animatorSet.start();
        AndroidUtilities.runOnUIThread(this.dismissTunnable, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$0(ValueAnimator valueAnimator) {
        this.prepareProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$1(ValueAnimator valueAnimator) {
        this.enterValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$2(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.startOffsetValue = fFloatValue;
        this.currentStart = (int) (this.animateToStart + ((this.start - r0) * fFloatValue));
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$3(ValueAnimator valueAnimator) {
        this.endOffsetValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.currentEnd = this.animateToEnd + ((int) Math.ceil((this.end - r0) * r4));
        invalidate();
    }

    public void hide() {
        AndroidUtilities.cancelRunOnUIThread(this.dismissTunnable);
        hideInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideInternal() {
        Animator animator = this.f2097a;
        if (animator != null) {
            animator.removeAllListeners();
            this.f2097a.cancel();
        }
        this.showing = false;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.prepareProgress, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TextSelectionHint$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$hideInternal$4(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.TextSelectionHint.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                TextSelectionHint.this.setVisibility(4);
            }
        });
        this.f2097a = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideInternal$4(ValueAnimator valueAnimator) {
        this.prepareProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public float getPrepareProgress() {
        return this.prepareProgress;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
