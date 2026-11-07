package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.GestureDetectorCompat;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.UserConfig;
import org.telegram.ui.ActionBar.ActionBarMenuSlider;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class PopupSwipeBackLayout extends FrameLayout {
    private int currentForegroundIndex;
    private GestureDetectorCompat detector;
    private ValueAnimator foregroundAnimator;
    private int foregroundColor;
    private Drawable foregroundDrawable;
    private Paint foregroundPaint;
    private Rect hitRect;
    private boolean isAnimationInProgress;
    private boolean isProcessingSwipe;
    private boolean isSwipeBackDisallowed;
    private boolean isSwipeDisallowed;
    private int lastHeightReported;
    float lastToProgress;
    float lastTransitionProgress;
    private Path mPath;
    private RectF mRect;
    private AnimationNotificationsLocker notificationsLocker;
    private Runnable onForegroundOpen;
    private IntCallback onHeightUpdateListener;
    private ArrayList<OnSwipeBackProgressListener> onSwipeBackProgressListeners;
    private Paint overlayPaint;
    private float overrideForegroundHeight;
    SparseIntArray overrideHeightIndex;
    Theme.ResourcesProvider resourcesProvider;
    public boolean stickToCenterHorizontal;
    public boolean stickToRight;
    private float toProgress;
    public float transitionProgress;

    public interface IntCallback {
        void run(int i);
    }

    public interface OnSwipeBackProgressListener {
        void onSwipeBackProgress(PopupSwipeBackLayout popupSwipeBackLayout, float f, float f2);
    }

    public PopupSwipeBackLayout(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.overrideHeightIndex = new SparseIntArray();
        this.toProgress = -1.0f;
        this.overlayPaint = new Paint(1);
        this.foregroundPaint = new Paint();
        this.foregroundColor = 0;
        this.mPath = new Path();
        this.mRect = new RectF();
        this.onSwipeBackProgressListeners = new ArrayList<>();
        this.currentForegroundIndex = -1;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.lastHeightReported = -1;
        this.hitRect = new Rect();
        this.resourcesProvider = resourcesProvider;
        final int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.detector = new GestureDetectorCompat(context, new GestureDetector.SimpleOnGestureListener() { // from class: org.telegram.ui.Components.PopupSwipeBackLayout.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!PopupSwipeBackLayout.this.isProcessingSwipe && !PopupSwipeBackLayout.this.isSwipeDisallowed) {
                    if (PopupSwipeBackLayout.this.isSwipeBackDisallowed || PopupSwipeBackLayout.this.transitionProgress != 1.0f || f > (-scaledTouchSlop) || Math.abs(f) < Math.abs(f2 * 1.5f)) {
                        PopupSwipeBackLayout.this.isSwipeDisallowed = true;
                    } else {
                        PopupSwipeBackLayout popupSwipeBackLayout = PopupSwipeBackLayout.this;
                        if (!popupSwipeBackLayout.isDisallowedView(motionEvent2, popupSwipeBackLayout.getChildAt(popupSwipeBackLayout.transitionProgress > 0.5f ? 1 : 0))) {
                            PopupSwipeBackLayout.this.isProcessingSwipe = true;
                            MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
                            for (int i = 0; i < PopupSwipeBackLayout.this.getChildCount(); i++) {
                                PopupSwipeBackLayout.this.getChildAt(i).dispatchTouchEvent(motionEventObtain);
                            }
                            motionEventObtain.recycle();
                        }
                    }
                }
                if (PopupSwipeBackLayout.this.isProcessingSwipe) {
                    PopupSwipeBackLayout.this.toProgress = -1.0f;
                    PopupSwipeBackLayout.this.transitionProgress = 1.0f - Math.max(0.0f, Math.min(1.0f, (motionEvent2.getX() - motionEvent.getX()) / PopupSwipeBackLayout.this.getWidth()));
                    PopupSwipeBackLayout.this.invalidateTransforms();
                }
                return PopupSwipeBackLayout.this.isProcessingSwipe;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!PopupSwipeBackLayout.this.isAnimationInProgress && !PopupSwipeBackLayout.this.isSwipeDisallowed && f >= 600.0f) {
                    PopupSwipeBackLayout.this.clearFlags();
                    PopupSwipeBackLayout.this.animateToState(0.0f, f / 6000.0f);
                }
                return false;
            }
        });
        this.overlayPaint.setColor(-16777216);
    }

    public void setSwipeBackDisallowed(boolean z) {
        this.isSwipeBackDisallowed = z;
    }

    public void addOnSwipeBackProgressListener(OnSwipeBackProgressListener onSwipeBackProgressListener) {
        this.onSwipeBackProgressListeners.add(onSwipeBackProgressListener);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        int iIndexOfChild = indexOfChild(view);
        int iSave = canvas.save();
        if (iIndexOfChild != 0) {
            Drawable drawable = this.foregroundDrawable;
            if (drawable != null) {
                drawable.setBounds((int) view.getX(), 0, (int) (view.getX() + view.getMeasuredWidth()), getMeasuredHeight());
                this.foregroundDrawable.draw(canvas);
            } else {
                int i = this.foregroundColor;
                Paint paint = this.foregroundPaint;
                if (i == 0) {
                    paint.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, this.resourcesProvider));
                } else {
                    paint.setColor(i);
                }
                canvas.drawRect(view.getX(), 0.0f, view.getMeasuredWidth() + view.getX(), getMeasuredHeight(), this.foregroundPaint);
            }
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (iIndexOfChild == 0) {
            this.overlayPaint.setAlpha((int) (this.transitionProgress * 64.0f));
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.overlayPaint);
        }
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    public void invalidateTransforms() {
        invalidateTransforms(true);
    }

    public void invalidateTransforms(boolean z) {
        float measuredWidth;
        float measuredHeight;
        if (this.lastToProgress != this.toProgress || this.lastTransitionProgress != this.transitionProgress) {
            if (!this.onSwipeBackProgressListeners.isEmpty()) {
                for (int i = 0; i < this.onSwipeBackProgressListeners.size(); i++) {
                    this.onSwipeBackProgressListeners.get(i).onSwipeBackProgress(this, this.toProgress, this.transitionProgress);
                }
            }
            this.lastToProgress = this.toProgress;
            this.lastTransitionProgress = this.transitionProgress;
        }
        View childAt = getChildAt(0);
        int i2 = this.currentForegroundIndex;
        View childAt2 = (i2 < 0 || i2 >= getChildCount()) ? null : getChildAt(this.currentForegroundIndex);
        childAt.setTranslationX((-this.transitionProgress) * getWidth() * 0.5f);
        float f = ((1.0f - this.transitionProgress) * 0.05f) + 0.95f;
        childAt.setScaleX(f);
        childAt.setScaleY(f);
        if (childAt2 != null) {
            childAt2.setTranslationX((1.0f - this.transitionProgress) * getWidth());
        }
        invalidateVisibility();
        float measuredWidth2 = childAt.getMeasuredWidth();
        float measuredHeight2 = childAt.getMeasuredHeight();
        if (childAt2 != null) {
            measuredWidth = childAt2.getMeasuredWidth();
            measuredHeight = this.overrideForegroundHeight;
            if (measuredHeight == 0.0f) {
                measuredHeight = childAt2.getMeasuredHeight();
            }
        } else {
            measuredWidth = 0.0f;
            measuredHeight = 0.0f;
        }
        if (childAt.getMeasuredWidth() == 0 || childAt.getMeasuredHeight() == 0) {
            return;
        }
        ViewParent parent = getParent();
        if (parent instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) parent;
            float f2 = this.transitionProgress;
            float paddingTop = measuredHeight2 + ((measuredHeight - measuredHeight2) * f2) + actionBarPopupWindowLayout.getPaddingTop() + actionBarPopupWindowLayout.getPaddingBottom();
            actionBarPopupWindowLayout.updateAnimation = false;
            actionBarPopupWindowLayout.setBackScaleX(((measuredWidth2 + ((measuredWidth - measuredWidth2) * f2)) + (actionBarPopupWindowLayout.getPaddingLeft() + actionBarPopupWindowLayout.getPaddingRight())) / actionBarPopupWindowLayout.getMeasuredWidth());
            if (z) {
                actionBarPopupWindowLayout.setBackScaleY(Math.min(1.0f, paddingTop / actionBarPopupWindowLayout.getMeasuredHeight()));
            }
            actionBarPopupWindowLayout.updateAnimation = true;
        }
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt3 = getChildAt(i3);
            childAt3.setPivotX(0.0f);
            childAt3.setPivotY(0.0f);
        }
        invalidate();
    }

    public boolean isForegroundOpen() {
        return this.transitionProgress > 0.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (processTouchEvent(motionEvent)) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        RectF rectF = this.mRect;
        if (rectF != null) {
            rectF.contains(motionEvent.getX(), motionEvent.getY());
        }
        if (actionMasked == 0 && !this.mRect.contains(motionEvent.getX(), motionEvent.getY())) {
            callOnClick();
            return true;
        }
        int i = this.currentForegroundIndex;
        if (i < 0 || i >= getChildCount()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        View childAt = getChildAt(0);
        View childAt2 = getChildAt(this.currentForegroundIndex);
        if (this.transitionProgress > 0.5f) {
            childAt = childAt2;
        }
        boolean zDispatchTouchEvent = childAt.dispatchTouchEvent(motionEvent);
        return (!zDispatchTouchEvent && actionMasked == 0) || zDispatchTouchEvent || onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        invalidateTransforms();
    }

    private boolean processTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (this.isAnimationInProgress) {
            return true;
        }
        if (!this.detector.onTouchEvent(motionEvent) && (action == 1 || action == 3)) {
            if (this.isProcessingSwipe) {
                clearFlags();
                animateToState(this.transitionProgress >= 0.5f ? 1.0f : 0.0f, 0.0f);
                return false;
            }
            if (!this.isSwipeDisallowed) {
                return false;
            }
            clearFlags();
            return false;
        }
        return this.isProcessingSwipe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateToState(final float f, float f2) {
        ValueAnimator duration = ValueAnimator.ofFloat(this.transitionProgress, f).setDuration((long) (Math.max(0.5f, Math.abs(this.transitionProgress - f) - Math.min(0.2f, f2)) * 300.0f));
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        int i = UserConfig.selectedAccount;
        this.notificationsLocker.lock();
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PopupSwipeBackLayout$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateToState$0(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PopupSwipeBackLayout.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                PopupSwipeBackLayout.this.isAnimationInProgress = true;
                PopupSwipeBackLayout.this.toProgress = f;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PopupSwipeBackLayout.this.notificationsLocker.unlock();
                PopupSwipeBackLayout popupSwipeBackLayout = PopupSwipeBackLayout.this;
                float f3 = f;
                popupSwipeBackLayout.transitionProgress = f3;
                if (f3 <= 0.0f) {
                    popupSwipeBackLayout.currentForegroundIndex = -1;
                }
                PopupSwipeBackLayout.this.invalidateTransforms();
                PopupSwipeBackLayout.this.isAnimationInProgress = false;
                if (PopupSwipeBackLayout.this.onForegroundOpen == null || Math.abs(f - 1.0f) >= 0.01f) {
                    return;
                }
                PopupSwipeBackLayout.this.onForegroundOpen.run();
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateToState$0(ValueAnimator valueAnimator) {
        this.transitionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidateTransforms();
    }

    public void setOnForegroundOpenFinished(Runnable runnable) {
        this.onForegroundOpen = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFlags() {
        this.isProcessingSwipe = false;
        this.isSwipeDisallowed = false;
    }

    public void openForeground(int i) {
        if (this.isAnimationInProgress) {
            return;
        }
        this.currentForegroundIndex = i;
        this.overrideForegroundHeight = this.overrideHeightIndex.get(i);
        animateToState(1.0f, 0.0f);
    }

    public void closeForeground() {
        closeForeground(true);
    }

    public void closeForeground(boolean z) {
        if (this.isAnimationInProgress) {
            return;
        }
        if (!z) {
            this.currentForegroundIndex = -1;
            this.transitionProgress = 0.0f;
            invalidateTransforms();
            return;
        }
        animateToState(0.0f, 0.0f);
    }

    public void setStickToRight(boolean z) {
        this.stickToRight = z;
        if (z) {
            this.stickToCenterHorizontal = false;
        }
    }

    public void setStickToCenterHorizontal(boolean z) {
        this.stickToCenterHorizontal = z;
        if (z) {
            this.stickToRight = false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            boolean z2 = (childAt.getLayoutParams() instanceof FrameLayout.LayoutParams) && ((FrameLayout.LayoutParams) childAt.getLayoutParams()).gravity == 80;
            if (this.stickToRight) {
                measuredWidth = (i3 - i) - childAt.getMeasuredWidth();
            } else {
                measuredWidth = this.stickToCenterHorizontal ? ((i3 - i) - childAt.getMeasuredWidth()) / 2 : 0;
            }
            if (z2) {
                int i6 = i4 - i2;
                childAt.layout(measuredWidth, i6 - childAt.getMeasuredHeight(), childAt.getMeasuredWidth() + measuredWidth, i6);
            } else {
                childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, childAt.getMeasuredHeight());
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        invalidateTransforms();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (getChildCount() == 0) {
            return;
        }
        View childAt = getChildAt(0);
        float top = childAt.getTop();
        float measuredWidth = childAt.getMeasuredWidth();
        float measuredHeight = childAt.getMeasuredHeight();
        int i = this.currentForegroundIndex;
        if (i != -1 && i < getChildCount()) {
            View childAt2 = getChildAt(this.currentForegroundIndex);
            float top2 = childAt2.getTop();
            float measuredWidth2 = childAt2.getMeasuredWidth();
            float measuredHeight2 = this.overrideForegroundHeight;
            if (measuredHeight2 == 0.0f) {
                measuredHeight2 = childAt2.getMeasuredHeight();
            }
            if (childAt.getMeasuredWidth() != 0 && childAt.getMeasuredHeight() != 0 && childAt2.getMeasuredWidth() != 0 && childAt2.getMeasuredHeight() != 0) {
                top = AndroidUtilities.lerp(top, top2, this.transitionProgress);
                measuredWidth = AndroidUtilities.lerp(measuredWidth, measuredWidth2, this.transitionProgress);
                measuredHeight = AndroidUtilities.lerp(measuredHeight, measuredHeight2, this.transitionProgress);
            }
        }
        int iSave = canvas.save();
        this.mPath.rewind();
        int iDp = AndroidUtilities.dp(12.0f);
        if (this.stickToRight) {
            this.mRect.set(getWidth() - measuredWidth, top, getWidth(), measuredHeight + top);
        } else if (this.stickToCenterHorizontal) {
            float width = (getWidth() - measuredWidth) / 2.0f;
            this.mRect.set(width, top, measuredWidth + width, measuredHeight + top);
        } else {
            this.mRect.set(0.0f, top, measuredWidth, measuredHeight + top);
        }
        float f = iDp;
        this.mPath.addRoundRect(this.mRect, f, f, Path.Direction.CW);
        canvas.clipPath(this.mPath);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
        if (this.onHeightUpdateListener == null || this.lastHeightReported == this.mRect.height()) {
            return;
        }
        IntCallback intCallback = this.onHeightUpdateListener;
        int iHeight = (int) this.mRect.height();
        this.lastHeightReported = iHeight;
        intCallback.run(iHeight);
    }

    public void setOnHeightUpdateListener(IntCallback intCallback) {
        this.onHeightUpdateListener = intCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDisallowedView(MotionEvent motionEvent, View view) {
        view.getHitRect(this.hitRect);
        if (this.hitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && (view.canScrollHorizontally(-1) || (view instanceof ActionBarMenuSlider))) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (isDisallowedView(motionEvent, viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    private void invalidateVisibility() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (i == 0) {
                if (this.transitionProgress == 1.0f && childAt.getVisibility() != 4) {
                    childAt.setVisibility(4);
                }
                if (this.transitionProgress != 1.0f && childAt.getVisibility() != 0) {
                    childAt.setVisibility(0);
                }
            } else if (i == this.currentForegroundIndex) {
                if (this.transitionProgress == 0.0f && childAt.getVisibility() != 4) {
                    childAt.setVisibility(4);
                }
                if (this.transitionProgress != 0.0f && childAt.getVisibility() != 0) {
                    childAt.setVisibility(0);
                }
            } else {
                childAt.setVisibility(4);
            }
        }
    }

    public void setNewForegroundHeight(int i, int i2, boolean z) {
        this.overrideHeightIndex.put(i, i2);
        int i3 = this.currentForegroundIndex;
        if (i == i3 && i3 >= 0 && i3 < getChildCount()) {
            ValueAnimator valueAnimator = this.foregroundAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.foregroundAnimator = null;
            }
            if (z) {
                View childAt = getChildAt(this.currentForegroundIndex);
                float measuredHeight = this.overrideForegroundHeight;
                if (measuredHeight == 0.0f) {
                    measuredHeight = childAt.getMeasuredHeight();
                }
                ValueAnimator duration = ValueAnimator.ofFloat(measuredHeight, i2).setDuration(240L);
                duration.setInterpolator(Easings.easeInOutQuad);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PopupSwipeBackLayout$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setNewForegroundHeight$1(valueAnimator2);
                    }
                });
                this.isAnimationInProgress = true;
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PopupSwipeBackLayout.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PopupSwipeBackLayout.this.isAnimationInProgress = false;
                        PopupSwipeBackLayout.this.foregroundAnimator = null;
                    }
                });
                duration.start();
                this.foregroundAnimator = duration;
                return;
            }
            this.overrideForegroundHeight = i2;
            invalidateTransforms();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setNewForegroundHeight$1(ValueAnimator valueAnimator) {
        this.overrideForegroundHeight = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidateTransforms();
    }

    public void setForegroundColor(int i) {
        this.foregroundColor = i;
    }

    public void setForegroundDrawable(Drawable drawable) {
        this.foregroundDrawable = drawable;
        invalidate();
    }
}
