package androidx.car.app.hardware.info;

import android.location.Location;
import androidx.car.app.hardware.common.CarValue;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CarHardwareLocation {
    public static final CarValue<Location> UNIMPLEMENTED_LOCATION = new CarValue<>(null, 0, 2);
    public static final CarValue<Location> UNKNOWN_LOCATION = new CarValue<>(null, 0, 0);
    private final CarValue<Location> mLocation;

    public CarValue<Location> getLocation() {
        return this.mLocation;
    }

    public String toString() {
        return "[ location: " + this.mLocation + " ]";
    }

    public int hashCode() {
        return Objects.hash(this.mLocation);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CarHardwareLocation) {
            return Objects.equals(this.mLocation, ((CarHardwareLocation) obj).mLocation);
        }
        return false;
    }

    public CarHardwareLocation(CarValue<Location> carValue) {
        Objects.requireNonNull(carValue);
        this.mLocation = carValue;
    }

    private CarHardwareLocation() {
        this.mLocation = UNKNOWN_LOCATION;
    }
}
