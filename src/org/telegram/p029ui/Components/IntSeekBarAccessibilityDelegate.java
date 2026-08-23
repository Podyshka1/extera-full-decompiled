package org.telegram.p029ui.Components;

import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public abstract class IntSeekBarAccessibilityDelegate extends SeekBarAccessibilityDelegate {
    protected int getDelta() {
        return 1;
    }

    protected abstract int getMaxValue();

    protected int getMinValue() {
        return 0;
    }

    protected abstract int getProgress();

    protected abstract void setProgress(int i);

    @Override // org.telegram.p029ui.Components.SeekBarAccessibilityDelegate
    protected void doScroll(View view, boolean z) {
        int delta = getDelta();
        if (z) {
            delta *= -1;
        }
        setProgress(Math.min(getMaxValue(), Math.max(getMinValue(), getProgress() + delta)));
    }

    @Override // org.telegram.p029ui.Components.SeekBarAccessibilityDelegate
    protected boolean canScrollBackward(View view) {
        return getProgress() > getMinValue();
    }

    @Override // org.telegram.p029ui.Components.SeekBarAccessibilityDelegate
    protected boolean canScrollForward(View view) {
        return getProgress() < getMaxValue();
    }
}
