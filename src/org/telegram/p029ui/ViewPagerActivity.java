package org.telegram.p029ui;

import android.content.Context;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ViewPagerFixed;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ViewPagerActivity extends BaseFragment {
    protected FrameLayout contentView;
    private boolean isFullyVisible;
    private boolean isResumed;
    private String titleOverlay;
    private Runnable titleOverlayAction;
    private int titleOverlayId;
    protected ViewPagerFixed viewPager;
    protected final SparseArray fragmentsArr = new SparseArray();
    private int initialFragmentPosition = -1;
    private float visibilityByParent = 0.0f;

    protected abstract boolean canScrollBackward(MotionEvent motionEvent);

    protected abstract boolean canScrollForward(MotionEvent motionEvent);

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ActionBar createActionBar(Context context) {
        return null;
    }

    protected abstract BaseFragment createBaseFragmentAt(int i);

    protected abstract FrameLayout createContentView(Context context);

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    protected abstract int getFragmentsCount();

    protected abstract int getStartPosition();

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    protected abstract void onViewPagerScrollEnd();

    protected abstract void onViewPagerTabAnimationUpdate(boolean z);

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        int size = this.fragmentsArr.size();
        for (int i = 0; i < size; i++) {
            FragmentState fragmentState = (FragmentState) this.fragmentsArr.valueAt(i);
            if (fragmentState != null) {
                fragmentState.fragment.onFragmentDestroy();
            }
        }
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.contentView = createContentView(context);
        this.viewPager = new ViewPagerFixed(context) { // from class: org.telegram.ui.ViewPagerActivity.1
            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected long getManualScrollDuration() {
                return 320L;
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected void onScrollEnd() {
                super.onScrollEnd();
                ViewPagerActivity.this.onViewPagerScrollEnd();
                ViewPagerActivity.this.checkFragmentsVisibility();
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected float getAvailableTranslationX() {
                return getMeasuredWidth();
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected void onItemSelected(View view, View view2, int i, int i2) {
                super.onItemSelected(view, view2, i, i2);
                ViewPagerActivity.this.checkFragmentsVisibility();
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            public void onTabAnimationUpdate(boolean z) {
                super.onTabAnimationUpdate(z);
                ViewPagerActivity.this.onViewPagerTabAnimationUpdate(z);
                ViewPagerActivity.this.checkFragmentsVisibility();
                ViewPagerActivity.this.checkSystemBarColors();
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected boolean canScrollBackward(MotionEvent motionEvent) {
                return ViewPagerActivity.this.canScrollBackward(motionEvent);
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected boolean canScrollForward(MotionEvent motionEvent) {
                return ViewPagerActivity.this.canScrollForward(motionEvent);
            }
        };
        if (this.initialFragmentPosition == -1) {
            this.initialFragmentPosition = getStartPosition();
        }
        this.viewPager.setPosition(this.initialFragmentPosition);
        this.viewPager.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.ViewPagerActivity.2
            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return ViewPagerActivity.this.getFragmentsCount();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public View createView(int i) {
                return new FrameLayout(context);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i, int i2) {
                BaseFragment baseFragment;
                FragmentState fragmentState = (FragmentState) ViewPagerActivity.this.fragmentsArr.get(i);
                if (fragmentState != null) {
                    baseFragment = fragmentState.fragment;
                } else {
                    BaseFragment baseFragmentCreateBaseFragmentAt = ViewPagerActivity.this.createBaseFragmentAt(i);
                    FragmentState fragmentState2 = new FragmentState(baseFragmentCreateBaseFragmentAt);
                    ViewPagerActivity.this.fragmentsArr.put(i, fragmentState2);
                    baseFragment = baseFragmentCreateBaseFragmentAt;
                    fragmentState = fragmentState2;
                }
                if (!fragmentState.onCreateCalled) {
                    baseFragment.onFragmentCreate();
                    fragmentState.onCreateCalled = true;
                }
                baseFragment.setParentLayout(ViewPagerActivity.this.getParentLayout());
                if (baseFragment.getFragmentView() == null) {
                    baseFragment.createView(context);
                    baseFragment.setTitleOverlayText(ViewPagerActivity.this.titleOverlay, ViewPagerActivity.this.titleOverlayId, ViewPagerActivity.this.titleOverlayAction);
                }
                FrameLayout frameLayout = (FrameLayout) view;
                frameLayout.removeAllViews();
                AndroidUtilities.removeFromParent(baseFragment.getFragmentView());
                frameLayout.addView(baseFragment.getFragmentView(), LayoutHelper.createFrame(-1, -1.0f));
                if (baseFragment.getActionBar() != null && baseFragment.getActionBar().shouldAddToContainer()) {
                    AndroidUtilities.removeFromParent(baseFragment.getActionBar());
                    frameLayout.addView(baseFragment.getActionBar());
                }
                ViewCompat.requestApplyInsets(frameLayout);
                ViewPagerActivity.this.checkSystemBarColors();
                ViewPagerActivity.this.checkFragmentsVisibility();
            }
        });
        this.contentView.addView(this.viewPager, LayoutHelper.createFrame(-1, -1.0f));
        FrameLayout frameLayout = this.contentView;
        this.fragmentView = frameLayout;
        ViewCompat.setOnApplyWindowInsetsListener(frameLayout, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ViewPagerActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view, windowInsetsCompat);
            }
        });
        return this.fragmentView;
    }

    protected void putFragmentAtPosition(int i, BaseFragment baseFragment) {
        this.fragmentsArr.put(i, new FragmentState(baseFragment));
    }

    protected WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        View fragmentView;
        int size = this.fragmentsArr.size();
        for (int i = 0; i < size; i++) {
            FragmentState fragmentState = (FragmentState) this.fragmentsArr.valueAt(i);
            if (fragmentState != null && (fragmentView = fragmentState.fragment.getFragmentView()) != null) {
                ViewCompat.dispatchApplyWindowInsets(fragmentView, windowInsetsCompat);
            }
        }
        return WindowInsetsCompat.CONSUMED;
    }

    public BaseFragment getCurrentVisibleFragment() {
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed == null) {
            return null;
        }
        FragmentState fragmentState = (FragmentState) this.fragmentsArr.get(viewPagerFixed.getCurrentPosition());
        if (fragmentState != null) {
            return fragmentState.fragment;
        }
        return null;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void clearViews() {
        if (this.viewPager != null) {
            this.initialFragmentPosition = ExteraConfig.BottomNavigationBar.hidden() ? 0 : this.viewPager.getCurrentPosition();
        }
        int size = this.fragmentsArr.size();
        for (int i = 0; i < size; i++) {
            FragmentState fragmentState = (FragmentState) this.fragmentsArr.valueAt(i);
            if (fragmentState != null) {
                fragmentState.fragment.clearViews();
            }
        }
        super.clearViews();
    }

    protected void clearAllHiddenFragments() {
        int currentPosition = this.viewPager.getCurrentPosition();
        int size = this.fragmentsArr.size();
        for (int i = 0; i < size; i++) {
            FragmentState fragmentState = (FragmentState) this.fragmentsArr.valueAt(i);
            if (this.fragmentsArr.keyAt(i) != currentPosition && fragmentState != null) {
                fragmentState.fragment.clearViews();
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        return (currentVisibleFragment == null || currentVisibleFragment.fragmentView == null) ? super.isLightStatusBar() : currentVisibleFragment.isLightStatusBar();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onRequestPermissionsResultFragment(i, strArr, iArr);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (hasShownSheet()) {
            if (z) {
                closeSheet();
            }
            return false;
        }
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment == null || currentVisibleFragment.onBackPressed(z)) {
            return super.onBackPressed(z);
        }
        return false;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        int size = this.fragmentsArr.size();
        for (int i = 0; i < size; i++) {
            FragmentState fragmentState = (FragmentState) this.fragmentsArr.valueAt(i);
            if (fragmentState != null) {
                BaseFragment baseFragment = fragmentState.fragment;
                if (baseFragment.fragmentView != null) {
                    arrayList.addAll(baseFragment.getThemeDescriptions());
                }
            }
        }
        return arrayList;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        this.isResumed = false;
        checkFragmentsVisibility();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.isResumed = true;
        checkSystemBarColors();
        checkFragmentsVisibility();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        super.onTransitionAnimationProgress(z, f);
        if (!z) {
            f = 1.0f - f;
        }
        this.visibilityByParent = f;
        checkFragmentsVisibility();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        super.onBecomeFullyHidden();
        this.visibilityByParent = 0.0f;
        this.isFullyVisible = false;
        checkFragmentsVisibility();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        this.visibilityByParent = 1.0f;
        this.isFullyVisible = true;
        checkFragmentsVisibility();
        checkSystemBarColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFragmentsVisibility() {
        int size = this.fragmentsArr.size();
        for (int i = 0; i < size; i++) {
            FragmentState fragmentState = (FragmentState) this.fragmentsArr.valueAt(i);
            int iKeyAt = this.fragmentsArr.keyAt(i);
            if (fragmentState != null && fragmentState.fragment.fragmentView != null) {
                float positionVisibility = this.viewPager.getPositionVisibility(iKeyAt);
                boolean z = this.isResumed;
                fragmentState.setVisibility(positionVisibility, z ? this.visibilityByParent : 0.0f, this.isFullyVisible, z);
            }
        }
    }

    protected void dropFragmentAtPosition(int i) {
        FragmentState fragmentState = (FragmentState) this.fragmentsArr.get(i);
        if (fragmentState != null) {
            if (fragmentState.isFullyVisible) {
                fragmentState.fragment.onBecomeFullyHidden();
            }
            if (fragmentState.isResumed) {
                fragmentState.fragment.onPause();
            }
            fragmentState.fragment.onFragmentDestroy();
            fragmentState.fragment.setParentLayout(null);
        }
        this.fragmentsArr.remove(i);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void setTitleOverlayTextIfActionBarAttached(String str, int i, Runnable runnable) {
        setTitleOverlayText(str, i, runnable);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void setTitleOverlayText(String str, int i, Runnable runnable) {
        super.setTitleOverlayText(str, i, runnable);
        this.titleOverlay = str;
        this.titleOverlayId = i;
        this.titleOverlayAction = runnable;
        int size = this.fragmentsArr.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentState fragmentState = (FragmentState) this.fragmentsArr.valueAt(i2);
            if (fragmentState != null) {
                fragmentState.fragment.setTitleOverlayText(str, i, runnable);
            }
        }
    }

    protected static class FragmentState {
        public final BaseFragment fragment;
        private boolean isFullyVisible;
        private boolean isInAnimation;
        private boolean isResumed;
        private float lastVisibility;
        private boolean onCreateCalled;

        public void setVisibility(float f, float f2, boolean z, boolean z2) {
            float f3 = this.lastVisibility;
            float f4 = f2 * f;
            this.lastVisibility = f4;
            boolean z3 = f4 > f3;
            if (!this.isResumed && f > 0.0f) {
                this.fragment.onResume();
                this.isResumed = true;
            }
            if (!this.isInAnimation && ((f3 == 0.0f || f3 == 1.0f) && f3 != f4 && Math.abs(f3 - f4) != 1.0f)) {
                this.fragment.onTransitionAnimationStart(z3, false);
                this.isInAnimation = true;
            }
            if (this.isInAnimation && f3 != f4) {
                this.fragment.onTransitionAnimationProgress(z3, z3 ? f4 : 1.0f - f4);
            }
            if (this.isInAnimation && (f4 == 0.0f || f4 == 1.0f)) {
                this.fragment.onTransitionAnimationEnd(z3, false);
                this.isInAnimation = false;
            }
            if (!this.isFullyVisible && f4 >= 1.0f) {
                this.fragment.onBecomeFullyVisible();
                this.isFullyVisible = true;
            }
            if (this.isFullyVisible && ((f4 == 0.0f && !z) || f == 0.0f)) {
                this.fragment.onBecomeFullyHidden();
                this.isFullyVisible = false;
            }
            if (this.isResumed) {
                if ((f4 != 0.0f || z2) && f != 0.0f) {
                    return;
                }
                this.fragment.onPause();
                this.isResumed = false;
            }
        }

        private FragmentState(BaseFragment baseFragment) {
            this.fragment = baseFragment;
        }
    }
}
