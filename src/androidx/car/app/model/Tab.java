package androidx.car.app.model;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Tab {
    private static final String EMPTY_TAB_CONTENT_ID = "EMPTY_TAB_CONTENT_ID";
    private final String mContentId;
    private final CarIcon mIcon;
    private final CarText mTitle;

    public static final class Builder {
    }

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
        throw null;
    }

    private Tab() {
        this.mTitle = null;
        this.mContentId = EMPTY_TAB_CONTENT_ID;
        this.mIcon = null;
    }
}
