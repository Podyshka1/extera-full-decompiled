package org.telegram.ui.iv;

import android.animation.ValueAnimator;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes7.dex */
class RichBlockInset {
    private ValueAnimator animator;
    private long boundRowId = Long.MIN_VALUE;
    private int currentPx = -1;

    public interface Applier {
        void apply(int i);
    }

    public void apply(BlockRow blockRow, Applier applier) {
        apply(blockRow, applier, true);
    }

    public void apply(BlockRow blockRow, final Applier applier, boolean z) {
        int i;
        int iInsetFor = RichBlockChrome.insetFor(blockRow);
        long j = blockRow != null ? blockRow.id : Long.MIN_VALUE;
        boolean z2 = j == this.boundRowId && this.currentPx >= 0;
        this.boundRowId = j;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
        if (z && z2 && (i = this.currentPx) != iInsetFor) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, iInsetFor);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.iv.RichBlockInset$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$apply$0(applier, valueAnimator2);
                }
            });
            valueAnimatorOfInt.setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfInt.setDuration(200L);
            this.animator = valueAnimatorOfInt;
            valueAnimatorOfInt.start();
            return;
        }
        this.currentPx = iInsetFor;
        applier.apply(iInsetFor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$apply$0(Applier applier, ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.currentPx = iIntValue;
        applier.apply(iIntValue);
    }
}
