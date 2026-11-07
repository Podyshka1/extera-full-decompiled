package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.ViewPagerFixed;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ChatSearchTabs extends FrameLayout {
    private ValueAnimator actionBarTagsAnimator;
    private float actionBarTagsT;
    private boolean shown;
    public float shownT;
    public ViewPagerFixed.TabsView tabs;

    public abstract void onShownUpdate(boolean z);

    public ChatSearchTabs(Context context) {
        super(context);
    }

    public void setTabs(ViewPagerFixed.TabsView tabsView) {
        this.tabs = tabsView;
        addView(tabsView, LayoutHelper.createFrame(-1, -1.0f));
    }

    public void setShown(float f) {
        this.shownT = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            childAt.setPivotX(childAt.getWidth() / 2.0f);
            childAt.setPivotY(0.0f);
            childAt.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, f));
            childAt.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, f));
        }
        setAlpha(f);
        invalidate();
    }

    public void show(boolean z) {
        show(z, true);
    }

    public void show(final boolean z, boolean z2) {
        this.shown = z;
        ValueAnimator valueAnimator = this.actionBarTagsAnimator;
        if (valueAnimator != null) {
            this.actionBarTagsAnimator = null;
            valueAnimator.cancel();
        }
        if (!z2) {
            this.actionBarTagsT = z ? 1.0f : 0.0f;
            setVisibility(z ? 0 : 8);
            setShown(this.actionBarTagsT);
            onShownUpdate(true);
            return;
        }
        if (z) {
            setVisibility(0);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.actionBarTagsT, z ? 1.0f : 0.0f);
        this.actionBarTagsAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatSearchTabs$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$show$0(valueAnimator2);
            }
        });
        this.actionBarTagsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.actionBarTagsAnimator.setDuration(320L);
        this.actionBarTagsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatSearchTabs.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator != ChatSearchTabs.this.actionBarTagsAnimator) {
                    return;
                }
                ChatSearchTabs.this.actionBarTagsT = z ? 1.0f : 0.0f;
                ChatSearchTabs chatSearchTabs = ChatSearchTabs.this;
                chatSearchTabs.setShown(chatSearchTabs.actionBarTagsT);
                if (!z) {
                    ChatSearchTabs.this.setVisibility(8);
                }
                ChatSearchTabs.this.onShownUpdate(true);
            }
        });
        this.actionBarTagsAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$0(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.actionBarTagsT = fFloatValue;
        setShown(fFloatValue);
        onShownUpdate(false);
    }

    @Override // android.view.View
    public boolean isShown() {
        return this.shown;
    }

    public boolean shown() {
        return this.shownT > 0.5f;
    }

    public int getCurrentHeight() {
        return (int) (getMeasuredHeight() * this.shownT);
    }
}
