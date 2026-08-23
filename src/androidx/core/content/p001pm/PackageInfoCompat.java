package androidx.core.content.p001pm;

import android.content.pm.PackageInfo;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PackageInfoCompat {
    public static long getLongVersionCode(PackageInfo packageInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getLongVersionCode(packageInfo);
        }
        return packageInfo.versionCode;
    }

    private static class Api28Impl {
        static long getLongVersionCode(PackageInfo packageInfo) {
            return packageInfo.getLongVersionCode();
        }
    }
}
