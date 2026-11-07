package org.telegram.ui.Components;

import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public abstract class IntSeekBarAccessibilityDelegate extends SeekBarAccessibilityDelegate {
    public int getDelta() {
        return 1;
    }

    public abstract int getMaxValue();

    public int getMinValue() {
        return 0;
    }

    public abstract int getProgress();

    public abstract void setProgress(int i);

    @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
    public void doScroll(View view, boolean z) {
        int delta = getDelta();
        if (z) {
            delta *= -1;
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
