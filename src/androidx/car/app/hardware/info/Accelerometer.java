package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarValue;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Accelerometer {
    private final CarValue<List<Float>> mForces;

    public CarValue<List<Float>> getForces() {
        return this.mForces;
    }

    public String toString() {
        return "[ forces: " + this.mForces + " ]";
    }

    public int hashCode() {
        return Objects.hash(this.mForces);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Accelerometer) {
            return Objects.equals(this.mForces, ((Accelerometer) obj).mForces);
        }
        return false;
    }

    public Accelerometer(CarValue<List<Float>> carValue) {
        Objects.requireNonNull(carValue);
        this.mForces = carValue;
    }

    private Accelerometer() {
        this.mForces = CarValue.UNKNOWN_FLOAT_LIST;
    }
}
