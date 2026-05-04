package org.telegram.p029ui.Components;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.Components.PopupSwipeBackLayout;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ChatScrimPopupContainerLayout extends LinearLayout {
    private float bottomViewReactionsOffset;
    private float bottomViewYOffset;
    private final List bottomViews;
    private float currentPopupAlpha;
    private float expandSize;
    private float lastReactionsTransitionProgress;
    private int maxHeight;
    private float popupLayoutLeftOffset;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout popupWindowLayout;
    private float progressToSwipeBack;
    private ReactionsContainerLayout reactionsLayout;

    public ChatScrimPopupContainerLayout(Context context) {
        super(context);
        this.bottomViews = new ArrayList();
        this.lastReactionsTransitionProgress = 0.0f;
        this.currentPopupAlpha = 1.0f;
        setOrientation(1);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateBottomViewPosition();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        float f;
        boolean z;
        int iM1124dp;
        int iM1124dp2;
        int i3 = this.maxHeight;
        int iMakeMeasureSpec = i3 != 0 ? View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE) : i2;
        int iMakeMeasureSpec2 = i;
        super.onMeasure(iMakeMeasureSpec2, iMakeMeasureSpec);
        if (this.popupWindowLayout != null) {
            ReactionsContainerLayout reactionsContainerLayout = this.reactionsLayout;
            if (reactionsContainerLayout != null) {
                reactionsContainerLayout.getLayoutParams().width = -2;
                ((LinearLayout.LayoutParams) this.reactionsLayout.getLayoutParams()).rightMargin = 0;
            }
            ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsLayout;
            int measuredWidth = reactionsContainerLayout2 != null ? reactionsContainerLayout2.getMeasuredWidth() : 0;
            if (this.popupWindowLayout.getSwipeBack() != null && this.popupWindowLayout.getSwipeBack().getMeasuredWidth() > measuredWidth) {
                measuredWidth = this.popupWindowLayout.getSwipeBack().getMeasuredWidth();
            }
            if (this.popupWindowLayout.getMeasuredWidth() > measuredWidth) {
                measuredWidth = this.popupWindowLayout.getMeasuredWidth();
            }
            ReactionsContainerLayout reactionsContainerLayout3 = this.reactionsLayout;
            if (reactionsContainerLayout3 != null && reactionsContainerLayout3.showCustomEmojiReaction()) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredWidth, TLObject.FLAG_30);
            }
            ReactionsContainerLayout reactionsContainerLayout4 = this.reactionsLayout;
            if (reactionsContainerLayout4 != null) {
                reactionsContainerLayout4.measureHint();
                int totalWidth = this.reactionsLayout.getTotalWidth();
                View childAt = (this.popupWindowLayout.getSwipeBack() != null ? this.popupWindowLayout.getSwipeBack() : this.popupWindowLayout).getChildAt(0);
                int measuredWidth2 = childAt.getMeasuredWidth() + AndroidUtilities.m1124dp(16.0f) + AndroidUtilities.m1124dp(16.0f) + AndroidUtilities.m1124dp(36.0f);
                int hintTextWidth = this.reactionsLayout.getHintTextWidth();
                if (hintTextWidth > measuredWidth2) {
                    measuredWidth2 = hintTextWidth;
                } else if (measuredWidth2 > measuredWidth) {
                    measuredWidth2 = measuredWidth;
                }
                this.reactionsLayout.bigCircleOffset = AndroidUtilities.m1124dp(36.0f);
                if (this.reactionsLayout.showCustomEmojiReaction()) {
                    if (this.reactionsLayout.getLayoutParams().width != totalWidth) {
                        this.reactionsLayout.getLayoutParams().width = totalWidth;
                        z = true;
                    } else {
                        z = false;
                    }
                    this.reactionsLayout.bigCircleOffset = Math.max((totalWidth - childAt.getMeasuredWidth()) - AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f));
                    f = 16.0f;
                } else if (totalWidth > measuredWidth2) {
                    int iM1124dp3 = ((measuredWidth2 - AndroidUtilities.m1124dp(16.0f)) / AndroidUtilities.m1124dp(36.0f)) + 1;
                    int iM1124dp4 = (AndroidUtilities.m1124dp(36.0f) * iM1124dp3) + AndroidUtilities.m1124dp(8.0f);
                    f = 16.0f;
                    if (hintTextWidth + AndroidUtilities.m1124dp(24.0f) > iM1124dp4) {
                        iM1124dp4 = hintTextWidth + AndroidUtilities.m1124dp(24.0f);
                    }
                    if (iM1124dp4 <= totalWidth && iM1124dp3 != this.reactionsLayout.getItemsCount()) {
                        totalWidth = iM1124dp4;
                    }
                    if (this.reactionsLayout.getLayoutParams().width != totalWidth) {
                        this.reactionsLayout.getLayoutParams().width = totalWidth;
                        z = true;
                    }
                    z = false;
                } else {
                    f = 16.0f;
                    if (this.reactionsLayout.getLayoutParams().width != -2) {
                        this.reactionsLayout.getLayoutParams().width = -2;
                        z = true;
                    }
                    z = false;
                }
                if (this.reactionsLayout.getMeasuredWidth() != measuredWidth || !this.reactionsLayout.showCustomEmojiReaction()) {
                    int measuredWidth3 = this.popupWindowLayout.getSwipeBack() != null ? this.popupWindowLayout.getSwipeBack().getMeasuredWidth() - this.popupWindowLayout.getSwipeBack().getChildAt(0).getMeasuredWidth() : 0;
                    if (this.reactionsLayout.getLayoutParams().width != -2 && this.reactionsLayout.getLayoutParams().width + measuredWidth3 > measuredWidth) {
                        measuredWidth3 = (measuredWidth - this.reactionsLayout.getLayoutParams().width) + AndroidUtilities.m1124dp(8.0f);
                    }
                    if (measuredWidth3 < 0) {
                        measuredWidth3 = 0;
                    }
                    if (((LinearLayout.LayoutParams) this.reactionsLayout.getLayoutParams()).rightMargin != measuredWidth3) {
                        ((LinearLayout.LayoutParams) this.reactionsLayout.getLayoutParams()).rightMargin = measuredWidth3;
                        z = true;
                    }
                    this.popupLayoutLeftOffset = 0.0f;
                } else {
                    float measuredWidth4 = (measuredWidth - childAt.getMeasuredWidth()) * 0.25f;
                    this.popupLayoutLeftOffset = measuredWidth4;
                    ReactionsContainerLayout reactionsContainerLayout5 = this.reactionsLayout;
                    int i4 = reactionsContainerLayout5.bigCircleOffset - ((int) measuredWidth4);
                    reactionsContainerLayout5.bigCircleOffset = i4;
                    if (i4 < AndroidUtilities.m1124dp(36.0f)) {
                        this.popupLayoutLeftOffset = 0.0f;
                        this.reactionsLayout.bigCircleOffset = AndroidUtilities.m1124dp(36.0f);
                    }
                }
            } else {
                f = 16.0f;
                z = false;
            }
            int measuredWidth5 = (this.popupWindowLayout.getSwipeBack() != null ? this.popupWindowLayout.getSwipeBack() : this.popupWindowLayout).getChildAt(0).getMeasuredWidth();
            int measuredWidth6 = this.popupWindowLayout.getMeasuredWidth();
            int measuredWidth7 = this.popupWindowLayout.getSwipeBack() != null ? this.popupWindowLayout.getSwipeBack().getMeasuredWidth() - measuredWidth5 : 0;
            int i5 = measuredWidth7 >= 0 ? measuredWidth7 : 0;
            for (View view : this.bottomViews) {
                if (view != null) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                    ReactionsContainerLayout reactionsContainerLayout6 = this.reactionsLayout;
                    if ((reactionsContainerLayout6 == null || !reactionsContainerLayout6.showCustomEmojiReaction()) && view.getTag(C2888R.id.fit_width_tag) == null) {
                        iM1124dp = -1;
                    } else {
                        iM1124dp = AndroidUtilities.m1124dp(f) + measuredWidth5;
                        if (measuredWidth6 > 0 && iM1124dp > measuredWidth6) {
                            iM1124dp = measuredWidth6;
                        }
                    }
                    if (this.popupWindowLayout.getSwipeBack() != null) {
                        iM1124dp2 = AndroidUtilities.m1124dp(36.0f) + i5;
                    } else {
                        iM1124dp2 = AndroidUtilities.m1124dp(36.0f);
                    }
                    if (layoutParams.width != iM1124dp || layoutParams.rightMargin != iM1124dp2) {
                        layoutParams.width = iM1124dp;
                        layoutParams.rightMargin = iM1124dp2;
                        z = true;
                    }
                    float f2 = this.progressToSwipeBack;
                    if (f2 > 0.0f) {
                        view.setAlpha(1.0f - f2);
                    }
                }
            }
            updatePopupTranslation();
            if (z) {
                super.onMeasure(iMakeMeasureSpec2, iMakeMeasureSpec);
            }
        }
    }

    private void updatePopupTranslation() {
        float f = (1.0f - this.progressToSwipeBack) * this.popupLayoutLeftOffset;
        this.popupWindowLayout.setTranslationX(f);
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsLayout;
        float f2 = (reactionsContainerLayout == null || reactionsContainerLayout.getItemsCount() <= 0 || this.reactionsLayout.getVisibility() != 0) ? 1.0f : this.lastReactionsTransitionProgress;
        for (View view : this.bottomViews) {
            if (view != null) {
                view.setTranslationX(f);
                view.setAlpha((1.0f - this.progressToSwipeBack) * f2 * this.currentPopupAlpha);
            }
        }
    }

    public void applyViewBottom(FrameLayout frameLayout) {
        if (frameLayout != null) {
            this.bottomViews.add(frameLayout);
            updateBottomOffset();
        }
    }

    public void setReactionsLayout(ReactionsContainerLayout reactionsContainerLayout) {
        this.reactionsLayout = reactionsContainerLayout;
        if (reactionsContainerLayout != null) {
            reactionsContainerLayout.setChatScrimView(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBottomOffset() {
        this.bottomViewYOffset = this.popupWindowLayout.getVisibleHeight() - this.popupWindowLayout.getMeasuredHeight();
        updateBottomViewPosition();
    }

    public void setPopupWindowLayout(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        this.popupWindowLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setOnSizeChangedListener(new ActionBarPopupWindow.onSizeChangedListener() { // from class: org.telegram.ui.Components.ChatScrimPopupContainerLayout$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.onSizeChangedListener
            public final void onSizeChanged() {
                this.f$0.updateBottomOffset();
            }
        });
        if (actionBarPopupWindowLayout.getSwipeBack() != null) {
            actionBarPopupWindowLayout.getSwipeBack().addOnSwipeBackProgressListener(new PopupSwipeBackLayout.OnSwipeBackProgressListener() { // from class: org.telegram.ui.Components.ChatScrimPopupContainerLayout$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Components.PopupSwipeBackLayout.OnSwipeBackProgressListener
                public final void onSwipeBackProgress(PopupSwipeBackLayout popupSwipeBackLayout, float f, float f2) {
                    this.f$0.lambda$setPopupWindowLayout$0(popupSwipeBackLayout, f, f2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPopupWindowLayout$0(PopupSwipeBackLayout popupSwipeBackLayout, float f, float f2) {
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsLayout;
        float f3 = (reactionsContainerLayout == null || reactionsContainerLayout.getItemsCount() <= 0 || this.reactionsLayout.getVisibility() != 0) ? 1.0f : this.lastReactionsTransitionProgress;
        for (View view : this.bottomViews) {
            if (view != null) {
                view.setAlpha((1.0f - f2) * f3 * this.currentPopupAlpha);
            }
        }
        this.progressToSwipeBack = f2;
        updatePopupTranslation();
    }

    private void updateBottomViewPosition() {
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsLayout;
        float f = (reactionsContainerLayout == null || reactionsContainerLayout.getItemsCount() <= 0 || this.reactionsLayout.getVisibility() != 0) ? 1.0f : this.lastReactionsTransitionProgress;
        for (View view : this.bottomViews) {
            if (view != null) {
                if (f < 1.0f && view.getMeasuredHeight() > 0) {
                    this.bottomViewReactionsOffset = (-view.getMeasuredHeight()) * (1.0f - f);
                } else {
                    this.bottomViewReactionsOffset = 0.0f;
                }
                float f2 = f < 1.0f ? f * 1.0f : 1.0f;
                float f3 = this.progressToSwipeBack;
                if (f3 > 0.0f) {
                    f2 *= 1.0f - f3;
                }
                view.setAlpha(f2 * this.currentPopupAlpha);
                view.setTranslationY(this.bottomViewYOffset + this.expandSize + this.bottomViewReactionsOffset);
            }
        }
    }

    public void setMaxHeight(int i) {
        this.maxHeight = i;
    }

    public void setExpandSize(float f) {
        this.popupWindowLayout.setTranslationY(f);
        this.expandSize = f;
        updateBottomViewPosition();
    }

    public void setPopupAlpha(float f) {
        this.currentPopupAlpha = f;
        this.popupWindowLayout.setAlpha(f);
        for (View view : this.bottomViews) {
            if (view != null) {
                view.setAlpha(f);
            }
        }
    }

    public void setReactionsTransitionProgress(float f) {
        this.lastReactionsTransitionProgress = f;
        this.popupWindowLayout.setReactionsTransitionProgress(f);
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsLayout;
        if (reactionsContainerLayout == null || reactionsContainerLayout.getItemsCount() <= 0) {
            f = 1.0f;
        }
        for (View view : this.bottomViews) {
            if (view != null) {
                if (this.progressToSwipeBack == 0.0f) {
                    view.setAlpha(f);
                }
                float f2 = (f * 0.5f) + 0.5f;
                view.setPivotX(view.getMeasuredWidth());
                view.setPivotY(0.0f);
                view.setScaleX(f2);
                view.setScaleY(f2);
            }
        }
        updateBottomViewPosition();
    }
}
