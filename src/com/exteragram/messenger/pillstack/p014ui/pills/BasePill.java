package com.exteragram.messenger.pillstack.p014ui.pills;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LoadingDrawable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BasePill extends FrameLayout {
    private static final SparseArray globalLastUpdateTimes = new SparseArray();
    private final Runnable autoRefreshRunnable;
    protected boolean loading;
    protected LoadingDrawable loadingDrawable;
    protected View loadingTargetView;
    private final RectF rectF;
    protected Theme.ResourcesProvider resourcesProvider;

    public abstract int getPillId();

    public abstract long getRefreshInterval();

    public abstract void onPillClicked();

    public abstract boolean onPillLongClicked();

    public void onPillSelected() {
    }

    public void onPillUnselected() {
    }

    public abstract void onUpdateData(boolean z);

    public abstract void updateColors();

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        onUpdateData(false);
        scheduleNextUpdate();
    }

    public BasePill(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.rectF = new RectF();
        this.autoRefreshRunnable = new Runnable() { // from class: com.exteragram.messenger.pillstack.ui.pills.BasePill$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.resourcesProvider = resourcesProvider;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2, (LocaleController.isRTL ? 3 : 5) | 16));
        setClipChildren(false);
        setClipToPadding(false);
    }

    private void scheduleNextUpdate() {
        removeCallbacks(this.autoRefreshRunnable);
        long refreshInterval = getRefreshInterval();
        if (refreshInterval > 0) {
            postDelayed(this.autoRefreshRunnable, refreshInterval);
        }
    }

    protected boolean isRefreshDue() {
        long refreshInterval = getRefreshInterval();
        if (refreshInterval <= 0) {
            return true;
        }
        long jLongValue = ((Long) globalLastUpdateTimes.get(getPillId(), 0L)).longValue();
        return jLongValue == 0 || SystemClock.elapsedRealtime() - jLongValue >= refreshInterval;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        long refreshInterval = getRefreshInterval();
        if (refreshInterval > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jLongValue = ((Long) globalLastUpdateTimes.get(getPillId(), 0L)).longValue();
            if (jLongValue != 0) {
                long j = jElapsedRealtime - jLongValue;
                if (j < refreshInterval) {
                    postDelayed(this.autoRefreshRunnable, refreshInterval - j);
                    return;
                }
            }
            this.autoRefreshRunnable.run();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.autoRefreshRunnable);
    }

    protected void markDataUpdated() {
        globalLastUpdateTimes.put(getPillId(), Long.valueOf(SystemClock.elapsedRealtime()));
        scheduleNextUpdate();
    }

    protected void setLoadingTargetView(View view) {
        this.loadingTargetView = view;
    }

    public void startLoading() {
        this.loading = true;
        if (this.loadingDrawable == null) {
            LoadingDrawable loadingDrawable = new LoadingDrawable(this.resourcesProvider);
            this.loadingDrawable = loadingDrawable;
            loadingDrawable.setCallback(this);
            this.loadingDrawable.setGradientScale(2.0f);
            this.loadingDrawable.setRadiiDp(14.0f);
            updateLoadingColors();
        }
        this.loadingDrawable.reset();
        this.loadingDrawable.resetDisappear();
        this.loadingDrawable.setAlpha(255);
        invalidate();
    }

    protected void animateSizeChange() {
        if (isLaidOut() && getVisibility() == 0 && getParent() != null && (getParent().getParent() instanceof ViewGroup)) {
            TransitionManager.beginDelayedTransition((ViewGroup) getParent().getParent(), new TransitionSet().addTransition(new ChangeBounds()).setDuration(300L).setInterpolator((TimeInterpolator) CubicBezierInterpolator.EASE_OUT_QUINT));
        }
    }

    public void stopLoading() {
        this.loading = false;
        LoadingDrawable loadingDrawable = this.loadingDrawable;
        if (loadingDrawable != null) {
            loadingDrawable.disappear();
        }
    }

    protected void updateLoadingColors() {
        if (this.loadingDrawable != null) {
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider);
            this.loadingDrawable.setColors(Theme.multAlpha(color, 0.05f), Theme.multAlpha(color, 0.15f));
        }
    }

    protected int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    protected int getThemedColor(int i, float f) {
        return Theme.multAlpha(getThemedColor(i), f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        LoadingDrawable loadingDrawable = this.loadingDrawable;
        if (loadingDrawable != null) {
            if (loadingDrawable.getAlpha() > 0 || !this.loadingDrawable.isDisappearing()) {
                View view = this.loadingTargetView;
                if (view == null) {
                    view = this;
                }
                this.rectF.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                this.loadingDrawable.setBounds(this.rectF);
                this.loadingDrawable.draw(canvas);
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.loadingDrawable || super.verifyDrawable(drawable);
    }
}
