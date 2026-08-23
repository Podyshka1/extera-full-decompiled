package androidx.car.app.model;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class PlaceMarker {
    private static final int MAX_LABEL_LENGTH = 3;
    public static final int TYPE_ICON = 0;
    public static final int TYPE_IMAGE = 1;
    private final CarColor mColor;
    private final CarIcon mIcon;
    private final int mIconType;
    private final CarText mLabel;

    public static final class Builder {
    }

    public CarIcon getIcon() {
        return this.mIcon;
    }

    public int getIconType() {
        return this.mIconType;
    }

    public CarText getLabel() {
        return this.mLabel;
    }

    public CarColor getColor() {
        return this.mColor;
    }

    public String toString() {
        String shortString;
        StringBuilder sb = new StringBuilder("[");
        CarIcon carIcon = this.mIcon;
        if (carIcon != null) {
            shortString = carIcon.toString();
        } else {
            CarText carText = this.mLabel;
            shortString = carText != null ? CarText.toShortString(carText) : super.toString();
        }
        sb.append(shortString);
        sb.append("]");
        return sb.toString();
    }

    public int hashCode() {
        return Objects.hash(this.mIcon, this.mLabel, this.mColor, Integer.valueOf(this.mIconType));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceMarker)) {
            return false;
        }
        PlaceMarker placeMarker = (PlaceMarker) obj;
        return Objects.equals(this.mIcon, placeMarker.mIcon) && Objects.equals(this.mLabel, placeMarker.mLabel) && Objects.equals(this.mColor, placeMarker.mColor) && this.mIconType == placeMarker.mIconType;
    }

    public PlaceMarker(Builder builder) {
        throw null;
    }

    private PlaceMarker() {
        this.mIcon = null;
        this.mIconType = 0;
        this.mLabel = null;
        this.mColor = null;
    }
}
