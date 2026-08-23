package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.RectF;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.function.ToIntFunction;
import me.vkryl.android.animator.ListAnimator;
import me.vkryl.core.lambda.Destroyable;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.AnimatedLinearLayout;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AnimatedLinearLayout extends LinearLayout {
    private static final Comparator<Holder> comparator = Comparator.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Components.AnimatedLinearLayout$$ExternalSyntheticLambda1
        @Override // java.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            return ((AnimatedLinearLayout.Holder) obj).priority;
        }
    }).thenComparingInt(new ToIntFunction() { // from class: org.telegram.ui.Components.AnimatedLinearLayout$$ExternalSyntheticLambda2
        @Override // java.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            return ((AnimatedLinearLayout.Holder) obj).order;
        }
    });
    private final ListAnimator.Callback callback;
    private float lastAnimatedHeight;
    private final ListAnimator<Holder> listAnimator;
    private Runnable onAnimatedHeightChanged;
    private boolean skipNextAnimation;
    private int totalHeight;
    private int totalWidth;
    private final HashMap<View, Holder> viewHolders;
    private final ArrayList<Holder> visibleHolders;

    public void onItemsChanged() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ListAnimator listAnimator) {
        checkViewsVisibility();
        onItemsChanged();
    }

    public AnimatedLinearLayout(Context context) {
        super(context);
        this.viewHolders = new HashMap<>();
        this.visibleHolders = new ArrayList<>();
        ListAnimator.Callback callback = new ListAnimator.Callback() { // from class: org.telegram.ui.Components.AnimatedLinearLayout$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.ListAnimator.Callback
            public final void onItemsChanged(ListAnimator listAnimator) {
                this.f$0.lambda$new$0(listAnimator);
            }
        };
        this.callback = callback;
        this.listAnimator = new ListAnimator<>(callback, CubicBezierInterpolator.EASE_OUT_QUINT, 420L);
    }

    public boolean isViewVisible(View view) {
        Holder holder = this.viewHolders.get(view);
        return holder != null && holder.isVisible;
    }

    public void setPriority(View view, int i) {
        Holder holder = this.viewHolders.get(view);
        if (holder != null) {
            holder.priority = i;
        }
    }

    public void setDebugName(View view, String str) {
        Holder holder = this.viewHolders.get(view);
        if (holder != null) {
            holder.tag = str;
        }
    }

    public void setViewVisible(View view, boolean z) {
        setViewVisible(view, z, true);
    }

    public void setViewVisible(View view, boolean z, boolean z2) {
        Holder holder;
        if (view == null || (holder = this.viewHolders.get(view)) == null || holder.isVisible == z) {
            return;
        }
        holder.isVisible = z;
        if (z) {
            holder.view.setVisibility(0);
        }
        if (!z && !holder.hasInAnimator) {
            holder.view.setVisibility(8);
        }
        if (!z2) {
            this.skipNextAnimation = true;
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        calculateTotalSizesAfterMeasure();
    }

    public final void calculateTotalSizesAfterMeasure() {
        this.totalHeight = 0;
        this.totalWidth = 0;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Holder holder = this.viewHolders.get(childAt);
            if (childAt.getVisibility() == 0 && holder != null && holder.isVisible) {
                this.totalWidth += childAt.getMeasuredWidth();
                this.totalHeight += childAt.getMeasuredHeight();
            }
        }
    }

    public int getSumWidthOfAllVisibleChild() {
        return this.totalWidth;
    }

    public int getSumHeightOfAllVisibleChild() {
        return this.totalHeight;
    }

    public float getAnimatedHeightWithPadding(float f) {
        return getMetadata().getTotalHeight() + (f * getMetadata().getTotalVisibility());
    }

    public float getAnimatedHeightWithPadding() {
        return getAnimatedHeightWithPadding(getPaddingTop() + getPaddingBottom());
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.visibleHolders.clear();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            Holder holder = this.viewHolders.get(childAt);
            if (holder != null) {
                holder.order = i5;
                if (childAt.getVisibility() == 0 && holder.isVisible) {
                    this.visibleHolders.add(holder);
                }
            }
        }
        Collections.sort(this.visibleHolders, comparator);
        this.listAnimator.reset(this.visibleHolders, !this.skipNextAnimation);
        ArrayList<Holder> arrayList = this.visibleHolders;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Holder holder2 = arrayList.get(i6);
            i6++;
            holder2.hasInAnimator = true;
        }
        this.skipNextAnimation = false;
        checkViewsVisibility();
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        view.setVisibility(8);
        this.viewHolders.put(view, new Holder(view));
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.viewHolders.remove(view);
    }

    public void setOnAnimatedHeightChangedListener(Runnable runnable) {
        this.onAnimatedHeightChanged = runnable;
    }

    private void checkViewsVisibility() {
        for (ListAnimator.Entry<Holder> entry : this.listAnimator) {
            View view = entry.item.view;
            RectF rectF = entry.getRectF();
            if (getOrientation() == 1) {
                view.setTranslationY((getPaddingTop() + rectF.top) - view.getTop());
            } else {
                view.setTranslationX((getPaddingLeft() + rectF.left) - view.getLeft());
            }
            setChildVisibilityFactor(view, entry.getVisibility());
        }
        float totalHeight = getMetadata().getTotalHeight();
        if (this.lastAnimatedHeight != totalHeight) {
            this.lastAnimatedHeight = totalHeight;
            Runnable runnable = this.onAnimatedHeightChanged;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public void setChildVisibilityFactor(View view, float f) {
        float fLerp = AndroidUtilities.lerp(0.95f, 1.0f, f);
        view.setAlpha(f);
        view.setScaleX(fLerp);
        view.setScaleY(fLerp);
    }

    public ListAnimator.Metadata getMetadata() {
        return this.listAnimator.getMetadata();
    }

    public int getEntriesCount() {
        return this.listAnimator.size();
    }

    public ListAnimator.Entry<Holder> getEntry(int i) {
        return this.listAnimator.getEntry(i);
    }

    public static class Holder implements ListAnimator.Measurable, Destroyable {
        private boolean hasInAnimator;
        private boolean isVisible;
        private int order;
        private int priority;
        private String tag;
        public final View view;

        public Holder(View view) {
            this.view = view;
        }

        @Override // me.vkryl.core.lambda.Destroyable
        public void performDestroy() {
            if (!this.isVisible) {
                this.view.setVisibility(8);
            }
            this.hasInAnimator = false;
        }

        public int hashCode() {
            return this.view.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof Holder) {
                return this.view.equals(((Holder) obj).view);
            }
            return false;
        }

        @Override // me.vkryl.android.animator.ListAnimator.Measurable
        public int getWidth() {
            return this.view.getMeasuredWidth();
        }

        @Override // me.vkryl.android.animator.ListAnimator.Measurable
        public int getHeight() {
            return this.view.getMeasuredHeight();
        }
    }
}
