package androidx.biometric;

import android.app.KeyguardManager;
import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
abstract class KeyguardUtils {
    public static KeyguardManager getKeyguardManager(Context context) {
        return Api23Impl.getKeyguardManager(context);
    }

    public static boolean isDeviceSecuredWithCredential(Context context) {
        KeyguardManager keyguardManager = getKeyguardManager(context);
        if (keyguardManager == null) {
            return false;
        }
        return Api23Impl.isDeviceSecure(keyguardManager);
    }

    public static class Api23Impl {
        public static KeyguardManager getKeyguardManager(Context context) {
            return (KeyguardManager) context.getSystemService(KeyguardManager.class);
        }

        public static boolean isDeviceSecure(KeyguardManager keyguardManager) {
            return keyguardManager.isDeviceSecure();
        }
    }
}
