package okhttp3.internal.platform;

import android.content.Context;
import android.os.Build;
import okhttp3.internal.platform.android.AndroidLog;

/* JADX INFO: loaded from: classes.dex */
public final class PlatformRegistry {
    public static final PlatformRegistry INSTANCE = new PlatformRegistry();

    public final boolean isAndroid() {
        return true;
    }

    private PlatformRegistry() {
    }

    public final Platform findPlatform() {
        AndroidLog.INSTANCE.enable();
        Platform platformBuildIfSupported = Android10Platform.Companion.buildIfSupported();
        if (platformBuildIfSupported == null) {
            platformBuildIfSupported = AndroidPlatform.Companion.buildIfSupported();
        }
        if (platformBuildIfSupported != null) {
            return platformBuildIfSupported;
        }
        throw new IllegalStateException("Expected Android API level 21+ but was " + Build.VERSION.SDK_INT);
    }

    public final Context getApplicationContext() {
        Object obj = Platform.Companion.get();
        ContextAwarePlatform contextAwarePlatform = obj instanceof ContextAwarePlatform ? (ContextAwarePlatform) obj : null;
        if (contextAwarePlatform != null) {
            return contextAwarePlatform.getApplicationContext();
        }
        return null;
    }

    public final void setApplicationContext(Context context) {
        Object obj = Platform.Companion.get();
        ContextAwarePlatform contextAwarePlatform = obj instanceof ContextAwarePlatform ? (ContextAwarePlatform) obj : null;
        if (contextAwarePlatform != null) {
            contextAwarePlatform.setApplicationContext(context);
        }
    }
}
