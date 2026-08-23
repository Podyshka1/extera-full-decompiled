package androidx.car.app.model.signin;

import androidx.car.app.model.CarText;
import androidx.car.app.model.signin.SignInTemplate;
import java.util.Objects;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class PinSignInMethod implements SignInTemplate.SignInMethod {
    private static final int MAX_PIN_LENGTH = 12;
    private final CarText mPinCode;

    public PinSignInMethod(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        int length = charSequence.length();
        if (length == 0) {
            f$$ExternalSyntheticBUOutline1.m178m("PIN must not be empty");
            throw null;
        }
        if (length > 12) {
            f$$ExternalSyntheticBUOutline1.m178m("PIN must not be longer than 12 characters");
            throw null;
        }
        this.mPinCode = CarText.create(charSequence);
    }

    public CarText getPinCode() {
        CarText carText = this.mPinCode;
        Objects.requireNonNull(carText);
        return carText;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinSignInMethod) {
            return Objects.equals(this.mPinCode, ((PinSignInMethod) obj).mPinCode);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.mPinCode);
    }

    private PinSignInMethod() {
        this.mPinCode = null;
    }
}
