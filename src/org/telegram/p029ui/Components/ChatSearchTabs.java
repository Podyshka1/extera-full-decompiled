package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.Components.ViewPagerFixed;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ChatSearchTabs extends BlurredFrameLayout {
    private ValueAnimator actionBarTagsAnimator;
    private float actionBarTagsT;
    private Paint backgroundPaint2;
    public boolean showWithCut;
    private boolean shown;
    public float shownT;
    public ViewPagerFixed.TabsView tabs;

    protected abstract void onShownUpdate(boolean z);

    public ChatSearchTabs(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        super(context, sizeNotifierFrameLayout);
        this.showWithCut = true;
    }

    public void setTabs(ViewPagerFixed.TabsView tabsView) {
        this.tabs = tabsView;
        addView(tabsView, LayoutHelper.createFrame(-1, -1.0f));
    }

    public void setShown(float f) {
        this.shownT = f;
        ViewPagerFixed.TabsView tabsView = this.tabs;
        if (tabsView != null) {
            tabsView.setPivotX(tabsView.getWidth() / 2.0f);
            this.tabs.setPivotY(0.0f);
            this.tabs.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, f));
            this.tabs.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, f));
        }
        if (this.showWithCut) {
            ViewPagerFixed.TabsView tabsView2 = this.tabs;
            if (tabsView2 != null) {
                tabsView2.setAlpha(f);
            }
        } else {
            setAlpha(f);
        }
        invalidate();
    }

    public void show(final boolean z) {
        this.shown = z;
        ValueAnimator valueAnimator = this.actionBarTagsAnimator;
        if (valueAnimator != null) {
            this.actionBarTagsAnimator = null;
            valueAnimator.cancel();
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

    @Override // org.telegram.p029ui.Components.BlurredFrameLayout, android.view.View
    public void setBackgroundColor(int i) {
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null) {
            super.setBackgroundColor(i);
            return;
        }
        Paint paint = new Paint(1);
        this.backgroundPaint2 = paint;
        paint.setColor(i);
    }

    @Override // org.telegram.p029ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        canvas.save();
        if (this.showWithCut) {
            canvas.clipRect(0, 0, getWidth(), getCurrentHeight());
        }
        if (this.backgroundPaint2 != null) {
            canvas2 = canvas;
            canvas2.drawRect(0.0f, 0.0f, getWidth(), getCurrentHeight(), this.backgroundPaint2);
        } else {
            canvas2 = canvas;
        }
        super.dispatchDraw(canvas2);
        canvas2.restore();
    }
}
