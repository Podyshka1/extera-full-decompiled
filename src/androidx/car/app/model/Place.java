package androidx.car.app.model;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Place {
    private final CarLocation mLocation;
    private final PlaceMarker mMarker;

    public static final class Builder {
    }

    public PlaceMarker getMarker() {
        return this.mMarker;
    }

    public CarLocation getLocation() {
        CarLocation carLocation = this.mLocation;
        Objects.requireNonNull(carLocation);
        return carLocation;
    }

    public String toString() {
        return "[ location: " + this.mLocation + ", marker: " + this.mMarker + "]";
    }

    public int hashCode() {
        return Objects.hash(this.mLocation, this.mMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Place)) {
            return false;
        }
        Place place = (Place) obj;
        return Objects.equals(this.mLocation, place.mLocation) && Objects.equals(this.mMarker, place.mMarker);
    }

    public Place(Builder builder) {
        throw null;
    }

    private Place() {
        this.mLocation = null;
        this.mMarker = null;
    }
}
