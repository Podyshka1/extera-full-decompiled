package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.exoplayer2.util.Consumer;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalRecyclerView extends RecyclerListView {
    public final UniversalAdapter adapter;
    private boolean doNotDetachViews;
    public ItemTouchHelper itemTouchHelper;
    public LinearLayoutManager layoutManager;
    private boolean reorderHandleOnly;
    private boolean reorderingAllowed;
    private boolean reorderingOnOtherAxis;

    protected void swappedElements() {
    }

    public void doNotDetachViews() {
        this.doNotDetachViews = true;
    }

    public UniversalRecyclerView(BaseFragment baseFragment, Utilities.Callback2 callback2, Utilities.Callback5 callback5, Utilities.Callback5Return callback5Return) {
        this(baseFragment.getContext(), baseFragment.getCurrentAccount(), baseFragment.getClassGuid(), callback2, callback5, callback5Return, baseFragment.getResourceProvider());
    }

    public UniversalRecyclerView(Context context, int i, int i2, Utilities.Callback2 callback2, Utilities.Callback5 callback5, Utilities.Callback5Return callback5Return, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, false, callback2, callback5, callback5Return, resourcesProvider);
    }

    public UniversalRecyclerView(Context context, int i, int i2, boolean z, Utilities.Callback2 callback2, Utilities.Callback5 callback5, Utilities.Callback5Return callback5Return, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, z, callback2, callback5, callback5Return, resourcesProvider, -1, 1);
    }

    public UniversalRecyclerView(Context context, int i, int i2, boolean z, Utilities.Callback2 callback2, final Utilities.Callback5 callback5, final Utilities.Callback5Return callback5Return, Theme.ResourcesProvider resourcesProvider, int i3, int i4) {
        super(context, resourcesProvider);
        boolean z2 = false;
        if (i3 == -1) {
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, i4, z2) { // from class: org.telegram.ui.Components.UniversalRecyclerView.1
                @Override // androidx.recyclerview.widget.LinearLayoutManager
                protected int getExtraLayoutSpace(RecyclerView.State state) {
                    return UniversalRecyclerView.this.doNotDetachViews ? AndroidUtilities.displaySize.y : super.getExtraLayoutSpace(state);
                }
            };
            this.layoutManager = linearLayoutManager;
            setLayoutManager(linearLayoutManager);
        } else {
            final ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context, i3) { // from class: org.telegram.ui.Components.UniversalRecyclerView.2
                @Override // androidx.recyclerview.widget.LinearLayoutManager
                protected int getExtraLayoutSpace(RecyclerView.State state) {
                    return UniversalRecyclerView.this.doNotDetachViews ? AndroidUtilities.displaySize.y : super.getExtraLayoutSpace(state);
                }
            };
            extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.UniversalRecyclerView.3
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i5) {
                    int i6;
                    UniversalAdapter universalAdapter = UniversalRecyclerView.this.adapter;
                    if (universalAdapter == null) {
                        return extendedGridLayoutManager.getSpanCount();
                    }
                    UItem item = universalAdapter.getItem(i5);
                    return (item == null || (i6 = item.spanCount) == -1) ? extendedGridLayoutManager.getSpanCount() : i6;
                }
            });
            this.layoutManager = extendedGridLayoutManager;
            setLayoutManager(extendedGridLayoutManager);
        }
        UniversalAdapter universalAdapter = new UniversalAdapter(this, context, i, i2, z, callback2, resourcesProvider);
        this.adapter = universalAdapter;
        setAdapter(universalAdapter);
        setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.UniversalRecyclerView$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i5) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i5);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i5, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i5, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i5, float f, float f2) {
                this.f$0.lambda$new$0(callback5, view, i5, f, f2);
            }
        });
        setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: org.telegram.ui.Components.UniversalRecyclerView$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public final boolean onItemClick(View view, int i5, float f, float f2) {
                return this.f$0.lambda$new$1(callback5Return, view, i5, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public /* synthetic */ void onLongClickRelease() {
                RecyclerListView.OnItemLongClickListenerExtended.CC.$default$onLongClickRelease(this);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public /* synthetic */ void onMove(float f, float f2) {
                RecyclerListView.OnItemLongClickListenerExtended.CC.$default$onMove(this, f, f2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.UniversalRecyclerView.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                UniversalRecyclerView.this.invalidate();
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onRemoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onRemoveAnimationUpdate(viewHolder);
                if (UniversalRecyclerView.this.hasSections()) {
                    UniversalRecyclerView.this.invalidate();
                }
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onAddAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onAddAnimationUpdate(viewHolder);
                if (UniversalRecyclerView.this.hasSections()) {
                    UniversalRecyclerView.this.invalidate();
                }
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onChangeAnimationUpdate(viewHolder);
                if (UniversalRecyclerView.this.hasSections()) {
                    UniversalRecyclerView.this.invalidate();
                }
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        setItemAnimator(defaultItemAnimator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Utilities.Callback5 callback5, View view, int i, float f, float f2) {
        UItem item = this.adapter.getItem(i);
        if (item == null || !item.enabled || callback5 == null) {
            return;
        }
        callback5.run(item, view, Integer.valueOf(i), Float.valueOf(f), Float.valueOf(f2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(Utilities.Callback5Return callback5Return, View view, int i, float f, float f2) {
        UItem item = this.adapter.getItem(i);
        if (item == null || callback5Return == null) {
            return false;
        }
        return ((Boolean) callback5Return.run(item, view, Integer.valueOf(i), Float.valueOf(f), Float.valueOf(f2))).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void makeHorizontal() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, 0 == true ? 1 : 0) { // from class: org.telegram.ui.Components.UniversalRecyclerView.5
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            protected int getExtraLayoutSpace(RecyclerView.State state) {
                return UniversalRecyclerView.this.doNotDetachViews ? AndroidUtilities.displaySize.y : super.getExtraLayoutSpace(state);
            }
        };
        this.layoutManager = linearLayoutManager;
        setLayoutManager(linearLayoutManager);
    }

    public void setSpanCount(int i) {
        LinearLayoutManager linearLayoutManager = this.layoutManager;
        if (linearLayoutManager instanceof ExtendedGridLayoutManager) {
            ((ExtendedGridLayoutManager) linearLayoutManager).setSpanCount(i);
            return;
        }
        if (!OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(linearLayoutManager) || i == -1) {
            return;
        }
        final ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(getContext(), i) { // from class: org.telegram.ui.Components.UniversalRecyclerView.6
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            protected int getExtraLayoutSpace(RecyclerView.State state) {
                return UniversalRecyclerView.this.doNotDetachViews ? AndroidUtilities.displaySize.y : super.getExtraLayoutSpace(state);
            }
        };
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.UniversalRecyclerView.7
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                int i3;
                UniversalAdapter universalAdapter = UniversalRecyclerView.this.adapter;
                if (universalAdapter == null) {
                    return extendedGridLayoutManager.getSpanCount();
                }
                UItem item = universalAdapter.getItem(i2);
                return (item == null || (i3 = item.spanCount) == -1) ? extendedGridLayoutManager.getSpanCount() : i3;
            }
        });
        this.layoutManager = extendedGridLayoutManager;
        setLayoutManager(extendedGridLayoutManager);
    }

    public int getSpanCount() {
        LinearLayoutManager linearLayoutManager = this.layoutManager;
        if (linearLayoutManager instanceof ExtendedGridLayoutManager) {
            return ((ExtendedGridLayoutManager) linearLayoutManager).getSpanCount();
        }
        return -1;
    }

    public void listenReorder(Utilities.Callback2 callback2) {
        listenReorder(callback2, false);
    }

    public void setReorderHandleOnly(boolean z) {
        this.reorderHandleOnly = z;
    }

    public void listenReorder(Utilities.Callback2 callback2, boolean z) {
        this.reorderingOnOtherAxis = z;
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new TouchHelperCallback());
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this);
        this.adapter.listenReorder(callback2);
    }

    public void startDrag(RecyclerView.ViewHolder viewHolder) {
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper == null || viewHolder == null) {
            return;
        }
        itemTouchHelper.startDrag(viewHolder);
    }

    public boolean isReorderAllowed() {
        return this.reorderingAllowed;
    }

    public void allowReorder(boolean z) {
        if (this.reorderingAllowed == z) {
            return;
        }
        UniversalAdapter universalAdapter = this.adapter;
        this.reorderingAllowed = z;
        universalAdapter.updateReorder(z);
        AndroidUtilities.forEachViews((RecyclerView) this, new Consumer() { // from class: org.telegram.ui.Components.UniversalRecyclerView$$ExternalSyntheticLambda3
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$allowReorder$2((View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$allowReorder$2(View view) {
        this.adapter.updateReorder(getChildViewHolder(view), this.reorderingAllowed);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!hasSections()) {
            this.adapter.drawWhiteSections(canvas, this);
        }
        super.dispatchDraw(canvas);
    }

    public UItem findItemByItemId(int i) {
        for (int i2 = 0; i2 < this.adapter.getItemCount(); i2++) {
            UItem item = this.adapter.getItem(i2);
            if (item != null && item.f2105id == i) {
                return item;
            }
        }
        return null;
    }

    public View findViewByItemId(int i) {
        int i2 = 0;
        while (true) {
            if (i2 >= this.adapter.getItemCount()) {
                i2 = -1;
                break;
            }
            UItem item = this.adapter.getItem(i2);
            if (item != null && item.f2105id == i) {
                break;
            }
            i2++;
        }
        return findViewByPosition(i2);
    }

    public int findPositionByItemId(int i) {
        for (int i2 = 0; i2 < this.adapter.getItemCount(); i2++) {
            UItem item = this.adapter.getItem(i2);
            if (item != null && item.f2105id == i) {
                return i2;
            }
        }
        return -1;
    }

    private class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        private TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return UniversalRecyclerView.this.reorderingAllowed && !UniversalRecyclerView.this.reorderHandleOnly;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            if (UniversalRecyclerView.this.reorderingAllowed && UniversalRecyclerView.this.adapter.isReorderItem(viewHolder.getAdapterPosition())) {
                int i = 15;
                if (UniversalRecyclerView.this.layoutManager.getOrientation() == 0) {
                    if (!UniversalRecyclerView.this.reorderingOnOtherAxis) {
                        i = 12;
                    }
                } else if (!UniversalRecyclerView.this.reorderingOnOtherAxis) {
                    i = 3;
                }
                return ItemTouchHelper.Callback.makeMovementFlags(i, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (!UniversalRecyclerView.this.adapter.isReorderItem(viewHolder.getAdapterPosition()) || UniversalRecyclerView.this.adapter.getReorderSectionId(viewHolder.getAdapterPosition()) != UniversalRecyclerView.this.adapter.getReorderSectionId(viewHolder2.getAdapterPosition())) {
                return false;
            }
            UniversalRecyclerView.this.adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            UniversalRecyclerView.this.swappedElements();
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                UniversalRecyclerView.this.hideSelector(false);
            }
            if (i == 0) {
                if (viewHolder != null) {
                    viewHolder.itemView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(16.0f), Theme.getColor(Theme.key_windowBackgroundWhite)));
                    viewHolder.itemView.setAlpha(1.0f);
                }
                UniversalRecyclerView.this.adapter.reorderDone();
            } else {
                UniversalRecyclerView.this.cancelClickRunnables(false);
                if (viewHolder != null) {
                    UniversalRecyclerView.this.setDraggingChild(viewHolder.itemView);
                    viewHolder.itemView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(16.0f), Theme.getColor(Theme.key_windowBackgroundWhite)));
                    viewHolder.itemView.setAlpha(1.0f);
                    viewHolder.itemView.setPressed(true);
                    viewHolder.itemView.bringToFront();
                }
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            UniversalRecyclerView.this.setDraggingChild(null);
            viewHolder.itemView.setPressed(false);
            viewHolder.itemView.setAlpha(1.0f);
            viewHolder.itemView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(16.0f), Theme.getColor(Theme.key_windowBackgroundWhite)));
        }
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView
    public void setSections() {
        setSections(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(16.0f), false);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView
    public void setSections(boolean z) {
        setSections(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(16.0f), z);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView
    public void setSections(int i, float f, boolean z) {
        super.setSections(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.UniversalRecyclerView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$setSections$3((View) obj);
            }
        }, new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.UniversalRecyclerView$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                Integer num = (Integer) obj;
                return Boolean.valueOf((UniversalAdapter.isShadow(num.intValue()) || (ExteraConfig.sectionsSeparatedHeaders && UniversalAdapter.isHeader(num.intValue()))) ? false : true);
            }
        }, i, f, new Utilities.Callback5() { // from class: org.telegram.ui.Components.UniversalRecyclerView$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.lambda$setSections$5((Canvas) obj, (RectF) obj2, ((Float) obj3).floatValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$setSections$3(View view) {
        UItem item;
        if (view.getParent() != this) {
            return Boolean.FALSE;
        }
        RecyclerView.ViewHolder childViewHolder = getChildViewHolder(view);
        Object tag = childViewHolder.itemView.getTag(C2888R.id.parent_tag);
        if ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
            return Boolean.FALSE;
        }
        int adapterPosition = childViewHolder.getAdapterPosition();
        if (adapterPosition != -1 && (item = this.adapter.getItem(adapterPosition)) != null && item.transparent) {
            return Boolean.FALSE;
        }
        int itemViewType = childViewHolder.getItemViewType();
        if (ExteraConfig.sectionsSeparatedHeaders && UniversalAdapter.isHeader(itemViewType)) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(!UniversalAdapter.isShadow(itemViewType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSections$5(Canvas canvas, RectF rectF, float f, float f2, float f3) {
        super.drawBackgroundRect(canvas, rectF, f, f2, f3);
    }
}
