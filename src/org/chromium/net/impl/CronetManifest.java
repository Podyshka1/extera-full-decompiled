package org.chromium.net.impl;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.impl.CronetLogger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetManifest {

    @SuppressLint({"StaticFieldLeak"})
    private static Context sLastContext;
    private static final Object sLock = new Object();
    private static Bundle sMetaData;

    public static boolean isAppOptedInForTelemetry(Context context, CronetLogger.CronetSource cronetSource) {
        return getMetaData(context).getBoolean("android.net.http.EnableTelemetry", cronetSource == CronetLogger.CronetSource.CRONET_SOURCE_PLATFORM || cronetSource == CronetLogger.CronetSource.CRONET_SOURCE_PLAY_SERVICES);
    }

    public static boolean shouldReadHttpFlags(Context context) {
        return getMetaData(context).getBoolean("android.net.http.ReadHttpFlags", true);
    }

    private static Bundle getMetaData(Context context) {
        Bundle bundle;
        ServiceInfo serviceInfo;
        Bundle bundle2;
        Context applicationContext = context.getApplicationContext();
        synchronized (sLock) {
            if (applicationContext != sLastContext) {
                ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetManifest#getMetaData fetching info");
                try {
                    try {
                        serviceInfo = applicationContext.getPackageManager().getServiceInfo(new ComponentName(applicationContext, "android.net.http.MetaDataHolder"), 787072);
                    } finally {
                    }
                } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                    serviceInfo = null;
                }
                if (serviceInfo == null || (bundle2 = serviceInfo.metaData) == null) {
                    bundle2 = new Bundle();
                }
                sMetaData = bundle2;
                sLastContext = applicationContext;
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            }
            bundle = sMetaData;
        }
        return bundle;
    }
}
