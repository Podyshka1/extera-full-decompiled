package org.telegram.p029ui.Components;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.util.Property;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ScaleStateListAnimator {
    public static void apply(View view) {
        apply(view, 0.1f, 1.5f, null, null);
    }

    public static void apply(View view, float f, float f2) {
        apply(view, f, f2, null, null);
    }

    public static void apply(View view, float f, float f2, final Consumer consumer, final Consumer consumer2) {
        char c;
        if (view == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        Property property = View.SCALE_X;
        float f3 = 1.0f - f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f3);
        Property property2 = View.SCALE_Y;
        animatorSet2.playTogether(objectAnimatorOfFloat, ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, f3));
        animatorSet2.setDuration(80L);
        AnimatorSet animatorSet3 = new AnimatorSet();
        AnimatorSet animatorSet4 = new AnimatorSet();
        animatorSet4.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) property, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, 1.0f));
        animatorSet4.setInterpolator(new OvershootInterpolator(f2));
        animatorSet4.setDuration(350L);
        StateListAnimator stateListAnimator = new StateListAnimator();
        if (consumer != null) {
            c = 1;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(80L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ScaleStateListAnimator$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    consumer.accept((Float) valueAnimator.getAnimatedValue());
                }
            });
            animatorSet.playTogether(animatorSet2, valueAnimatorOfFloat);
            stateListAnimator.addState(new int[]{R.attr.state_pressed}, animatorSet);
        } else {
            c = 1;
            stateListAnimator.addState(new int[]{R.attr.state_pressed}, animatorSet2);
        }
        if (consumer2 != null) {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
            valueAnimatorOfFloat2.setDuration(350L);
            valueAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ScaleStateListAnimator$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    consumer2.accept((Float) valueAnimator.getAnimatedValue());
                }
            });
            Animator[] animatorArr = new Animator[2];
            animatorArr[0] = animatorSet4;
            animatorArr[c] = valueAnimatorOfFloat2;
            animatorSet3.playTogether(animatorArr);
            stateListAnimator.addState(new int[0], animatorSet3);
        } else {
            stateListAnimator.addState(new int[0], animatorSet4);
        }
        view.setStateListAnimator(stateListAnimator);
    }

    public static void reset(View view) {
        view.setStateListAnimator(null);
    }
}
