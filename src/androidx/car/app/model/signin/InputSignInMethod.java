package androidx.car.app.model.signin;

import androidx.car.app.model.CarText;
import androidx.car.app.model.InputCallbackDelegate;
import androidx.car.app.model.signin.SignInTemplate;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class InputSignInMethod implements SignInTemplate.SignInMethod {
    public static final int INPUT_TYPE_DEFAULT = 1;
    public static final int INPUT_TYPE_PASSWORD = 2;
    public static final int KEYBOARD_DEFAULT = 1;
    public static final int KEYBOARD_EMAIL = 2;
    public static final int KEYBOARD_NUMBER = 4;
    public static final int KEYBOARD_PHONE = 3;
    private final CarText mDefaultValue;
    private final CarText mErrorMessage;
    private final CarText mHint;
    private final InputCallbackDelegate mInputCallbackDelegate;
    private final int mInputType;
    private final int mKeyboardType;
    private final boolean mShowKeyboardByDefault;

    public static final class Builder {
    }

    public CarText getHint() {
        return this.mHint;
    }

    public CarText getDefaultValue() {
        return this.mDefaultValue;
    }

    public int getInputType() {
        return this.mInputType;
    }

    public CarText getErrorMessage() {
        return this.mErrorMessage;
    }

    public int getKeyboardType() {
        return this.mKeyboardType;
    }

    public InputCallbackDelegate getInputCallbackDelegate() {
        InputCallbackDelegate inputCallbackDelegate = this.mInputCallbackDelegate;
        Objects.requireNonNull(inputCallbackDelegate);
        return inputCallbackDelegate;
    }

    public boolean isShowKeyboardByDefault() {
        return this.mShowKeyboardByDefault;
    }

    public String toString() {
        return "[inputType:" + this.mInputType + ", keyboardType: " + this.mKeyboardType + "]";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InputSignInMethod)) {
            return false;
        }
        InputSignInMethod inputSignInMethod = (InputSignInMethod) obj;
        return this.mInputType == inputSignInMethod.mInputType && this.mKeyboardType == inputSignInMethod.mKeyboardType && this.mShowKeyboardByDefault == inputSignInMethod.mShowKeyboardByDefault && Objects.equals(this.mHint, inputSignInMethod.mHint) && Objects.equals(this.mDefaultValue, inputSignInMethod.mDefaultValue) && Objects.equals(this.mErrorMessage, inputSignInMethod.mErrorMessage);
    }

    public int hashCode() {
        return Objects.hash(this.mHint, this.mDefaultValue, Integer.valueOf(this.mInputType), this.mErrorMessage, Integer.valueOf(this.mKeyboardType), Boolean.valueOf(this.mShowKeyboardByDefault));
    }

    public InputSignInMethod(Builder builder) {
        throw null;
    }

    private InputSignInMethod() {
        this.mHint = null;
        this.mDefaultValue = null;
        this.mInputType = 1;
        this.mErrorMessage = null;
        this.mKeyboardType = 1;
        this.mInputCallbackDelegate = null;
        this.mShowKeyboardByDefault = false;
    }
}
