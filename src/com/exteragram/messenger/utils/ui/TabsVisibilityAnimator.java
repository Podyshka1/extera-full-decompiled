package com.exteragram.messenger.utils.ui;

import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import me.vkryl.android.animator.FactorAnimator;

/* JADX INFO: loaded from: classes4.dex */
public final class TabsVisibilityAnimator {
    private final FloatValueHolder alphaHolder;
    private final SpringAnimation alphaSpring;
    private float alphaValue;
    private float floatValue;
    private final int id;
    private final FloatValueHolder positionHolder;
    private final SpringAnimation positionSpring;
    private final FactorAnimator.Target target;
    private boolean value;

    public TabsVisibilityAnimator(final int i, final FactorAnimator.Target target, boolean z, boolean z2) {
        this.id = i;
        this.target = target;
        this.value = z;
        float f = z ? 1.0f : 0.0f;
        this.floatValue = f;
        this.alphaValue = f;
        FloatValueHolder floatValueHolder = new FloatValueHolder(f);
        this.positionHolder = floatValueHolder;
        SpringAnimation spring = new SpringAnimation(floatValueHolder).setMinimumVisibleChange(0.001f).setSpring(new SpringForce(this.floatValue));
        this.positionSpring = spring;
        spring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.exteragram.messenger.utils.ui.TabsVisibilityAnimator$$ExternalSyntheticLambda0
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                this.f$0.lambda$new$0(dynamicAnimation, f2, f3);
            }
        });
        spring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.exteragram.messenger.utils.ui.TabsVisibilityAnimator$$ExternalSyntheticLambda1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f2, float f3) {
                TabsVisibilityAnimator.$r8$lambda$f6Ks2FI7EWWgRCOfMQqrt1F8F9E(target, i, dynamicAnimation, z3, f2, f3);
            }
        });
        if (z2) {
            FloatValueHolder floatValueHolder2 = new FloatValueHolder(this.alphaValue);
            this.alphaHolder = floatValueHolder2;
            SpringAnimation spring2 = new SpringAnimation(floatValueHolder2).setMinimumVisibleChange(0.001f).setSpring(new SpringForce(this.alphaValue).setStiffness(1600.0f).setDampingRatio(1.0f));
            this.alphaSpring = spring2;
            spring2.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.exteragram.messenger.utils.ui.TabsVisibilityAnimator$$ExternalSyntheticLambda2
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    this.f$0.lambda$new$2(dynamicAnimation, f2, f3);
                }
            });
            return;
        }
        this.alphaHolder = null;
        this.alphaSpring = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(DynamicAnimation dynamicAnimation, float f, float f2) {
        if (this.floatValue != f) {
            this.floatValue = f;
            notifyChanged();
        }
    }

    public static /* synthetic */ void $r8$lambda$f6Ks2FI7EWWgRCOfMQqrt1F8F9E(FactorAnimator.Target target, int i, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (z) {
            return;
        }
        target.onFactorChangeFinished(i, f, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(DynamicAnimation dynamicAnimation, float f, float f2) {
        if (this.alphaValue != f) {
            this.alphaValue = f;
            notifyChanged();
        }
    }

    public void setValue(boolean z, boolean z2) {
        if (this.value == z && z2) {
            return;
        }
        this.value = z;
        float f = z ? 1.0f : 0.0f;
        if (z2) {
            boolean zIsMaterial3NavigationBar = MainTabsUiHelper.isMaterial3NavigationBar();
            this.positionSpring.getSpring().setStiffness(zIsMaterial3NavigationBar ? 700.0f : 380.0f).setDampingRatio(zIsMaterial3NavigationBar ? 0.9f : 0.8f);
            this.positionSpring.animateToFinalPosition(f);
            SpringAnimation springAnimation = this.alphaSpring;
            if (springAnimation != null) {
                springAnimation.animateToFinalPosition(f);
                return;
            }
            return;
        }
        boolean z3 = (this.floatValue == f && this.alphaValue == f) ? false : true;
        snapTo(f);
        if (z3) {
            notifyChanged();
            this.target.onFactorChangeFinished(this.id, f, null);
        }
    }

    public void changeValueSilently(boolean z) {
        this.value = z;
    }

    public void changeValueSilently(float f) {
        snapTo(f);
    }

    public boolean getValue() {
        return this.value;
    }

    public float getFloatValue() {
        return this.floatValue;
    }

    public float getAlphaValue() {
        return this.alphaValue;
    }

    private void snapTo(float f) {
        this.positionSpring.cancel();
        this.positionHolder.setValue(f);
        this.floatValue = f;
        SpringAnimation springAnimation = this.alphaSpring;
        if (springAnimation != null && this.alphaHolder != null) {
            springAnimation.cancel();
            this.alphaHolder.setValue(f);
        }
        this.alphaValue = f;
    }

    private void notifyChanged() {
        this.target.onFactorChanged(this.id, this.floatValue, -1.0f, null);
    }
}
