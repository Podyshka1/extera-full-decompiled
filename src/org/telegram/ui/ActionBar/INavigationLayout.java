package org.telegram.ui.ActionBar;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.util.Supplier;
import java.util.List;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackButtonMenu;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public interface INavigationLayout {

    public enum BackButtonState {
        BACK,
        MENU
    }

    boolean addFragmentToStack(BaseFragment baseFragment, int i);

    boolean allowSwipe();

    void animateThemedValues(ThemeAnimationSettings themeAnimationSettings, Runnable runnable);

    boolean checkTransitionAnimation();

    void closeLastFragment(boolean z);

    void closeLastFragment(boolean z, boolean z2);

    void drawCurrentPreviewFragment(Canvas canvas, Drawable drawable);

    void drawHeaderShadow(Canvas canvas, int i);

    void drawHeaderShadow(Canvas canvas, int i, int i2);

    void expandPreviewFragment();

    void finishPreviewFragment();

    default BottomSheet getBottomSheet() {
        return null;
    }

    int getBottomTabsHeight(boolean z);

    float getCurrentPreviewFragmentAlpha();

    List<BaseFragment> getFragmentStack();

    BaseFragment getLastFragment();

    MessageDrawable getMessageDrawableOutMediaStart();

    MessageDrawable getMessageDrawableOutStart();

    FrameLayout getOverlayContainerView();

    List<BackButtonMenu.PulledDialog> getPulledDialogs();

    float getThemeAnimationValue();

    Window getWindow();

    default boolean hasIntegratedBlurInPreview() {
        return false;
    }

    default boolean isActionBarInCrossfade() {
        return false;
    }

    boolean isInBubbleMode();

    boolean isInPassivePreviewMode();

    boolean isInPreviewMode();

    boolean isIncomingFragmentTouchable();

    boolean isLayersLayout();

    boolean isPreviewOpenAnimationInProgress();

    boolean isRightLayout();

    boolean isSheet();

    boolean isSwipeInProgress();

    boolean isTransitionAnimationInProgress();

    void movePreviewFragment(float f);

    void onBackPressed();

    void onLowMemory();

    void onPause();

    void onResume();

    boolean presentFragment(NavigationParams navigationParams);

    @Deprecated
    void rebuildAllFragmentViews(boolean z, boolean z2);

    void removeAllFragments();

    void removeFragmentFromStack(BaseFragment baseFragment, boolean z);

    void resumeDelayedFragmentAnimation();

    void setBackgroundView(View view);

    void setDelegate(INavigationLayoutDelegate iNavigationLayoutDelegate);

    void setDrawerLayoutContainer(DrawerLayoutContainer drawerLayoutContainer);

    void setFragmentPanTranslationOffset(int i);

    void setFragmentStack(List<BaseFragment> list);

    void setHighlightActionButtons(boolean z);

    void setInBubbleMode(boolean z);

    void setIsSheet(boolean z);

    void setNavigationBarColor(int i);

    void setPulledDialogs(List<BackButtonMenu.PulledDialog> list);

    void setRemoveActionBarExtraHeight(boolean z);

    void setUseAlphaAnimations(boolean z);

    void setWindow(Window window);

    @Deprecated
    void showLastFragment();

    void startActivityForResult(Intent intent, int i);

    void updateTitleOverlay();

    static INavigationLayout newLayout(Context context, boolean z) {
        return new ActionBarLayout(context, z);
    }

    static INavigationLayout newLayout(Context context, boolean z, final Supplier<BottomSheet> supplier) {
        return new ActionBarLayout(context, z) { // from class: org.telegram.ui.ActionBar.INavigationLayout.1
            @Override // org.telegram.ui.ActionBar.ActionBarLayout, org.telegram.ui.ActionBar.INavigationLayout
            public BottomSheet getBottomSheet() {
                return (BottomSheet) supplier.get();
            }
        };
    }

    default void removeFragmentFromStack(BaseFragment baseFragment) {
        removeFragmentFromStack(baseFragment, false);
    }

    default void rebuildFragments(int i) {
        if ((i & 2) != 0) {
            showLastFragment();
        } else {
            boolean z = (i & 1) != 0;
            rebuildAllFragmentViews(z, z);
        }
    }

    default BaseFragment getBackgroundFragment() {
        if (getFragmentStack().size() <= 1) {
            return null;
        }
        return getFragmentStack().get(getFragmentStack().size() - 2);
    }

    default BaseFragment getSafeLastFragment() {
        List<BaseFragment> fragmentStack = getFragmentStack();
        if (fragmentStack != null && !fragmentStack.isEmpty()) {
            for (int size = fragmentStack.size() - 1; size >= 0; size--) {
                BaseFragment baseFragment = fragmentStack.get(size);
                if (baseFragment != null && baseFragment.getContext() != null && !baseFragment.isFinishing() && !baseFragment.isRemovingFromStack()) {
                    return baseFragment;
                }
            }
        }
        return null;
    }

    default <T extends BaseFragment> T findFragment(Class<T> cls) {
        if (getFragmentStack().isEmpty()) {
            return null;
        }
        for (int size = getFragmentStack().size() - 1; size >= 0; size--) {
            T t = (T) getFragmentStack().get(size);
            if (t != null && !t.isFinishing() && !t.isRemovingFromStack() && cls.isInstance(t)) {
                return t;
            }
        }
        return null;
    }

    default void animateThemedValues(Theme.ThemeInfo themeInfo, int i, boolean z, boolean z2) {
        animateThemedValues(new ThemeAnimationSettings(themeInfo, i, z, z2), null);
    }

    default void animateThemedValues(Theme.ThemeInfo themeInfo, int i, boolean z, boolean z2, Runnable runnable) {
        animateThemedValues(new ThemeAnimationSettings(themeInfo, i, z, z2), runnable);
    }

    default Activity getParentActivity() {
        Context context = getView().getContext();
        if (context instanceof Activity) {
            return (Activity) context;
        }
        f$$ExternalSyntheticBUOutline1.m215m("NavigationLayout added in non-activity context!");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    default ViewGroup getView() {
        if (this instanceof ViewGroup) {
            return (ViewGroup) this;
        }
        f$$ExternalSyntheticBUOutline1.m215m("You should override getView() if you're not inheriting from it.");
        return null;
    }

    default void closeLastFragment() {
        closeLastFragment(true);
    }

    default void removeFragmentFromStack(int i) {
        if (i < 0 || i >= getFragmentStack().size()) {
            return;
        }
        removeFragmentFromStack(getFragmentStack().get(i));
    }

    default boolean addFragmentToStack(BaseFragment baseFragment) {
        return addFragmentToStack(baseFragment, -1);
    }

    default boolean presentFragment(BaseFragment baseFragment) {
        return presentFragment(new NavigationParams(baseFragment));
    }

    default boolean presentFragment(BaseFragment baseFragment, boolean z) {
        return presentFragment(new NavigationParams(baseFragment).setRemoveLast(z));
    }

    default boolean presentFragmentAsPreview(BaseFragment baseFragment) {
        return presentFragment(new NavigationParams(baseFragment).setPreview(true));
    }

    default boolean presentFragmentAsPreviewWithMenu(BaseFragment baseFragment, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        return presentFragment(new NavigationParams(baseFragment).setPreview(true).setMenuView(actionBarPopupWindowLayout));
    }

    @Deprecated
    default boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, boolean z4) {
        return presentFragment(new NavigationParams(baseFragment).setRemoveLast(z).setNoAnimation(z2).setCheckPresentFromDelegate(z3).setPreview(z4));
    }

    @Deprecated
    default boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, boolean z4, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        return presentFragment(new NavigationParams(baseFragment).setRemoveLast(z).setNoAnimation(z2).setCheckPresentFromDelegate(z3).setPreview(z4).setMenuView(actionBarPopupWindowLayout));
    }

    default void dismissDialogs() {
        List<BaseFragment> fragmentStack = getFragmentStack();
        if (fragmentStack.isEmpty()) {
            return;
        }
        fragmentStack.get(fragmentStack.size() - 1).dismissCurrentDialog();
    }

    public interface INavigationLayoutDelegate {
        default boolean needAddFragmentToStack(BaseFragment baseFragment, INavigationLayout iNavigationLayout) {
            return true;
        }

        boolean needCloseLastFragment(INavigationLayout iNavigationLayout);

        default boolean needPresentFragment(BaseFragment baseFragment, boolean z, boolean z2, INavigationLayout iNavigationLayout) {
            return true;
        }

        default void onMeasureOverride(int[] iArr) {
        }

        default boolean onPreIme() {
            return false;
        }

        default void onRebuildAllFragments(INavigationLayout iNavigationLayout, boolean z) {
        }

        default void onThemeProgress(float f) {
        }

        default boolean needPresentFragment(INavigationLayout iNavigationLayout, NavigationParams navigationParams) {
            return needPresentFragment(navigationParams.fragment, navigationParams.removeLast, navigationParams.noAnimation, iNavigationLayout);
        }
    }

    public static class NavigationParams {
        public boolean checkPresentFromDelegate = true;
        public boolean forceRightLayout;
        public BaseFragment fragment;
        public ActionBarPopupWindow.ActionBarPopupWindowLayout menuView;
        public boolean noAnimation;
        public boolean preview;
        public boolean removeLast;

        public NavigationParams(BaseFragment baseFragment) {
            this.fragment = baseFragment;
        }

        public NavigationParams forceRightLayout() {
            this.forceRightLayout = true;
            return this;
        }

        public NavigationParams setRemoveLast(boolean z) {
            this.removeLast = z;
            return this;
        }

        public NavigationParams setNoAnimation(boolean z) {
            this.noAnimation = z;
            return this;
        }

        public NavigationParams setCheckPresentFromDelegate(boolean z) {
            this.checkPresentFromDelegate = z;
            return this;
        }

        public NavigationParams setPreview(boolean z) {
            this.preview = z;
            return this;
        }

        public NavigationParams setMenuView(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
            this.menuView = actionBarPopupWindowLayout;
            return this;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class ThemeAnimationSettings {
        public final int accentId;
        public Runnable afterAnimationRunnable;
        public Runnable afterStartDescriptionsAddedRunnable;
        public onAnimationProgress animationProgress;
        public Runnable beforeAnimationRunnable;
        public final boolean instant;
        public final boolean nightTheme;
        public boolean onlyTopFragment;
        public Theme.ResourcesProvider resourcesProvider;
        public final Theme.ThemeInfo theme;
        public boolean applyTheme = true;
        public boolean applyTrulyTheme = true;
        public long duration = 200;

        public interface onAnimationProgress {
            void setProgress(float f);
        }

        public ThemeAnimationSettings(Theme.ThemeInfo themeInfo, int i, boolean z, boolean z2) {
            this.theme = themeInfo;
            this.accentId = i;
            this.nightTheme = z;
            this.instant = z2;
        }
    }

    public static class StartColorsProvider implements Theme.ResourcesProvider {
        SparseIntArray colors = new SparseIntArray();
        int[] keysToSave = {Theme.key_chat_outBubble, Theme.key_chat_outBubbleGradient1, Theme.key_chat_outBubbleGradient2, Theme.key_chat_outBubbleGradient3, Theme.key_chat_outBubbleGradientAnimated, Theme.key_chat_outBubbleShadow};

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public int getColor(int i) {
            int iIndexOfKey = this.colors.indexOfKey(i);
            if (iIndexOfKey >= 0) {
                return this.colors.valueAt(iIndexOfKey);
            }
            return Theme.getColor(i);
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public int getCurrentColor(int i) {
            return this.colors.get(i);
        }

        public void saveColors(Theme.ResourcesProvider resourcesProvider) {
            this.colors.clear();
            for (int i : this.keysToSave) {
                this.colors.put(i, resourcesProvider.getCurrentColor(i));
            }
        }
    }
}
