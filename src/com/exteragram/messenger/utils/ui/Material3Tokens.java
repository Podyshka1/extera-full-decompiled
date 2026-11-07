package com.exteragram.messenger.utils.ui;

import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Material3Tokens {
    public static SpringAnimation createSpring(float f, float f2, float f3, final Utilities.Callback<Float> callback) {
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(0.0f));
        springAnimation.setMinimumVisibleChange(f3);
        springAnimation.setSpring(new SpringForce(0.0f).setDampingRatio(f).setStiffness(f2));
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.exteragram.messenger.utils.ui.Material3Tokens$$ExternalSyntheticLambda0
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f4, float f5) {
                callback.run(Float.valueOf(f4));
            }
        });
        return springAnimation;
    }

    public static void animate(SpringAnimation springAnimation, float f, float f2) {
        springAnimation.cancel();
        springAnimation.setStartValue(f);
        springAnimation.getSpring().setFinalPosition(f2);
        springAnimation.start();
    }
}
