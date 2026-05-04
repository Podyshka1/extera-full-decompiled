package com.google.android.material.listitem;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public class ListItemViewHolder extends RecyclerView.ViewHolder {
    private final ListItemLayout listItemLayout;

    public ListItemViewHolder(View view) {
        super(view);
        this.listItemLayout = findListItemLayout();
    }

    private ListItemLayout findListItemLayout() {
        View view = this.itemView;
        if (view instanceof ListItemLayout) {
            return (ListItemLayout) view;
        }
        if (view instanceof ViewGroup) {
            int childCount = ((ViewGroup) view).getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ((ViewGroup) this.itemView).getChildAt(i);
                if (childAt instanceof ListItemLayout) {
                    return (ListItemLayout) childAt;
                }
            }
        }
        throw new IllegalStateException("Didn't find ListItemLayout in root itemView or among itemView's children.");
    }

    public void bind() {
        bind(getBindingAdapterPosition(), getBindingAdapter().getItemCount());
    }

    public void bind(int i, int i2) {
        if (i == -1 || i2 == 0) {
            return;
        }
        this.listItemLayout.updateAppearance(i, i2);
    }

    public void bind(int i) {
        this.listItemLayout.updateAppearance(i);
    }
}
