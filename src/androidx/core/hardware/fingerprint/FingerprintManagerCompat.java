package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.os.Handler;
import androidx.core.os.CancellationSignal;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class FingerprintManagerCompat {

    public static abstract class AuthenticationCallback {
    }

    @Deprecated
    public void authenticate(CryptoObject cryptoObject, int i, CancellationSignal cancellationSignal, AuthenticationCallback authenticationCallback, Handler handler) {
    }

    public boolean hasEnrolledFingerprints() {
        return false;
    }

    public boolean isHardwareDetected() {
        return false;
    }

    public static FingerprintManagerCompat from(Context context) {
        return new FingerprintManagerCompat();
    }

    private FingerprintManagerCompat() {
    }

    public static class CryptoObject {
        private final Cipher mCipher;
        private final Mac mMac;
        private final Signature mSignature;

        public CryptoObject(Signature signature) {
            this.mSignature = signature;
            this.mCipher = null;
            this.mMac = null;
        }

        public CryptoObject(Cipher cipher) {
            this.mCipher = cipher;
            this.mSignature = null;
            this.mMac = null;
        }

        public CryptoObject(Mac mac) {
            this.mMac = mac;
            this.mCipher = null;
            this.mSignature = null;
        }
    }
}
