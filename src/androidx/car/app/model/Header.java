package androidx.car.app.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Header {
    private final List<Action> mEndHeaderActions;
    private final Action mStartHeaderAction;
    private final CarText mTitle;

    public static final class Builder {
    }

    public Header(Builder builder) {
        throw null;
    }

    private Header() {
        this.mTitle = null;
        this.mStartHeaderAction = null;
        this.mEndHeaderActions = new ArrayList();
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public List<Action> getEndHeaderActions() {
        return this.mEndHeaderActions;
    }

    public Action getStartHeaderAction() {
        return this.mStartHeaderAction;
    }

    public String toString() {
        return "Header: " + this.mTitle;
    }

    public int hashCode() {
        return Objects.hash(this.mTitle, this.mEndHeaderActions, this.mStartHeaderAction);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return Objects.equals(this.mTitle, header.mTitle) && Objects.equals(this.mEndHeaderActions, header.mEndHeaderActions) && Objects.equals(this.mStartHeaderAction, header.mStartHeaderAction);
    }
}
