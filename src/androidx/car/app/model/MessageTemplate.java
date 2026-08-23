package androidx.car.app.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class MessageTemplate implements Template {
    private final List<Action> mActionList;
    private final ActionStrip mActionStrip;
    private final CarText mDebugMessage;
    private final Action mHeaderAction;
    private final CarIcon mIcon;
    private final boolean mIsLoading;
    private final CarText mMessage;
    private final CarText mTitle;

    public static final class Builder {
    }

    public boolean isLoading() {
        return this.mIsLoading;
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

    public CarText getMessage() {
        CarText carText = this.mMessage;
        Objects.requireNonNull(carText);
        return carText;
    }

    public CarText getDebugMessage() {
        return this.mDebugMessage;
    }

    public CarIcon getIcon() {
        return this.mIcon;
    }

    public List<Action> getActions() {
        return CollectionUtils.emptyIfNull(this.mActionList);
    }

    public String toString() {
        return "MessageTemplate";
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsLoading), this.mTitle, this.mMessage, this.mDebugMessage, this.mHeaderAction, this.mActionList, this.mIcon, this.mActionStrip);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageTemplate)) {
            return false;
        }
        MessageTemplate messageTemplate = (MessageTemplate) obj;
        return this.mIsLoading == messageTemplate.mIsLoading && Objects.equals(this.mTitle, messageTemplate.mTitle) && Objects.equals(this.mMessage, messageTemplate.mMessage) && Objects.equals(this.mDebugMessage, messageTemplate.mDebugMessage) && Objects.equals(this.mHeaderAction, messageTemplate.mHeaderAction) && Objects.equals(this.mActionList, messageTemplate.mActionList) && Objects.equals(this.mIcon, messageTemplate.mIcon) && Objects.equals(this.mActionStrip, messageTemplate.mActionStrip);
    }

    public MessageTemplate(Builder builder) {
        throw null;
    }

    private MessageTemplate() {
        this.mIsLoading = false;
        this.mTitle = null;
        this.mMessage = null;
        this.mDebugMessage = null;
        this.mIcon = null;
        this.mHeaderAction = null;
        this.mActionStrip = null;
        this.mActionList = Collections.EMPTY_LIST;
    }
}
