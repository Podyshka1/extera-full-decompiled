package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior {
    private static final int DEFAULT_ENTER_ANIMATION_DURATION_MS = 225;
    private static final int DEFAULT_EXIT_ANIMATION_DURATION_MS = 175;
    public static final int STATE_SCROLLED_DOWN = 1;
    public static final int STATE_SCROLLED_UP = 2;
    private AccessibilityManager accessibilityManager;
    private int additionalHiddenOffsetY;
    private ViewPropertyAnimator currentAnimator;
    private int currentState;
    private boolean disableOnTouchExploration;
    private int enterAnimDuration;
    private TimeInterpolator enterAnimInterpolator;
    private int exitAnimDuration;
    private TimeInterpolator exitAnimInterpolator;
    private int height;
    private final LinkedHashSet<OnScrollStateChangedListener> onScrollStateChangedListeners;
    private AccessibilityManager.TouchExplorationStateChangeListener touchExplorationListener;
    private static final int ENTER_ANIM_DURATION_ATTR = C1349R.attr.motionDurationLong2;
    private static final int EXIT_ANIM_DURATION_ATTR = C1349R.attr.motionDurationMedium4;
    private static final int ENTER_EXIT_ANIM_EASING_ATTR = C1349R.attr.motionEasingEmphasizedInterpolator;

    public interface OnScrollStateChangedListener {
        void onStateChanged(View view, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }

    public HideBottomViewOnScrollBehavior() {
        this.onScrollStateChangedListeners = new LinkedHashSet<>();
        this.height = 0;
        this.disableOnTouchExploration = true;
        this.currentState = 2;
        this.additionalHiddenOffsetY = 0;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.onScrollStateChangedListeners = new LinkedHashSet<>();
        this.height = 0;
        this.disableOnTouchExploration = true;
        this.currentState = 2;
        this.additionalHiddenOffsetY = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.height = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        this.enterAnimDuration = MotionUtils.resolveThemeDuration(v.getContext(), ENTER_ANIM_DURATION_ATTR, 225);
        this.exitAnimDuration = MotionUtils.resolveThemeDuration(v.getContext(), EXIT_ANIM_DURATION_ATTR, 175);
        Context context = v.getContext();
        int i2 = ENTER_EXIT_ANIM_EASING_ATTR;
        this.enterAnimInterpolator = MotionUtils.resolveThemeInterpolator(context, i2, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        this.exitAnimInterpolator = MotionUtils.resolveThemeInterpolator(v.getContext(), i2, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        disableIfTouchExplorationEnabled(v);
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    private void disableIfTouchExplorationEnabled(final V v) {
        if (this.accessibilityManager == null) {
            this.accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(v.getContext(), AccessibilityManager.class);
        }
        if (this.accessibilityManager == null || this.touchExplorationListener != null) {
            return;
        }
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$$ExternalSyntheticLambda0
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                HideBottomViewOnScrollBehavior.m3409$r8$lambda$u8hW3V09BoGAavrLZRTR540LS0(this.f$0, v, z);
            }
        };
        this.touchExplorationListener = touchExplorationStateChangeListener;
        this.accessibilityManager.addTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        v.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (HideBottomViewOnScrollBehavior.this.touchExplorationListener == null || HideBottomViewOnScrollBehavior.this.accessibilityManager == null) {
                    return;
                }
                HideBottomViewOnScrollBehavior.this.accessibilityManager.removeTouchExplorationStateChangeListener(HideBottomViewOnScrollBehavior.this.touchExplorationListener);
                HideBottomViewOnScrollBehavior.this.touchExplorationListener = null;
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$u8hW3V09BoGAavr-LZRTR540LS0, reason: not valid java name */
    public static /* synthetic */ void m3409$r8$lambda$u8hW3V09BoGAavrLZRTR540LS0(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior, View view, boolean z) {
        if (!z) {
            hideBottomViewOnScrollBehavior.getClass();
        } else if (hideBottomViewOnScrollBehavior.isScrolledDown()) {
            hideBottomViewOnScrollBehavior.slideUp(view);
        }
    }

    public void setAdditionalHiddenOffsetY(V v, int i) {
        this.additionalHiddenOffsetY = i;
        if (this.currentState == 1) {
            v.setTranslationY(this.height + i);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i2 > 0) {
            slideDown(v);
        } else if (i2 < 0) {
            slideUp(v);
        }
    }

    public boolean isScrolledUp() {
        return this.currentState == 2;
    }

    public void slideUp(V v) {
        slideUp(v, true);
    }

    public void slideUp(V v, boolean z) {
        if (isScrolledUp()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        updateCurrentState(v, 2);
        if (z) {
            animateChildTo(v, 0, this.enterAnimDuration, this.enterAnimInterpolator);
        } else {
            v.setTranslationY(0);
        }
    }

    public boolean isScrolledDown() {
        return this.currentState == 1;
    }

    public void slideDown(V v) {
        slideDown(v, true);
    }

    public void slideDown(V v, boolean z) {
        AccessibilityManager accessibilityManager;
        if (isScrolledDown()) {
            return;
        }
        if (this.disableOnTouchExploration && (accessibilityManager = this.accessibilityManager) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        updateCurrentState(v, 1);
        int i = this.height + this.additionalHiddenOffsetY;
        if (z) {
            animateChildTo(v, i, this.exitAnimDuration, this.exitAnimInterpolator);
        } else {
            v.setTranslationY(i);
        }
    }

    private void updateCurrentState(V v, int i) {
        this.currentState = i;
        Iterator<OnScrollStateChangedListener> it = this.onScrollStateChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onStateChanged(v, this.currentState);
        }
    }

    private void animateChildTo(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.currentAnimator = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.currentAnimator = null;
            }
        });
    }

    public void addOnScrollStateChangedListener(OnScrollStateChangedListener onScrollStateChangedListener) {
        this.onScrollStateChangedListeners.add(onScrollStateChangedListener);
    }

    public void removeOnScrollStateChangedListener(OnScrollStateChangedListener onScrollStateChangedListener) {
        this.onScrollStateChangedListeners.remove(onScrollStateChangedListener);
    }

    public void clearOnScrollStateChangedListeners() {
        this.onScrollStateChangedListeners.clear();
    }

    public void disableOnTouchExploration(boolean z) {
        this.disableOnTouchExploration = z;
    }

    public boolean isDisabledOnTouchExploration() {
        return this.disableOnTouchExploration;
    }
}
