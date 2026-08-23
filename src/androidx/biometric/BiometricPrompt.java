package androidx.biometric;

import android.os.Build;
import android.security.identity.IdentityCredential;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import java.security.Signature;
import java.util.concurrent.Executor;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public class BiometricPrompt {
    private FragmentManager mClientFragmentManager;

    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int i, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        }
    }

    public static class CryptoObject {
        private final Cipher mCipher;
        private final IdentityCredential mIdentityCredential;
        private final Mac mMac;
        private final Signature mSignature;

        public CryptoObject(Signature signature) {
            this.mSignature = signature;
            this.mCipher = null;
            this.mMac = null;
            this.mIdentityCredential = null;
        }

        public CryptoObject(Cipher cipher) {
            this.mSignature = null;
            this.mCipher = cipher;
            this.mMac = null;
            this.mIdentityCredential = null;
        }

        public CryptoObject(Mac mac) {
            this.mSignature = null;
            this.mCipher = null;
            this.mMac = mac;
            this.mIdentityCredential = null;
        }

        public CryptoObject(IdentityCredential identityCredential) {
            this.mSignature = null;
            this.mCipher = null;
            this.mMac = null;
            this.mIdentityCredential = identityCredential;
        }

        public Signature getSignature() {
            return this.mSignature;
        }

        public Cipher getCipher() {
            return this.mCipher;
        }

        public Mac getMac() {
            return this.mMac;
        }

        public IdentityCredential getIdentityCredential() {
            return this.mIdentityCredential;
        }
    }

    public static class AuthenticationResult {
        private final int mAuthenticationType;
        private final CryptoObject mCryptoObject;

        AuthenticationResult(CryptoObject cryptoObject, int i) {
            this.mCryptoObject = cryptoObject;
            this.mAuthenticationType = i;
        }

        public CryptoObject getCryptoObject() {
            return this.mCryptoObject;
        }

        public int getAuthenticationType() {
            return this.mAuthenticationType;
        }
    }

    public static class PromptInfo {
        private final int mAllowedAuthenticators;
        private final CharSequence mDescription;
        private final boolean mIsConfirmationRequired;
        private final boolean mIsDeviceCredentialAllowed;
        private final CharSequence mNegativeButtonText;
        private final CharSequence mSubtitle;
        private final CharSequence mTitle;

        public static class Builder {
            private CharSequence mTitle = null;
            private CharSequence mSubtitle = null;
            private CharSequence mDescription = null;
            private CharSequence mNegativeButtonText = null;
            private boolean mIsConfirmationRequired = true;
            private boolean mIsDeviceCredentialAllowed = false;
            private int mAllowedAuthenticators = 0;

            public Builder setTitle(CharSequence charSequence) {
                this.mTitle = charSequence;
                return this;
            }

            public Builder setDescription(CharSequence charSequence) {
                this.mDescription = charSequence;
                return this;
            }

            public Builder setNegativeButtonText(CharSequence charSequence) {
                this.mNegativeButtonText = charSequence;
                return this;
            }

            public Builder setAllowedAuthenticators(int i) {
                this.mAllowedAuthenticators = i;
                return this;
            }

            public PromptInfo build() {
                boolean zIsDeviceCredentialAllowed;
                if (TextUtils.isEmpty(this.mTitle)) {
                    throw new IllegalArgumentException("Title must be set and non-empty.");
                }
                if (!AuthenticatorUtils.isSupportedCombination(this.mAllowedAuthenticators)) {
                    throw new IllegalArgumentException("Authenticator combination is unsupported on API " + Build.VERSION.SDK_INT + ": " + AuthenticatorUtils.convertToString(this.mAllowedAuthenticators));
                }
                int i = this.mAllowedAuthenticators;
                if (i != 0) {
                    zIsDeviceCredentialAllowed = AuthenticatorUtils.isDeviceCredentialAllowed(i);
                } else {
                    zIsDeviceCredentialAllowed = this.mIsDeviceCredentialAllowed;
                }
                if (TextUtils.isEmpty(this.mNegativeButtonText) && !zIsDeviceCredentialAllowed) {
                    throw new IllegalArgumentException("Negative text must be set and non-empty.");
                }
                if (!TextUtils.isEmpty(this.mNegativeButtonText) && zIsDeviceCredentialAllowed) {
                    throw new IllegalArgumentException("Negative text must not be set if device credential authentication is allowed.");
                }
                return new PromptInfo(this.mTitle, this.mSubtitle, this.mDescription, this.mNegativeButtonText, this.mIsConfirmationRequired, this.mIsDeviceCredentialAllowed, this.mAllowedAuthenticators);
            }
        }

        PromptInfo(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, boolean z, boolean z2, int i) {
            this.mTitle = charSequence;
            this.mSubtitle = charSequence2;
            this.mDescription = charSequence3;
            this.mNegativeButtonText = charSequence4;
            this.mIsConfirmationRequired = z;
            this.mIsDeviceCredentialAllowed = z2;
            this.mAllowedAuthenticators = i;
        }

        public CharSequence getTitle() {
            return this.mTitle;
        }

        public CharSequence getSubtitle() {
            return this.mSubtitle;
        }

        public CharSequence getDescription() {
            return this.mDescription;
        }

        public CharSequence getNegativeButtonText() {
            CharSequence charSequence = this.mNegativeButtonText;
            return charSequence != null ? charSequence : _UrlKt.FRAGMENT_ENCODE_SET;
        }

        public boolean isConfirmationRequired() {
            return this.mIsConfirmationRequired;
        }

        public boolean isDeviceCredentialAllowed() {
            return this.mIsDeviceCredentialAllowed;
        }

        public int getAllowedAuthenticators() {
            return this.mAllowedAuthenticators;
        }
    }

    public BiometricPrompt(FragmentActivity fragmentActivity, Executor executor, AuthenticationCallback authenticationCallback) {
        if (fragmentActivity == null) {
            throw new IllegalArgumentException("FragmentActivity must not be null.");
        }
        if (executor == null) {
            throw new IllegalArgumentException("Executor must not be null.");
        }
        if (authenticationCallback == null) {
            throw new IllegalArgumentException("AuthenticationCallback must not be null.");
        }
        init(fragmentActivity.getSupportFragmentManager(), getViewModel(fragmentActivity), executor, authenticationCallback);
    }

    private void init(FragmentManager fragmentManager, BiometricViewModel biometricViewModel, Executor executor, AuthenticationCallback authenticationCallback) {
        this.mClientFragmentManager = fragmentManager;
        if (biometricViewModel != null) {
            if (executor != null) {
                biometricViewModel.setClientExecutor(executor);
            }
            biometricViewModel.setClientCallback(authenticationCallback);
        }
    }

    public void authenticate(PromptInfo promptInfo, CryptoObject cryptoObject) {
        if (promptInfo == null) {
            throw new IllegalArgumentException("PromptInfo cannot be null.");
        }
        if (cryptoObject == null) {
            throw new IllegalArgumentException("CryptoObject cannot be null.");
        }
        int consolidatedAuthenticators = AuthenticatorUtils.getConsolidatedAuthenticators(promptInfo, cryptoObject);
        if (AuthenticatorUtils.isWeakBiometricAllowed(consolidatedAuthenticators)) {
            throw new IllegalArgumentException("Crypto-based authentication is not supported for Class 2 (Weak) biometrics.");
        }
        if (Build.VERSION.SDK_INT < 30 && AuthenticatorUtils.isDeviceCredentialAllowed(consolidatedAuthenticators)) {
            throw new IllegalArgumentException("Crypto-based authentication is not supported for device credential prior to API 30.");
        }
        authenticateInternal(promptInfo, cryptoObject);
    }

    public void authenticate(PromptInfo promptInfo) {
        if (promptInfo == null) {
            throw new IllegalArgumentException("PromptInfo cannot be null.");
        }
        authenticateInternal(promptInfo, null);
    }

    private void authenticateInternal(PromptInfo promptInfo, CryptoObject cryptoObject) {
        FragmentManager fragmentManager = this.mClientFragmentManager;
        if (fragmentManager == null) {
            Log.e("BiometricPromptCompat", "Unable to start authentication. Client fragment manager was null.");
        } else if (fragmentManager.isStateSaved()) {
            Log.e("BiometricPromptCompat", "Unable to start authentication. Called after onSaveInstanceState().");
        } else {
            findOrAddBiometricFragment(this.mClientFragmentManager).authenticate(promptInfo, cryptoObject);
        }
    }

    private static BiometricViewModel getViewModel(FragmentActivity fragmentActivity) {
        if (fragmentActivity != null) {
            return (BiometricViewModel) new ViewModelProvider(fragmentActivity).get(BiometricViewModel.class);
        }
        return null;
    }

    private static BiometricFragment findBiometricFragment(FragmentManager fragmentManager) {
        return (BiometricFragment) fragmentManager.findFragmentByTag("androidx.biometric.BiometricFragment");
    }

    private static BiometricFragment findOrAddBiometricFragment(FragmentManager fragmentManager) {
        BiometricFragment biometricFragmentFindBiometricFragment = findBiometricFragment(fragmentManager);
        if (biometricFragmentFindBiometricFragment != null) {
            return biometricFragmentFindBiometricFragment;
        }
        BiometricFragment biometricFragmentNewInstance = BiometricFragment.newInstance();
        fragmentManager.beginTransaction().add(biometricFragmentNewInstance, "androidx.biometric.BiometricFragment").commitAllowingStateLoss();
        fragmentManager.executePendingTransactions();
        return biometricFragmentNewInstance;
    }
}
