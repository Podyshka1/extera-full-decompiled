package org.telegram.ui.Components.chat;

import java.util.Arrays;
import me.vkryl.android.AnimatorUtils;
import me.vkryl.android.animator.ListAnimator;
import me.vkryl.android.animator.ReplaceAnimator;
import me.vkryl.core.BitwiseUtils;

/* JADX INFO: loaded from: classes7.dex */
public class ChatActivityBottomViewsVisibilityController implements ReplaceAnimator.Callback {
    private final Runnable onValuesChanged;
    private final float[] visibilityValues = new float[32];
    private int visibilityFlags = 1;
    private final ReplaceAnimator<Integer> replaceAnimator = new ReplaceAnimator<>(this, AnimatorUtils.DECELERATE_INTERPOLATOR, 240);

    public ChatActivityBottomViewsVisibilityController(Runnable runnable) {
        this.onValuesChanged = runnable;
    }

    public float getVisibility(int i) {
        return this.visibilityValues[i];
    }

    public void setViewVisible(int i, boolean z, boolean z2) {
        int currentPriorityContainerId = getCurrentPriorityContainerId();
        this.visibilityFlags = BitwiseUtils.setFlag(this.visibilityFlags, 1 << i, z);
        int currentPriorityContainerId2 = getCurrentPriorityContainerId();
        if (currentPriorityContainerId != currentPriorityContainerId2) {
            this.replaceAnimator.replace(Integer.valueOf(currentPriorityContainerId2), z2);
        }
    }

    public int getCurrentPriorityContainerId() {
        return 31 - Integer.numberOfLeadingZeros(this.visibilityFlags);
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public void onItemChanged(ReplaceAnimator<?> replaceAnimator) {
        onItemChanged();
    }

    @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
    public void onForceApplyChanges(ReplaceAnimator<?> replaceAnimator) {
        onItemChanged();
    }

    private void onItemChanged() {
        Arrays.fill(this.visibilityValues, 0.0f);
        for (ListAnimator.Entry<Integer> entry : this.replaceAnimator) {
            this.visibilityValues[entry.item.intValue()] = entry.getVisibility();
        }
        this.onValuesChanged.run();
    }
}
