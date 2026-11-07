package com.google.android.material.navigation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: loaded from: classes5.dex */
public class DrawerLayoutUtils {
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    private static final int DEFAULT_SCRIM_ALPHA = Color.alpha(DEFAULT_SCRIM_COLOR);

    private DrawerLayoutUtils() {
    }

    public static ValueAnimator.AnimatorUpdateListener getScrimCloseAnimatorUpdateListener(final DrawerLayout drawerLayout) {
        return new ValueAnimator.AnimatorUpdateListener(drawerLayout) { // from class: com.google.android.material.navigation.DrawerLayoutUtils$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DrawerLayoutUtils.$r8$lambda$Q0EfB5Np2_kRW5ayeCHnYQx1LkA(null, valueAnimator);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$Q0EfB5Np2_kRW5ayeCHnYQx1LkA(DrawerLayout drawerLayout, ValueAnimator valueAnimator) {
        ColorUtils.setAlphaComponent(DEFAULT_SCRIM_COLOR, AnimationUtils.lerp(DEFAULT_SCRIM_ALPHA, 0, valueAnimator.getAnimatedFraction()));
        throw null;
    }

    public static Animator.AnimatorListener getScrimCloseAnimatorListener(DrawerLayout drawerLayout, View view) {
        return new AnimatorListenerAdapter(drawerLayout, view) { // from class: com.google.android.material.navigation.DrawerLayoutUtils.1
            final /* synthetic */ DrawerLayout val$drawerLayout;
            final /* synthetic */ View val$drawerView;

            {
                this.val$drawerView = view;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                throw null;
            }
        };
    }
}
