package org.chromium.net.impl;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import org.chromium.net.impl.CronetLogger;
import org.chromium.net.telemetry.CronetLoggerImpl;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetLoggerFactory {
    private static final String TAG = "CronetLoggerFactory";
    private static CronetLogger sLogger;

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a A[Catch: all -> 0x001c, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000d, B:10:0x0013, B:15:0x001f, B:16:0x0026, B:18:0x002a, B:19:0x0031, B:20:0x0033), top: B:26:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CronetLogger createLogger(Context context, CronetLogger.CronetSource cronetSource) {
        CronetLogger cronetLogger;
        synchronized (CronetLoggerFactory.class) {
            if (sLogger == null && Build.VERSION.SDK_INT >= 30 && CronetManifest.isAppOptedInForTelemetry(context, cronetSource)) {
                try {
                    sLogger = new CronetLoggerImpl(1);
                } catch (Exception e) {
                    Log.e(TAG, "Exception creating an instance of CronetLoggerImpl", e);
                }
                if (sLogger == null) {
                }
                cronetLogger = sLogger;
            } else {
                if (sLogger == null) {
                    sLogger = new NoOpLogger();
                }
                cronetLogger = sLogger;
            }
        }
        return cronetLogger;
    }
}
