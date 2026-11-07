package androidx.car.app.navigation.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Lane {
    private final List<LaneDirection> mDirections;

    public List<LaneDirection> getDirections() {
        return CollectionUtils.emptyIfNull(this.mDirections);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[direction count: ");
        List<LaneDirection> list = this.mDirections;
        sb.append(list != null ? list.size() : 0);
        sb.append("]");
        return sb.toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.mDirections);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Lane) {
            return Objects.equals(this.mDirections, ((Lane) obj).mDirections);
        }
        return false;
    }

    public Lane(List<LaneDirection> list) {
        this.mDirections = CollectionUtils.unmodifiableCopy(list);
    }

    private Lane() {
        this.mDirections = Collections.EMPTY_LIST;
    }
}
