package androidx.car.app.model;

import android.location.Location;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CarLocation {
    private final double mLat;
    private final double mLng;

    public static CarLocation create(double d, double d2) {
        return new CarLocation(d, d2);
    }

    public static CarLocation create(Location location) {
        Objects.requireNonNull(location);
        return create(location.getLatitude(), location.getLongitude());
    }

    public double getLatitude() {
        return this.mLat;
    }

    public double getLongitude() {
        return this.mLng;
    }

    public String toString() {
        return "[" + getLatitude() + ", " + getLongitude() + "]";
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.mLat), Double.valueOf(this.mLng));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarLocation)) {
            return false;
        }
        CarLocation carLocation = (CarLocation) obj;
        return Double.doubleToLongBits(this.mLat) == Double.doubleToLongBits(carLocation.mLat) && Double.doubleToLongBits(this.mLng) == Double.doubleToLongBits(carLocation.mLng);
    }

    private CarLocation(double d, double d2) {
        this.mLat = d;
        this.mLng = d2;
    }

    private CarLocation() {
        this(0.0d, 0.0d);
    }
}
