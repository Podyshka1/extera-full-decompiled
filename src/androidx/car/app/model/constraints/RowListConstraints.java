package androidx.car.app.model.constraints;

import androidx.car.app.messaging.model.ConversationItem;
import androidx.car.app.model.Item;
import androidx.car.app.model.ItemList;
import androidx.car.app.model.Row;
import androidx.car.app.model.SectionedItemList;
import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class RowListConstraints {
    public static final RowListConstraints MAP_ROW_LIST_CONSTRAINTS_ALLOW_SELECTABLE;
    public static final RowListConstraints ROW_LIST_CONSTRAINTS_CONSERVATIVE;
    public static final RowListConstraints ROW_LIST_CONSTRAINTS_FULL_LIST;
    public static final RowListConstraints ROW_LIST_CONSTRAINTS_PANE;

    @Deprecated
    public static final RowListConstraints ROW_LIST_CONSTRAINTS_ROUTE_PREVIEW;
    public static final RowListConstraints ROW_LIST_CONSTRAINTS_SIMPLE;
    private final boolean mAllowSelectableLists;
    private final int mMaxActions;
    private final RowConstraints mRowConstraints;

    static {
        RowListConstraints rowListConstraintsBuild = new Builder().setMaxActions(0).setRowConstraints(RowConstraints.ROW_CONSTRAINTS_CONSERVATIVE).setAllowSelectableLists(false).build();
        ROW_LIST_CONSTRAINTS_CONSERVATIVE = rowListConstraintsBuild;
        ROW_LIST_CONSTRAINTS_PANE = new Builder(rowListConstraintsBuild).setMaxActions(2).setRowConstraints(RowConstraints.ROW_CONSTRAINTS_PANE).setAllowSelectableLists(false).build();
        Builder builder = new Builder(rowListConstraintsBuild);
        RowConstraints rowConstraints = RowConstraints.ROW_CONSTRAINTS_SIMPLE;
        ROW_LIST_CONSTRAINTS_SIMPLE = builder.setRowConstraints(rowConstraints).build();
        ROW_LIST_CONSTRAINTS_ROUTE_PREVIEW = new Builder(rowListConstraintsBuild).setRowConstraints(rowConstraints).setAllowSelectableLists(true).build();
        MAP_ROW_LIST_CONSTRAINTS_ALLOW_SELECTABLE = new Builder(rowListConstraintsBuild).setRowConstraints(rowConstraints).setAllowSelectableLists(true).build();
        ROW_LIST_CONSTRAINTS_FULL_LIST = new Builder(rowListConstraintsBuild).setRowConstraints(RowConstraints.ROW_CONSTRAINTS_FULL_LIST).setAllowSelectableLists(true).build();
    }

    public int getMaxActions() {
        return this.mMaxActions;
    }

    public RowConstraints getRowConstraints() {
        return this.mRowConstraints;
    }

    public boolean isAllowSelectableLists() {
        return this.mAllowSelectableLists;
    }

    public void validateOrThrow(ItemList itemList) {
        if (itemList.getOnSelectedDelegate() != null && !this.mAllowSelectableLists) {
            f$$ExternalSyntheticBUOutline1.m215m("Selectable lists are not allowed");
        } else {
            validateRows(itemList.getItems());
        }
    }

    public void validateOrThrow(List<SectionedItemList> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<SectionedItemList> it = list.iterator();
        while (it.hasNext()) {
            ItemList itemList = it.next().getItemList();
            if (itemList.getOnSelectedDelegate() != null && !this.mAllowSelectableLists) {
                f$$ExternalSyntheticBUOutline1.m215m("Selectable lists are not allowed");
                return;
            }
            arrayList.addAll(itemList.getItems());
        }
        validateRows(arrayList);
    }

    private void validateRows(List<? extends Item> list) {
        for (Item item : list) {
            if (item instanceof Row) {
                this.mRowConstraints.validateOrThrow((Row) item);
            } else if (!(item instanceof ConversationItem)) {
                FieldSet$$ExternalSyntheticBUOutline0.m505m("Unsupported item type: %s", new Object[]{item.getClass().getSimpleName()});
                return;
            }
        }
    }

    public RowListConstraints(Builder builder) {
        this.mMaxActions = builder.mMaxActions;
        this.mRowConstraints = builder.mRowConstraints;
        this.mAllowSelectableLists = builder.mAllowSelectableLists;
    }

    public static final class Builder {
        boolean mAllowSelectableLists;
        int mMaxActions;
        RowConstraints mRowConstraints;

        public Builder setMaxActions(int i) {
            this.mMaxActions = i;
            return this;
        }

        public Builder setRowConstraints(RowConstraints rowConstraints) {
            this.mRowConstraints = rowConstraints;
            return this;
        }

        public Builder setAllowSelectableLists(boolean z) {
            this.mAllowSelectableLists = z;
            return this;
        }

        public RowListConstraints build() {
            return new RowListConstraints(this);
        }

        public Builder() {
            this.mRowConstraints = RowConstraints.UNCONSTRAINED;
        }

        public Builder(RowListConstraints rowListConstraints) {
            this.mRowConstraints = RowConstraints.UNCONSTRAINED;
            Objects.requireNonNull(rowListConstraints);
            this.mMaxActions = rowListConstraints.getMaxActions();
            this.mRowConstraints = rowListConstraints.getRowConstraints();
            this.mAllowSelectableLists = rowListConstraints.isAllowSelectableLists();
        }
    }
}
