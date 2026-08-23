package org.telegram.messenger.support.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FingerprintManagerCompatApi23 {
    private static FingerprintManager getFingerprintManager(Context context) {
        return (FingerprintManager) context.getSystemService("fingerprint");
    }

    public static boolean hasEnrolledFingerprints(Context context) {
        try {
            FingerprintManager fingerprintManager = getFingerprintManager(context);
            if (fingerprintManager == null) {
                return false;
            }
            return fingerprintManager.hasEnrolledFingerprints();
        } catch (Exception e) {
            FileLog.m1136e(e);
            return false;
        }
    }

    public static boolean isHardwareDetected(Context context) {
        try {
            FingerprintManager fingerprintManager = getFingerprintManager(context);
            if (fingerprintManager == null) {
                return false;
            }
            return fingerprintManager.isHardwareDetected();
        } catch (Exception e) {
            FileLog.m1136e(e);
            return false;
        }
    }
}
