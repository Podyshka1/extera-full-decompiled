package androidx.car.app.model;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class DistanceSpan extends CarSpan {
    private final Distance mDistance;

    public static DistanceSpan create(Distance distance) {
        Objects.requireNonNull(distance);
        return new DistanceSpan(distance);
    }

    public Distance getDistance() {
        Distance distance = this.mDistance;
        Objects.requireNonNull(distance);
        return distance;
    }

    public String toString() {
        return "[distance: " + this.mDistance + "]";
    }

    public int hashCode() {
        return Objects.hashCode(this.mDistance);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DistanceSpan) {
            return Objects.equals(this.mDistance, ((DistanceSpan) obj).mDistance);
        }
        return false;
    }

    private DistanceSpan(Distance distance) {
        this.mDistance = distance;
    }

    private DistanceSpan() {
        this.mDistance = null;
    }
}
