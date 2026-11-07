package org.chromium.net.impl;

import android.content.Context;
import android.net.http.HttpEngine;
import android.os.Build;
import android.os.ext.SdkExtensions;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetProvider;
import org.chromium.net.ExperimentalCronetEngine;

/* JADX INFO: loaded from: classes5.dex */
public class HttpEngineNativeProvider extends CronetProvider {
    public HttpEngineNativeProvider(Context context) {
        super(context);
    }

    @Override // org.chromium.net.CronetProvider
    public CronetEngine.Builder createBuilder() {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("HttpEngineNativeProvider#createBuilder");
        try {
            HttpEngineNativeProvider$$ExternalSyntheticApiModelOutline1.m952m();
            ExperimentalCronetEngine.Builder builder = new ExperimentalCronetEngine.Builder(new AndroidHttpEngineBuilderWrapper(HttpEngineNativeProvider$$ExternalSyntheticApiModelOutline0.m951m(this.mContext)));
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
            return builder;
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // org.chromium.net.CronetProvider
    public String getName() {
        return "HttpEngine-Native-Provider";
    }

    @Override // org.chromium.net.CronetProvider
    public String getVersion() {
        return HttpEngine.getVersionString();
    }

    @Override // org.chromium.net.CronetProvider
    public boolean isEnabled() {
        return isHttpEngineAvailable();
    }

    public static boolean isHttpEngineAvailable() {
        return Build.VERSION.SDK_INT >= 30 && SdkExtensions.getExtensionVersion(31) >= 7;
    }
}
