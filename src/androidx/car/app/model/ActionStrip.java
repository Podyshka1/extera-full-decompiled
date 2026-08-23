package androidx.car.app.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class ActionStrip {
    private final List<Action> mActions;

    public static final class Builder {
    }

    public List<Action> getActions() {
        return CollectionUtils.emptyIfNull(this.mActions);
    }

    public Action getFirstActionOfType(int i) {
        for (Action action : this.mActions) {
            if (action instanceof Action) {
                Action action2 = action;
                if (action2.getType() == i) {
                    return action2;
                }
            }
        }
        return null;
    }

    public String toString() {
        return "[action count: " + this.mActions.size() + "]";
    }

    public int hashCode() {
        return Objects.hashCode(this.mActions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ActionStrip) {
            return Objects.equals(this.mActions, ((ActionStrip) obj).mActions);
        }
        return false;
    }

    public ActionStrip(Builder builder) {
        throw null;
    }

    private ActionStrip() {
        this.mActions = Collections.EMPTY_LIST;
    }
}
