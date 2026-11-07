package androidx.car.app.model;

import androidx.car.app.model.constraints.CarTextConstraints;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class SectionedItemList {
    private final CarText mHeader;
    private final ItemList mItemList;

    public static SectionedItemList create(ItemList itemList, CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        CarText carTextCreate = CarText.create(charSequence);
        CarTextConstraints.TEXT_ONLY.validateOrThrow(carTextCreate);
        Objects.requireNonNull(itemList);
        return new SectionedItemList(itemList, carTextCreate);
    }

    public ItemList getItemList() {
        ItemList itemList = this.mItemList;
        Objects.requireNonNull(itemList);
        return itemList;
    }

    public CarText getHeader() {
        CarText carText = this.mHeader;
        Objects.requireNonNull(carText);
        return carText;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[ items: ");
        sb.append(this.mItemList);
        sb.append(", has header: ");
        sb.append(this.mHeader != null);
        sb.append("]");
        return sb.toString();
    }

    public int hashCode() {
        return Objects.hash(this.mItemList, this.mHeader);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionedItemList)) {
            return false;
        }
        SectionedItemList sectionedItemList = (SectionedItemList) obj;
        return Objects.equals(this.mItemList, sectionedItemList.mItemList) && Objects.equals(this.mHeader, sectionedItemList.mHeader);
    }

    private SectionedItemList(ItemList itemList, CarText carText) {
        this.mItemList = itemList;
        this.mHeader = carText;
    }

    private SectionedItemList() {
        this.mItemList = null;
        this.mHeader = null;
    }
}
