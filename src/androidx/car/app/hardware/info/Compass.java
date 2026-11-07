package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarValue;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Compass {
    private final CarValue<List<Float>> mOrientations;

    public CarValue<List<Float>> getOrientations() {
        return this.mOrientations;
    }

    public String toString() {
        return "[ orientations: " + this.mOrientations + " ]";
    }

    public int hashCode() {
        return Objects.hash(this.mOrientations);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Compass) {
            return Objects.equals(this.mOrientations, ((Compass) obj).mOrientations);
        }
        return false;
    }

    public Compass(CarValue<List<Float>> carValue) {
        Objects.requireNonNull(carValue);
        this.mOrientations = carValue;
    }

    private Compass() {
        this.mOrientations = CarValue.UNKNOWN_FLOAT_LIST;
    }
}
