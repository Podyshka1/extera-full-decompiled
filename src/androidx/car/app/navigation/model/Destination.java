package androidx.car.app.navigation.model;

import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Destination {
    private final CarText mAddress;
    private final CarIcon mImage;
    private final CarText mName;

    public static final class Builder {
    }

    public CarText getName() {
        return this.mName;
    }

    public CarText getAddress() {
        return this.mAddress;
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public String toString() {
        return "[name: " + CarText.toShortString(this.mName) + ", address: " + CarText.toShortString(this.mAddress) + ", image: " + this.mImage + "]";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Destination)) {
            return false;
        }
        Destination destination = (Destination) obj;
        return Objects.equals(this.mName, destination.mName) && Objects.equals(this.mAddress, destination.mAddress) && Objects.equals(this.mImage, destination.mImage);
    }

    public int hashCode() {
        return Objects.hash(this.mName, this.mAddress, this.mImage);
    }

    public Destination(Builder builder) {
        throw null;
    }

    private Destination() {
        this.mName = null;
        this.mAddress = null;
        this.mImage = null;
    }
}
