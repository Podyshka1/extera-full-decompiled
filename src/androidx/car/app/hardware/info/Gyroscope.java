package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarValue;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Gyroscope {
    private final CarValue<List<Float>> mRotations;

    public CarValue<List<Float>> getRotations() {
        return this.mRotations;
    }

    public String toString() {
        return "[ rotations: " + this.mRotations + " ]";
    }

    public int hashCode() {
        return Objects.hash(this.mRotations);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Gyroscope) {
            return Objects.equals(this.mRotations, ((Gyroscope) obj).mRotations);
        }
        return false;
    }

    public Gyroscope(CarValue<List<Float>> carValue) {
        Objects.requireNonNull(carValue);
        this.mRotations = carValue;
    }

    private Gyroscope() {
        this.mRotations = CarValue.UNKNOWN_FLOAT_LIST;
    }
}
