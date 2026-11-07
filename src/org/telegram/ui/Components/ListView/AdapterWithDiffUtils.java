package org.telegram.ui.Components.ListView;

import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AdapterWithDiffUtils extends RecyclerListView.SelectionAdapter {
    DiffUtilsCallback callback = new DiffUtilsCallback();

    public boolean areVisualsTheSame(int i, int i2, ArrayList<? extends Item> arrayList, ArrayList<? extends Item> arrayList2) {
        return true;
    }

    public void setItems(ArrayList<? extends Item> arrayList, ArrayList<? extends Item> arrayList2) {
        if (arrayList2 == null) {
            arrayList2 = new ArrayList<>();
        }
        this.callback.setItems(arrayList, arrayList2);
        DiffUtil.calculateDiff(this.callback).dispatchUpdatesTo(this);
    }

    public static abstract class Item {
        public boolean selectable;
        public int viewType;

        public boolean contentsEquals(Item item) {
            return false;
        }

        public Item(int i, boolean z) {
            this.viewType = i;
            this.selectable = z;
        }

        public boolean compare(Item item) {
            if (this.viewType != item.viewType) {
                return false;
            }
            return equals(item);
        }

        public boolean compareContents(Item item) {
            if (this.viewType != item.viewType) {
                return false;
            }
            return contentsEquals(item);
        }
    }

    public class DiffUtilsCallback extends DiffUtil.Callback {
        ArrayList<? extends Item> newItems;
        ArrayList<? extends Item> oldItems;

        private DiffUtilsCallback() {
        }

        public void setItems(ArrayList<? extends Item> arrayList, ArrayList<? extends Item> arrayList2) {
            this.oldItems = arrayList;
            this.newItems = arrayList2;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldItems.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return this.newItems.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            return this.oldItems.get(i).compare(this.newItems.get(i2));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            if (this.oldItems.get(i).compareContents(this.newItems.get(i2))) {
                return AdapterWithDiffUtils.this.areVisualsTheSame(i, i2, this.oldItems, this.newItems);
            }
            return false;
        }
    }
}
