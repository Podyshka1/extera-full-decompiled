package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarValue;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class TollCard {
    public static final int TOLLCARD_STATE_INVALID = 2;
    public static final int TOLLCARD_STATE_NOT_INSERTED = 3;
    public static final int TOLLCARD_STATE_UNKNOWN = 0;
    public static final int TOLLCARD_STATE_VALID = 1;
    private final CarValue<Integer> mCardState;

    public CarValue<Integer> getCardState() {
        CarValue<Integer> carValue = this.mCardState;
        Objects.requireNonNull(carValue);
        return carValue;
    }

    public String toString() {
        return "[ tollcard state: " + this.mCardState + "]";
    }

    public int hashCode() {
        return Objects.hash(this.mCardState);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TollCard) {
            return Objects.equals(this.mCardState, ((TollCard) obj).mCardState);
        }
        return false;
    }

    public TollCard(Builder builder) {
        CarValue<Integer> carValue = builder.mCardState;
        Objects.requireNonNull(carValue);
        this.mCardState = carValue;
    }

    private TollCard() {
        this.mCardState = CarValue.UNKNOWN_INTEGER;
    }

    public static final class Builder {
        CarValue<Integer> mCardState = CarValue.UNKNOWN_INTEGER;

        public TollCard build() {
            return new TollCard(this);
        }
    }
}
