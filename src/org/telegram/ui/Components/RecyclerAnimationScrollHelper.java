package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.MessagesController;
import org.telegram.ui.Cells.IMessageCell;
import org.telegram.ui.Components.RecyclerListView;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public class RecyclerAnimationScrollHelper {
    private AnimationCallback animationCallback;
    private ValueAnimator animator;
    public boolean forceUseStableId;
    public boolean isDialogs;
    private LinearLayoutManager layoutManager;
    private RecyclerListView recyclerView;
    private int scrollDirection;
    private ScrollListener scrollListener;
    public SparseArray<View> positionToOldView = new SparseArray<>();
    private HashMap<Long, View> oldStableIds = new HashMap<>();

    /* JADX INFO: loaded from: classes7.dex */
    public static class AnimationCallback {
        public void ignoreView(View view, boolean z) {
        }

        public abstract void onEndAnimation();

        public void onPreAnimation() {
        }

        public void onStartAnimation() {
        }

        public void recycleView(View view) {
        }
    }

    public interface ScrollListener {
        void onScroll();
    }

    public RecyclerAnimationScrollHelper(RecyclerListView recyclerListView, LinearLayoutManager linearLayoutManager) {
        this.recyclerView = recyclerListView;
        this.layoutManager = linearLayoutManager;
    }

    public void scrollToPosition(int i, int i2, boolean z, boolean z2) {
        scrollToPosition(i, i2, z, z2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00da A[SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scrollToPosition(int i, int i2, boolean z, boolean z2, boolean z3) {
        final RecyclerAnimationScrollHelper recyclerAnimationScrollHelper;
        final int i3;
        final int i4;
        final boolean z4;
        final boolean z5;
        RecyclerListView recyclerListView;
        long itemId;
        RecyclerListView recyclerListView2 = this.recyclerView;
        if (recyclerListView2.fastScrollAnimationRunning) {
            return;
        }
        if (recyclerListView2.getItemAnimator() != null) {
            RecyclerListView recyclerListView3 = this.recyclerView;
            if (z3) {
                recyclerAnimationScrollHelper = this;
                i3 = i;
                i4 = i2;
                z4 = z;
                z5 = z2;
                if (recyclerListView3.getItemAnimator().isRunning(new RecyclerView.ItemAnimator.ItemAnimatorFinishedListener() { // from class: org.telegram.ui.Components.RecyclerAnimationScrollHelper$$ExternalSyntheticLambda0
                    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
                    public final void onAnimationsFinished() {
                        this.f$0.lambda$scrollToPosition$0(i3, i4, z4, z5);
                    }
                })) {
                    return;
                }
            } else {
                recyclerAnimationScrollHelper = this;
                i3 = i;
                i4 = i2;
                z4 = z;
                z5 = z2;
                if (recyclerListView3.getItemAnimator().isRunning()) {
                    return;
                }
            }
        } else {
            recyclerAnimationScrollHelper = this;
            i3 = i;
            i4 = i2;
            z4 = z;
            z5 = z2;
        }
        if (!z5 || recyclerAnimationScrollHelper.scrollDirection == -1) {
            recyclerAnimationScrollHelper.layoutManager.scrollToPositionWithOffset(i3, i4, z4);
            return;
        }
        int childCount = recyclerAnimationScrollHelper.recyclerView.getChildCount();
        if (childCount == 0 || !MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            recyclerAnimationScrollHelper.layoutManager.scrollToPositionWithOffset(i3, i4, z4);
            return;
        }
        boolean z6 = recyclerAnimationScrollHelper.scrollDirection == 0;
        recyclerAnimationScrollHelper.recyclerView.setScrollEnabled(false);
        boolean z7 = z4;
        ArrayList arrayList = new ArrayList();
        recyclerAnimationScrollHelper.positionToOldView.clear();
        RecyclerView.Adapter adapter = recyclerAnimationScrollHelper.recyclerView.getAdapter();
        recyclerAnimationScrollHelper.oldStableIds.clear();
        int i5 = 0;
        while (true) {
            recyclerListView = recyclerAnimationScrollHelper.recyclerView;
            if (i5 >= childCount) {
                break;
            }
            View childAt = recyclerListView.getChildAt(i5);
            arrayList.add(childAt);
            recyclerAnimationScrollHelper.positionToOldView.put(recyclerAnimationScrollHelper.layoutManager.getPosition(childAt), childAt);
            if (adapter != null && (adapter.hasStableIds() || recyclerAnimationScrollHelper.forceUseStableId)) {
                if (recyclerAnimationScrollHelper.forceUseStableId) {
                    int adapterPosition = ((RecyclerView.LayoutParams) childAt.getLayoutParams()).mViewHolder.getAdapterPosition();
                    if (adapterPosition >= 0) {
                        itemId = adapter.getItemId(adapterPosition);
                    }
                } else {
                    itemId = ((RecyclerView.LayoutParams) childAt.getLayoutParams()).mViewHolder.getItemId();
                }
                recyclerAnimationScrollHelper.oldStableIds.put(Long.valueOf(itemId), childAt);
                if (!(childAt instanceof IMessageCell)) {
                }
            } else if (!(childAt instanceof IMessageCell)) {
                ((IMessageCell) childAt).setAnimationRunning(true, true);
            }
            i5++;
        }
        recyclerListView.prepareForFastScroll();
        AnimatableAdapter animatableAdapter = adapter instanceof AnimatableAdapter ? (AnimatableAdapter) adapter : null;
        recyclerAnimationScrollHelper.layoutManager.scrollToPositionWithOffset(i3, i4, z7);
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        recyclerAnimationScrollHelper.recyclerView.stopScroll();
        recyclerAnimationScrollHelper.recyclerView.setVerticalScrollBarEnabled(false);
        AnimationCallback animationCallback = recyclerAnimationScrollHelper.animationCallback;
        if (animationCallback != null) {
            animationCallback.onStartAnimation();
        }
        recyclerAnimationScrollHelper.recyclerView.fastScrollAnimationRunning = true;
        if (animatableAdapter != null) {
            animatableAdapter.onAnimationStart();
        }
        recyclerAnimationScrollHelper.recyclerView.addOnLayoutChangeListener(recyclerAnimationScrollHelper.new ViewOnLayoutChangeListenerC43331(adapter, arrayList, z6, animatableAdapter));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollToPosition$0(int i, int i2, boolean z, boolean z2) {
        scrollToPosition(i, i2, z, z2, false);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.RecyclerAnimationScrollHelper$1 */
    /* JADX INFO: loaded from: classes7.dex */
    public class ViewOnLayoutChangeListenerC43331 implements View.OnLayoutChangeListener {
        final /* synthetic */ RecyclerView.Adapter val$adapter;
        final /* synthetic */ AnimatableAdapter val$finalAnimatableAdapter;
        final /* synthetic */ ArrayList val$oldViews;
        final /* synthetic */ boolean val$scrollDown;

        public ViewOnLayoutChangeListenerC43331(RecyclerView.Adapter adapter, ArrayList arrayList, boolean z, AnimatableAdapter animatableAdapter) {
            this.val$adapter = adapter;
            this.val$oldViews = arrayList;
            this.val$scrollDown = z;
            this.val$finalAnimatableAdapter = animatableAdapter;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            RecyclerAnimationScrollHelper recyclerAnimationScrollHelper;
            int height;
            long jMin;
            View view2;
            RecyclerAnimationScrollHelper.this.recyclerView.removeOnLayoutChangeListener(this);
            final ArrayList arrayList = new ArrayList();
            RecyclerAnimationScrollHelper.this.recyclerView.stopScroll();
            int childCount = RecyclerAnimationScrollHelper.this.recyclerView.getChildCount();
            int i9 = 0;
            int top = 0;
            int bottom = 0;
            int i10 = 0;
            boolean z = false;
            while (true) {
                recyclerAnimationScrollHelper = RecyclerAnimationScrollHelper.this;
                if (i9 >= childCount) {
                    break;
                }
                View childAt = recyclerAnimationScrollHelper.recyclerView.getChildAt(i9);
                arrayList.add(childAt);
                if (childAt.getTop() < top) {
                    top = childAt.getTop();
                }
                if (childAt.getBottom() > bottom) {
                    bottom = childAt.getBottom();
                }
                if (childAt instanceof IMessageCell) {
                    ((IMessageCell) childAt).setAnimationRunning(true, false);
                }
                RecyclerView.Adapter adapter = this.val$adapter;
                if (adapter != null && (adapter.hasStableIds() || RecyclerAnimationScrollHelper.this.forceUseStableId)) {
                    long itemId = this.val$adapter.getItemId(RecyclerAnimationScrollHelper.this.recyclerView.getChildAdapterPosition(childAt));
                    if (RecyclerAnimationScrollHelper.this.oldStableIds.containsKey(Long.valueOf(itemId)) && (view2 = (View) RecyclerAnimationScrollHelper.this.oldStableIds.get(Long.valueOf(itemId))) != 0) {
                        if (view2 instanceof IMessageCell) {
                            ((IMessageCell) view2).setAnimationRunning(false, false);
                        }
                        this.val$oldViews.remove(view2);
                        if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                            RecyclerAnimationScrollHelper.this.animationCallback.recycleView(view2);
                        }
                        int top2 = childAt.getTop() - view2.getTop();
                        if (top2 != 0) {
                            i10 = top2;
                        }
                        z = true;
                    }
                }
                i9++;
            }
            recyclerAnimationScrollHelper.oldStableIds.clear();
            ArrayList arrayList2 = this.val$oldViews;
            int size = arrayList2.size();
            int height2 = 0;
            int i11 = 0;
            int i12 = Integer.MAX_VALUE;
            while (i11 < size) {
                Object obj = arrayList2.get(i11);
                i11++;
                View view3 = (View) obj;
                int bottom2 = view3.getBottom();
                int top3 = view3.getTop();
                if (bottom2 > height2) {
                    height2 = bottom2;
                }
                if (top3 < i12) {
                    i12 = top3;
                }
                if (view3.getParent() == null) {
                    RecyclerAnimationScrollHelper.this.recyclerView.addView(view3);
                    RecyclerAnimationScrollHelper.this.layoutManager.ignoreView(view3);
                    if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                        RecyclerAnimationScrollHelper.this.animationCallback.ignoreView(view3, true);
                    }
                }
                if (view3 instanceof IMessageCell) {
                    ((IMessageCell) view3).setAnimationRunning(true, true);
                }
            }
            int i13 = i12 == Integer.MAX_VALUE ? 0 : i12;
            if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                RecyclerAnimationScrollHelper.this.animationCallback.onPreAnimation();
            }
            if (this.val$oldViews.isEmpty()) {
                height = Math.abs(i10);
            } else {
                if (!this.val$scrollDown) {
                    height2 = RecyclerAnimationScrollHelper.this.recyclerView.getHeight() - i13;
                }
                height = (this.val$scrollDown ? -top : bottom - RecyclerAnimationScrollHelper.this.recyclerView.getHeight()) + height2;
            }
            final int paddingBottom = RecyclerAnimationScrollHelper.this.recyclerView.getPaddingBottom();
            if (RecyclerAnimationScrollHelper.this.animator != null) {
                RecyclerAnimationScrollHelper.this.animator.removeAllListeners();
                RecyclerAnimationScrollHelper.this.animator.cancel();
            }
            RecyclerAnimationScrollHelper.this.animator = ValueAnimator.ofFloat(0.0f, 1.0f);
            ValueAnimator valueAnimator = RecyclerAnimationScrollHelper.this.animator;
            final ArrayList arrayList3 = this.val$oldViews;
            final boolean z2 = this.val$scrollDown;
            final int i14 = height;
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.RecyclerAnimationScrollHelper$1$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$onLayoutChange$0(arrayList3, z2, i14, paddingBottom, arrayList, valueAnimator2);
                }
            });
            RecyclerAnimationScrollHelper.this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.RecyclerAnimationScrollHelper.1.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (RecyclerAnimationScrollHelper.this.animator == null) {
                        return;
                    }
                    RecyclerAnimationScrollHelper.this.recyclerView.fastScrollAnimationRunning = false;
                    ArrayList arrayList4 = ViewOnLayoutChangeListenerC43331.this.val$oldViews;
                    int size2 = arrayList4.size();
                    int i15 = 0;
                    while (i15 < size2) {
                        Object obj2 = arrayList4.get(i15);
                        i15++;
                        View view4 = (View) obj2;
                        if (view4 instanceof IMessageCell) {
                            ((IMessageCell) view4).setAnimationRunning(false, true);
                        }
                        view4.setTranslationY(0.0f);
                        RecyclerAnimationScrollHelper.this.layoutManager.stopIgnoringView(view4);
                        RecyclerAnimationScrollHelper.this.recyclerView.removeView(view4);
                        if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                            RecyclerAnimationScrollHelper.this.animationCallback.ignoreView(view4, false);
                            RecyclerAnimationScrollHelper.this.animationCallback.recycleView(view4);
                        }
                    }
                    RecyclerAnimationScrollHelper.this.recyclerView.setScrollEnabled(true);
                    RecyclerAnimationScrollHelper.this.recyclerView.setVerticalScrollBarEnabled(true);
                    if (BuildVars.DEBUG_PRIVATE_VERSION) {
                        if (RecyclerAnimationScrollHelper.this.recyclerView.mChildHelper.getChildCount() != RecyclerAnimationScrollHelper.this.recyclerView.getChildCount()) {
                            GlShader$$ExternalSyntheticBUOutline1.m1056m("views count in child helper must be quals views count in recycler view");
                            return;
                        } else if (RecyclerAnimationScrollHelper.this.recyclerView.mChildHelper.getHiddenChildCount() != 0) {
                            GlShader$$ExternalSyntheticBUOutline1.m1056m("hidden child count must be 0");
                            return;
                        }
                    }
                    int childCount2 = RecyclerAnimationScrollHelper.this.recyclerView.getChildCount();
                    for (int i16 = 0; i16 < childCount2; i16++) {
                        View childAt2 = RecyclerAnimationScrollHelper.this.recyclerView.getChildAt(i16);
                        if (childAt2 instanceof IMessageCell) {
                            ((IMessageCell) childAt2).setAnimationRunning(false, false);
                        }
                        childAt2.setTranslationY(0.0f);
                    }
                    ArrayList arrayList5 = arrayList;
                    int size3 = arrayList5.size();
                    int i17 = 0;
                    while (i17 < size3) {
                        Object obj3 = arrayList5.get(i17);
                        i17++;
                        View view5 = (View) obj3;
                        if (view5 instanceof IMessageCell) {
                            ((IMessageCell) view5).setAnimationRunning(false, false);
                        }
                        view5.setTranslationY(0.0f);
                    }
                    AnimatableAdapter animatableAdapter = ViewOnLayoutChangeListenerC43331.this.val$finalAnimatableAdapter;
                    if (animatableAdapter != null) {
                        animatableAdapter.onAnimationEnd();
                    }
                    if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                        RecyclerAnimationScrollHelper.this.animationCallback.onEndAnimation();
                    }
                    RecyclerAnimationScrollHelper.this.positionToOldView.clear();
                    RecyclerAnimationScrollHelper.this.animator = null;
                }
            });
            RecyclerAnimationScrollHelper recyclerAnimationScrollHelper2 = RecyclerAnimationScrollHelper.this;
            if (!recyclerAnimationScrollHelper2.isDialogs) {
                if (z) {
                    jMin = 600;
                } else {
                    long measuredHeight = (long) (((height / recyclerAnimationScrollHelper2.recyclerView.getMeasuredHeight()) + 1.0f) * 200.0f);
                    jMin = Math.min(measuredHeight >= 300 ? measuredHeight : 300L, 1300L);
                }
                RecyclerAnimationScrollHelper.this.animator.setDuration(jMin);
                RecyclerAnimationScrollHelper.this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else if (z) {
                recyclerAnimationScrollHelper2.animator.setDuration(150L);
                RecyclerAnimationScrollHelper.this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            } else {
                long measuredHeight2 = (long) (((height / recyclerAnimationScrollHelper2.recyclerView.getMeasuredHeight()) + 1.0f) * 200.0f);
                RecyclerAnimationScrollHelper.this.animator.setDuration(Math.min(measuredHeight2 >= 300 ? measuredHeight2 : 300L, 1300L));
                RecyclerAnimationScrollHelper.this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            RecyclerAnimationScrollHelper.this.animator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayoutChange$0(ArrayList arrayList, boolean z, int i, int i2, ArrayList arrayList2, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                View view = (View) arrayList.get(i3);
                float y = view.getY();
                if (view.getY() + view.getMeasuredHeight() >= 0.0f && y <= RecyclerAnimationScrollHelper.this.recyclerView.getMeasuredHeight()) {
                    if (z) {
                        view.setTranslationY((-i) * fFloatValue);
                    } else {
                        view.setTranslationY(i * fFloatValue);
                    }
                }
            }
            int paddingBottom = i2 - RecyclerAnimationScrollHelper.this.recyclerView.getPaddingBottom();
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                View view2 = (View) arrayList2.get(i4);
                if (z) {
                    view2.setTranslationY((i * (1.0f - fFloatValue)) + paddingBottom);
                } else {
                    view2.setTranslationY((-i) * (1.0f - fFloatValue));
                }
            }
            RecyclerAnimationScrollHelper.this.recyclerView.invalidate();
            if (RecyclerAnimationScrollHelper.this.scrollListener != null) {
                RecyclerAnimationScrollHelper.this.scrollListener.onScroll();
            }
        }
    }

    public void cancel() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void clear() {
        this.recyclerView.setVerticalScrollBarEnabled(true);
        RecyclerListView recyclerListView = this.recyclerView;
        recyclerListView.fastScrollAnimationRunning = false;
        RecyclerView.Adapter adapter = recyclerListView.getAdapter();
        if (adapter instanceof AnimatableAdapter) {
            ((AnimatableAdapter) adapter).onAnimationEnd();
        }
        this.animator = null;
        int childCount = this.recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.recyclerView.getChildAt(i);
            childAt.setTranslationY(0.0f);
            if (childAt instanceof IMessageCell) {
                ((IMessageCell) childAt).setAnimationRunning(false, false);
            }
        }
    }

    public void setScrollDirection(int i) {
        this.scrollDirection = i;
    }

    public void setScrollListener(ScrollListener scrollListener) {
        this.scrollListener = scrollListener;
    }

    public void setAnimationCallback(AnimationCallback animationCallback) {
        this.animationCallback = animationCallback;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static abstract class AnimatableAdapter extends RecyclerListView.SelectionAdapter {
        public boolean animationRunning;
        private ArrayList<Integer> rangeInserted = new ArrayList<>();
        private ArrayList<Integer> rangeRemoved = new ArrayList<>();
        private boolean shouldNotifyDataSetChanged;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            if (!this.animationRunning) {
                super.notifyDataSetChanged();
            } else {
                this.shouldNotifyDataSetChanged = true;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemInserted(int i) {
            if (!this.animationRunning) {
                super.notifyItemInserted(i);
            } else {
                this.rangeInserted.add(Integer.valueOf(i));
                this.rangeInserted.add(1);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeInserted(int i, int i2) {
            if (!this.animationRunning) {
                super.notifyItemRangeInserted(i, i2);
            } else {
                this.rangeInserted.add(Integer.valueOf(i));
                this.rangeInserted.add(Integer.valueOf(i2));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRemoved(int i) {
            if (!this.animationRunning) {
                super.notifyItemRemoved(i);
            } else {
                this.rangeRemoved.add(Integer.valueOf(i));
                this.rangeRemoved.add(1);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeRemoved(int i, int i2) {
            if (!this.animationRunning) {
                super.notifyItemRangeRemoved(i, i2);
            } else {
                this.rangeRemoved.add(Integer.valueOf(i));
                this.rangeRemoved.add(Integer.valueOf(i2));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemChanged(int i) {
            if (this.animationRunning) {
                return;
            }
            super.notifyItemChanged(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeChanged(int i, int i2) {
            if (this.animationRunning) {
                return;
            }
            super.notifyItemRangeChanged(i, i2);
        }

        public void onAnimationStart() {
            this.animationRunning = true;
            this.shouldNotifyDataSetChanged = false;
            this.rangeInserted.clear();
            this.rangeRemoved.clear();
        }

        public void onAnimationEnd() {
            this.animationRunning = false;
            if (!this.shouldNotifyDataSetChanged && this.rangeInserted.isEmpty() && this.rangeRemoved.isEmpty()) {
                return;
            }
            notifyDataSetChanged();
        }
    }
}
