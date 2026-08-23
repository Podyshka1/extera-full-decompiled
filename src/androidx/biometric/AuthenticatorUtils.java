package androidx.biometric;

import android.os.Build;
import androidx.biometric.BiometricPrompt;

/* JADX INFO: loaded from: classes3.dex */
abstract class AuthenticatorUtils {
    public static boolean isDeviceCredentialAllowed(int i) {
        return (i & 32768) != 0;
    }

    public static boolean isSomeBiometricAllowed(int i) {
        return (i & 32767) != 0;
    }

    public static boolean isWeakBiometricAllowed(int i) {
        return (i & 255) == 255;
    }

    public static String convertToString(int i) {
        if (i == 15) {
            return "BIOMETRIC_STRONG";
        }
        if (i == 255) {
            return "BIOMETRIC_WEAK";
        }
        if (i == 32768) {
            return "DEVICE_CREDENTIAL";
        }
        if (i == 32783) {
            return "BIOMETRIC_STRONG | DEVICE_CREDENTIAL";
        }
        if (i == 33023) {
            return "BIOMETRIC_WEAK | DEVICE_CREDENTIAL";
        }
        return String.valueOf(i);
    }

    public static int getConsolidatedAuthenticators(BiometricPrompt.PromptInfo promptInfo, BiometricPrompt.CryptoObject cryptoObject) {
        if (promptInfo.getAllowedAuthenticators() != 0) {
            return promptInfo.getAllowedAuthenticators();
        }
        int i = cryptoObject != null ? 15 : 255;
        return promptInfo.isDeviceCredentialAllowed() ? 32768 | i : i;
    }

    public static boolean isSupportedCombination(int i) {
        if (i != 15 && i != 255) {
            if (i == 32768) {
                return Build.VERSION.SDK_INT >= 30;
            }
            if (i != 32783) {
                return i == 33023 || i == 0;
            }
            int i2 = Build.VERSION.SDK_INT;
            return i2 < 28 || i2 > 29;
        }
        return true;
    }
}
