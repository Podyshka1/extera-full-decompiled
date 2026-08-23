package androidx.car.app.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Alert {
    private static final int MAX_ACTION_COUNT = 2;
    private final List<Action> mActions;
    private final AlertCallbackDelegate mCallbackDelegate;
    private final long mDuration;
    private final CarIcon mIcon;
    private final int mId;
    private final CarText mSubtitle;
    private final CarText mTitle;

    public static final class Builder {
    }

    public int getId() {
        return this.mId;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public CarText getSubtitle() {
        return this.mSubtitle;
    }

    public CarIcon getIcon() {
        return this.mIcon;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public long getDurationMillis() {
        return this.mDuration;
    }

    public AlertCallbackDelegate getCallbackDelegate() {
        return this.mCallbackDelegate;
    }

    public String toString() {
        return "[id: " + this.mId + ", title: " + this.mTitle + ", icon: " + this.mIcon + "]";
    }

    public Alert(Builder builder) {
        throw null;
    }

    private Alert() {
        this.mId = 0;
        this.mTitle = CarText.create(_UrlKt.FRAGMENT_ENCODE_SET);
        this.mSubtitle = null;
        this.mIcon = null;
        this.mActions = new ArrayList();
        this.mDuration = 0L;
        this.mCallbackDelegate = null;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mId));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Alert) && this.mId == ((Alert) obj).mId;
    }
}
