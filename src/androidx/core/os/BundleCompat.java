package androidx.core.os;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BundleCompat {
    public static Object getParcelable(Bundle bundle, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.getParcelable(bundle, str, cls);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (cls.isInstance(parcelable)) {
            return parcelable;
        }
        return null;
    }

    static class Api33Impl {
        static Object getParcelable(Bundle bundle, String str, Class cls) {
            return bundle.getParcelable(str, cls);
        }
    }
}
