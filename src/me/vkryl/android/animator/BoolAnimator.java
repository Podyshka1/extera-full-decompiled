package me.vkryl.android.animator;

import android.view.View;
import android.view.animation.Interpolator;
import me.vkryl.android.animator.FactorAnimator;

/* JADX INFO: loaded from: classes.dex */
public class BoolAnimator implements FactorAnimator.Target {
    private FactorAnimator animator;
    private long duration;
    private float floatValue;
    private final int id;
    private Interpolator interpolator;
    private long startDelay;
    private final FactorAnimator.Target target;
    private boolean value;

    public BoolAnimator(final View view, Interpolator interpolator, long j) {
        this(0, new FactorAnimator.Target() { // from class: me.vkryl.android.animator.BoolAnimator$$ExternalSyntheticLambda1
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                view.invalidate();
            }
        }, interpolator, j, false);
    }

    public BoolAnimator(final View view, Interpolator interpolator, long j, boolean z) {
        this(0, new FactorAnimator.Target() { // from class: me.vkryl.android.animator.BoolAnimator$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                view.invalidate();
            }
        }, interpolator, j, z);
    }

    public BoolAnimator(int i, FactorAnimator.Target target, Interpolator interpolator, long j) {
        this(i, target, interpolator, j, false);
    }

    public BoolAnimator(int i, FactorAnimator.Target target, Interpolator interpolator, long j, boolean z) {
        this.id = i;
        this.target = target;
        this.interpolator = interpolator;
        this.duration = j;
        this.value = z;
        this.floatValue = z ? 1.0f : 0.0f;
    }

    public void setDuration(long j) {
        this.duration = j;
        FactorAnimator factorAnimator = this.animator;
        if (factorAnimator != null) {
            factorAnimator.setDuration(j);
        }
    }

    public void setInterpolator(Interpolator interpolator) {
        this.interpolator = interpolator;
        FactorAnimator factorAnimator = this.animator;
        if (factorAnimator != null) {
            factorAnimator.setInterpolator(interpolator);
        }
    }

    public boolean isAnimating() {
        FactorAnimator factorAnimator = this.animator;
        return factorAnimator != null && factorAnimator.isAnimating();
    }

    public void setValue(boolean z, boolean z2) {
        setValue(z, z2, null);
    }

    public void setValue(boolean z, boolean z2, View view) {
        BoolAnimator boolAnimator;
        if (this.value == z && z2) {
            return;
        }
        this.value = z;
        float f = z ? 1.0f : 0.0f;
        FactorAnimator factorAnimator = this.animator;
        if (!z2) {
            if (factorAnimator != null) {
                factorAnimator.forceFactor(f);
            }
            if (this.floatValue != f) {
                setFloatValue(f);
                this.target.onFactorChangeFinished(this.id, f, null);
                return;
            }
            return;
        }
        if (factorAnimator == null) {
            boolAnimator = this;
            FactorAnimator factorAnimator2 = new FactorAnimator(0, boolAnimator, this.interpolator, this.duration, this.floatValue);
            boolAnimator.animator = factorAnimator2;
            long j = boolAnimator.startDelay;
            if (j != 0) {
                factorAnimator2.setStartDelay(j);
            }
        } else {
            boolAnimator = this;
        }
        boolAnimator.animator.animateTo(f, view);
    }

    public void changeValueSilently(boolean z) {
        this.value = z;
    }

    public void changeValueSilently(float f) {
        this.floatValue = f;
    }

    public boolean getValue() {
        return this.value;
    }

    public float getFloatValue() {
        return this.floatValue;
    }

    private void setFloatValue(float f) {
        if (this.floatValue != f) {
            this.floatValue = f;
            this.target.onFactorChanged(this.id, f, -1.0f, null);
        }
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        setFloatValue(f);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        this.target.onFactorChangeFinished(this.id, f, null);
    }
}
