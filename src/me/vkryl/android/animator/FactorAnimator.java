package me.vkryl.android.animator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import me.vkryl.android.AnimatorUtils;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public class FactorAnimator {
    private ValueAnimator animator;
    private long duration;
    private float factor;
    private final int id;
    private Interpolator interpolator;
    private boolean isAnimating;
    private boolean isBlocked;
    private long startDelay;
    private Runnable startRunnable;
    private final Target target;
    private float toFactor;

    public interface Target {
        default void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        }

        void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator);
    }

    public FactorAnimator(int i, Target target, Interpolator interpolator, long j) {
        if (target == null) {
            Segment$$ExternalSyntheticBUOutline0.m847m();
            throw null;
        }
        this.id = i;
        this.target = target;
        this.interpolator = interpolator;
        this.duration = j;
    }

    public FactorAnimator(int i, Target target, Interpolator interpolator, long j, float f) {
        if (target == null) {
            Segment$$ExternalSyntheticBUOutline0.m847m();
            throw null;
        }
        this.id = i;
        this.target = target;
        this.interpolator = interpolator;
        this.duration = j;
        this.factor = f;
    }

    public boolean cancel() {
        if (!this.isAnimating) {
            return false;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            AsyncTimeout$$ExternalSyntheticBUOutline0.m832m();
            return false;
        }
        setAnimating(false);
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator == null) {
            return true;
        }
        valueAnimator.cancel();
        this.animator = null;
        return true;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setStartDelay(long j) {
        this.startDelay = j;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.interpolator = interpolator;
    }

    public void animateTo(float f) {
        animateTo(f, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeStartRunnable() {
        Runnable runnable = this.startRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnimating(boolean z) {
        if (this.isAnimating != z) {
            this.isAnimating = z;
        }
    }

    public void animateTo(float f, View view) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            AsyncTimeout$$ExternalSyntheticBUOutline0.m832m();
            return;
        }
        if (this.isAnimating) {
            cancel();
        }
        if (this.factor == f) {
            invokeStartRunnable();
            this.target.onFactorChangeFinished(this.id, this.factor, this);
            return;
        }
        if (this.isBlocked) {
            this.factor = f;
            invokeStartRunnable();
            this.target.onFactorChanged(this.id, this.factor, 1.0f, this);
            this.target.onFactorChangeFinished(this.id, this.factor, this);
            return;
        }
        setAnimating(true);
        final float f2 = this.factor;
        final float f3 = f - f2;
        long j = this.duration;
        if (Build.VERSION.SDK_INT >= 26 && !ValueAnimator.areAnimatorsEnabled()) {
            j = 0;
        }
        if (j <= 0) {
            setFactor(f, 1.0f);
            setAnimating(false);
            this.target.onFactorChangeFinished(this.id, f, this);
            return;
        }
        this.toFactor = f;
        ValueAnimator valueAnimatorSimpleValueAnimator = AnimatorUtils.simpleValueAnimator();
        this.animator = valueAnimatorSimpleValueAnimator;
        valueAnimatorSimpleValueAnimator.setDuration(j);
        this.animator.setInterpolator(this.interpolator);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: me.vkryl.android.animator.FactorAnimator$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateTo$0(f2, f3, valueAnimator);
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: me.vkryl.android.animator.FactorAnimator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                FactorAnimator.this.invokeStartRunnable();
            }

            private void finishAnimation() {
                if (FactorAnimator.this.isAnimating) {
                    FactorAnimator.this.setFactor(f2 + f3, 1.0f);
                    FactorAnimator.this.setAnimating(false);
                    FactorAnimator.this.target.onFactorChangeFinished(FactorAnimator.this.id, FactorAnimator.this.factor, FactorAnimator.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                finishAnimation();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                finishAnimation();
            }
        });
        long j2 = this.startDelay;
        if (j2 != 0) {
            this.animator.setStartDelay(j2);
        }
        ValueAnimator valueAnimator = this.animator;
        try {
            if (view != null) {
                AnimatorUtils.startAnimator(view, valueAnimator);
            } else {
                valueAnimator.start();
            }
        } catch (Throwable th) {
            Log.e("tgx", "Cannot start animation", th);
            forceFactor(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateTo$0(float f, float f2, ValueAnimator valueAnimator) {
        if (this.isAnimating) {
            float fraction = AnimatorUtils.getFraction(valueAnimator);
            setFactor(f + (f2 * fraction), fraction);
        }
    }

    public float getToFactor() {
        return this.isAnimating ? this.toFactor : this.factor;
    }

    public float getFactor() {
        return this.factor;
    }

    public boolean isAnimating() {
        return this.isAnimating;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setFactor(float f, float f2) {
        if (this.factor == f) {
            return false;
        }
        this.factor = f;
        this.target.onFactorChanged(this.id, f, f2, this);
        return true;
    }

    public void forceFactor(float f) {
        boolean zCancel = cancel();
        if (setFactor(f, 1.0f) || zCancel) {
            this.target.onFactorChangeFinished(this.id, f, this);
        }
    }
}
