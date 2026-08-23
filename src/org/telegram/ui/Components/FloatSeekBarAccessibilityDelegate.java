package org.telegram.ui.Components;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* JADX INFO: loaded from: classes7.dex */
public abstract class FloatSeekBarAccessibilityDelegate extends SeekBarAccessibilityDelegate {
    private final boolean setPercentsEnabled;

    public float getDelta() {
        return 0.05f;
    }

    public float getMaxValue() {
        return 1.0f;
    }

    public float getMinValue() {
        return 0.0f;
    }

    public abstract float getProgress();

    public abstract void setProgress(float f);

    public FloatSeekBarAccessibilityDelegate() {
        this(false);
    }

    public FloatSeekBarAccessibilityDelegate(boolean z) {
        this.setPercentsEnabled = z;
    }

    @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
    public void onInitializeAccessibilityNodeInfoInternal(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(view, accessibilityNodeInfo);
        if (this.setPercentsEnabled) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            accessibilityNodeInfoCompatWrap.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            accessibilityNodeInfoCompatWrap.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, getMinValue(), getMaxValue(), getProgress()));
        }
    }

    @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
    public boolean performAccessibilityActionInternal(View view, int i, Bundle bundle) {
        if (super.performAccessibilityActionInternal(view, i, bundle)) {
            return true;
        }
        if (i != AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS.getId()) {
            return false;
        }
        setProgress(bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"));
        return true;
    }

    @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
    public void doScroll(View view, boolean z) {
        float delta = getDelta();
        if (z) {
            delta *= -1.0f;
        }
        setProgress(Math.min(getMaxValue(), Math.max(getMinValue(), getProgress() + delta)));
    }

    @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
    public boolean canScrollBackward(View view) {
        return getProgress() > getMinValue();
    }

    @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
    public boolean canScrollForward(View view) {
        return getProgress() < getMaxValue();
    }
}
