package org.telegram.messenger.support.fingerprint;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class FingerprintManagerCompat {
    static final FingerprintManagerCompatImpl IMPL = new Api23FingerprintManagerCompatImpl();
    private Context mContext;

    private interface FingerprintManagerCompatImpl {
        boolean hasEnrolledFingerprints(Context context);

        boolean isHardwareDetected(Context context);
    }

    public static FingerprintManagerCompat from(Context context) {
        return new FingerprintManagerCompat(context);
    }

    private FingerprintManagerCompat(Context context) {
        this.mContext = context;
    }

    public boolean hasEnrolledFingerprints() {
        return IMPL.hasEnrolledFingerprints(this.mContext);
    }

    public boolean isHardwareDetected() {
        return IMPL.isHardwareDetected(this.mContext);
    }

    private static class Api23FingerprintManagerCompatImpl implements FingerprintManagerCompatImpl {
        @Override // org.telegram.messenger.support.fingerprint.FingerprintManagerCompat.FingerprintManagerCompatImpl
        public boolean hasEnrolledFingerprints(Context context) {
            return FingerprintManagerCompatApi23.hasEnrolledFingerprints(context);
        }

        @Override // org.telegram.messenger.support.fingerprint.FingerprintManagerCompat.FingerprintManagerCompatImpl
        public boolean isHardwareDetected(Context context) {
            return FingerprintManagerCompatApi23.isHardwareDetected(context);
        }
    }
}
