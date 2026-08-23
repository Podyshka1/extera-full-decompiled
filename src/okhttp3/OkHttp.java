package okhttp3;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._InternalVersionKt;
import okhttp3.internal.platform.PlatformRegistry;

/* JADX INFO: loaded from: classes5.dex */
public final class OkHttp {
    public static final OkHttp INSTANCE = new OkHttp();
    public static final String VERSION = _InternalVersionKt.CONST_VERSION;

    private OkHttp() {
    }

    public final void initialize(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        PlatformRegistry platformRegistry = PlatformRegistry.INSTANCE;
        if (platformRegistry.getApplicationContext() == null) {
            platformRegistry.setApplicationContext(applicationContext.getApplicationContext());
        }
    }
}
