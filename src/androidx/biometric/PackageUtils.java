package androidx.biometric;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes3.dex */
abstract class PackageUtils {
    public static boolean hasSystemFeatureFingerprint(Context context) {
        return (context == null || context.getPackageManager() == null || !Api23Impl.hasSystemFeatureFingerprint(context.getPackageManager())) ? false : true;
    }

    public static class Api23Impl {
        public static boolean hasSystemFeatureFingerprint(PackageManager packageManager) {
            return packageManager.hasSystemFeature("android.hardware.fingerprint");
        }
    }
}
