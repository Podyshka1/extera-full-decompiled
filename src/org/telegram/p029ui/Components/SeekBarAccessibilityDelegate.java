package org.telegram.p029ui.Components;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SeekBarAccessibilityDelegate extends View.AccessibilityDelegate {
    private static final CharSequence SEEK_BAR_CLASS_NAME = SeekBar.class.getName();
    private final Map accessibilityEventRunnables = new HashMap(4);
    private final View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Components.SeekBarAccessibilityDelegate.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            view.removeCallbacks((Runnable) SeekBarAccessibilityDelegate.this.accessibilityEventRunnables.remove(view));
            view.removeOnAttachStateChangeListener(this);
        }
    };

    protected abstract boolean canScrollBackward(View view);

    protected abstract boolean canScrollForward(View view);

    protected abstract void doScroll(View view, boolean z);

    protected CharSequence getContentDescription(View view) {
        return null;
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        return performAccessibilityActionInternal(view, i, bundle);
    }

    public boolean performAccessibilityActionInternal(View view, int i, Bundle bundle) {
        if (i != 4096 && i != 8192) {
            return false;
        }
        doScroll(view, i == 8192);
        return true;
    }

    public final boolean performAccessibilityActionInternal(int i, Bundle bundle) {
        return performAccessibilityActionInternal(null, i, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        onInitializeAccessibilityNodeInfoInternal(view, accessibilityNodeInfo);
    }

    public void onInitializeAccessibilityNodeInfoInternal(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        accessibilityNodeInfo.setClassName(SEEK_BAR_CLASS_NAME);
        CharSequence contentDescription = getContentDescription(view);
        if (!TextUtils.isEmpty(contentDescription)) {
            accessibilityNodeInfo.setText(contentDescription);
        }
        if (canScrollBackward(view)) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        }
        if (canScrollForward(view)) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
        }
    }

    public final void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        onInitializeAccessibilityNodeInfoInternal(null, accessibilityNodeInfo);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(SEEK_BAR_CLASS_NAME);
    }
}
