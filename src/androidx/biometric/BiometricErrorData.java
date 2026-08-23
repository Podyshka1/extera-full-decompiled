package androidx.biometric;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
class BiometricErrorData {
    private final int mErrorCode;
    private final CharSequence mErrorMessage;

    BiometricErrorData(int i, CharSequence charSequence) {
        this.mErrorCode = i;
        this.mErrorMessage = charSequence;
    }

    int getErrorCode() {
        return this.mErrorCode;
    }

    CharSequence getErrorMessage() {
        return this.mErrorMessage;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mErrorCode), convertToString(this.mErrorMessage)});
    }

    public boolean equals(Object obj) {
        if (obj instanceof BiometricErrorData) {
            BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
            if (this.mErrorCode == biometricErrorData.mErrorCode && isErrorMessageEqualTo(biometricErrorData.mErrorMessage)) {
                return true;
            }
        }
        return false;
    }

    private boolean isErrorMessageEqualTo(CharSequence charSequence) {
        String strConvertToString = convertToString(this.mErrorMessage);
        String strConvertToString2 = convertToString(charSequence);
        if (strConvertToString == null && strConvertToString2 == null) {
            return true;
        }
        return strConvertToString != null && strConvertToString.equals(strConvertToString2);
    }

    private static String convertToString(CharSequence charSequence) {
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
