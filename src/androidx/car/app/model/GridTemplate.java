package androidx.car.app.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class GridTemplate implements Template {
    public static final int ITEM_IMAGE_SHAPE_CIRCLE = 2;
    public static final int ITEM_IMAGE_SHAPE_UNSET = 1;
    public static final int ITEM_SIZE_LARGE = 4;
    public static final int ITEM_SIZE_MEDIUM = 2;
    public static final int ITEM_SIZE_SMALL = 1;
    private final ActionStrip mActionStrip;
    private final List<Action> mActions;
    private final Action mHeaderAction;
    private final boolean mIsLoading;
    private final int mItemImageShape;
    private final int mItemSize;
    private final ItemList mSingleList;
    private final CarText mTitle;

    public static final class Builder {
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public Action getHeaderAction() {
        return this.mHeaderAction;
    }

    public ActionStrip getActionStrip() {
        return this.mActionStrip;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public ItemList getSingleList() {
        return this.mSingleList;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public int getItemSize() {
        return this.mItemSize;
    }

    public int getItemImageShape() {
        return this.mItemImageShape;
    }

    public String toString() {
        return "GridTemplate";
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsLoading), this.mTitle, this.mHeaderAction, this.mSingleList, this.mActionStrip, Integer.valueOf(this.mItemSize), Integer.valueOf(this.mItemImageShape));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GridTemplate)) {
            return false;
        }
        GridTemplate gridTemplate = (GridTemplate) obj;
        return this.mIsLoading == gridTemplate.mIsLoading && Objects.equals(this.mTitle, gridTemplate.mTitle) && Objects.equals(this.mHeaderAction, gridTemplate.mHeaderAction) && Objects.equals(this.mSingleList, gridTemplate.mSingleList) && Objects.equals(this.mActionStrip, gridTemplate.mActionStrip) && Objects.equals(this.mActions, gridTemplate.mActions) && this.mItemSize == gridTemplate.mItemSize && this.mItemImageShape == gridTemplate.mItemImageShape;
    }

    public GridTemplate(Builder builder) {
        throw null;
    }

    private GridTemplate() {
        this.mIsLoading = false;
        this.mTitle = null;
        this.mHeaderAction = null;
        this.mSingleList = null;
        this.mActionStrip = null;
        this.mActions = Collections.EMPTY_LIST;
        this.mItemSize = 1;
        this.mItemImageShape = 1;
    }
}
