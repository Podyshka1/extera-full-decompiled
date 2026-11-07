package androidx.core.app;

import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public abstract class BundleCompat {
    @Deprecated
    public static IBinder getBinder(Bundle bundle, String str) {
        return bundle.getBinder(str);
    }

    @Deprecated
    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        bundle.putBinder(str, iBinder);
    }
}
