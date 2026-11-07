package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt;
import android.os.Build;
import androidx.biometric.BiometricPrompt;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;

/* JADX INFO: loaded from: classes3.dex */
class AuthenticationCallbackProvider {
    private android.hardware.biometrics.BiometricPrompt$AuthenticationCallback mBiometricCallback;
    private FingerprintManagerCompat.AuthenticationCallback mFingerprintCallback;
    final Listener mListener;

    public static class Listener {
        public abstract void onError(int i, CharSequence charSequence);

        public abstract void onFailure();

        public abstract void onSuccess(BiometricPrompt.AuthenticationResult authenticationResult);
    }

    public AuthenticationCallbackProvider(Listener listener) {
        this.mListener = listener;
    }

    public android.hardware.biometrics.BiometricPrompt$AuthenticationCallback getBiometricCallback() {
        if (this.mBiometricCallback == null) {
            this.mBiometricCallback = Api28Impl.createCallback(this.mListener);
        }
        return this.mBiometricCallback;
    }

    public FingerprintManagerCompat.AuthenticationCallback getFingerprintCallback() {
        if (this.mFingerprintCallback == null) {
            this.mFingerprintCallback = new FingerprintManagerCompat.AuthenticationCallback() { // from class: androidx.biometric.AuthenticationCallbackProvider.1
            };
        }
        return this.mFingerprintCallback;
    }

    public static class Api30Impl {
        public static int getAuthenticationType(BiometricPrompt.AuthenticationResult authenticationResult) {
            return authenticationResult.getAuthenticationType();
        }
    }

    public static class Api28Impl {
        public static android.hardware.biometrics.BiometricPrompt$AuthenticationCallback createCallback(final Listener listener) {
            return new android.hardware.biometrics.BiometricPrompt$AuthenticationCallback() { // from class: androidx.biometric.AuthenticationCallbackProvider.Api28Impl.1
                public void onAuthenticationHelp(int i, CharSequence charSequence) {
                }

                public void onAuthenticationError(int i, CharSequence charSequence) {
                    listener.onError(i, charSequence);
                }

                public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                    BiometricPrompt.CryptoObject cryptoObjectUnwrapFromBiometricPrompt = authenticationResult != null ? CryptoObjectUtils.unwrapFromBiometricPrompt(authenticationResult.getCryptoObject()) : null;
                    int i = Build.VERSION.SDK_INT;
                    int authenticationType = -1;
                    if (i >= 30) {
                        if (authenticationResult != null) {
                            authenticationType = Api30Impl.getAuthenticationType(authenticationResult);
                        }
                    } else if (i != 29) {
                        authenticationType = 2;
                    }
                    listener.onSuccess(new BiometricPrompt.AuthenticationResult(cryptoObjectUnwrapFromBiometricPrompt, authenticationType));
                }

                public void onAuthenticationFailed() {
                    listener.onFailure();
                }
            };
        }
    }
}
