package com.google.android.material.bottomsheet;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.C1349R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* JADX INFO: loaded from: classes5.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Material3_BottomSheet_DragHandle;
    private final AccessibilityManager accessibilityManager;
    private BottomSheetBehavior<?> bottomSheetBehavior;
    private final BottomSheetBehavior.BottomSheetCallback bottomSheetCallback;
    private final String clickToCollapseActionLabel;
    private boolean clickToExpand;
    private final String clickToExpandActionLabel;
    private final String clickToHalfExpandActionLabel;
    private final GestureDetector gestureDetector;
    private final GestureDetector.OnGestureListener gestureListener;
    private boolean hasClickListener;
    private boolean hasTouchListener;

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z) {
    }

    public BottomSheetDragHandleView(Context context) {
        this(context, null);
    }

    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.bottomSheetDragHandleStyle);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, DEF_STYLE_RES), attributeSet, i);
        this.hasTouchListener = false;
        this.hasClickListener = false;
        this.clickToExpandActionLabel = getResources().getString(C1349R.string.bottomsheet_action_expand_description);
        this.clickToHalfExpandActionLabel = getResources().getString(C1349R.string.bottomsheet_action_half_expand_description);
        this.clickToCollapseActionLabel = getResources().getString(C1349R.string.bottomsheet_action_collapse_description);
        this.bottomSheetCallback = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.google.android.material.bottomsheet.BottomSheetDragHandleView.1
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public void onSlide(View view, float f) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public void onStateChanged(View view, int i2) {
                BottomSheetDragHandleView.this.onBottomSheetStateChanged(i2);
            }
        };
        GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.google.android.material.bottomsheet.BottomSheetDragHandleView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return BottomSheetDragHandleView.this.isClickable();
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                return BottomSheetDragHandleView.this.expandOrCollapseBottomSheetIfPossible();
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (BottomSheetDragHandleView.this.bottomSheetBehavior != null && BottomSheetDragHandleView.this.bottomSheetBehavior.isHideable()) {
                    BottomSheetDragHandleView.this.bottomSheetBehavior.setState(5);
                    return true;
                }
                return super.onDoubleTap(motionEvent);
            }
        };
        this.gestureListener = simpleOnGestureListener;
        Context context2 = getContext();
        this.gestureDetector = new GestureDetector(context2, simpleOnGestureListener, new Handler(Looper.getMainLooper()));
        this.accessibilityManager = (AccessibilityManager) context2.getSystemService("accessibility");
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.bottomsheet.BottomSheetDragHandleView.3
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
                if (accessibilityEvent.getEventType() == 1) {
                    BottomSheetDragHandleView.this.expandOrCollapseBottomSheetIfPossible();
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                String string;
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                if (BottomSheetDragHandleView.this.hasAttachedBehavior()) {
                    CharSequence contentDescription = BottomSheetDragHandleView.this.getContentDescription();
                    int state = BottomSheetDragHandleView.this.bottomSheetBehavior.getState();
                    if (state == 3) {
                        string = BottomSheetDragHandleView.this.getResources().getString(C1349R.string.bottomsheet_state_expanded);
                    } else if (state == 4) {
                        string = BottomSheetDragHandleView.this.getResources().getString(C1349R.string.bottomsheet_state_collapsed);
                    } else {
                        string = state != 6 ? null : BottomSheetDragHandleView.this.getResources().getString(C1349R.string.bottomsheet_state_half_expanded);
                    }
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    if (!TextUtils.isEmpty(contentDescription)) {
                        string = string + ". " + ((Object) contentDescription);
                    }
                    accessibilityNodeInfoCompat.setContentDescription(string);
                }
            }
        });
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBottomSheetBehavior(findParentBottomSheetBehavior());
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(this.accessibilityManager.isEnabled());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.hasClickListener || this.hasTouchListener) {
            return super.onTouchEvent(motionEvent);
        }
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.hasTouchListener = onTouchListener != null;
        super.setOnTouchListener(onTouchListener);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.hasClickListener = onClickListener != null;
        super.setOnClickListener(onClickListener);
    }

    private void setBottomSheetBehavior(BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior<?> bottomSheetBehavior2 = this.bottomSheetBehavior;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.removeBottomSheetCallback(this.bottomSheetCallback);
            this.bottomSheetBehavior.setAccessibilityDelegateView(null);
            this.bottomSheetBehavior.setDragHandleView(null);
        }
        this.bottomSheetBehavior = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.setAccessibilityDelegateView(this);
            this.bottomSheetBehavior.setDragHandleView(this);
            onBottomSheetStateChanged(this.bottomSheetBehavior.getState());
            this.bottomSheetBehavior.addBottomSheetCallback(this.bottomSheetCallback);
        }
        setClickable(hasAttachedBehavior());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBottomSheetStateChanged(int i) {
        String str;
        if (i == 4) {
            this.clickToExpand = true;
        } else if (i == 3) {
            this.clickToExpand = false;
        }
        int nextState = getNextState();
        if (nextState == 3) {
            str = this.clickToExpandActionLabel;
        } else if (nextState == 4) {
            str = this.clickToCollapseActionLabel;
        } else {
            str = nextState != 6 ? null : this.clickToHalfExpandActionLabel;
        }
        ViewCompat.replaceAccessibilityAction(this, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK, str, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetDragHandleView$$ExternalSyntheticLambda0
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return this.f$0.expandOrCollapseBottomSheetIfPossible();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasAttachedBehavior() {
        return this.bottomSheetBehavior != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean expandOrCollapseBottomSheetIfPossible() {
        if (!hasAttachedBehavior()) {
            return false;
        }
        int nextState = getNextState();
        if (nextState == -1) {
            return true;
        }
        this.bottomSheetBehavior.setState(nextState);
        return true;
    }

    private int getNextState() {
        if (!hasAttachedBehavior()) {
            return -1;
        }
        boolean z = (this.bottomSheetBehavior.isFitToContents() || this.bottomSheetBehavior.shouldSkipHalfExpandedStateWhenDragging()) ? false : true;
        int state = this.bottomSheetBehavior.getState();
        if (state == 3) {
            return z ? 6 : 4;
        }
        if (state == 4) {
            return z ? 6 : 3;
        }
        if (state != 6) {
            return -1;
        }
        return this.clickToExpand ? 3 : 4;
    }

    private BottomSheetBehavior<?> findParentBottomSheetBehavior() {
        View parentView = this;
        while (true) {
            parentView = getParentView(parentView);
            if (parentView == null) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams = parentView.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
                if (behavior instanceof BottomSheetBehavior) {
                    return (BottomSheetBehavior) behavior;
                }
            }
        }
    }

    private static View getParentView(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (i == 23 || i == 66) {
            if (this.hasClickListener) {
                return performClick();
            }
            return expandOrCollapseBottomSheetIfPossible();
        }
        return super.onKeyDown(i, keyEvent);
    }
}
