package org.telegram.ui.Components.inset;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import me.vkryl.android.animator.FactorAnimator;
import me.vkryl.android.animator.VariableFloat;
import me.vkryl.android.animator.VariableRect;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.Components.inset.KeyboardState;
import org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider;

/* JADX INFO: loaded from: classes3.dex */
public class WindowInsetsStateHolder implements WindowInsetsProvider, WindowInsetsInAppController, WindowAnimatedInsetsProvider.Listener {
    private int activeAnimations;
    private int animatedImeInset;
    private WindowAnimatedInsetsProvider animatedInsetsProvider;
    private View animatedInsetsProviderTarget;
    private float inAppKeyboardBackProgress;
    private int inAppKeyboardHeight;
    private int inAppKeyboardViewHeight;
    private final FactorAnimator insetsAnimator;
    private WindowInsetsCompat lastInsets;
    private boolean locked;
    private final Runnable onUpdateListener;
    public boolean settleViaTreeDispatch;
    private int systemBottomInset;
    private final VariableFloat keyboardVisibility = new VariableFloat(0.0f);
    private final VariableRect insetsMaxRect = new VariableRect();
    private final VariableRect insetsImeRect = new VariableRect();
    private final AnimationNotificationsLocker locker = new AnimationNotificationsLocker();
    private final KeyboardState keyboardState = new KeyboardState(new Utilities.Callback() { // from class: org.telegram.ui.Components.inset.WindowInsetsStateHolder$$ExternalSyntheticLambda0
        @Override // org.telegram.messenger.Utilities.Callback
        public final void run(Object obj) {
            this.f$0.onKeyboardStateChanged((KeyboardState.State) obj);
        }
    });
    private int inAppKeyboardState = 1;
    private final Runnable closeInAppKeyboard = new Runnable() { // from class: org.telegram.ui.Components.inset.WindowInsetsStateHolder$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };

    public WindowInsetsCompat filterInsets(WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat;
    }

    public WindowInsetsStateHolder(final Runnable runnable) {
        this.onUpdateListener = runnable;
        this.insetsAnimator = new FactorAnimator(0, new FactorAnimator.Target() { // from class: org.telegram.ui.Components.inset.WindowInsetsStateHolder.1
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                WindowInsetsStateHolder.this.insetsMaxRect.applyAnimation(f);
                WindowInsetsStateHolder.this.insetsImeRect.applyAnimation(f);
                WindowInsetsStateHolder.this.keyboardVisibility.applyAnimation(f);
                runnable.run();
            }

            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
                boolean z;
                boolean z2 = true;
                if ((WindowInsetsStateHolder.this.getAnimatedImeBottomInset() == 0.0f && WindowInsetsStateHolder.this.inAppKeyboardState == 2) || WindowInsetsStateHolder.this.inAppKeyboardState == 3) {
                    WindowInsetsStateHolder.this.inAppKeyboardState = 1;
                    WindowInsetsStateHolder.this.inAppKeyboardBackProgress = 0.0f;
                    z = true;
                } else {
                    z = false;
                }
                if (f != 1.0f || WindowInsetsStateHolder.this.inAppKeyboardViewHeight == WindowInsetsStateHolder.this.inAppKeyboardHeight) {
                    z2 = z;
                } else {
                    WindowInsetsStateHolder windowInsetsStateHolder = WindowInsetsStateHolder.this;
                    windowInsetsStateHolder.inAppKeyboardViewHeight = windowInsetsStateHolder.inAppKeyboardHeight;
                }
                if (z2) {
                    runnable.run();
                }
                WindowInsetsStateHolder.this.checkAnimationsLocker();
            }
        }, AdjustPanLayoutHelper.keyboardInterpolator, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAnimationsLocker() {
        boolean zIsAnimating = this.insetsAnimator.isAnimating();
        if (!this.locked && zIsAnimating) {
            this.locked = true;
            this.locker.lock();
        }
        if (!this.locked || zIsAnimating) {
            return;
        }
        this.locked = false;
        this.locker.unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyboardStateChanged(KeyboardState.State state) {
        int i;
        if (state == KeyboardState.State.STATE_FULLY_VISIBLE && ((i = this.inAppKeyboardState) == 2 || i == 3)) {
            this.inAppKeyboardState = 1;
        }
        this.onUpdateListener.run();
    }

    public void setInsets(WindowInsetsCompat windowInsetsCompat) {
        setInsets(windowInsetsCompat, this.lastInsets != null);
    }

    public void setInsets(WindowInsetsCompat windowInsetsCompat, boolean z) {
        Insets insetsMax;
        WindowInsetsCompat windowInsetsCompatFilterInsets = filterInsets(windowInsetsCompat);
        this.lastInsets = windowInsetsCompatFilterInsets;
        int iSystemBars = WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout();
        if (windowInsetsCompatFilterInsets != null) {
            insetsMax = Insets.max(windowInsetsCompatFilterInsets.getInsets(iSystemBars), windowInsetsCompatFilterInsets.getInsetsIgnoringVisibility(iSystemBars));
        } else {
            insetsMax = Insets.NONE;
        }
        Insets insets = windowInsetsCompatFilterInsets != null ? windowInsetsCompatFilterInsets.getInsets(WindowInsetsCompat.Type.ime()) : Insets.NONE;
        this.systemBottomInset = insetsMax.bottom;
        KeyboardState.State state = this.keyboardState.getState();
        KeyboardState.State keyboardVisibility = this.keyboardState.setKeyboardVisibility(insets.bottom > 0, !z, false);
        int i = this.inAppKeyboardState;
        if (i == 2) {
            this.inAppKeyboardHeight = 0;
        }
        if (i == 3 && insets.bottom > 0) {
            this.inAppKeyboardHeight = 0;
        }
        Insets insetsMax2 = Insets.max(insets, Insets.of(0, 0, 0, this.inAppKeyboardHeight));
        Insets insetsMax3 = Insets.max(insetsMax, insetsMax2);
        if (z) {
            if (this.keyboardVisibility.differs(insetsMax2.bottom > 0 ? 1.0f : 0.0f) || this.insetsMaxRect.differs(insetsMax3.left, insetsMax3.top, insetsMax3.right, insetsMax3.bottom) || this.insetsImeRect.differs(insetsMax2.left, insetsMax2.top, insetsMax2.right, insetsMax2.bottom)) {
                this.insetsAnimator.cancel();
                this.keyboardVisibility.finishAnimation(false);
                this.insetsMaxRect.finishAnimation(false);
                this.insetsImeRect.finishAnimation(false);
                this.keyboardVisibility.setTo(insetsMax2.bottom > 0 ? 1.0f : 0.0f);
                this.insetsMaxRect.setTo(insetsMax3.left, insetsMax3.top, insetsMax3.right, insetsMax3.bottom);
                this.insetsImeRect.setTo(insetsMax2.left, insetsMax2.top, insetsMax2.right, insetsMax2.bottom);
                this.insetsAnimator.forceFactor(0.0f);
                this.insetsAnimator.animateTo(1.0f);
            } else if (state != keyboardVisibility) {
                this.onUpdateListener.run();
            }
        } else {
            this.insetsAnimator.cancel();
            this.keyboardVisibility.set(insetsMax2.bottom > 0 ? 1.0f : 0.0f);
            this.insetsMaxRect.set(insetsMax3.left, insetsMax3.top, insetsMax3.right, insetsMax3.bottom);
            this.insetsImeRect.set(insetsMax2.left, insetsMax2.top, insetsMax2.right, insetsMax2.bottom);
            this.onUpdateListener.run();
        }
        checkAnimationsLocker();
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsProvider
    public boolean inAppViewIsVisible() {
        return this.inAppKeyboardState != 1;
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsProvider
    public int getInAppKeyboardRecommendedViewHeight() {
        return this.inAppKeyboardViewHeight;
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsProvider
    public int getCurrentNavigationBarInset() {
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        }
        return 0;
    }

    public Insets getInsets(int i) {
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        return windowInsetsCompat != null ? windowInsetsCompat.getInsets(i) : Insets.NONE;
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsProvider
    public float getAnimatedMaxBottomInset() {
        if (this.inAppKeyboardBackProgress > 0.0f) {
            return Math.max(this.systemBottomInset, getAnimatedImeBottomInset());
        }
        if (this.animatedInsetsProvider != null && this.activeAnimations > 0) {
            return Math.max(this.animatedImeInset, this.insetsMaxRect.getBottom());
        }
        return this.insetsMaxRect.getBottom();
    }

    public int getCurrentMaxBottomInset() {
        if (this.animatedInsetsProvider != null && this.activeAnimations > 0) {
            return Math.max(this.animatedImeInset, Math.max(getInsets(WindowInsetsCompat.Type.ime() | WindowInsetsCompat.Type.systemBars()).bottom, this.inAppKeyboardHeight));
        }
        return Math.max(getInsets(WindowInsetsCompat.Type.ime() | WindowInsetsCompat.Type.systemBars()).bottom, this.inAppKeyboardHeight);
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsProvider
    public float getAnimatedImeBottomInset() {
        float bottom = this.insetsImeRect.getBottom() * (1.0f - this.inAppKeyboardBackProgress);
        return (this.animatedInsetsProvider == null || this.activeAnimations <= 0) ? bottom : Math.max(this.animatedImeInset, bottom);
    }

    public float getAnimatedKeyboardVisibility() {
        return this.keyboardVisibility.get();
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsInAppController
    public void setInAppKeyboardBackProgress(float f) {
        if (this.inAppKeyboardBackProgress != f) {
            this.inAppKeyboardBackProgress = f;
            this.onUpdateListener.run();
        }
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsInAppController
    public void requestInAppKeyboardHeight(int i) {
        if (this.inAppKeyboardHeight == i && this.inAppKeyboardState == 0) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.closeInAppKeyboard);
        this.inAppKeyboardViewHeight = Math.max(this.inAppKeyboardHeight, i);
        this.inAppKeyboardHeight = i;
        this.inAppKeyboardState = 0;
        this.inAppKeyboardBackProgress = 0.0f;
        setInsets(this.lastInsets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.inAppKeyboardHeight != 0) {
            resetInAppKeyboardHeight(false);
        }
    }

    public int getInAppKeyboardHeight() {
        return this.inAppKeyboardHeight;
    }

    @Override // org.telegram.ui.Components.inset.WindowInsetsInAppController
    public void resetInAppKeyboardHeight(boolean z) {
        if (this.inAppKeyboardHeight == 0) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.closeInAppKeyboard);
        this.inAppKeyboardState = z ? 3 : 2;
        setInsets(this.lastInsets);
        if (z) {
            AndroidUtilities.runOnUIThread(this.closeInAppKeyboard, 1000L);
        }
    }

    public void setupAnimatedInsetsProvider(WindowAnimatedInsetsProvider windowAnimatedInsetsProvider, View view) {
        this.animatedInsetsProvider = windowAnimatedInsetsProvider;
        this.animatedInsetsProviderTarget = view;
        windowAnimatedInsetsProvider.subscribeToWindowInsetsAnimation(this);
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public View getAnimatedInsetsTargetView() {
        return this.animatedInsetsProviderTarget;
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public void onAnimatedInsetsChanged(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompatFilterInsets = filterInsets(windowInsetsCompat);
        this.animatedImeInset = windowInsetsCompatFilterInsets != null ? windowInsetsCompatFilterInsets.getInsets(WindowInsetsCompat.Type.ime()).bottom : 0;
        this.onUpdateListener.run();
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public void onAnimatedInsetsStarted() {
        this.activeAnimations++;
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public void onAnimatedInsetsFinished() {
        View view = this.animatedInsetsProviderTarget;
        if (view != null) {
            view.postOnAnimation(new Runnable() { // from class: org.telegram.ui.Components.inset.WindowInsetsStateHolder$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAnimatedInsetsFinished$1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAnimatedInsetsFinished$1() {
        int i = this.activeAnimations - 1;
        this.activeAnimations = i;
        if (i == 0) {
            boolean z = this.settleViaTreeDispatch;
            View view = this.animatedInsetsProviderTarget;
            if (z) {
                ViewCompat.requestApplyInsets(view);
            } else {
                setInsets(WindowAnimatedInsetsProvider.calculateWindowInsets(view), false);
            }
        }
    }
}
