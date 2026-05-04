package com.yandex.mapkit;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.yandex.mapkit.offline_cache.internal.BackgroundDownloadInitializer;
import com.yandex.mapkit.offline_cache.internal.BackgroundDownloadManager;
import com.yandex.runtime.Runtime;
import com.yandex.runtime.i18n.I18nManagerFactory;

/* JADX INFO: loaded from: classes.dex */
public final class MapKitFactory {
    private static String apiKey_ = null;
    private static boolean initialized_ = false;
    private static String locale_;
    private static String userId_;

    public static native MapKit getInstance();

    public static synchronized void initialize(Context context) {
        try {
            checkPermissions(context);
            checkApiKey();
            Runtime.init(context);
            I18nManagerFactory.setLocale(locale_);
            getInstance().setApiKey(apiKey_);
            String str = userId_;
            if (str != null && !str.isEmpty()) {
                getInstance().setUserId(userId_);
            }
            initialized_ = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void setApiKey(String str) {
        if (initialized_) {
            throw new AssertionError("setApiKey() should be called before initialize()!");
        }
        apiKey_ = str;
    }

    public static synchronized void setLocale(String str) {
        if (initialized_) {
            throw new AssertionError("setLocale() should be called before initialize()!");
        }
        locale_ = str;
    }

    public static synchronized void setUserId(String str) {
        if (initialized_) {
            throw new AssertionError("setUserId() should be called before initialize()!");
        }
        userId_ = str;
    }

    public static synchronized void initializeBackgroundDownload(Context context, BackgroundDownloadInitializer backgroundDownloadInitializer) {
        BackgroundDownloadManager.initialize(backgroundDownloadInitializer, context);
    }

    private static void checkApiKey() {
        String str = apiKey_;
        if (str == null || str.isEmpty()) {
            throw new AssertionError("You need to set the API key before using MapKit!");
        }
    }

    private static void checkPermissions(Context context) {
        checkPermission(context, "android.permission.ACCESS_NETWORK_STATE");
        checkPermission(context, "android.permission.INTERNET");
    }

    private static void checkPermission(Context context, String str) {
        if (ContextCompat.checkSelfPermission(context, str) == 0) {
            return;
        }
        throw new AssertionError(str + " permission must be granted");
    }
}
