package androidx.privacysandbox.ads.adservices.internal;

import android.content.Context;
import android.util.Log;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BackCompatManager {
    public static final BackCompatManager INSTANCE = new BackCompatManager();

    private BackCompatManager() {
    }

    public final Object getManager(Context context, String tag, Function1 manager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(manager, "manager");
        try {
            return manager.invoke(context);
        } catch (NoClassDefFoundError unused) {
            Log.d(tag, "Unable to find adservices code, check manifest for uses-library tag, versionS=" + AdServicesInfo.INSTANCE.extServicesVersionS());
            return null;
        }
    }
}
