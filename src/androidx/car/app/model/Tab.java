package androidx.car.app.model;

import androidx.car.app.model.constraints.CarIconConstraints;
import androidx.car.app.model.constraints.CarTextConstraints;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class Tab {
    private static final String EMPTY_TAB_CONTENT_ID = "EMPTY_TAB_CONTENT_ID";
    private final String mContentId;
    private final CarIcon mIcon;
    private final CarText mTitle;

    public CarText getTitle() {
        CarText carText = this.mTitle;
        Objects.requireNonNull(carText);
        return carText;
    }

    public String getContentId() {
        String str = this.mContentId;
        Objects.requireNonNull(str);
        return str;
    }

    public CarIcon getIcon() {
        CarIcon carIcon = this.mIcon;
        Objects.requireNonNull(carIcon);
        return carIcon;
    }

    public String toString() {
        return "[title: " + CarText.toShortString(this.mTitle) + ", contentId: " + this.mContentId + ", icon: " + this.mIcon + "]";
    }

    public int hashCode() {
        return Objects.hash(this.mTitle, this.mContentId, this.mIcon);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tab)) {
            return false;
        }
        Tab tab = (Tab) obj;
        return Objects.equals(this.mTitle, tab.mTitle) && Objects.equals(this.mContentId, tab.mContentId) && Objects.equals(this.mIcon, tab.mIcon);
    }

    public Tab(Builder builder) {
        this.mTitle = builder.mTitle;
        this.mIcon = builder.mIcon;
        String str = builder.mContentId;
        if (str != null) {
            this.mContentId = str;
        } else {
            this.mContentId = EMPTY_TAB_CONTENT_ID;
        }
    }

    private Tab() {
        this.mTitle = null;
        this.mContentId = EMPTY_TAB_CONTENT_ID;
        this.mIcon = null;
    }

    public static final class Builder {
        String mContentId;
        CarIcon mIcon;
        CarText mTitle;

        public Builder setTitle(CharSequence charSequence) {
            Objects.requireNonNull(charSequence);
            CarText carTextCreate = CarText.create(charSequence);
            if (carTextCreate.isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m215m("The title cannot be null or empty");
                return null;
            }
            CarTextConstraints.TEXT_AND_ICON.validateOrThrow(carTextCreate);
            this.mTitle = carTextCreate;
            return this;
        }

        public Builder setContentId(String str) {
            Objects.requireNonNull(str);
            if (str.isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m215m("The content ID cannot be null or empty");
                return null;
            }
            this.mContentId = str;
            return this;
        }

        public Builder setIcon(CarIcon carIcon) {
            CarIconConstraints carIconConstraints = CarIconConstraints.DEFAULT;
            Objects.requireNonNull(carIcon);
            carIconConstraints.validateOrThrow(carIcon);
            this.mIcon = carIcon;
            return this;
        }

        public Tab build() {
            if (this.mTitle == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("A title must be set for the tab");
                return null;
            }
            if (this.mIcon == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("A icon must be set for the tab");
                return null;
            }
            if (this.mContentId == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("A content ID must be set for the tab");
                return null;
            }
            return new Tab(this);
        }
    }
}
