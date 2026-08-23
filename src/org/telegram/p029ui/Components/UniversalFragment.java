package org.telegram.p029ui.Components;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BackDrawable;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class UniversalFragment extends BaseFragment {
    public UniversalRecyclerView listView;
    private int savedScrollOffset;
    private int savedScrollPosition = -1;

    protected abstract void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter);

    protected abstract CharSequence getTitle();

    protected abstract void onClick(UItem uItem, View view, int i, float f, float f2);

    protected abstract boolean onLongClick(UItem uItem, View view, int i, float f, float f2);

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(getTitle());
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.UniversalFragment.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    UniversalFragment.this.finishFragment();
                }
            }
        });
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.UniversalFragment.2
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
            }
        };
        sizeNotifierFrameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Components.UniversalFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Components.UniversalFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.Components.UniversalFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        }) { // from class: org.telegram.ui.Components.UniversalFragment.3
            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                UniversalFragment.this.savedScrollPosition = -1;
            }
        };
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.adapter.setApplyBackground(false);
        sizeNotifierFrameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.fragmentView = sizeNotifierFrameLayout;
        return sizeNotifierFrameLayout;
    }

    public void saveScrollPosition() {
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || universalRecyclerView.getChildCount() <= 0) {
            return;
        }
        View view = null;
        int top = Integer.MAX_VALUE;
        int i = -1;
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            UniversalRecyclerView universalRecyclerView2 = this.listView;
            int childAdapterPosition = universalRecyclerView2.getChildAdapterPosition(universalRecyclerView2.getChildAt(i2));
            View childAt = this.listView.getChildAt(i2);
            if (childAdapterPosition != -1 && childAt.getTop() < top) {
                top = childAt.getTop();
                i = childAdapterPosition;
                view = childAt;
            }
        }
        if (view != null) {
            this.savedScrollPosition = i;
            int top2 = view.getTop();
            this.savedScrollOffset = top2;
            if (this.savedScrollPosition == 0 && top2 > AndroidUtilities.m1124dp(88.0f)) {
                this.savedScrollOffset = AndroidUtilities.m1124dp(88.0f);
            }
            this.listView.layoutManager.scrollToPositionWithOffset(i, view.getTop() - this.listView.getPaddingTop());
        }
    }

    public void applyScrolledPosition() {
        int i = this.savedScrollPosition;
        if (i >= 0) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            universalRecyclerView.layoutManager.scrollToPositionWithOffset(i, this.savedScrollOffset - universalRecyclerView.getPaddingTop());
        }
    }
}
