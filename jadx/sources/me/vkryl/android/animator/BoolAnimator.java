package me.vkryl.android.animator;

import android.view.View;
import android.view.animation.Interpolator;
import me.vkryl.android.animator.FactorAnimator;

/* JADX INFO: loaded from: classes.dex */
public class BoolAnimator implements FactorAnimator.Target {
    private FactorAnimator animator;
    private long duration;
    private float floatValue;

    /* JADX INFO: renamed from: id */
    private final int f1549id;
    private Interpolator interpolator;
    private long startDelay;
    private final FactorAnimator.Target target;
    private boolean value;

    public BoolAnimator(final View view, Interpolator interpolator, long j) {
        this(0, new FactorAnimator.Target() { // from class: me.vkryl.android.animator.BoolAnimator$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
                FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
            }

            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                view.invalidate();
            }
        }, interpolator, j, false);
    }

    public BoolAnimator(int i, FactorAnimator.Target target, Interpolator interpolator, long j) {
        this(i, target, interpolator, j, false);
    }

    public BoolAnimator(int i, FactorAnimator.Target target, Interpolator interpolator, long j, boolean z) {
        this.f1549id = i;
        this.target = target;
        this.interpolator = interpolator;
        this.duration = j;
        this.value = z;
        this.floatValue = z ? 1.0f : 0.0f;
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
        if (z2) {
            if (this.animator == null) {
                boolAnimator = this;
                FactorAnimator factorAnimator = new FactorAnimator(0, boolAnimator, this.interpolator, this.duration, this.floatValue);
                boolAnimator.animator = factorAnimator;
                long j = boolAnimator.startDelay;
                if (j != 0) {
                    factorAnimator.setStartDelay(j);
                }
            } else {
                boolAnimator = this;
            }
            boolAnimator.animator.animateTo(f, view);
            return;
        }
        FactorAnimator factorAnimator2 = this.animator;
        if (factorAnimator2 != null) {
            factorAnimator2.forceFactor(f);
        }
        if (this.floatValue != f) {
            setFloatValue(f);
            this.target.onFactorChangeFinished(this.f1549id, f, null);
        }
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
            this.target.onFactorChanged(this.f1549id, f, -1.0f, null);
        }
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        setFloatValue(f);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        this.target.onFactorChangeFinished(this.f1549id, f, null);
    }
}
