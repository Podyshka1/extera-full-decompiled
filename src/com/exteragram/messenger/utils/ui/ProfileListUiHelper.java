package com.exteragram.messenger.utils.ui;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProfileListUiHelper {
    public static void anchorTopChild(LinearLayoutManager linearLayoutManager, RecyclerView.State state) {
        int decoratedTop;
        if (state.isPreLayout() || linearLayoutManager.hasPendingScrollPosition()) {
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < linearLayoutManager.getChildCount(); i3++) {
            View childAt = linearLayoutManager.getChildAt(i3);
            if (childAt != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                int viewLayoutPosition = layoutParams.getViewLayoutPosition();
                if (!layoutParams.isItemRemoved() && viewLayoutPosition >= 0 && viewLayoutPosition < state.getItemCount() && (decoratedTop = linearLayoutManager.getDecoratedTop(childAt) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) < i) {
                    i = decoratedTop;
                    i2 = viewLayoutPosition;
                }
            }
        }
        if (i2 != -1) {
            linearLayoutManager.scrollToPositionWithOffset(i2, i - linearLayoutManager.getPaddingTop());
        }
    }
}
