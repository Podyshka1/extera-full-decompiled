package androidx.car.app.model;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class GridItem implements Item {
    public static final int IMAGE_TYPE_ICON = 1;
    public static final int IMAGE_TYPE_LARGE = 2;
    private final Badge mBadge;
    private final CarIcon mImage;
    private final int mImageType;
    private final boolean mIsLoading;
    private final OnClickDelegate mOnClickDelegate;
    private final CarText mText;
    private final CarText mTitle;

    public static final class Builder {
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public CarText getText() {
        return this.mText;
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public int getImageType() {
        return this.mImageType;
    }

    public OnClickDelegate getOnClickDelegate() {
        return this.mOnClickDelegate;
    }

    public Badge getBadge() {
        return this.mBadge;
    }

    public String toString() {
        return "[title: " + CarText.toShortString(this.mTitle) + ", text: " + CarText.toShortString(this.mText) + ", image: " + this.mImage + ", isLoading: " + this.mIsLoading + ", badge: " + this.mBadge + "]";
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsLoading), this.mTitle, this.mImage, Integer.valueOf(this.mImageType), Boolean.valueOf(this.mOnClickDelegate == null), this.mBadge);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GridItem)) {
            return false;
        }
        GridItem gridItem = (GridItem) obj;
        if (this.mIsLoading == gridItem.mIsLoading && Objects.equals(this.mTitle, gridItem.mTitle) && Objects.equals(this.mText, gridItem.mText) && Objects.equals(this.mImage, gridItem.mImage)) {
            if (Boolean.valueOf(this.mOnClickDelegate == null).equals(Boolean.valueOf(gridItem.mOnClickDelegate == null)) && Objects.equals(this.mBadge, gridItem.mBadge) && this.mImageType == gridItem.mImageType) {
                return true;
            }
        }
        return false;
    }

    public GridItem(Builder builder) {
        throw null;
    }

    private GridItem() {
        this.mIsLoading = false;
        this.mTitle = null;
        this.mText = null;
        this.mImage = null;
        this.mImageType = 2;
        this.mOnClickDelegate = null;
        this.mBadge = null;
    }
}
