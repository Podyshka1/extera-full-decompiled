package com.exteragram.messenger.utils.ui;

import android.view.View;
import android.view.ViewTreeObserver;
import android.window.OnBackInvokedCallback;
import com.exteragram.messenger.plugins.PluginsController;
import java.util.function.BooleanSupplier;
import org.telegram.ui.ActionBar.ActionBarLayout;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.Components.GroupCallPip;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.MainTabsActivity;
import org.telegram.ui.ViewPagerActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class PredictiveBackNavigationHelper implements ViewTreeObserver.OnPreDrawListener, ViewTreeObserver.OnWindowFocusChangeListener {
    private static final Class<?>[] BACK_HANDLER_CLASSES = {LaunchActivity.class, ActionBarLayout.class, BaseFragment.class, ViewPagerActivity.class, MainTabsActivity.class, DialogsActivity.class};
    private final LaunchActivity activity;
    private final OnBackInvokedCallback callback;
    private final BooleanSupplier canUseSystemBack;
    private final View decorView;
    private boolean detached;
    private boolean gestureInProgress;
    private boolean registered;

    public PredictiveBackNavigationHelper(final LaunchActivity launchActivity, OnBackInvokedCallback onBackInvokedCallback, final BooleanSupplier booleanSupplier) {
        this.activity = launchActivity;
        View decorView = launchActivity.getWindow().getDecorView();
        this.decorView = decorView;
        this.callback = onBackInvokedCallback;
        this.canUseSystemBack = new BooleanSupplier() { // from class: com.exteragram.messenger.utils.ui.PredictiveBackNavigationHelper$$ExternalSyntheticLambda0
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return PredictiveBackNavigationHelper.m3388$r8$lambda$qmnPV7dc0Iem4Y27aZdk7hEilU(booleanSupplier, launchActivity);
            }
        };
        decorView.getViewTreeObserver().addOnPreDrawListener(this);
        decorView.getViewTreeObserver().addOnWindowFocusChangeListener(this);
        update();
    }

    /* JADX INFO: renamed from: $r8$lambda$qmnPV7dc0Iem4Y27aZdk7h-EilU, reason: not valid java name */
    public static /* synthetic */ boolean m3388$r8$lambda$qmnPV7dc0Iem4Y27aZdk7hEilU(BooleanSupplier booleanSupplier, LaunchActivity launchActivity) {
        return !booleanSupplier.getAsBoolean() && canUseSystemBack(launchActivity);
    }

    private static boolean canUseSystemBack(LaunchActivity launchActivity) {
        INavigationLayout actionBarLayout = launchActivity.getActionBarLayout();
        if ((actionBarLayout instanceof ActionBarLayout) && ((ActionBarLayout) actionBarLayout).canUseSystemBack() && !hasFragments(launchActivity.getLayersActionBarLayout()) && !hasFragments(launchActivity.getRightActionBarLayout()) && !PluginsController.getInstance().hasXposedHook("onBackPressed", BACK_HANDLER_CLASSES) && !GroupCallPip.onBackPressed(false) && launchActivity.onBackPressed(false)) {
            BaseFragment lastFragment = actionBarLayout.getLastFragment();
            if (lastFragment instanceof MainTabsActivity) {
                return ((MainTabsActivity) lastFragment).canUseSystemBack();
            }
            if ((lastFragment instanceof DialogsActivity) && ((DialogsActivity) lastFragment).canUseSystemBack()) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasFragments(INavigationLayout iNavigationLayout) {
        return (iNavigationLayout == null || iNavigationLayout.getFragmentStack().isEmpty()) ? false : true;
    }

    public static void invalidate() {
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity != null) {
            launchActivity.getWindow().getDecorView().invalidate();
        }
    }

    public void setGestureInProgress(boolean z) {
        this.gestureInProgress = z;
        if (z) {
            return;
        }
        this.decorView.invalidate();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SimplifyVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v7 boolean, still in use, count: 1, list:
          (r0v7 boolean) from 0x0028: IF  (r0v7 boolean) == false  -> B:16:0x002a A[HIDDEN]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
        	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:174)
        	at jadx.core.utils.InsnRemover.unbindAllArgs(InsnRemover.java:106)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:90)
        	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:174)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:141)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyArgs(SimplifyVisitor.java:116)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyInsn(SimplifyVisitor.java:132)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyBlock(SimplifyVisitor.java:86)
        	at jadx.core.dex.visitors.SimplifyVisitor.visit(SimplifyVisitor.java:71)
        */
    private void update() {
        /*
            r4 = this;
            boolean r0 = r4.detached
            if (r0 != 0) goto L40
            boolean r0 = r4.gestureInProgress
            if (r0 != 0) goto L40
            org.telegram.ui.LaunchActivity r0 = r4.activity
            boolean r0 = r0.isFinishing()
            if (r0 != 0) goto L40
            org.telegram.ui.LaunchActivity r0 = r4.activity
            boolean r0 = r0.isDestroyed()
            if (r0 == 0) goto L19
            goto L40
        L19:
            java.util.function.BooleanSupplier r0 = r4.canUseSystemBack
            boolean r0 = r0.getAsBoolean()
            r1 = r0 ^ 1
            boolean r2 = r4.registered
            if (r2 != r1) goto L26
            goto L40
        L26:
            org.telegram.ui.LaunchActivity r2 = r4.activity
            if (r0 != 0) goto L35
            android.window.OnBackInvokedDispatcher r0 = r2.getOnBackInvokedDispatcher()
            r2 = 0
            android.window.OnBackInvokedCallback r3 = r4.callback
            r0.registerOnBackInvokedCallback(r2, r3)
            goto L3e
        L35:
            android.window.OnBackInvokedDispatcher r0 = r2.getOnBackInvokedDispatcher()
            android.window.OnBackInvokedCallback r2 = r4.callback
            r0.unregisterOnBackInvokedCallback(r2)
        L3e:
            r4.registered = r1
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.exteragram.messenger.utils.ui.PredictiveBackNavigationHelper.update():void");
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        update();
        return true;
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public void onWindowFocusChanged(boolean z) {
        if (z) {
            update();
        }
    }

    public void detach() {
        this.detached = true;
        ViewTreeObserver viewTreeObserver = this.decorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this);
            viewTreeObserver.removeOnWindowFocusChangeListener(this);
        }
        if (this.registered) {
            this.activity.getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.callback);
            this.registered = false;
        }
    }
}
