package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

/* JADX INFO: loaded from: classes5.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    private boolean interceptingEvents;
    OnDismissListener listener;
    private boolean requestingDisallowInterceptTouchEvent;
    private boolean sensitivitySet;
    ViewDragHelper viewDragHelper;
    private float sensitivity = DEFAULT_ALPHA_START_DISTANCE;
    int swipeDirection = 2;
    float dragDismissThreshold = 0.5f;
    float alphaStartSwipeDistance = DEFAULT_ALPHA_START_DISTANCE;
    float alphaEndSwipeDistance = 0.5f;
    private final ViewDragHelper.Callback dragCallback = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            int i2 = this.activePointerId;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.activePointerId = i;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior.this.requestingDisallowInterceptTouchEvent = true;
                parent.requestDisallowInterceptTouchEvent(true);
                SwipeDismissBehavior.this.requestingDisallowInterceptTouchEvent = false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onViewReleased(View view, float f, float f2) {
            int i;
            boolean z;
            OnDismissListener onDismissListener;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (!shouldDismiss(view, f)) {
                i = this.originalCapturedViewLeft;
                z = false;
            } else if (f >= SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                int left = view.getLeft();
                int i2 = this.originalCapturedViewLeft;
                i = left < i2 ? this.originalCapturedViewLeft - width : i2 + width;
                z = true;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.settleCapturedViewAt(i, view.getTop())) {
                view.postOnAnimation(new SettleRunnable(view, z));
            } else {
                if (!z || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                onDismissListener.onDismiss(view);
            }
        }

        private boolean shouldDismiss(View view, float f) {
            if (f == SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                return Math.abs(view.getLeft() - this.originalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.dragDismissThreshold);
            }
            boolean z = view.getLayoutDirection() == 1;
            int i = SwipeDismissBehavior.this.swipeDirection;
            if (i == 2) {
                return true;
            }
            if (i == 0) {
                return z ? f < SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE : f > SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE;
            }
            if (i == 1) {
                if (z) {
                    return f > SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE;
                }
                if (f < SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            boolean z = view.getLayoutDirection() == 1;
            int i3 = SwipeDismissBehavior.this.swipeDirection;
            if (i3 == 0) {
                width = this.originalCapturedViewLeft;
                if (z) {
                    width -= view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                } else {
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i3 == 1) {
                width = this.originalCapturedViewLeft;
                if (z) {
                    width3 = view.getWidth();
                    width2 = width3 + width;
                } else {
                    width -= view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                }
            } else {
                width = this.originalCapturedViewLeft - view.getWidth();
                width2 = this.originalCapturedViewLeft + view.getWidth();
            }
            return SwipeDismissBehavior.clamp(width, i, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = view.getWidth() * SwipeDismissBehavior.this.alphaStartSwipeDistance;
            float width2 = view.getWidth() * SwipeDismissBehavior.this.alphaEndSwipeDistance;
            float fAbs = Math.abs(i - this.originalCapturedViewLeft);
            if (fAbs <= width) {
                view.setAlpha(1.0f);
            } else if (fAbs >= width2) {
                view.setAlpha(SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE);
            } else {
                view.setAlpha(SwipeDismissBehavior.clamp(SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE, 1.0f - SwipeDismissBehavior.fraction(width, width2, fAbs), 1.0f));
            }
        }
    };

    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    public static float fraction(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    public void setListener(OnDismissListener onDismissListener) {
        this.listener = onDismissListener;
    }

    public OnDismissListener getListener() {
        return this.listener;
    }

    public void setSwipeDirection(int i) {
        this.swipeDirection = i;
    }

    public void setDragDismissDistance(float f) {
        this.dragDismissThreshold = clamp(DEFAULT_ALPHA_START_DISTANCE, f, 1.0f);
    }

    public void setStartAlphaSwipeDistance(float f) {
        this.alphaStartSwipeDistance = clamp(DEFAULT_ALPHA_START_DISTANCE, f, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f) {
        this.alphaEndSwipeDistance = clamp(DEFAULT_ALPHA_START_DISTANCE, f, 1.0f);
    }

    public void setSensitivity(float f) {
        this.sensitivity = f;
        this.sensitivitySet = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, v, i);
        if (v.getImportantForAccessibility() == 0) {
            v.setImportantForAccessibility(1);
            updateAccessibilityActions(v);
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.interceptingEvents = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (zIsPointInChildBounds) {
            ensureViewDragHelper(coordinatorLayout);
            if (!this.requestingDisallowInterceptTouchEvent && this.viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.viewDragHelper == null) {
            return false;
        }
        if (this.requestingDisallowInterceptTouchEvent && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        ViewDragHelper viewDragHelperCreate;
        if (this.viewDragHelper == null) {
            if (this.sensitivitySet) {
                viewDragHelperCreate = ViewDragHelper.create(viewGroup, this.sensitivity, this.dragCallback);
            } else {
                viewDragHelperCreate = ViewDragHelper.create(viewGroup, this.dragCallback);
            }
            this.viewDragHelper = viewDragHelperCreate;
        }
    }

    public class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        public SettleRunnable(View view, boolean z) {
            this.view = view;
            this.dismiss = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.viewDragHelper;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                this.view.postOnAnimation(this);
            } else {
                if (!this.dismiss || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                onDismissListener.onDismiss(this.view);
            }
        }
    }

    private void updateAccessibilityActions(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (canSwipeDismissView(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new AccessibilityViewCommand() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(View view2, AccessibilityViewCommand.CommandArguments commandArguments) {
                    if (!SwipeDismissBehavior.this.canSwipeDismissView(view2)) {
                        return false;
                    }
                    boolean z = view2.getLayoutDirection() == 1;
                    int i = SwipeDismissBehavior.this.swipeDirection;
                    ViewCompat.offsetLeftAndRight(view2, (!(i == 0 && z) && (i != 1 || z)) ? view2.getWidth() : -view2.getWidth());
                    view2.setAlpha(SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE);
                    OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
                    if (onDismissListener != null) {
                        onDismissListener.onDismiss(view2);
                    }
                    return true;
                }
            });
        }
    }

    public static float clamp(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    public static int clamp(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    public int getDragState() {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }
}
