package androidx.car.app.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class LongMessageTemplate implements Template {
    private final List<Action> mActionList;
    private final ActionStrip mActionStrip;
    private final Action mHeaderAction;
    private final CarText mMessage;
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

    public CarText getMessage() {
        CarText carText = this.mMessage;
        Objects.requireNonNull(carText);
        return carText;
    }

    public List<Action> getActions() {
        return CollectionUtils.emptyIfNull(this.mActionList);
    }

    public String toString() {
        return "LongMessageTemplate";
    }

    public int hashCode() {
        return Objects.hash(this.mTitle, this.mMessage, this.mHeaderAction, this.mActionList, this.mActionStrip);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LongMessageTemplate)) {
            return false;
        }
        LongMessageTemplate longMessageTemplate = (LongMessageTemplate) obj;
        return Objects.equals(this.mTitle, longMessageTemplate.mTitle) && Objects.equals(this.mMessage, longMessageTemplate.mMessage) && Objects.equals(this.mHeaderAction, longMessageTemplate.mHeaderAction) && Objects.equals(this.mActionList, longMessageTemplate.mActionList) && Objects.equals(this.mActionStrip, longMessageTemplate.mActionStrip);
    }

    public LongMessageTemplate(Builder builder) {
        throw null;
    }

    private LongMessageTemplate() {
        this.mTitle = null;
        this.mMessage = null;
        this.mActionStrip = null;
        this.mHeaderAction = null;
        this.mActionList = Collections.EMPTY_LIST;
    }
}
