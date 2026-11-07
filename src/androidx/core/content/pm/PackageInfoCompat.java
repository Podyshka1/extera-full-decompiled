package androidx.core.content.pm;

import android.content.pm.PackageInfo;
import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PackageInfoCompat {
    public static long getLongVersionCode(PackageInfo packageInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getLongVersionCode(packageInfo);
        }
        return packageInfo.versionCode;
    }

    public static class Api28Impl {
        public static long getLongVersionCode(PackageInfo packageInfo) {
            return packageInfo.getLongVersionCode();
        }
    }
}
