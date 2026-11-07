package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarValue;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Model {
    private final CarValue<String> mManufacturer;
    private final CarValue<String> mName;
    private final CarValue<Integer> mYear;

    public CarValue<String> getName() {
        CarValue<String> carValue = this.mName;
        Objects.requireNonNull(carValue);
        return carValue;
    }

    public CarValue<Integer> getYear() {
        CarValue<Integer> carValue = this.mYear;
        Objects.requireNonNull(carValue);
        return carValue;
    }

    public CarValue<String> getManufacturer() {
        CarValue<String> carValue = this.mManufacturer;
        Objects.requireNonNull(carValue);
        return carValue;
    }

    public String toString() {
        return "[ name: " + this.mName + ", year: " + this.mYear + ", manufacturer: " + this.mManufacturer + "]";
    }

    public int hashCode() {
        return Objects.hash(this.mName, this.mYear, this.mManufacturer);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Model)) {
            return false;
        }
        Model model = (Model) obj;
        return Objects.equals(this.mName, model.mName) && Objects.equals(this.mYear, model.mYear) && Objects.equals(this.mManufacturer, model.mManufacturer);
    }

    public Model(Builder builder) {
        CarValue<String> carValue = builder.mName;
        Objects.requireNonNull(carValue);
        this.mName = carValue;
        CarValue<String> carValue2 = builder.mManufacturer;
        Objects.requireNonNull(carValue2);
        this.mManufacturer = carValue2;
        CarValue<Integer> carValue3 = builder.mYear;
        Objects.requireNonNull(carValue3);
        this.mYear = carValue3;
    }

    private Model() {
        CarValue<String> carValue = CarValue.UNKNOWN_STRING;
        this.mName = carValue;
        this.mManufacturer = carValue;
        this.mYear = CarValue.UNKNOWN_INTEGER;
    }

    public static final class Builder {
        CarValue<String> mManufacturer;
        CarValue<String> mName;
        CarValue<Integer> mYear;

        public Builder() {
            CarValue<String> carValue = CarValue.UNKNOWN_STRING;
            this.mName = carValue;
            this.mYear = CarValue.UNKNOWN_INTEGER;
            this.mManufacturer = carValue;
        }

        public Model build() {
            return new Model(this);
        }
    }
}
