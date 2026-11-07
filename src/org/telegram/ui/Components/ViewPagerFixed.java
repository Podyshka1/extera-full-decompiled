package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.transition.TransitionManager;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.utils.AppUtils;
import com.google.android.gms.cast.MediaError;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes3.dex */
public class ViewPagerFixed extends FrameLayout {
    private static final Interpolator interpolator = new Interpolator() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda0
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return ViewPagerFixed.$r8$lambda$aoN7Ghc9HAnODMyle0hchIDeT6c(f);
        }
    };
    public Adapter adapter;
    private float additionalOffset;
    private boolean allowDisallowInterceptTouch;
    private boolean animatingForward;
    private boolean backAnimation;
    private float backProgress;
    public int currentPosition;
    public float currentProgress;
    private ValueAnimator manualScrolling;
    private int maximumVelocity;
    private boolean maybeStartTracking;
    protected int nextPosition;
    AnimationNotificationsLocker notificationsLocker;
    private Rect rect;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    private AnimatorSet tabsAnimation;
    private boolean tabsAnimationInProgress;
    TabsView tabsView;
    private final float touchSlop;
    ValueAnimator.AnimatorUpdateListener updateTabProgress;
    private VelocityTracker velocityTracker;
    protected View[] viewPages;
    private int[] viewTypes;
    protected SparseArray<View> viewsByType;

    public void addMoreTabs() {
    }

    public boolean canScroll(MotionEvent motionEvent) {
        return true;
    }

    public boolean canScrollBackward(MotionEvent motionEvent) {
        return true;
    }

    public long getManualScrollDuration() {
        return 540L;
    }

    public void invalidateBlur() {
    }

    public void onBack() {
    }

    public boolean onBackProgress(float f) {
        return false;
    }

    public void onItemSelected(View view, View view2, int i, int i2) {
    }

    public void onScrollEnd() {
    }

    public void onStartTracking() {
    }

    public void onTabAnimationUpdate(boolean z) {
    }

    public void onTabPageSelected(int i) {
    }

    public void onTabScrollEnd(int i) {
    }

    public int tabMarginDp() {
        return 16;
    }

    public static /* synthetic */ float $r8$lambda$aoN7Ghc9HAnODMyle0hchIDeT6c(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    public float getPositionVisibility(int i) {
        if (getMeasuredWidth() == 0) {
            return MathUtils.clamp(1 - Math.abs(getCurrentPosition() - i), 0, 1);
        }
        return MathUtils.clamp(1.0f - Math.abs(getPositionAnimated() - i), 0.0f, 1.0f);
    }

    public float getPositionAnimated() {
        float fClamp;
        View view = this.viewPages[0];
        if (view == null || view.getVisibility() != 0) {
            fClamp = 0.0f;
        } else {
            fClamp = (this.currentPosition * Utilities.clamp(1.0f - Math.abs(this.viewPages[0].getTranslationX() / getAvailableTranslationX()), 1.0f, 0.0f)) + 0.0f;
        }
        View view2 = this.viewPages[1];
        if (view2 == null || view2.getVisibility() != 0) {
            return fClamp;
        }
        return fClamp + (this.nextPosition * Utilities.clamp(1.0f - Math.abs(this.viewPages[1].getTranslationX() / getAvailableTranslationX()), 1.0f, 0.0f));
    }

    public float getCurrentPositionAlpha() {
        View view = this.viewPages[0];
        if (view == null || view.getVisibility() != 0) {
            return 0.0f;
        }
        return Utilities.clamp(1.0f - Math.abs(this.viewPages[0].getTranslationX() / getAvailableTranslationX()), 1.0f, 0.0f);
    }

    public int getNextPosition() {
        return this.nextPosition;
    }

    public float getNextPositionAlpha() {
        View view = this.viewPages[1];
        if (view == null || view.getVisibility() != 0) {
            return 0.0f;
        }
        return Utilities.clamp(1.0f - Math.abs(this.viewPages[1].getTranslationX() / getAvailableTranslationX()), 1.0f, 0.0f);
    }

    public float getAvailableTranslationX() {
        return AndroidUtilities.displaySize.x;
    }

    public boolean canScrollForward(MotionEvent motionEvent) {
        return canScroll(motionEvent);
    }

    public ViewPagerFixed(Context context) {
        this(context, null);
    }

    public ViewPagerFixed(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentProgress = 1.0f;
        this.viewsByType = new SparseArray<>();
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.updateTabProgress = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (ViewPagerFixed.this.tabsAnimationInProgress) {
                    float fAbs = Math.abs(ViewPagerFixed.this.viewPages[0].getTranslationX()) / ViewPagerFixed.this.viewPages[0].getMeasuredWidth();
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    float f = 1.0f - fAbs;
                    viewPagerFixed.currentProgress = f;
                    TabsView tabsView = viewPagerFixed.tabsView;
                    if (tabsView != null) {
                        tabsView.selectTab(viewPagerFixed.nextPosition, viewPagerFixed.currentPosition, f);
                    }
                }
                ViewPagerFixed.this.onTabAnimationUpdate(false);
            }
        };
        this.rect = new Rect();
        this.allowDisallowInterceptTouch = true;
        this.resourcesProvider = resourcesProvider;
        this.touchSlop = AndroidUtilities.getPixelsInCM(0.3f, true);
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.viewTypes = new int[2];
        this.viewPages = new View[2];
        setClipChildren(true);
    }

    public void setAdapter(Adapter adapter) {
        this.adapter = adapter;
        this.viewTypes[0] = adapter.getItemViewType(this.currentPosition);
        this.viewPages[0] = adapter.createView(this.viewTypes[0]);
        if (this.viewPages[0] == null && this.currentPosition != 0) {
            this.currentPosition = 0;
            this.viewTypes[0] = adapter.getItemViewType(0);
            this.viewPages[0] = adapter.createView(this.viewTypes[0]);
        }
        adapter.bindView(this.viewPages[0], this.currentPosition, this.viewTypes[0]);
        addView(this.viewPages[0]);
        this.viewPages[0].setVisibility(0);
        fillTabs(false);
    }

    public void onTabPageSelected(int i, boolean z) {
        onTabPageSelected(i);
    }

    public boolean isManualScrolling() {
        ValueAnimator valueAnimator = this.manualScrolling;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public boolean scrollToPosition(int i) {
        ValueAnimator valueAnimator;
        if (i == this.currentPosition || ((valueAnimator = this.manualScrolling) != null && this.nextPosition == i)) {
            return false;
        }
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.manualScrolling = null;
        }
        boolean z = this.currentPosition < i;
        this.animatingForward = z;
        this.nextPosition = i;
        updateViewForIndex(1);
        onTabPageSelected(i, z);
        View view = this.viewPages[0];
        int measuredWidth = view != null ? view.getMeasuredWidth() : 0;
        View[] viewArr = this.viewPages;
        if (z) {
            setTranslationX(viewArr[1], measuredWidth);
        } else {
            setTranslationX(viewArr[1], -measuredWidth);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.manualScrolling = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$scrollToPosition$1(valueAnimator2);
            }
        });
        this.manualScrolling.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                if (viewPagerFixed.viewPages[1] != null) {
                    viewPagerFixed.swapViews();
                    ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                    viewPagerFixed2.viewsByType.put(viewPagerFixed2.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                    ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                    viewPagerFixed3.removeView(viewPagerFixed3.viewPages[1]);
                    ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                    viewPagerFixed4.setTranslationX(viewPagerFixed4.viewPages[0], 0.0f);
                    ViewPagerFixed.this.viewPages[1] = null;
                }
                ViewPagerFixed.this.manualScrolling = null;
                ViewPagerFixed.this.onTabAnimationUpdate(true);
                TabsView tabsView = ViewPagerFixed.this.tabsView;
                if (tabsView != null) {
                    tabsView.listView.invalidate();
                    ViewPagerFixed.this.tabsView.listView.invalidateViews();
                    ViewPagerFixed.this.tabsView.invalidate();
                }
                ViewPagerFixed.this.onScrollEnd();
                ViewPagerFixed.this.notificationsLocker.unlock();
            }
        });
        this.manualScrolling.setDuration(getManualScrollDuration());
        this.manualScrolling.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.manualScrolling.start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollToPosition$1(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.viewPages[1];
        if (view == null) {
            return;
        }
        if (this.animatingForward) {
            setTranslationX(view, r0[0].getMeasuredWidth() * (1.0f - fFloatValue));
            setTranslationX(this.viewPages[0], (-r0.getMeasuredWidth()) * fFloatValue);
        } else {
            setTranslationX(view, (-r0[0].getMeasuredWidth()) * (1.0f - fFloatValue));
            setTranslationX(this.viewPages[0], r0.getMeasuredWidth() * fFloatValue);
        }
        this.currentProgress = fFloatValue;
        onTabAnimationUpdate(true);
        TabsView tabsView = this.tabsView;
        if (tabsView != null) {
            tabsView.listView.invalidate();
            this.tabsView.listView.invalidateViews();
            this.tabsView.invalidate();
        }
    }

    public TabsView createTabsView(boolean z, int i) {
        TabsView tabsView = new TabsView(getContext(), z, i, this.resourcesProvider) { // from class: org.telegram.ui.Components.ViewPagerFixed.3
            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView
            public void selectTab(int i2, int i3, float f) {
                super.selectTab(i2, i3, f);
                ViewPagerFixed.this.onTabPageSelected(f <= 0.5f ? i2 : i3, i2 < i3);
            }
        };
        this.tabsView = tabsView;
        tabsView.tabMarginDp = tabMarginDp();
        this.tabsView.setDelegate(new TabsView.TabsViewDelegate() { // from class: org.telegram.ui.Components.ViewPagerFixed.4
            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onSamePageSelected() {
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onPageSelected(int i2, boolean z2) {
                ViewPagerFixed.this.animatingForward = z2;
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                viewPagerFixed.nextPosition = i2;
                viewPagerFixed.updateViewForIndex(1);
                ViewPagerFixed.this.onTabPageSelected(i2, z2);
                View view = ViewPagerFixed.this.viewPages[0];
                int measuredWidth = view != null ? view.getMeasuredWidth() : 0;
                ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                View view2 = viewPagerFixed2.viewPages[1];
                if (view2 != null) {
                    if (z2) {
                        viewPagerFixed2.setTranslationX(view2, measuredWidth);
                    } else {
                        viewPagerFixed2.setTranslationX(view2, -measuredWidth);
                    }
                }
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public boolean needsTab(int i2) {
                Adapter adapter = ViewPagerFixed.this.adapter;
                if (adapter == null) {
                    return true;
                }
                return adapter.needsTab(i2);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onPageScrolled(float f) {
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                if (f == 1.0f) {
                    if (viewPagerFixed.viewPages[1] != null) {
                        viewPagerFixed.swapViews();
                        ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                        viewPagerFixed2.viewsByType.put(viewPagerFixed2.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                        ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                        viewPagerFixed3.removeView(viewPagerFixed3.viewPages[1]);
                        ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                        viewPagerFixed4.setTranslationX(viewPagerFixed4.viewPages[0], 0.0f);
                        ViewPagerFixed.this.viewPages[1] = null;
                    }
                    ViewPagerFixed viewPagerFixed5 = ViewPagerFixed.this;
                    viewPagerFixed5.onTabScrollEnd(viewPagerFixed5.currentPosition);
                    return;
                }
                if (viewPagerFixed.viewPages[1] == null) {
                    return;
                }
                boolean z2 = viewPagerFixed.animatingForward;
                ViewPagerFixed viewPagerFixed6 = ViewPagerFixed.this;
                if (z2) {
                    viewPagerFixed6.setTranslationX(viewPagerFixed6.viewPages[1], r1[0].getMeasuredWidth() * (1.0f - f));
                    ViewPagerFixed viewPagerFixed7 = ViewPagerFixed.this;
                    viewPagerFixed7.setTranslationX(viewPagerFixed7.viewPages[0], (-r1.getMeasuredWidth()) * f);
                } else {
                    viewPagerFixed6.setTranslationX(viewPagerFixed6.viewPages[1], (-r1[0].getMeasuredWidth()) * (1.0f - f));
                    ViewPagerFixed viewPagerFixed8 = ViewPagerFixed.this;
                    viewPagerFixed8.setTranslationX(viewPagerFixed8.viewPages[0], r1.getMeasuredWidth() * f);
                }
                ViewPagerFixed.this.onTabAnimationUpdate(false);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public boolean canPerformActions() {
                return (ViewPagerFixed.this.tabsAnimationInProgress || ViewPagerFixed.this.startedTracking) ? false : true;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void invalidateBlur() {
                ViewPagerFixed.this.invalidateBlur();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public boolean canReorder(int i2) {
                Adapter adapter = ViewPagerFixed.this.adapter;
                if (adapter == null) {
                    return false;
                }
                return adapter.canReorder(i2);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void applyReorder(ArrayList<Integer> arrayList) {
                Adapter adapter = ViewPagerFixed.this.adapter;
                if (adapter == null) {
                    return;
                }
                adapter.applyReorder(arrayList);
            }
        });
        fillTabs(false);
        return this.tabsView;
    }

    public ValueAnimator translateAnimator(final View view, final float f) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(view.getTranslationX(), f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewPagerFixed.this.setTranslationX(view, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.6
            boolean canceled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                this.canceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (this.canceled) {
                    return;
                }
                ViewPagerFixed.this.setTranslationX(view, f);
            }
        });
        return valueAnimatorOfFloat;
    }

    public void setTranslationX(View view, float f) {
        view.setTranslationX(f);
    }

    public boolean isTouch() {
        return this.startedTracking;
    }

    public void resetTouch() {
        if (this.startedTracking) {
            this.maybeStartTracking = true;
            this.startedTracking = false;
            setTranslationX(this.viewPages[0], 0.0f);
            View view = this.viewPages[1];
            if (view != null) {
                setTranslationX(view, this.animatingForward ? r2[0].getMeasuredWidth() : -r2[0].getMeasuredWidth());
            }
            this.nextPosition = 0;
            this.currentProgress = 1.0f;
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.selectTab(0, this.currentPosition, 1.0f);
            }
            onTabAnimationUpdate(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewForIndex(int i) {
        int i2 = i == 0 ? this.currentPosition : this.nextPosition;
        if (i2 < 0 || i2 >= this.adapter.getItemCount()) {
            return;
        }
        View view = this.viewPages[i];
        int[] iArr = this.viewTypes;
        if (view == null) {
            iArr[i] = this.adapter.getItemViewType(i2);
            View viewCreateView = this.viewsByType.get(this.viewTypes[i]);
            if (viewCreateView == null) {
                viewCreateView = this.adapter.createView(this.viewTypes[i]);
            } else {
                this.viewsByType.remove(this.viewTypes[i]);
            }
            if (viewCreateView.getParent() != null) {
                ((ViewGroup) viewCreateView.getParent()).removeView(viewCreateView);
            }
            addView(viewCreateView);
            viewCreateView.setTranslationX(getMeasuredWidth());
            this.viewPages[i] = viewCreateView;
            this.adapter.bindView(viewCreateView, i2, this.viewTypes[i]);
            this.viewPages[i].setVisibility(0);
            return;
        }
        if (iArr[i] == this.adapter.getItemViewType(i2)) {
            this.adapter.bindView(this.viewPages[i], i2, this.viewTypes[i]);
            this.viewPages[i].setVisibility(0);
            return;
        }
        this.viewsByType.put(this.viewTypes[i], this.viewPages[i]);
        this.viewPages[i].setVisibility(8);
        removeView(this.viewPages[i]);
        this.viewTypes[i] = this.adapter.getItemViewType(i2);
        View viewCreateView2 = this.viewsByType.get(this.viewTypes[i]);
        if (viewCreateView2 == null) {
            viewCreateView2 = this.adapter.createView(this.viewTypes[i]);
        } else {
            this.viewsByType.remove(this.viewTypes[i]);
        }
        addView(viewCreateView2);
        this.viewPages[i] = viewCreateView2;
        viewCreateView2.setVisibility(0);
        Adapter adapter = this.adapter;
        adapter.bindView(this.viewPages[i], i2, adapter.getItemViewType(i2));
    }

    public void fillTabs(boolean z) {
        TabsView tabsView;
        if (this.adapter == null || (tabsView = this.tabsView) == null) {
            return;
        }
        tabsView.removeTabs();
        for (int i = 0; i < this.adapter.getItemCount(); i++) {
            if (this.adapter.needsTab(i)) {
                this.tabsView.addTab(this.adapter.getItemId(i), this.adapter.getItemTitle(i));
            }
        }
        addMoreTabs();
        if (z) {
            TransitionManager.beginDelayedTransition(this.tabsView.listView, TransitionExt.createSimpleTransition());
        }
        this.tabsView.finishAddingTabs();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean prepareForMoving(MotionEvent motionEvent, boolean z) {
        if (z || this.currentPosition != 0) {
            if ((z && this.currentPosition == this.adapter.getItemCount() - 1) || this.manualScrolling != null || !canScroll(motionEvent)) {
                return false;
            }
            if (z && !canScrollForward(motionEvent)) {
                return false;
            }
            if (!z && !canScrollBackward(motionEvent)) {
                return false;
            }
            Adapter adapter = this.adapter;
            if (adapter != null) {
                if (!adapter.canScrollTo(this.currentPosition + (z ? 1 : -1))) {
                    return false;
                }
            }
            getParent().requestDisallowInterceptTouchEvent(true);
            this.maybeStartTracking = false;
            this.startedTracking = true;
            onStartTracking();
            this.startedTrackingX = (int) (motionEvent.getX() + this.additionalOffset);
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.setEnabled(false);
            }
            this.notificationsLocker.lock();
            this.animatingForward = z;
            this.nextPosition = this.currentPosition + (z ? 1 : -1);
            updateViewForIndex(1);
            View view = this.viewPages[1];
            if (view != null) {
                if (z) {
                    setTranslationX(view, r7[0].getMeasuredWidth());
                } else {
                    setTranslationX(view, -r7[0].getMeasuredWidth());
                }
            }
            onTabAnimationUpdate(false);
            return true;
        }
        this.backProgress = 0.0f;
        if (onBackProgress(0.0f)) {
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TabsView tabsView = this.tabsView;
        if (tabsView != null && tabsView.isAnimatingIndicator()) {
            return false;
        }
        if (checkTabsAnimationInProgress()) {
            return true;
        }
        onTouchEvent(motionEvent);
        return this.startedTracking;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (this.allowDisallowInterceptTouch && this.maybeStartTracking && !this.startedTracking) {
            onTouchEvent(null);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return onTouchEventInternal(motionEvent);
    }

    public boolean onTouchEventInternal(MotionEvent motionEvent) {
        float xVelocity;
        float yVelocity;
        float measuredWidth;
        int measuredWidth2;
        boolean z;
        View viewFindScrollingChild;
        TabsView tabsView = this.tabsView;
        if (tabsView != null && tabsView.animatingIndicator) {
            return false;
        }
        if (motionEvent != null) {
            if (this.velocityTracker == null) {
                this.velocityTracker = VelocityTracker.obtain();
            }
            this.velocityTracker.addMovement(motionEvent);
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && checkTabsAnimationInProgress()) {
            this.startedTracking = true;
            onStartTracking();
            this.startedTrackingPointerId = motionEvent.getPointerId(0);
            int x = (int) motionEvent.getX();
            this.startedTrackingX = x;
            boolean z2 = this.animatingForward;
            View[] viewArr = this.viewPages;
            if (!z2) {
                if (viewArr[1] != null) {
                    if (x < r4.getMeasuredWidth() + this.viewPages[1].getTranslationX()) {
                        swapViews();
                        this.animatingForward = true;
                        this.additionalOffset = this.viewPages[0].getTranslationX();
                    } else {
                        this.additionalOffset = this.viewPages[0].getTranslationX();
                    }
                }
            } else if (x < viewArr[0].getMeasuredWidth() + this.viewPages[0].getTranslationX()) {
                this.additionalOffset = this.viewPages[0].getTranslationX();
            } else {
                swapViews();
                this.animatingForward = false;
                this.additionalOffset = this.viewPages[0].getTranslationX();
            }
            this.tabsAnimation.removeAllListeners();
            this.tabsAnimation.cancel();
            this.tabsAnimationInProgress = false;
        } else if (motionEvent != null && motionEvent.getAction() == 0) {
            this.additionalOffset = 0.0f;
        }
        if (!this.startedTracking && motionEvent != null && (viewFindScrollingChild = findScrollingChild(this, motionEvent.getX(), motionEvent.getY())) != null && (viewFindScrollingChild.canScrollHorizontally(1) || viewFindScrollingChild.canScrollHorizontally(-1))) {
            return false;
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && !this.startedTracking && !this.maybeStartTracking) {
            this.startedTrackingPointerId = motionEvent.getPointerId(0);
            this.maybeStartTracking = true;
            this.startedTrackingX = (int) motionEvent.getX();
            this.startedTrackingY = (int) motionEvent.getY();
        } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
            int x2 = (int) ((motionEvent.getX() - this.startedTrackingX) + this.additionalOffset);
            int iAbs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
            if (this.startedTracking && (((z = this.animatingForward) && x2 > 0) || (!z && x2 < 0))) {
                if (!prepareForMoving(motionEvent, x2 < 0)) {
                    this.maybeStartTracking = true;
                    this.startedTracking = false;
                    setTranslationX(this.viewPages[0], 0.0f);
                    View view = this.viewPages[1];
                    if (view != null) {
                        setTranslationX(view, this.animatingForward ? r0[0].getMeasuredWidth() : -r0[0].getMeasuredWidth());
                    }
                    this.nextPosition = 0;
                    this.currentProgress = 1.0f;
                    TabsView tabsView2 = this.tabsView;
                    if (tabsView2 != null) {
                        tabsView2.selectTab(0, this.currentPosition, 1.0f);
                    }
                    onTabAnimationUpdate(false);
                }
            }
            if (this.maybeStartTracking && !this.startedTracking) {
                int x3 = (int) (motionEvent.getX() - this.startedTrackingX);
                if (Math.abs(x3) >= this.touchSlop && Math.abs(x3) > iAbs) {
                    prepareForMoving(motionEvent, x2 < 0);
                }
            } else if (this.startedTracking) {
                float fAbs = Math.abs(x2) / this.viewPages[0].getMeasuredWidth();
                if (this.nextPosition == -1) {
                    this.backProgress = fAbs;
                    onBackProgress(fAbs);
                } else {
                    setTranslationX(this.viewPages[0], x2);
                    View view2 = this.viewPages[1];
                    if (view2 != null) {
                        if (this.animatingForward) {
                            setTranslationX(view2, r0[0].getMeasuredWidth() + x2);
                        } else {
                            setTranslationX(view2, x2 - r0[0].getMeasuredWidth());
                        }
                    }
                }
                float f = 1.0f - fAbs;
                this.currentProgress = f;
                TabsView tabsView3 = this.tabsView;
                if (tabsView3 != null) {
                    tabsView3.selectTab(this.nextPosition, this.currentPosition, f);
                }
                onTabAnimationUpdate(false);
            }
        } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
            }
            if (motionEvent == null || motionEvent.getAction() == 3) {
                xVelocity = 0.0f;
                yVelocity = 0.0f;
            } else {
                xVelocity = this.velocityTracker.getXVelocity();
                yVelocity = this.velocityTracker.getYVelocity();
                if (!this.startedTracking && Math.abs(xVelocity) >= AppUtils.getSwipeVelocity() && Math.abs(xVelocity) > Math.abs(yVelocity)) {
                    prepareForMoving(motionEvent, xVelocity < 0.0f);
                }
            }
            if (this.startedTracking) {
                float x4 = this.viewPages[0].getX();
                this.tabsAnimation = new AnimatorSet();
                if (this.additionalOffset != 0.0f) {
                    float fAbs2 = Math.abs(xVelocity);
                    float swipeVelocity = AppUtils.getSwipeVelocity();
                    boolean z3 = this.animatingForward;
                    if (fAbs2 > swipeVelocity) {
                        this.backAnimation = !z3 ? xVelocity >= 0.0f : xVelocity <= 0.0f;
                    } else {
                        View[] viewArr2 = this.viewPages;
                        if (z3) {
                            View view3 = viewArr2[1];
                            if (view3 != null) {
                                this.backAnimation = view3.getX() > ((float) (this.viewPages[0].getMeasuredWidth() >> 1));
                            } else {
                                this.backAnimation = false;
                            }
                        } else {
                            this.backAnimation = viewArr2[0].getX() < ((float) (this.viewPages[0].getMeasuredWidth() >> 1));
                        }
                    }
                } else {
                    this.backAnimation = Math.abs(x4) < ((float) this.viewPages[0].getMeasuredWidth()) / 3.0f && (Math.abs(xVelocity) < ((float) AppUtils.getSwipeVelocity()) || Math.abs(xVelocity) < Math.abs(yVelocity));
                }
                if (this.backAnimation) {
                    measuredWidth = Math.abs(x4);
                    boolean z4 = this.animatingForward;
                    AnimatorSet animatorSet = this.tabsAnimation;
                    if (z4) {
                        animatorSet.playTogether(translateAnimator(this.viewPages[0], 0.0f));
                        View view4 = this.viewPages[1];
                        if (view4 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view4, view4.getMeasuredWidth()));
                        }
                    } else {
                        animatorSet.playTogether(translateAnimator(this.viewPages[0], 0.0f));
                        View view5 = this.viewPages[1];
                        if (view5 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view5, -view5.getMeasuredWidth()));
                        }
                    }
                } else if (this.nextPosition >= 0) {
                    measuredWidth = this.viewPages[0].getMeasuredWidth() - Math.abs(x4);
                    boolean z5 = this.animatingForward;
                    AnimatorSet animatorSet2 = this.tabsAnimation;
                    if (z5) {
                        animatorSet2.playTogether(translateAnimator(this.viewPages[0], -r6.getMeasuredWidth()));
                        View view6 = this.viewPages[1];
                        if (view6 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view6, 0.0f));
                        }
                    } else {
                        animatorSet2.playTogether(translateAnimator(this.viewPages[0], r6.getMeasuredWidth()));
                        View view7 = this.viewPages[1];
                        if (view7 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view7, 0.0f));
                        }
                    }
                } else {
                    measuredWidth = 0.0f;
                }
                if (this.nextPosition < 0) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.backProgress, this.backAnimation ? 0.0f : 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$onTouchEventInternal$2(valueAnimator);
                        }
                    });
                    this.tabsAnimation.playTogether(valueAnimatorOfFloat);
                }
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat2.addUpdateListener(this.updateTabProgress);
                this.tabsAnimation.playTogether(valueAnimatorOfFloat2);
                this.tabsAnimation.setInterpolator(interpolator);
                int measuredWidth3 = getMeasuredWidth();
                float f2 = measuredWidth3 / 2;
                float fDistanceInfluenceForSnapDuration = f2 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth3)) * f2);
                float fAbs3 = Math.abs(xVelocity);
                if (fAbs3 > 0.0f) {
                    measuredWidth2 = Math.round(Math.abs(fDistanceInfluenceForSnapDuration / fAbs3) * 1000.0f) * 4;
                } else {
                    measuredWidth2 = (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f);
                }
                this.tabsAnimation.setDuration(Math.max(150, Math.min(measuredWidth2, MediaError.DetailedErrorCode.TEXT_UNKNOWN)));
                this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ViewPagerFixed.this.tabsAnimation = null;
                        ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                        if (viewPagerFixed.nextPosition < 0) {
                            viewPagerFixed.onBack();
                        }
                        ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                        if (viewPagerFixed2.viewPages[1] != null) {
                            if (!viewPagerFixed2.backAnimation) {
                                ViewPagerFixed.this.swapViews();
                            }
                            ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                            viewPagerFixed3.viewsByType.put(viewPagerFixed3.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                            ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                            viewPagerFixed4.removeView(viewPagerFixed4.viewPages[1]);
                            ViewPagerFixed.this.viewPages[1].setVisibility(8);
                            ViewPagerFixed.this.viewPages[1] = null;
                        }
                        ViewPagerFixed.this.tabsAnimationInProgress = false;
                        ViewPagerFixed.this.maybeStartTracking = false;
                        TabsView tabsView4 = ViewPagerFixed.this.tabsView;
                        if (tabsView4 != null) {
                            tabsView4.setEnabled(true);
                        }
                        ViewPagerFixed.this.onTabAnimationUpdate(false);
                        ViewPagerFixed.this.onScrollEnd();
                        ViewPagerFixed.this.notificationsLocker.unlock();
                    }
                });
                this.tabsAnimation.start();
                this.tabsAnimationInProgress = true;
                this.startedTracking = false;
                onTabAnimationUpdate(false);
            } else {
                this.maybeStartTracking = false;
                TabsView tabsView4 = this.tabsView;
                if (tabsView4 != null) {
                    tabsView4.setEnabled(true);
                }
            }
            VelocityTracker velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.velocityTracker = null;
            }
        }
        return this.startedTracking || this.maybeStartTracking;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEventInternal$2(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.backProgress = fFloatValue;
        onBackProgress(fFloatValue);
    }

    public void swapViews() {
        View[] viewArr = this.viewPages;
        View view = viewArr[0];
        View view2 = viewArr[1];
        viewArr[0] = view2;
        viewArr[1] = view;
        int i = this.currentPosition;
        int i2 = this.nextPosition;
        this.currentPosition = i2;
        this.nextPosition = i;
        this.currentProgress = 1.0f - this.currentProgress;
        int[] iArr = this.viewTypes;
        int i3 = iArr[0];
        iArr[0] = iArr[1];
        iArr[1] = i3;
        onItemSelected(view2, view, i2, i);
    }

    public boolean checkTabsAnimationInProgress() {
        boolean z;
        if (!this.tabsAnimationInProgress) {
            return false;
        }
        boolean z2 = this.backAnimation;
        View[] viewArr = this.viewPages;
        if (z2) {
            if (Math.abs(viewArr[0].getTranslationX()) < 1.0f) {
                setTranslationX(this.viewPages[0], 0.0f);
                View view = this.viewPages[1];
                if (view != null) {
                    setTranslationX(view, r0[0].getMeasuredWidth() * (this.animatingForward ? 1 : -1));
                }
                z = true;
            }
            z = false;
        } else {
            if (Math.abs(viewArr[1].getTranslationX()) < 1.0f) {
                setTranslationX(this.viewPages[0], r0.getMeasuredWidth() * (this.animatingForward ? -1 : 1));
                View view2 = this.viewPages[1];
                if (view2 != null) {
                    setTranslationX(view2, 0.0f);
                }
                z = true;
            }
            z = false;
        }
        onTabAnimationUpdate(true);
        if (z) {
            AnimatorSet animatorSet = this.tabsAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.tabsAnimation = null;
            }
            this.tabsAnimationInProgress = false;
        }
        return this.tabsAnimationInProgress;
    }

    public static float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    public void setPosition(int i) {
        if (this.adapter == null) {
            this.currentPosition = i;
            onTabAnimationUpdate(false);
        }
        AnimatorSet animatorSet = this.tabsAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        View view = this.viewPages[1];
        if (view != null) {
            this.viewsByType.put(this.viewTypes[1], view);
            removeView(this.viewPages[1]);
            this.viewPages[1] = null;
        }
        int i2 = this.currentPosition;
        if (i2 != i) {
            this.currentPosition = i;
            this.nextPosition = 0;
            this.currentProgress = 1.0f;
            View view2 = this.viewPages[0];
            updateViewForIndex(0);
            onItemSelected(this.viewPages[0], view2, this.currentPosition, i2);
            setTranslationX(this.viewPages[0], 0.0f);
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.selectTab(this.currentPosition, this.nextPosition, this.currentProgress);
            }
            onTabAnimationUpdate(true);
        }
    }

    public void updateCurrent() {
        if (this.viewTypes[0] != this.adapter.getItemViewType(this.currentPosition)) {
            updateViewForIndex(0);
            View view = this.viewPages[1];
            if (view != null) {
                this.viewsByType.put(this.viewTypes[1], view);
                removeView(this.viewPages[1]);
                this.viewPages[1] = null;
            }
            setTranslationX(this.viewPages[0], 0.0f);
            onTabAnimationUpdate(true);
        }
    }

    public View[] getViewPages() {
        return this.viewPages;
    }

    public boolean isCurrentTabFirst() {
        return this.currentPosition == 0;
    }

    public void rebuild(boolean z) {
        onTouchEvent(null);
        if (!this.adapter.hasStableId()) {
            z = false;
        }
        AnimatorSet animatorSet = this.tabsAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.tabsAnimation = null;
        }
        View view = this.viewPages[1];
        if (view != null) {
            removeView(view);
            this.viewPages[1] = null;
        }
        View[] viewArr = this.viewPages;
        View view2 = viewArr[0];
        viewArr[1] = view2;
        int iIntValue = (view2 == null || view2.getTag() == null) ? 0 : ((Integer) this.viewPages[1].getTag()).intValue();
        if (this.adapter.getItemCount() == 0) {
            View view3 = this.viewPages[1];
            if (view3 != null) {
                removeView(view3);
                this.viewPages[1] = null;
            }
            View view4 = this.viewPages[0];
            if (view4 != null) {
                removeView(view4);
                this.viewPages[0] = null;
                return;
            }
            return;
        }
        if (this.currentPosition > this.adapter.getItemCount() - 1) {
            this.currentPosition = this.adapter.getItemCount() - 1;
        }
        if (this.currentPosition < 0) {
            this.currentPosition = 0;
        }
        this.viewTypes[0] = this.adapter.getItemViewType(this.currentPosition);
        this.viewPages[0] = this.adapter.createView(this.viewTypes[0]);
        this.adapter.bindView(this.viewPages[0], this.currentPosition, this.viewTypes[0]);
        addView(this.viewPages[0]);
        this.viewPages[0].setVisibility(0);
        if ((this.viewPages[0].getTag() == null ? 0 : ((Integer) this.viewPages[0].getTag()).intValue()) == iIntValue) {
            z = false;
        }
        if (z) {
            this.tabsView.saveFromValues();
        }
        fillTabs(z);
        if (z) {
            this.tabsAnimation = new AnimatorSet();
            View view5 = this.viewPages[1];
            if (view5 != null) {
                setTranslationX(view5, 0.0f);
            }
            View view6 = this.viewPages[0];
            if (view6 != null) {
                setTranslationX(view6, -getMeasuredWidth());
            }
            View view7 = this.viewPages[1];
            if (view7 != null) {
                this.tabsAnimation.playTogether(translateAnimator(view7, getMeasuredWidth()));
            }
            View view8 = this.viewPages[0];
            if (view8 != null) {
                this.tabsAnimation.playTogether(translateAnimator(view8, 0.0f));
            }
            onTabAnimationUpdate(true);
            this.tabsView.indicatorProgress2 = 0.0f;
            this.tabsView.listView.invalidateViews();
            this.tabsView.invalidate();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$rebuild$3(valueAnimator);
                }
            });
            this.tabsAnimation.playTogether(valueAnimatorOfFloat);
            this.tabsAnimation.setInterpolator(interpolator);
            this.tabsAnimation.setDuration(220L);
            this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewPagerFixed.this.tabsAnimation = null;
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    View view9 = viewPagerFixed.viewPages[1];
                    if (view9 != null) {
                        viewPagerFixed.removeView(view9);
                        ViewPagerFixed.this.viewPages[1] = null;
                    }
                    ViewPagerFixed.this.tabsAnimationInProgress = false;
                    TabsView tabsView = ViewPagerFixed.this.tabsView;
                    if (tabsView != null) {
                        tabsView.setEnabled(true);
                        ViewPagerFixed.this.tabsView.animatingIndicator = false;
                        ViewPagerFixed.this.tabsView.indicatorProgress2 = 1.0f;
                        ViewPagerFixed.this.tabsView.listView.invalidateViews();
                        ViewPagerFixed.this.tabsView.invalidate();
                    }
                }
            });
            this.tabsView.setEnabled(false);
            this.tabsAnimationInProgress = true;
            this.tabsAnimation.start();
            return;
        }
        View view9 = this.viewPages[1];
        if (view9 != null) {
            removeView(view9);
            this.viewPages[1] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuild$3(ValueAnimator valueAnimator) {
        this.updateTabProgress.onAnimationUpdate(valueAnimator);
        this.tabsView.indicatorProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.tabsView.listView.invalidateViews();
        this.tabsView.invalidate();
    }

    public void clearViews() {
        this.viewsByType.clear();
    }

    public static abstract class Adapter {
        public void applyReorder(ArrayList<Integer> arrayList) {
        }

        public abstract void bindView(View view, int i, int i2);

        public boolean canReorder(int i) {
            return false;
        }

        public boolean canScrollTo(int i) {
            return true;
        }

        public abstract View createView(int i);

        public abstract int getItemCount();

        public int getItemId(int i) {
            return i;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public boolean hasStableId() {
            return false;
        }

        public boolean needsTab(int i) {
            return true;
        }

        public CharSequence getItemTitle(int i) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (i == 0) {
            return false;
        }
        if (!this.tabsAnimationInProgress && !this.startedTracking) {
            boolean z = i > 0;
            if ((!z && this.currentPosition == 0) || (z && this.currentPosition == this.adapter.getItemCount() - 1)) {
                return false;
            }
        }
        return true;
    }

    public View getCurrentView() {
        return this.viewPages[0];
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public void cancelTouches() {
        float measuredWidth;
        int measuredWidth2;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        }
        if (this.startedTracking) {
            float x = this.viewPages[0].getX();
            this.tabsAnimation = new AnimatorSet();
            if (this.additionalOffset != 0.0f) {
                float fAbs = Math.abs(0.0f);
                boolean z = this.animatingForward;
                if (fAbs > 1500.0f) {
                    this.backAnimation = false;
                } else {
                    View[] viewArr = this.viewPages;
                    if (z) {
                        View view = viewArr[1];
                        if (view != null) {
                            this.backAnimation = view.getX() > ((float) (this.viewPages[0].getMeasuredWidth() >> 1));
                        } else {
                            this.backAnimation = false;
                        }
                    } else {
                        this.backAnimation = viewArr[0].getX() < ((float) (this.viewPages[0].getMeasuredWidth() >> 1));
                    }
                }
            } else {
                this.backAnimation = Math.abs(x) < ((float) this.viewPages[0].getMeasuredWidth()) / 3.0f && (Math.abs(0.0f) < 3500.0f || Math.abs(0.0f) < Math.abs(0.0f));
            }
            if (this.backAnimation) {
                measuredWidth = Math.abs(x);
                boolean z2 = this.animatingForward;
                AnimatorSet animatorSet = this.tabsAnimation;
                if (z2) {
                    animatorSet.playTogether(translateAnimator(this.viewPages[0], 0.0f));
                    View view2 = this.viewPages[1];
                    if (view2 != null) {
                        this.tabsAnimation.playTogether(translateAnimator(view2, view2.getMeasuredWidth()));
                    }
                } else {
                    animatorSet.playTogether(translateAnimator(this.viewPages[0], 0.0f));
                    View view3 = this.viewPages[1];
                    if (view3 != null) {
                        this.tabsAnimation.playTogether(translateAnimator(view3, -view3.getMeasuredWidth()));
                    }
                }
            } else if (this.nextPosition >= 0) {
                measuredWidth = this.viewPages[0].getMeasuredWidth() - Math.abs(x);
                boolean z3 = this.animatingForward;
                AnimatorSet animatorSet2 = this.tabsAnimation;
                if (z3) {
                    animatorSet2.playTogether(translateAnimator(this.viewPages[0], -r3.getMeasuredWidth()));
                    View view4 = this.viewPages[1];
                    if (view4 != null) {
                        this.tabsAnimation.playTogether(translateAnimator(view4, 0.0f));
                    }
                } else {
                    animatorSet2.playTogether(translateAnimator(this.viewPages[0], r3.getMeasuredWidth()));
                    View view5 = this.viewPages[1];
                    if (view5 != null) {
                        this.tabsAnimation.playTogether(translateAnimator(view5, 0.0f));
                    }
                }
            } else {
                measuredWidth = 0.0f;
            }
            if (this.nextPosition < 0) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.backProgress, this.backAnimation ? 0.0f : 1.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$cancelTouches$4(valueAnimator);
                    }
                });
                this.tabsAnimation.playTogether(valueAnimatorOfFloat);
            }
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat2.addUpdateListener(this.updateTabProgress);
            this.tabsAnimation.playTogether(valueAnimatorOfFloat2);
            this.tabsAnimation.setInterpolator(interpolator);
            int measuredWidth3 = getMeasuredWidth();
            float f = measuredWidth3 / 2;
            float fDistanceInfluenceForSnapDuration = f + (distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth3)) * f);
            float fAbs2 = Math.abs(0.0f);
            if (fAbs2 > 0.0f) {
                measuredWidth2 = Math.round(Math.abs(fDistanceInfluenceForSnapDuration / fAbs2) * 1000.0f) * 4;
            } else {
                measuredWidth2 = (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f);
            }
            this.tabsAnimation.setDuration(Math.max(150, Math.min(measuredWidth2, MediaError.DetailedErrorCode.TEXT_UNKNOWN)));
            this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewPagerFixed.this.tabsAnimation = null;
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    if (viewPagerFixed.nextPosition < 0) {
                        viewPagerFixed.onBack();
                    }
                    ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                    if (viewPagerFixed2.viewPages[1] != null) {
                        if (!viewPagerFixed2.backAnimation) {
                            ViewPagerFixed.this.swapViews();
                        }
                        ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                        viewPagerFixed3.viewsByType.put(viewPagerFixed3.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                        ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                        viewPagerFixed4.removeView(viewPagerFixed4.viewPages[1]);
                        ViewPagerFixed.this.viewPages[1].setVisibility(8);
                        ViewPagerFixed.this.viewPages[1] = null;
                    }
                    ViewPagerFixed.this.tabsAnimationInProgress = false;
                    ViewPagerFixed.this.maybeStartTracking = false;
                    TabsView tabsView = ViewPagerFixed.this.tabsView;
                    if (tabsView != null) {
                        tabsView.setEnabled(true);
                    }
                    ViewPagerFixed.this.onTabAnimationUpdate(false);
                    ViewPagerFixed.this.onScrollEnd();
                    ViewPagerFixed.this.notificationsLocker.unlock();
                }
            });
            this.tabsAnimation.start();
            this.tabsAnimationInProgress = true;
            this.startedTracking = false;
            onTabAnimationUpdate(false);
        } else {
            this.maybeStartTracking = false;
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.setEnabled(true);
            }
        }
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.velocityTracker = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelTouches$4(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.backProgress = fFloatValue;
        onBackProgress(fFloatValue);
    }

    public static class TabsView extends FrameLayout {
        private int activeTextColorKey;
        public ListAdapter adapter;
        private int additionalTabWidth;
        private int allTabsWidth;
        private boolean animatingIndicator;
        private float animatingIndicatorProgress;
        private Runnable animationRunnable;
        private float animationTime;
        private int backgroundColorKey;
        BlurredBackgroundDrawable blurredBackgroundDrawable;
        private final Paint counterPaint;
        private int currentPosition;
        private TabsViewDelegate delegate;
        private final Paint deletePaint;
        private float editingAnimationProgress;
        private boolean editingForwardAnimation;
        private float editingStartAnimationProgress;
        private float hideProgress;
        private SparseIntArray idToPosition;
        private boolean ignoreLayout;
        private float indicatorProgress2;
        private CubicBezierInterpolator interpolator;
        private boolean invalidated;
        private boolean isEditing;
        private boolean isInHiddenMode;
        private DefaultItemAnimator itemAnimator;
        private ItemTouchHelper itemTouchHelper;
        private long lastAnimationTime;
        float lastDrawnIndicatorW;
        float lastDrawnIndicatorX;
        public LinearLayoutManager layoutManager;
        public RecyclerListView listView;
        private int manualScrollingToId;
        private int manualScrollingToPosition;
        private Utilities.Callback2Return<Integer, View, Boolean> onTabLongClick;
        private boolean orderChanged;
        private float overrideFromW;
        private float overrideFromX;
        private SparseIntArray positionToId;
        private SparseIntArray positionToWidth;
        private SparseIntArray positionToX;
        private Utilities.Callback2Return<Integer, Integer, Boolean> preTabClick;
        private int prevLayoutWidth;
        private int previousId;
        private int previousPosition;
        private boolean reordering;
        private Theme.ResourcesProvider resourcesProvider;
        private int scrollingToChild;
        private int selectedTabId;
        private int selectorColorKey;
        private GradientDrawable selectorDrawable;
        private final Paint selectorPaint;
        private int selectorType;
        private int tabLineColorKey;
        public int tabMarginDp;
        private final ArrayList<Tab> tabs;
        ValueAnimator tabsAnimator;
        private final TextPaint textCounterPaint;
        private final TextPaint textPaint;
        private int unactiveTextColorKey;

        /* JADX INFO: loaded from: classes7.dex */
        public interface TabsViewDelegate {
            void applyReorder(ArrayList<Integer> arrayList);

            boolean canPerformActions();

            boolean canReorder(int i);

            void invalidateBlur();

            boolean needsTab(int i);

            void onPageScrolled(float f);

            void onPageSelected(int i, boolean z);

            void onSamePageSelected();
        }

        public static /* synthetic */ void $r8$lambda$j6saSZONxGTLgsxkbyYqIhznOiw(TLObject tLObject, TLRPC.TL_error tL_error) {
        }

        public void setOnTabLongClick(Utilities.Callback2Return<Integer, View, Boolean> callback2Return) {
            this.onTabLongClick = callback2Return;
        }

        /* JADX INFO: loaded from: classes7.dex */
        public static class Tab {
            public float alpha = 1.0f;
            public int counter;
            public int id;
            public CharSequence title;
            public int titleWidth;

            public Tab(int i, CharSequence charSequence) {
                this.id = i;
                this.title = charSequence;
            }

            public int getWidth(boolean z, TextPaint textPaint) {
                int iCeil = (int) Math.ceil(HintView2.measureCorrectly(this.title, textPaint));
                this.titleWidth = iCeil;
                return Math.max(0, iCeil);
            }
        }

        /* JADX INFO: loaded from: classes7.dex */
        public class TabView extends View {
            private int currentPosition;
            private Tab currentTab;
            private CharSequence currentText;
            private RectF rect;
            private boolean reordering;
            private final AnimatedFloat shakeAlpha;
            private Shaker shaker;
            private int tabWidth;
            private Text text;
            private int textOffsetX;

            public void setReordering(boolean z) {
                if (this.reordering == z) {
                    return;
                }
                this.reordering = z;
                invalidate();
            }

            public TabView(Context context) {
                super(context);
                this.rect = new RectF();
                this.shakeAlpha = new AnimatedFloat(this, 360L, CubicBezierInterpolator.EASE_OUT_QUINT);
            }

            public void setTab(Tab tab, int i) {
                this.currentTab = tab;
                this.currentPosition = i;
                setContentDescription(tab.title);
                setAlpha(tab.alpha);
                requestLayout();
            }

            @Override // android.view.View
            public int getId() {
                return this.currentTab.id;
            }

            @Override // android.view.View
            public void onMeasure(int i, int i2) {
                setMeasuredDimension(this.currentTab.getWidth(false, TabsView.this.textPaint) + AndroidUtilities.dp(TabsView.this.tabMarginDp * 2) + TabsView.this.additionalTabWidth, View.MeasureSpec.getSize(i2));
            }

            @Override // android.view.View
            @SuppressLint({"DrawAllocation"})
            public void onDraw(Canvas canvas) {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                int i7;
                String str;
                int iCeil;
                int iDp;
                float f;
                int iDp2;
                float f2;
                String str2;
                int i8;
                float f3;
                int i9;
                Canvas canvas2 = canvas;
                canvas2.save();
                float f4 = this.shakeAlpha.set(this.reordering);
                if (f4 > 0.0f) {
                    if (this.shaker == null) {
                        this.shaker = new Shaker(this);
                    }
                    canvas2.translate(getWidth() / 2.0f, getHeight() / 2.0f);
                    this.shaker.concat(canvas2, f4);
                    canvas2.translate((-getWidth()) / 2.0f, (-getHeight()) / 2.0f);
                }
                if (this.currentTab.id != Integer.MAX_VALUE && TabsView.this.editingAnimationProgress != 0.0f) {
                    canvas2.save();
                    float f5 = TabsView.this.editingAnimationProgress * (this.currentPosition % 2 == 0 ? 1.0f : -1.0f);
                    canvas2.translate(AndroidUtilities.dp(0.66f) * f5, 0.0f);
                    canvas2.rotate(f5, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                }
                int i10 = TabsView.this.manualScrollingToId;
                TabsView tabsView = TabsView.this;
                if (i10 != -1) {
                    i = tabsView.manualScrollingToId;
                    i2 = TabsView.this.selectedTabId;
                } else {
                    i = tabsView.selectedTabId;
                    i2 = TabsView.this.previousId;
                }
                int i11 = i;
                int i12 = i2;
                int i13 = this.currentTab.id;
                TabsView tabsView2 = TabsView.this;
                if (i13 == i11) {
                    i3 = tabsView2.activeTextColorKey;
                    i4 = TabsView.this.unactiveTextColorKey;
                    i5 = Theme.key_chats_tabUnreadActiveBackground;
                    i6 = Theme.key_chats_tabUnreadUnactiveBackground;
                } else {
                    i3 = tabsView2.unactiveTextColorKey;
                    i4 = TabsView.this.activeTextColorKey;
                    i5 = Theme.key_chats_tabUnreadUnactiveBackground;
                    i6 = Theme.key_chats_tabUnreadActiveBackground;
                }
                int i14 = i5;
                int i15 = i6;
                int i16 = TabsView.this.selectorType;
                TabsView tabsView3 = TabsView.this;
                if (i16 == 9) {
                    tabsView3.textPaint.setColor(Theme.getColor(TabsView.this.unactiveTextColorKey, TabsView.this.resourcesProvider));
                } else if ((tabsView3.animatingIndicator || TabsView.this.manualScrollingToId != -1) && ((i7 = this.currentTab.id) == i11 || i7 == i12)) {
                    TabsView.this.textPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i4, TabsView.this.resourcesProvider), Theme.getColor(i3, TabsView.this.resourcesProvider), TabsView.this.animatingIndicatorProgress));
                } else {
                    TabsView.this.textPaint.setColor(Theme.getColor(i3, TabsView.this.resourcesProvider));
                }
                int i17 = this.currentTab.counter;
                if (i17 > 0) {
                    str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i17));
                    iCeil = (int) Math.ceil(TabsView.this.textCounterPaint.measureText(str));
                    iDp = Math.max(AndroidUtilities.dp(10.0f), iCeil) + AndroidUtilities.dp(10.0f);
                } else {
                    str = null;
                    iCeil = 0;
                    iDp = 0;
                }
                if (this.currentTab.id == Integer.MAX_VALUE || (!TabsView.this.isEditing && TabsView.this.editingStartAnimationProgress == 0.0f)) {
                    f = 0.0f;
                } else {
                    f = 0.0f;
                    iDp = (int) (iDp + ((AndroidUtilities.dp(20.0f) - iDp) * TabsView.this.editingStartAnimationProgress));
                }
                int i18 = iDp;
                int i19 = this.currentTab.titleWidth;
                if (i18 != 0) {
                    iDp2 = AndroidUtilities.dp((str != null ? 1.0f : TabsView.this.editingStartAnimationProgress) * 6.0f) + i18;
                } else {
                    iDp2 = 0;
                }
                this.tabWidth = i19 + iDp2;
                int measuredWidth = (getMeasuredWidth() - this.tabWidth) / 2;
                CharSequence charSequence = this.currentTab.title;
                if ((charSequence != null || this.currentText == null) && TextUtils.equals(charSequence, this.currentText)) {
                    f2 = 2.0f;
                } else {
                    Tab tab = this.currentTab;
                    f2 = 2.0f;
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(tab.title, TabsView.this.textPaint.getFontMetricsInt(), false);
                    tab.title = charSequenceReplaceEmoji;
                    this.currentText = charSequenceReplaceEmoji;
                    Text text = this.text;
                    if (text != null) {
                        text.detach();
                    }
                    this.text = new Text(this.currentText, TabsView.this.textPaint.getTextSize() / AndroidUtilities.density, TabsView.this.textPaint.getTypeface()).supportAnimatedEmojis(this);
                }
                Text text2 = this.text;
                if (text2 != null) {
                    str2 = str;
                    i8 = iCeil;
                    f3 = 1.0f;
                    text2.ellipsize(AndroidUtilities.dp(400.0f)).draw(canvas2, measuredWidth + this.textOffsetX, getMeasuredHeight() / 2, TabsView.this.textPaint.getColor(), 1.0f);
                    canvas2 = canvas2;
                } else {
                    str2 = str;
                    i8 = iCeil;
                    f3 = 1.0f;
                }
                if (str2 != null || (this.currentTab.id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != f))) {
                    TabsView.this.textCounterPaint.setColor(Theme.getColor(TabsView.this.backgroundColorKey, TabsView.this.resourcesProvider));
                    if (Theme.hasThemeKey(i14) && Theme.hasThemeKey(i15)) {
                        int color = Theme.getColor(i14, TabsView.this.resourcesProvider);
                        if ((TabsView.this.animatingIndicator || TabsView.this.manualScrollingToPosition != -1) && ((i9 = this.currentTab.id) == i11 || i9 == i12)) {
                            TabsView.this.counterPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i15, TabsView.this.resourcesProvider), color, TabsView.this.animatingIndicatorProgress));
                        } else {
                            TabsView.this.counterPaint.setColor(color);
                        }
                    } else {
                        TabsView.this.counterPaint.setColor(TabsView.this.textPaint.getColor());
                    }
                    int iDp3 = measuredWidth + this.currentTab.titleWidth + AndroidUtilities.dp(6.0f);
                    int measuredHeight = (getMeasuredHeight() - AndroidUtilities.dp(20.0f)) / 2;
                    if (this.currentTab.id != Integer.MAX_VALUE && ((TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != f) && str2 == null)) {
                        TabsView.this.counterPaint.setAlpha((int) (TabsView.this.editingStartAnimationProgress * 255.0f));
                    } else {
                        TabsView.this.counterPaint.setAlpha(255);
                    }
                    this.rect.set(iDp3, measuredHeight, iDp3 + i18, AndroidUtilities.dp(20.0f) + measuredHeight);
                    RectF rectF = this.rect;
                    float f6 = AndroidUtilities.density;
                    canvas2.drawRoundRect(rectF, f6 * 11.5f, f6 * 11.5f, TabsView.this.counterPaint);
                    if (str2 != null) {
                        if (this.currentTab.id != Integer.MAX_VALUE) {
                            TabsView.this.textCounterPaint.setAlpha((int) ((f3 - TabsView.this.editingStartAnimationProgress) * 255.0f));
                        }
                        RectF rectF2 = this.rect;
                        canvas2.drawText(str2, rectF2.left + ((rectF2.width() - i8) / f2), measuredHeight + AndroidUtilities.dp(14.5f), TabsView.this.textCounterPaint);
                    }
                    if (this.currentTab.id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != f)) {
                        TabsView.this.deletePaint.setColor(TabsView.this.textCounterPaint.getColor());
                        TabsView.this.deletePaint.setAlpha((int) (TabsView.this.editingStartAnimationProgress * 255.0f));
                        float fDp = AndroidUtilities.dp(3.0f);
                        canvas2.drawLine(this.rect.centerX() - fDp, this.rect.centerY() - fDp, this.rect.centerX() + fDp, this.rect.centerY() + fDp, TabsView.this.deletePaint);
                        canvas.drawLine(this.rect.centerX() - fDp, this.rect.centerY() + fDp, this.rect.centerX() + fDp, this.rect.centerY() - fDp, TabsView.this.deletePaint);
                    }
                }
                if (this.currentTab.id != Integer.MAX_VALUE && TabsView.this.editingAnimationProgress != f) {
                    canvas.restore();
                }
                canvas.restore();
            }

            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setSelected((this.currentTab == null || TabsView.this.selectedTabId == -1 || this.currentTab.id != TabsView.this.selectedTabId) ? false : true);
            }
        }

        public void setColors(int i, int i2, int i3, int i4, int i5) {
            this.tabLineColorKey = i;
            this.activeTextColorKey = i2;
            this.unactiveTextColorKey = i3;
            this.selectorColorKey = i4;
            this.backgroundColorKey = i5;
            this.selectorDrawable.setColor(Theme.getColor(i, this.resourcesProvider));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public TabsView(Context context, boolean z, int i, Theme.ResourcesProvider resourcesProvider) {
            boolean z2;
            super(context);
            this.indicatorProgress2 = 1.0f;
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            TextPaint textPaint2 = new TextPaint(1);
            this.textCounterPaint = textPaint2;
            TextPaint textPaint3 = new TextPaint(1);
            this.deletePaint = textPaint3;
            this.counterPaint = new Paint(1);
            this.tabs = new ArrayList<>();
            this.tabMarginDp = 16;
            this.selectedTabId = -1;
            this.manualScrollingToPosition = -1;
            this.manualScrollingToId = -1;
            this.scrollingToChild = -1;
            this.tabLineColorKey = Theme.key_profile_tabSelectedLine;
            this.activeTextColorKey = Theme.key_profile_tabSelectedText;
            this.unactiveTextColorKey = Theme.key_profile_tabText;
            this.selectorColorKey = Theme.key_profile_tabSelector;
            this.backgroundColorKey = Theme.key_actionBarDefault;
            this.interpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.positionToId = new SparseIntArray(5);
            this.idToPosition = new SparseIntArray(5);
            this.positionToWidth = new SparseIntArray(5);
            this.positionToX = new SparseIntArray(5);
            this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TabsView.this.animatingIndicator) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime() - TabsView.this.lastAnimationTime;
                        if (jElapsedRealtime > 17) {
                            jElapsedRealtime = 17;
                        }
                        TabsView.this.animationTime += jElapsedRealtime / 200.0f;
                        TabsView tabsView = TabsView.this;
                        tabsView.setAnimationIdicatorProgress(tabsView.interpolator.getInterpolation(TabsView.this.animationTime));
                        if (TabsView.this.animationTime > 1.0f) {
                            TabsView.this.animationTime = 1.0f;
                        }
                        float f = TabsView.this.animationTime;
                        TabsView tabsView2 = TabsView.this;
                        if (f < 1.0f) {
                            AndroidUtilities.runOnUIThread(tabsView2.animationRunnable);
                            return;
                        }
                        tabsView2.animatingIndicator = false;
                        TabsView.this.setEnabled(true);
                        if (TabsView.this.delegate != null) {
                            TabsView.this.delegate.onPageScrolled(1.0f);
                        }
                    }
                }
            };
            this.selectorPaint = new Paint(1);
            this.resourcesProvider = resourcesProvider;
            this.selectorType = i;
            textPaint2.setTextSize(AndroidUtilities.dp(13.0f));
            textPaint2.setTypeface(AndroidUtilities.bold());
            textPaint.setTextSize(AndroidUtilities.dp((i == 9 || i == 10 || i == -2) ? 14.0f : 15.0f));
            textPaint.setTypeface(AndroidUtilities.bold());
            textPaint3.setStyle(Paint.Style.STROKE);
            textPaint3.setStrokeCap(Paint.Cap.ROUND);
            textPaint3.setStrokeWidth(AndroidUtilities.dp(1.5f));
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, null);
            this.selectorDrawable = gradientDrawable;
            gradientDrawable.setColor(Theme.getColor(this.tabLineColorKey, resourcesProvider));
            int i2 = 0;
            Object[] objArr = 0;
            if (i == -2) {
                float fDpf2 = AndroidUtilities.dpf2(13.0f);
                this.selectorDrawable.setCornerRadii(new float[]{fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2});
                z2 = true;
            } else {
                float fDpf22 = AndroidUtilities.dpf2(3.0f);
                z2 = true;
                this.selectorDrawable.setCornerRadii(new float[]{fDpf22, fDpf22, fDpf22, fDpf22, 0.0f, 0.0f, 0.0f, 0.0f});
            }
            setHorizontalScrollBarEnabled(false);
            RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.2
                @Override // android.view.ViewGroup
                public void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
                    super.addView(view, i3, layoutParams);
                    if (TabsView.this.isInHiddenMode) {
                        view.setScaleX(0.3f);
                        view.setScaleY(0.3f);
                        view.setAlpha(0.0f);
                    } else {
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setAlpha(1.0f);
                    }
                }

                @Override // android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    TabsView.this.invalidate();
                }

                @Override // org.telegram.ui.Components.RecyclerListView
                public boolean canHighlightChildAt(View view, float f, float f2) {
                    if (TabsView.this.isEditing) {
                        TabView tabView = (TabView) view;
                        float fDp = AndroidUtilities.dp(6.0f);
                        if (tabView.rect.left - fDp < f && tabView.rect.right + fDp > f) {
                            return false;
                        }
                    }
                    return super.canHighlightChildAt(view, f, f2);
                }
            };
            this.listView = recyclerListView;
            recyclerListView.setOverScrollMode(2);
            RecyclerListView recyclerListView2 = this.listView;
            if (z) {
                recyclerListView2.setItemAnimator(null);
            } else {
                ((DefaultItemAnimator) recyclerListView2.getItemAnimator()).setDelayAnimations(false);
            }
            RecyclerListView recyclerListView3 = this.listView;
            if (i == -2) {
                recyclerListView3.setSelectorType(9);
                this.listView.setSelectorRadius(6);
            } else {
                recyclerListView3.setSelectorType(i == 10 ? 9 : i);
                RecyclerListView recyclerListView4 = this.listView;
                if (i == 3) {
                    recyclerListView4.setSelectorRadius(0);
                } else {
                    recyclerListView4.setSelectorRadius(6);
                }
            }
            this.listView.setSelectorDrawableColor(Theme.getColor(this.selectorColorKey, resourcesProvider));
            RecyclerListView recyclerListView5 = this.listView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, i2, objArr == true ? 1 : 0) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.3
                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i3) {
                    LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.3.1
                        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                        public void onTargetFound(View view, RecyclerView.State state2, RecyclerView.SmoothScroller.Action action) {
                            int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
                            if (iCalculateDxToMakeVisible > 0 || (iCalculateDxToMakeVisible == 0 && view.getLeft() - AndroidUtilities.dp(21.0f) < 0)) {
                                iCalculateDxToMakeVisible += AndroidUtilities.dp(60.0f);
                            } else if (iCalculateDxToMakeVisible < 0 || (iCalculateDxToMakeVisible == 0 && view.getRight() + AndroidUtilities.dp(21.0f) > TabsView.this.getMeasuredWidth())) {
                                iCalculateDxToMakeVisible -= AndroidUtilities.dp(60.0f);
                            }
                            int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
                            int iMax = Math.max(180, calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible))));
                            if (iMax > 0) {
                                action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iMax, this.mDecelerateInterpolator);
                            }
                        }
                    };
                    linearSmoothScroller.setTargetPosition(i3);
                    startSmoothScroll(linearSmoothScroller);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
                    if (TabsView.this.isInHiddenMode) {
                        accessibilityNodeInfoCompat.setVisibleToUser(false);
                    }
                }
            };
            this.layoutManager = linearLayoutManager;
            recyclerListView5.setLayoutManager(linearLayoutManager);
            this.listView.setPadding(AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f), 0);
            this.listView.setClipToPadding(false);
            this.listView.setDrawSelectorBehind(z2);
            ListAdapter listAdapter = new ListAdapter(context);
            this.adapter = listAdapter;
            listAdapter.setHasStableIds(z);
            this.listView.setAdapter(this.adapter);
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i3, float f, float f2) {
                    this.f$0.lambda$new$0(view, i3, f, f2);
                }
            });
            this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
                public final boolean onItemClick(View view, int i3) {
                    return this.f$0.lambda$new$1(view, i3);
                }
            });
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.4
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                    TabsView.this.invalidate();
                }
            });
            if (i == 9 || i == 10) {
                addView(this.listView, LayoutHelper.createFrame(-2, -1, 1));
            } else {
                addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i, float f, float f2) {
            TabsViewDelegate tabsViewDelegate;
            TabsViewDelegate tabsViewDelegate2 = this.delegate;
            if (tabsViewDelegate2 == null || tabsViewDelegate2.canPerformActions()) {
                TabView tabView = (TabView) view;
                if (i == this.currentPosition && (tabsViewDelegate = this.delegate) != null) {
                    tabsViewDelegate.onSamePageSelected();
                    return;
                }
                Utilities.Callback2Return<Integer, Integer, Boolean> callback2Return = this.preTabClick;
                if (callback2Return == null || !callback2Return.run(Integer.valueOf(tabView.currentTab.id), Integer.valueOf(i)).booleanValue()) {
                    scrollToTab(tabView.currentTab.id, i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$1(View view, int i) {
            Utilities.Callback2Return<Integer, View, Boolean> callback2Return = this.onTabLongClick;
            if (callback2Return == null) {
                return false;
            }
            return callback2Return.run(Integer.valueOf(((TabView) view).currentTab.id), view).booleanValue();
        }

        public void setDelegate(TabsViewDelegate tabsViewDelegate) {
            this.delegate = tabsViewDelegate;
        }

        public void setPreTabClick(Utilities.Callback2Return<Integer, Integer, Boolean> callback2Return) {
            this.preTabClick = callback2Return;
        }

        public boolean isAnimatingIndicator() {
            return this.animatingIndicator;
        }

        public int getCurrentPosition() {
            return this.currentPosition;
        }

        public int getPreviousPosition() {
            return this.previousPosition;
        }

        public float getAnimatingIndicatorProgress() {
            return this.animatingIndicatorProgress;
        }

        public void scrollToTab(int i, int i2) {
            int i3 = this.currentPosition;
            boolean z = i3 < i2;
            this.scrollingToChild = -1;
            this.previousPosition = i3;
            this.previousId = this.selectedTabId;
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate == null || tabsViewDelegate.needsTab(i2)) {
                this.currentPosition = i2;
                this.selectedTabId = i;
            }
            ValueAnimator valueAnimator = this.tabsAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (this.animatingIndicator) {
                this.animatingIndicator = false;
            }
            this.animationTime = 0.0f;
            this.animatingIndicatorProgress = 0.0f;
            this.animatingIndicator = true;
            setEnabled(false);
            TabsViewDelegate tabsViewDelegate2 = this.delegate;
            if (tabsViewDelegate2 != null) {
                tabsViewDelegate2.onPageSelected(i2, z);
            }
            scrollToChild(this.currentPosition);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.tabsAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$scrollToTab$2(valueAnimator2);
                }
            });
            this.tabsAnimator.setDuration(250L);
            this.tabsAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.tabsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TabsView.this.animatingIndicator = false;
                    TabsView.this.setEnabled(true);
                    if (TabsView.this.delegate != null) {
                        TabsView.this.delegate.onPageScrolled(1.0f);
                    }
                    TabsView.this.invalidate();
                }
            });
            this.tabsAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scrollToTab$2(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            setAnimationIdicatorProgress(fFloatValue);
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate != null) {
                tabsViewDelegate.onPageScrolled(fFloatValue);
            }
        }

        public void setAnimationIdicatorProgress(float f) {
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate != null) {
                tabsViewDelegate.onPageScrolled(f);
            }
        }

        public Drawable getSelectorDrawable() {
            return this.selectorDrawable;
        }

        public RecyclerListView getTabsContainer() {
            return this.listView;
        }

        public int getNextPageId(boolean z) {
            return this.positionToId.get(this.currentPosition + (z ? 1 : -1), -1);
        }

        public int getPageIdByPosition(int i) {
            return this.positionToId.get(i, -1);
        }

        public void addTab(int i, CharSequence charSequence) {
            int size = this.tabs.size();
            if (size == 0 && this.selectedTabId == -1) {
                this.selectedTabId = i;
            }
            this.positionToId.put(size, i);
            this.idToPosition.put(i, size);
            int i2 = this.selectedTabId;
            if (i2 != -1 && i2 == i) {
                this.currentPosition = size;
            }
            Tab tab = new Tab(i, charSequence);
            this.allTabsWidth += tab.getWidth(true, this.textPaint) + AndroidUtilities.dp(this.tabMarginDp * 2);
            this.tabs.add(tab);
        }

        public void removeTabs() {
            this.tabs.clear();
            this.positionToId.clear();
            this.idToPosition.clear();
            this.positionToWidth.clear();
            this.positionToX.clear();
            this.allTabsWidth = 0;
        }

        public void setReordering(final boolean z) {
            if (this.reordering == z) {
                return;
            }
            this.reordering = z;
            if (z && this.itemTouchHelper == null) {
                this.itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.6
                    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
                    }

                    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                        if (TabsView.this.delegate.canReorder(viewHolder.getAdapterPosition())) {
                            return ItemTouchHelper.Callback.makeMovementFlags(12, 0);
                        }
                        return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
                    }

                    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                        int adapterPosition = viewHolder.getAdapterPosition();
                        int adapterPosition2 = viewHolder2.getAdapterPosition();
                        int i = 0;
                        if (!TabsView.this.delegate.canReorder(adapterPosition) || !TabsView.this.delegate.canReorder(adapterPosition2)) {
                            return false;
                        }
                        Utilities.swapItems(TabsView.this.tabs, adapterPosition, adapterPosition2);
                        TabsView.this.adapter.notifyItemMoved(adapterPosition, adapterPosition2);
                        ArrayList<Integer> arrayList = new ArrayList<>();
                        ArrayList arrayList2 = TabsView.this.tabs;
                        int size = arrayList2.size();
                        while (i < size) {
                            Object obj = arrayList2.get(i);
                            i++;
                            arrayList.add(Integer.valueOf(((Tab) obj).id));
                        }
                        TabsView.this.delegate.applyReorder(arrayList);
                        return true;
                    }

                    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z2) {
                        super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z2);
                        TabsView.this.invalidate();
                    }
                });
            }
            if (this.reordering && this.itemAnimator == null) {
                DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.7
                    @Override // androidx.recyclerview.widget.DefaultItemAnimator
                    public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                        super.onMoveAnimationUpdate(viewHolder);
                        TabsView.this.invalidate();
                    }
                };
                this.itemAnimator = defaultItemAnimator;
                defaultItemAnimator.setSupportsChangeAnimations(false);
                this.itemAnimator.setDelayAnimations(false);
                this.itemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.itemAnimator.setDurations(350L);
            }
            ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.attachToRecyclerView(z ? this.listView : null);
            }
            this.listView.setItemAnimator(z ? this.itemAnimator : null);
            AndroidUtilities.forEachViews((RecyclerView) this.listView, (Utilities.Callback<View>) new Utilities.Callback() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setReordering$3(z, (View) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setReordering$3(boolean z, View view) {
            TabsViewDelegate tabsViewDelegate;
            int childAdapterPosition = this.listView.getChildAdapterPosition(view);
            if (view instanceof TabView) {
                ((TabView) view).setReordering(z && (tabsViewDelegate = this.delegate) != null && tabsViewDelegate.canReorder(childAdapterPosition));
            }
        }

        public void finishAddingTabs() {
            this.adapter.notifyDataSetChanged();
        }

        public int getCurrentTabId() {
            return this.selectedTabId;
        }

        public int getFirstTabId() {
            return this.positionToId.get(0, 0);
        }

        private void updateTabsWidths() {
            this.positionToX.clear();
            this.positionToWidth.clear();
            int iDp = AndroidUtilities.dp(7.0f);
            int size = this.tabs.size();
            for (int i = 0; i < size; i++) {
                int width = this.tabs.get(i).getWidth(false, this.textPaint);
                this.positionToWidth.put(i, width);
                this.positionToX.put(i, (this.additionalTabWidth / 2) + iDp);
                iDp += width + AndroidUtilities.dp(this.tabMarginDp * 2) + this.additionalTabWidth;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void saveFromValues() {
            this.overrideFromX = this.lastDrawnIndicatorX;
            this.overrideFromW = this.lastDrawnIndicatorW;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
        @Override // android.view.ViewGroup
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean drawChild(Canvas canvas, View view, long j) {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
            int i;
            int i2;
            int left;
            int i3;
            int iLerp;
            boolean zDrawChild = super.drawChild(canvas, view, j);
            if (view == this.listView) {
                int measuredHeight = getMeasuredHeight();
                boolean z = this.isInHiddenMode;
                if (z) {
                    float f = this.hideProgress;
                    if (f != 1.0f) {
                        float f2 = f + 0.1f;
                        this.hideProgress = f2;
                        if (f2 > 1.0f) {
                            this.hideProgress = 1.0f;
                        }
                        invalidate();
                    } else if (!z) {
                        float f3 = this.hideProgress;
                        if (f3 != 0.0f) {
                            float f4 = f3 - 0.12f;
                            this.hideProgress = f4;
                            if (f4 < 0.0f) {
                                this.hideProgress = 0.0f;
                            }
                            invalidate();
                        }
                    }
                    this.selectorDrawable.setAlpha((int) (this.listView.getAlpha() * 255.0f));
                    int i4 = 0;
                    if (this.animatingIndicator || this.manualScrollingToPosition != -1) {
                        int iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
                        if (iFindFirstVisibleItemPosition != -1 && (viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition)) != null) {
                            if (this.animatingIndicator) {
                                i = this.previousPosition;
                                i2 = this.currentPosition;
                            } else {
                                i = this.currentPosition;
                                i2 = this.manualScrollingToPosition;
                            }
                            int i5 = this.positionToX.get(i);
                            int i6 = this.positionToX.get(i2);
                            int i7 = this.positionToWidth.get(i);
                            int i8 = this.positionToWidth.get(i2);
                            if (this.additionalTabWidth != 0) {
                                left = ((int) (i5 + ((i6 - i5) * this.animatingIndicatorProgress))) + AndroidUtilities.dp(this.tabMarginDp);
                            } else {
                                left = (((int) (i5 + ((i6 - i5) * this.animatingIndicatorProgress))) - (this.positionToX.get(iFindFirstVisibleItemPosition) - viewHolderFindViewHolderForAdapterPosition.itemView.getLeft())) + AndroidUtilities.dp(this.tabMarginDp);
                            }
                            i3 = (int) (i7 + ((i8 - i7) * this.animatingIndicatorProgress));
                            int i9 = i3;
                            i4 = left;
                            iLerp = i9;
                        }
                        iLerp = 0;
                    } else {
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.listView.findViewHolderForAdapterPosition(this.currentPosition);
                        if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                            TabView tabView = (TabView) viewHolderFindViewHolderForAdapterPosition2.itemView;
                            i3 = tabView.tabWidth;
                            left = (int) (tabView.getX() + ((tabView.getMeasuredWidth() - i3) / 2));
                            int i92 = i3;
                            i4 = left;
                            iLerp = i92;
                        }
                        iLerp = 0;
                    }
                    int x = (int) (i4 + this.listView.getX());
                    if (iLerp != 0) {
                        int i10 = this.selectorType;
                        if (i10 == 9 || i10 == 10) {
                            this.selectorPaint.setColor(Theme.multAlpha(this.textPaint.getColor(), 0.15f));
                            float f5 = measuredHeight / 2.0f;
                            float fDp = AndroidUtilities.dp(26.0f);
                            RectF rectF = AndroidUtilities.rectTmp;
                            float f6 = fDp / 2.0f;
                            rectF.set(x - AndroidUtilities.dp(12.0f), f5 - f6, x + iLerp + AndroidUtilities.dp(12.0f), f5 + f6);
                            canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, this.selectorPaint);
                        } else {
                            float f7 = x;
                            this.lastDrawnIndicatorX = f7;
                            float f8 = iLerp;
                            this.lastDrawnIndicatorW = f8;
                            float f9 = this.indicatorProgress2;
                            if (f9 != 1.0f) {
                                x = (int) AndroidUtilities.lerp(f7, f7, f9);
                                iLerp = (int) AndroidUtilities.lerp(this.lastDrawnIndicatorW, f8, this.indicatorProgress2);
                            }
                            if (this.selectorType == -2) {
                                float f10 = this.additionalTabWidth / 2.0f;
                                int iDp = (measuredHeight / 2) - AndroidUtilities.dp(14.0f);
                                this.selectorDrawable.setBounds((int) ((x - AndroidUtilities.dp(12.5f)) - f10), iDp, (int) (x + iLerp + AndroidUtilities.dp(12.5f) + f10), AndroidUtilities.dp(28.0f) + iDp);
                                this.selectorDrawable.setAlpha(31);
                                this.selectorDrawable.draw(canvas);
                                return zDrawChild;
                            }
                            this.selectorDrawable.setBounds(x, (int) ((measuredHeight - AndroidUtilities.dpr(4.0f)) + (this.hideProgress * AndroidUtilities.dpr(4.0f))), iLerp + x, (int) (measuredHeight + (this.hideProgress * AndroidUtilities.dpr(4.0f))));
                            this.selectorDrawable.draw(canvas);
                            return zDrawChild;
                        }
                    }
                }
            }
            return zDrawChild;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int i3;
            if (!this.tabs.isEmpty()) {
                int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.dp(7.0f)) - AndroidUtilities.dp(7.0f);
                int i4 = this.additionalTabWidth;
                if (this.tabs.size() == 1 || (i3 = this.selectorType) == 9 || i3 == 10) {
                    this.additionalTabWidth = 0;
                } else {
                    int i5 = this.allTabsWidth;
                    this.additionalTabWidth = i5 < size ? (size - i5) / this.tabs.size() : 0;
                }
                if (i4 != this.additionalTabWidth) {
                    this.ignoreLayout = true;
                    this.adapter.notifyDataSetChanged();
                    this.ignoreLayout = false;
                }
                updateTabsWidths();
                this.invalidated = false;
            }
            super.onMeasure(i, i2);
        }

        public void updateColors() {
            BlurredBackgroundDrawable blurredBackgroundDrawable = this.blurredBackgroundDrawable;
            if (blurredBackgroundDrawable != null) {
                blurredBackgroundDrawable.updateColors();
            }
            this.selectorDrawable.setColor(Theme.getColor(this.tabLineColorKey, this.resourcesProvider));
            this.listView.invalidateViews();
            this.listView.invalidate();
            invalidate();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        private void scrollToChild(final int i) {
            if (this.tabs.isEmpty() || this.scrollingToChild == i || i < 0 || i >= this.tabs.size()) {
                return;
            }
            this.scrollingToChild = i;
            if (this.listView.getVisibility() == 8 || this.listView.getMeasuredWidth() == 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$scrollToChild$4(i);
                    }
                }, 100L);
            } else {
                this.listView.smoothScrollToPosition(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scrollToChild$4(int i) {
            this.listView.smoothScrollToPosition(i);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int i5 = i3 - i;
            if (this.prevLayoutWidth != i5) {
                this.prevLayoutWidth = i5;
                this.scrollingToChild = -1;
                if (this.animatingIndicator) {
                    AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
                    this.animatingIndicator = false;
                    setEnabled(true);
                    TabsViewDelegate tabsViewDelegate = this.delegate;
                    if (tabsViewDelegate != null) {
                        tabsViewDelegate.onPageScrolled(1.0f);
                    }
                }
            }
        }

        public void selectTab(int i, int i2, float f) {
            if (f < 0.0f) {
                f = 0.0f;
            } else if (f > 1.0f) {
                f = 1.0f;
            }
            this.currentPosition = i;
            this.selectedTabId = this.positionToId.get(i);
            if (f > 0.0f) {
                TabsViewDelegate tabsViewDelegate = this.delegate;
                if (tabsViewDelegate == null || tabsViewDelegate.needsTab(i2)) {
                    this.manualScrollingToPosition = i2;
                } else {
                    this.manualScrollingToPosition = i;
                }
                this.manualScrollingToId = this.positionToId.get(i2);
            } else {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
            }
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            scrollToChild(i);
            if (f >= 1.0f) {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
                this.currentPosition = i2;
                this.selectedTabId = this.positionToId.get(i2);
            }
            TabsViewDelegate tabsViewDelegate2 = this.delegate;
            if (tabsViewDelegate2 != null) {
                tabsViewDelegate2.invalidateBlur();
            }
        }

        public void selectTabWithId(int i, float f) {
            int i2 = this.idToPosition.get(i, -1);
            if (i2 < 0) {
                return;
            }
            if (f < 0.0f) {
                f = 0.0f;
            } else if (f > 1.0f) {
                f = 1.0f;
            }
            if (f > 0.0f) {
                this.manualScrollingToPosition = i2;
                this.manualScrollingToId = i;
            } else {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
            }
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            scrollToChild(i2);
            if (f >= 1.0f) {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
                this.currentPosition = i2;
                this.selectedTabId = i;
            }
        }

        public void setIsEditing(boolean z) {
            this.isEditing = z;
            this.editingForwardAnimation = true;
            this.listView.invalidateViews();
            invalidate();
            if (this.isEditing || !this.orderChanged) {
                return;
            }
            MessagesStorage.getInstance(UserConfig.selectedAccount).saveDialogFiltersOrder();
            TLRPC.TL_messages_updateDialogFiltersOrder tL_messages_updateDialogFiltersOrder = new TLRPC.TL_messages_updateDialogFiltersOrder();
            ArrayList<MessagesController.DialogFilter> arrayList = MessagesController.getInstance(UserConfig.selectedAccount).dialogFilters;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList.get(i);
                tL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(arrayList.get(i).id));
            }
            ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tL_messages_updateDialogFiltersOrder, new RequestDelegate() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    ViewPagerFixed.TabsView.$r8$lambda$j6saSZONxGTLgsxkbyYqIhznOiw(tLObject, tL_error);
                }
            });
            this.orderChanged = false;
        }

        public void setBlurredBackground(BlurredBackgroundDrawable blurredBackgroundDrawable) {
            this.blurredBackgroundDrawable = blurredBackgroundDrawable;
            setBackground(blurredBackgroundDrawable);
        }

        /* JADX INFO: loaded from: classes7.dex */
        public class ListAdapter extends RecyclerListView.SelectionAdapter {
            private Context mContext;

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return 0;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            public ListAdapter(Context context) {
                this.mContext = context;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return TabsView.this.tabs.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i) {
                return ((Tab) TabsView.this.tabs.get(i)).id;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return new RecyclerListView.Holder(TabsView.this.new TabView(this.mContext));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                TabView tabView = (TabView) viewHolder.itemView;
                tabView.setTab((Tab) TabsView.this.tabs.get(i), i);
                tabView.setReordering(TabsView.this.reordering && TabsView.this.delegate != null && TabsView.this.delegate.canReorder(i));
            }
        }

        public void hide(boolean z, boolean z2) {
            this.isInHiddenMode = z;
            int i = 0;
            if (z2) {
                while (i < this.listView.getChildCount()) {
                    this.listView.getChildAt(i).animate().alpha(z ? 0.0f : 1.0f).scaleX(z ? 0.0f : 1.0f).scaleY(z ? 0.0f : 1.0f).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(220L).start();
                    i++;
                }
            } else {
                while (i < this.listView.getChildCount()) {
                    View childAt = this.listView.getChildAt(i);
                    childAt.setScaleX(z ? 0.0f : 1.0f);
                    childAt.setScaleY(z ? 0.0f : 1.0f);
                    childAt.setAlpha(z ? 0.0f : 1.0f);
                    i++;
                }
                this.hideProgress = z ? 1.0f : 0.0f;
            }
            invalidate();
        }
    }

    private View findScrollingChild(ViewGroup viewGroup, float f, float f2) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(this.rect);
                if (!this.rect.contains((int) f, (int) f2)) {
                    continue;
                } else {
                    if (childAt.canScrollHorizontally(-1)) {
                        return childAt;
                    }
                    if (childAt instanceof ViewGroup) {
                        Rect rect = this.rect;
                        View viewFindScrollingChild = findScrollingChild((ViewGroup) childAt, f - rect.left, f2 - rect.top);
                        if (viewFindScrollingChild != null) {
                            return viewFindScrollingChild;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public void drawForBlur(Canvas canvas) {
        RecyclerListView recyclerListViewFindRecyclerView;
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            View view = viewArr[i];
            if (view != null && view.getVisibility() == 0 && (recyclerListViewFindRecyclerView = findRecyclerView(this.viewPages[i])) != null) {
                for (int i2 = 0; i2 < recyclerListViewFindRecyclerView.getChildCount(); i2++) {
                    View childAt = recyclerListViewFindRecyclerView.getChildAt(i2);
                    if (childAt.getY() < AndroidUtilities.dp(203.0f) + AndroidUtilities.dp(100.0f)) {
                        int iSave = canvas.save();
                        canvas.translate(this.viewPages[i].getX(), getY() + this.viewPages[i].getY() + recyclerListViewFindRecyclerView.getY() + childAt.getY());
                        childAt.draw(canvas);
                        canvas.restoreToCount(iSave);
                    }
                }
            }
            i++;
        }
    }

    private RecyclerListView findRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof RecyclerListView) {
                return (RecyclerListView) childAt;
            }
            if (childAt instanceof ViewGroup) {
                findRecyclerView(childAt);
            }
        }
        return null;
    }

    public void setAllowDisallowInterceptTouch(boolean z) {
        this.allowDisallowInterceptTouch = z;
    }
}
