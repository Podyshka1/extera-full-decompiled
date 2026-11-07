package androidx.car.app.suggestion.model;

import android.app.PendingIntent;
import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Suggestion {
    private final PendingIntent mAction;
    private final CarIcon mIcon;
    private final String mIdentifier;
    private final CarText mSubtitle;
    private final CarText mTitle;

    public static final class Builder {
    }

    public String getIdentifier() {
        return this.mIdentifier;
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

    public PendingIntent getAction() {
        return this.mAction;
    }

    public String toString() {
        return "[id: " + this.mIdentifier + ", title: " + CarText.toShortString(this.mTitle) + ", subtitle: " + CarText.toShortString(this.mSubtitle) + ", pendingIntent: " + this.mAction + ", icon: " + this.mIcon + "]";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Suggestion)) {
            return false;
        }
        Suggestion suggestion = (Suggestion) obj;
        return Objects.equals(this.mIdentifier, suggestion.mIdentifier) && Objects.equals(this.mTitle, suggestion.mTitle) && Objects.equals(this.mSubtitle, suggestion.mSubtitle) && Objects.equals(this.mAction, suggestion.mAction) && Objects.equals(this.mIcon, suggestion.mIcon);
    }

    public int hashCode() {
        return Objects.hash(this.mIdentifier, this.mTitle, this.mSubtitle, this.mIcon, this.mAction);
    }

    public Suggestion(Builder builder) {
        throw null;
    }

    private Suggestion() {
        this.mIdentifier = _UrlKt.FRAGMENT_ENCODE_SET;
        this.mTitle = CarText.create(_UrlKt.FRAGMENT_ENCODE_SET);
        this.mSubtitle = null;
        this.mIcon = null;
        this.mAction = null;
    }
}
