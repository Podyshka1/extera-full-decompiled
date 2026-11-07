package androidx.car.app.model;

import androidx.car.app.model.constraints.CarColorConstraints;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class ForegroundCarColorSpan extends CarSpan {
    private final CarColor mCarColor;

    public static ForegroundCarColorSpan create(CarColor carColor) {
        CarColorConstraints.UNCONSTRAINED.validateOrThrow(carColor);
        Objects.requireNonNull(carColor);
        return new ForegroundCarColorSpan(carColor);
    }

    public CarColor getColor() {
        return this.mCarColor;
    }

    public String toString() {
        return "[color: " + this.mCarColor + "]";
    }

    public int hashCode() {
        return Objects.hashCode(this.mCarColor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ForegroundCarColorSpan) {
            return Objects.equals(this.mCarColor, ((ForegroundCarColorSpan) obj).mCarColor);
        }
        return false;
    }

    private ForegroundCarColorSpan(CarColor carColor) {
        this.mCarColor = carColor;
    }

    private ForegroundCarColorSpan() {
        this.mCarColor = CarColor.DEFAULT;
    }
}
