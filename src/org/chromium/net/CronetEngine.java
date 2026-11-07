package org.chromium.net;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.CronetProvider;
import org.chromium.net.UrlRequest;
import org.chromium.net.impl.CronetLogger;
import org.chromium.net.impl.CronetLoggerFactory;
import org.json.JSONObject;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetEngine {
    public abstract UrlRequest.Builder newUrlRequestBuilder(String str, UrlRequest.Callback callback, Executor executor);

    public static class Builder {
        protected final ICronetEngineBuilder mBuilderDelegate;
        private final List<Object> mExperimentalOptionsPatches;
        protected JSONObject mParsedExperimentalOptions;

        public Builder(Context context) {
            this(createBuilderDelegate(context));
        }

        public Builder(ICronetEngineBuilder iCronetEngineBuilder) {
            this.mExperimentalOptionsPatches = new ArrayList();
            this.mBuilderDelegate = iCronetEngineBuilder;
        }

        public ExperimentalCronetEngine buildExperimental() {
            int implApiLevel = getImplApiLevel(this.mBuilderDelegate);
            if (implApiLevel != -1 && implApiLevel < getMaximumApiLevel()) {
                Log.w("CronetEngine.Builder", "The implementation version is lower than the API version. Calls to methods added in API " + (implApiLevel + 1) + " and newer will likely have no effect.");
            }
            maybeSetExperimentalOptions();
            return this.mBuilderDelegate.build();
        }

        private void maybeSetExperimentalOptions() {
            JSONObject jSONObjectApplyJsonPatches = ExperimentalOptionsTranslator.applyJsonPatches(this.mParsedExperimentalOptions, this.mExperimentalOptionsPatches);
            if (jSONObjectApplyJsonPatches != null) {
                this.mBuilderDelegate.setExperimentalOptions(jSONObjectApplyJsonPatches.toString());
            }
        }

        public CronetEngine build() {
            return buildExperimental();
        }

        private static ICronetEngineBuilder createBuilderDelegate(Context context) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetEngine#createBuilderDelegate");
            try {
                long jUptimeMillis = SystemClock.uptimeMillis();
                CronetProvider.ProviderInfo providerInfo = getEnabledCronetProviders(context, new ArrayList(CronetProvider.getAllProviderInfos(context))).get(0);
                CronetLogger cronetLoggerCreateLogger = CronetLoggerFactory.createLogger(context, providerInfo.logSource);
                CronetLogger.CronetEngineBuilderInitializedInfo cronetEngineBuilderInitializedInfo = new CronetLogger.CronetEngineBuilderInitializedInfo();
                try {
                    cronetEngineBuilderInitializedInfo.creationSuccessful = Boolean.FALSE;
                    cronetEngineBuilderInitializedInfo.author = CronetLogger.CronetEngineBuilderInitializedInfo.Author.API;
                    cronetEngineBuilderInitializedInfo.source = providerInfo.logSource;
                    cronetEngineBuilderInitializedInfo.uid = Process.myUid();
                    cronetEngineBuilderInitializedInfo.apiVersion = new CronetLogger.CronetVersion(ApiVersion.getCronetVersion());
                    if (Log.isLoggable("CronetEngine.Builder", 3)) {
                        Log.d("CronetEngine.Builder", String.format("Using '%s' provider for creating CronetEngine.Builder.", providerInfo.provider));
                    }
                    ICronetEngineBuilder iCronetEngineBuilder = providerInfo.provider.createBuilder().mBuilderDelegate;
                    String implCronetVersion = getImplCronetVersion(iCronetEngineBuilder);
                    if (implCronetVersion != null) {
                        cronetEngineBuilderInitializedInfo.implVersion = new CronetLogger.CronetVersion(implCronetVersion);
                    }
                    cronetEngineBuilderInitializedInfo.cronetInitializationRef = iCronetEngineBuilder.getLogCronetInitializationRef();
                    cronetEngineBuilderInitializedInfo.creationSuccessful = Boolean.TRUE;
                    cronetEngineBuilderInitializedInfo.engineBuilderCreatedLatencyMillis = (int) (SystemClock.uptimeMillis() - jUptimeMillis);
                    cronetLoggerCreateLogger.logCronetEngineBuilderInitializedInfo(cronetEngineBuilderInitializedInfo);
                    if (scopedSysTraceEventScoped != null) {
                        scopedSysTraceEventScoped.close();
                    }
                    return iCronetEngineBuilder;
                } catch (Throwable th) {
                    cronetEngineBuilderInitializedInfo.engineBuilderCreatedLatencyMillis = (int) (SystemClock.uptimeMillis() - jUptimeMillis);
                    cronetLoggerCreateLogger.logCronetEngineBuilderInitializedInfo(cronetEngineBuilderInitializedInfo);
                    throw th;
                }
            } catch (Throwable th2) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }

        public static List<CronetProvider.ProviderInfo> getEnabledCronetProviders(Context context, List<CronetProvider.ProviderInfo> list) {
            if (list.isEmpty()) {
                GlShader$$ExternalSyntheticBUOutline1.m1109m("Unable to find any Cronet provider. Have you included all necessary jars?");
                return null;
            }
            Iterator<CronetProvider.ProviderInfo> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().provider.isEnabled()) {
                    it.remove();
                }
            }
            if (list.isEmpty()) {
                GlShader$$ExternalSyntheticBUOutline1.m1109m("All available Cronet providers are disabled. A provider should be enabled before it can be used.");
                return null;
            }
            Collections.sort(list, new Comparator<CronetProvider.ProviderInfo>() { // from class: org.chromium.net.CronetEngine.Builder.1
                @Override // java.util.Comparator
                public int compare(CronetProvider.ProviderInfo providerInfo, CronetProvider.ProviderInfo providerInfo2) {
                    if ("Fallback-Cronet-Provider".equals(providerInfo.provider.getName())) {
                        return 1;
                    }
                    if ("Fallback-Cronet-Provider".equals(providerInfo2.provider.getName())) {
                        return -1;
                    }
                    return -Builder.compareVersions(providerInfo.provider.getVersion(), providerInfo2.provider.getVersion());
                }
            });
            return list;
        }

        public static int compareVersions(String str, String str2) {
            if (str == null || str2 == null) {
                f$$ExternalSyntheticBUOutline1.m215m("The input values cannot be null");
                return 0;
            }
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            for (int i = 0; i < strArrSplit.length && i < strArrSplit2.length; i++) {
                try {
                    int i2 = Integer.parseInt(strArrSplit[i]);
                    int i3 = Integer.parseInt(strArrSplit2[i]);
                    if (i2 != i3) {
                        return Integer.signum(i2 - i3);
                    }
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("Unable to convert version segments into integers: " + strArrSplit[i] + " & " + strArrSplit2[i], e);
                }
            }
            return Integer.signum(strArrSplit.length - strArrSplit2.length);
        }

        private int getMaximumApiLevel() {
            return ApiVersion.getMaximumAvailableApiLevel();
        }

        private static Method getImplVersionMethod(ICronetEngineBuilder iCronetEngineBuilder, String str) {
            try {
                return iCronetEngineBuilder.getClass().getClassLoader().loadClass("org.chromium.net.impl.ImplVersion").getMethod(str, null);
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
                return null;
            }
        }

        private static int getImplApiLevel(ICronetEngineBuilder iCronetEngineBuilder) {
            try {
                Method implVersionMethod = getImplVersionMethod(iCronetEngineBuilder, "getApiLevel");
                if (implVersionMethod == null) {
                    return -1;
                }
                return ((Integer) implVersionMethod.invoke(null, null)).intValue();
            } catch (ReflectiveOperationException e) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("Failed to retrieve Cronet impl API level", e);
                return 0;
            }
        }

        private static String getImplCronetVersion(ICronetEngineBuilder iCronetEngineBuilder) {
            try {
                Method implVersionMethod = getImplVersionMethod(iCronetEngineBuilder, "getCronetVersion");
                if (implVersionMethod == null) {
                    return null;
                }
                return (String) implVersionMethod.invoke(null, null);
            } catch (ReflectiveOperationException e) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("Failed to retrieve Cronet impl version", e);
                return null;
            }
        }
    }
}
