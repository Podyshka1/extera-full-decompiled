package androidx.car.app.model;

import androidx.car.app.model.constraints.CarIconConstraints;
import com.google.gson.JsonArray$$ExternalSyntheticBUOutline0;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CarIconSpan extends CarSpan {
    public static final int ALIGN_BASELINE = 1;
    public static final int ALIGN_BOTTOM = 0;
    public static final int ALIGN_CENTER = 2;
    private final int mAlignment;
    private final CarIcon mIcon;

    public static CarIconSpan create(CarIcon carIcon) {
        return create(carIcon, 1);
    }

    public static CarIconSpan create(CarIcon carIcon, int i) {
        CarIconConstraints.DEFAULT.validateOrThrow(carIcon);
        if (i != 1 && i != 0 && i != 2) {
            JsonArray$$ExternalSyntheticBUOutline0.m498m("Invalid alignment value: ", i);
            return null;
        }
        Objects.requireNonNull(carIcon);
        return new CarIconSpan(carIcon, i);
    }

    private CarIconSpan(CarIcon carIcon, int i) {
        this.mIcon = carIcon;
        this.mAlignment = i;
    }

    private CarIconSpan() {
        this.mIcon = null;
        this.mAlignment = 1;
    }

    public CarIcon getIcon() {
        CarIcon carIcon = this.mIcon;
        Objects.requireNonNull(carIcon);
        return carIcon;
    }

    public int getAlignment() {
        return this.mAlignment;
    }

    public String toString() {
        return "[icon: " + this.mIcon + ", alignment: " + alignmentToString(this.mAlignment) + "]";
    }

    public int hashCode() {
        return Objects.hashCode(this.mIcon);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CarIconSpan) {
            return Objects.equals(this.mIcon, ((CarIconSpan) obj).mIcon);
        }
        return false;
    }

    private static String alignmentToString(int i) {
        if (i == 0) {
            return "bottom";
        }
        if (i == 1) {
            return "baseline";
        }
        if (i == 2) {
            return "center";
        }
        return "unknown";
    }
}
