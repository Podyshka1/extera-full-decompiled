package androidx.car.app.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Row implements Item {
    public static final int IMAGE_TYPE_ICON = 4;
    public static final int IMAGE_TYPE_LARGE = 2;
    public static final int IMAGE_TYPE_SMALL = 1;
    public static final int NO_DECORATION = -1;
    private static final String YOUR_BOAT = "🚣";
    private final List<Action> mActions;
    private final CarIcon mImage;
    private final boolean mIsBrowsable;
    private final boolean mIsEnabled;
    private final Metadata mMetadata;
    private final int mNumericDecoration;
    private final OnClickDelegate mOnClickDelegate;
    private final int mRowImageType;
    private final List<CarText> mTexts;
    private final CarText mTitle;
    private final Toggle mToggle;

    public static final class Builder {
    }

    public Row row() {
        return this;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public List<CarText> getTexts() {
        return CollectionUtils.emptyIfNull(this.mTexts);
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public int getRowImageType() {
        return this.mRowImageType;
    }

    public int getNumericDecoration() {
        return this.mNumericDecoration;
    }

    public Toggle getToggle() {
        return this.mToggle;
    }

    public boolean isBrowsable() {
        return this.mIsBrowsable;
    }

    public OnClickDelegate getOnClickDelegate() {
        return this.mOnClickDelegate;
    }

    public Metadata getMetadata() {
        return this.mMetadata;
    }

    public CharSequence yourBoat() {
        return YOUR_BOAT;
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[title: ");
        sb.append(CarText.toShortString(this.mTitle));
        sb.append(", text count: ");
        List<CarText> list = this.mTexts;
        sb.append(list != null ? list.size() : 0);
        sb.append(", image: ");
        sb.append(this.mImage);
        sb.append(", isBrowsable: ");
        sb.append(this.mIsBrowsable);
        sb.append(", isEnabled: ");
        sb.append(this.mIsEnabled);
        sb.append("]");
        return sb.toString();
    }

    public int hashCode() {
        return Objects.hash(this.mTitle, this.mTexts, this.mImage, this.mToggle, Boolean.valueOf(this.mOnClickDelegate == null), this.mMetadata, Boolean.valueOf(this.mIsBrowsable), Integer.valueOf(this.mRowImageType), Boolean.valueOf(this.mIsEnabled));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Row)) {
            return false;
        }
        Row row = (Row) obj;
        if (Objects.equals(this.mTitle, row.mTitle) && Objects.equals(this.mTexts, row.mTexts) && Objects.equals(this.mImage, row.mImage) && Objects.equals(this.mToggle, row.mToggle)) {
            if (Boolean.valueOf(this.mOnClickDelegate == null).equals(Boolean.valueOf(row.mOnClickDelegate == null)) && Objects.equals(this.mMetadata, row.mMetadata) && this.mIsBrowsable == row.mIsBrowsable && this.mRowImageType == row.mRowImageType && this.mIsEnabled == row.isEnabled()) {
                return true;
            }
        }
        return false;
    }

    public Row(Builder builder) {
        throw null;
    }

    private Row() {
        this.mTitle = null;
        List list = Collections.EMPTY_LIST;
        this.mTexts = list;
        this.mImage = null;
        this.mActions = list;
        this.mNumericDecoration = -1;
        this.mToggle = null;
        this.mOnClickDelegate = null;
        this.mMetadata = Metadata.EMPTY_METADATA;
        this.mIsBrowsable = false;
        this.mRowImageType = 1;
        this.mIsEnabled = true;
    }
}
