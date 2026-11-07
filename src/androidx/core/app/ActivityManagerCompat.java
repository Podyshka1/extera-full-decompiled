package androidx.core.app;

import android.app.ActivityManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ActivityManagerCompat {
    @Deprecated
    public static boolean isLowRamDevice(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
