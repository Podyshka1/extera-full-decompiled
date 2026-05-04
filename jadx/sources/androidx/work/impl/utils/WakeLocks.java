package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Logger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WakeLocks {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WakeLocks");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }

    public static final PowerManager.WakeLock newWakeLock(Context context, String tag) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Object systemService = context.getApplicationContext().getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        String str = "WorkManager: " + tag;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) systemService).newWakeLock(1, str);
        WakeLocksHolder wakeLocksHolder = WakeLocksHolder.INSTANCE;
        synchronized (wakeLocksHolder) {
        }
        Intrinsics.checkNotNull(wakeLockNewWakeLock);
        return wakeLockNewWakeLock;
    }
}
