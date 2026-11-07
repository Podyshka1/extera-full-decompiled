package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarValue;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Speed {
    private final CarValue<Float> mDisplaySpeedMetersPerSecond;
    private final CarValue<Float> mRawSpeedMetersPerSecond;
    private final CarValue<Integer> mSpeedDisplayUnit;

    public CarValue<Float> getRawSpeedMetersPerSecond() {
        CarValue<Float> carValue = this.mRawSpeedMetersPerSecond;
        Objects.requireNonNull(carValue);
        return carValue;
    }

    public CarValue<Float> getDisplaySpeedMetersPerSecond() {
        CarValue<Float> carValue = this.mDisplaySpeedMetersPerSecond;
        Objects.requireNonNull(carValue);
        return carValue;
    }

    public CarValue<Integer> getSpeedDisplayUnit() {
        CarValue<Integer> carValue = this.mSpeedDisplayUnit;
        Objects.requireNonNull(carValue);
        return carValue;
    }

    public String toString() {
        return "[ raw speed: " + getRawSpeedMetersPerSecond() + ", display speed: " + getDisplaySpeedMetersPerSecond() + ", speed display unit: " + this.mSpeedDisplayUnit + "]";
    }

    public int hashCode() {
        return Objects.hash(getRawSpeedMetersPerSecond(), getDisplaySpeedMetersPerSecond(), this.mSpeedDisplayUnit);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Speed)) {
            return false;
        }
        Speed speed = (Speed) obj;
        return Objects.equals(getRawSpeedMetersPerSecond(), speed.getRawSpeedMetersPerSecond()) && Objects.equals(getDisplaySpeedMetersPerSecond(), speed.getDisplaySpeedMetersPerSecond()) && Objects.equals(this.mSpeedDisplayUnit, speed.mSpeedDisplayUnit);
    }

    public Speed(Builder builder) {
        CarValue<Float> carValue = builder.mRawSpeedMetersPerSecond;
        Objects.requireNonNull(carValue);
        this.mRawSpeedMetersPerSecond = carValue;
        CarValue<Float> carValue2 = builder.mDisplaySpeedMetersPerSecond;
        Objects.requireNonNull(carValue2);
        this.mDisplaySpeedMetersPerSecond = carValue2;
        CarValue<Integer> carValue3 = builder.mSpeedDisplayUnit;
        Objects.requireNonNull(carValue3);
        this.mSpeedDisplayUnit = carValue3;
    }

    private Speed() {
        CarValue<Float> carValue = CarValue.UNKNOWN_FLOAT;
        this.mRawSpeedMetersPerSecond = carValue;
        this.mDisplaySpeedMetersPerSecond = carValue;
        this.mSpeedDisplayUnit = CarValue.UNKNOWN_INTEGER;
    }

    public static final class Builder {
        CarValue<Float> mDisplaySpeedMetersPerSecond;
        CarValue<Float> mRawSpeedMetersPerSecond;
        CarValue<Integer> mSpeedDisplayUnit;

        public Builder() {
            CarValue<Float> carValue = CarValue.UNKNOWN_FLOAT;
            this.mRawSpeedMetersPerSecond = carValue;
            this.mDisplaySpeedMetersPerSecond = carValue;
            this.mSpeedDisplayUnit = CarValue.UNKNOWN_INTEGER;
        }

        public Speed build() {
            return new Speed(this);
        }
    }
}
