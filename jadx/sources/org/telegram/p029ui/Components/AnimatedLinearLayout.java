package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.RectF;
import android.util.Log;
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
import org.telegram.p029ui.Components.AnimatedLinearLayout;
import p022j$.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AnimatedLinearLayout extends LinearLayout {
    private static final Comparator comparator = Comparator.EL.thenComparingInt(Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Components.AnimatedLinearLayout$$ExternalSyntheticLambda1
        @Override // java.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            return ((AnimatedLinearLayout.Holder) obj).priority;
        }
    }), new ToIntFunction() { // from class: org.telegram.ui.Components.AnimatedLinearLayout$$ExternalSyntheticLambda2
        @Override // java.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            return ((AnimatedLinearLayout.Holder) obj).order;
        }
    });
    private final ListAnimator.Callback callback;
    private float lastAnimatedHeight;
    private final ListAnimator listAnimator;
    private Runnable onAnimatedHeightChanged;
    private boolean skipNextAnimation;
    private int totalHeight;
    private int totalWidth;
    private final HashMap viewHolders;
    private final ArrayList visibleHolders;

    protected void onItemsChanged() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ListAnimator listAnimator) {
        checkViewsVisibility();
        onItemsChanged();
    }

    public AnimatedLinearLayout(Context context) {
        super(context);
        this.viewHolders = new HashMap();
        this.visibleHolders = new ArrayList();
        ListAnimator.Callback callback = new ListAnimator.Callback() { // from class: org.telegram.ui.Components.AnimatedLinearLayout$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public /* synthetic */ boolean hasChanges(ListAnimator listAnimator) {
                return ListAnimator.MetadataCallback.CC.$default$hasChanges(this, listAnimator);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public /* synthetic */ boolean onApplyMetadataAnimation(ListAnimator listAnimator, float f) {
                return ListAnimator.MetadataCallback.CC.$default$onApplyMetadataAnimation(this, listAnimator, f);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public /* synthetic */ void onFinishMetadataAnimation(ListAnimator listAnimator, boolean z) {
                ListAnimator.MetadataCallback.CC.$default$onFinishMetadataAnimation(this, listAnimator, z);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public /* synthetic */ void onForceApplyChanges(ListAnimator listAnimator) {
                ListAnimator.MetadataCallback.CC.$default$onForceApplyChanges(this, listAnimator);
            }

            @Override // me.vkryl.android.animator.ListAnimator.Callback
            public final void onItemsChanged(ListAnimator listAnimator) {
                this.f$0.lambda$new$0(listAnimator);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public /* synthetic */ void onPrepareMetadataAnimation(ListAnimator listAnimator) {
                ListAnimator.MetadataCallback.CC.$default$onPrepareMetadataAnimation(this, listAnimator);
            }
        };
        this.callback = callback;
        this.listAnimator = new ListAnimator(callback, CubicBezierInterpolator.EASE_OUT_QUINT, 420L);
    }

    public boolean isViewVisible(View view) {
        Holder holder = (Holder) this.viewHolders.get(view);
        return holder != null && holder.isVisible;
    }

    public void setPriority(View view, int i) {
        Holder holder = (Holder) this.viewHolders.get(view);
        if (holder != null) {
            holder.priority = i;
        }
    }

    public void setDebugName(View view, String str) {
        Holder holder = (Holder) this.viewHolders.get(view);
        if (holder != null) {
            holder.tag = str;
        }
    }

    public void setViewVisible(View view, boolean z) {
        setViewVisible(view, z, true);
    }

    public void setViewVisible(View view, boolean z, boolean z2) {
        Holder holder;
        if (view == null || (holder = (Holder) this.viewHolders.get(view)) == null || holder.isVisible == z) {
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
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        calculateTotalSizesAfterMeasure();
    }

    protected final void calculateTotalSizesAfterMeasure() {
        this.totalHeight = 0;
        this.totalWidth = 0;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Holder holder = (Holder) this.viewHolders.get(childAt);
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
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Log.i("LIST_DEBUG", "start list: ");
        this.visibleHolders.clear();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            Holder holder = (Holder) this.viewHolders.get(childAt);
            if (holder != null) {
                holder.order = i5;
                if (childAt.getVisibility() == 0 && holder.isVisible) {
                    this.visibleHolders.add(holder);
                    Log.i("LIST_DEBUG", "show item: " + holder.tag + " " + i5);
                }
            }
        }
        Collections.sort(this.visibleHolders, comparator);
        this.listAnimator.reset(this.visibleHolders, !this.skipNextAnimation);
        ArrayList arrayList = this.visibleHolders;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            ((Holder) obj).hasInAnimator = true;
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
        for (ListAnimator.Entry entry : this.listAnimator) {
            View view = ((Holder) entry.item).view;
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

    protected void setChildVisibilityFactor(View view, float f) {
        float fLerp = AndroidUtilities.lerp(0.95f, 1.0f, f);
        view.setAlpha(f);
        view.setScaleX(fLerp);
        view.setScaleY(fLerp);
    }

    public ListAnimator.Metadata getMetadata() {
        return this.listAnimator.getMetadata();
    }

    protected int getEntriesCount() {
        return this.listAnimator.size();
    }

    protected ListAnimator.Entry getEntry(int i) {
        return this.listAnimator.getEntry(i);
    }

    protected static class Holder implements ListAnimator.Measurable, Destroyable {
        private boolean hasInAnimator;
        private boolean isVisible;
        private int order;
        private int priority;
        private String tag;
        public final View view;

        @Override // me.vkryl.android.animator.ListAnimator.Measurable
        public /* synthetic */ int getSpacingEnd(boolean z) {
            return ListAnimator.Measurable.CC.$default$getSpacingEnd(this, z);
        }

        @Override // me.vkryl.android.animator.ListAnimator.Measurable
        public /* synthetic */ int getSpacingStart(boolean z) {
            return ListAnimator.Measurable.CC.$default$getSpacingStart(this, z);
        }

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
