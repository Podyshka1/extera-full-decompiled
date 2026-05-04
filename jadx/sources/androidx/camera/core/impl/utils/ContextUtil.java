package androidx.camera.core.impl.utils;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ContextUtil {
    private static final Object CACHE_LOCK = new Object();
    private static final Map CACHED_CONTEXTS = new HashMap();

    public static int getDefaultDeviceId() {
        return 0;
    }

    public static Context getPersistentApplicationContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        String applicationContextHashKey = getApplicationContextHashKey(context);
        synchronized (CACHE_LOCK) {
            try {
                Context cachedContext = getCachedContext(applicationContextHashKey);
                if (cachedContext != null) {
                    return cachedContext;
                }
                int i = Build.VERSION.SDK_INT;
                if (i >= 34) {
                    applicationContext = Api34Impl.createDeviceContext(applicationContext, Api34Impl.getDeviceId(context));
                }
                if (i >= 30) {
                    String attributionTag = Api30Impl.getAttributionTag(context);
                    if (!Objects.equals(attributionTag, Api30Impl.getAttributionTag(applicationContext))) {
                        applicationContext = Api30Impl.createAttributionContext(applicationContext, attributionTag);
                    }
                }
                CACHED_CONTEXTS.put(applicationContextHashKey, new WeakReference(applicationContext));
                return applicationContext;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Context getCachedContext(String str) {
        Map map = CACHED_CONTEXTS;
        WeakReference weakReference = (WeakReference) map.get(str);
        if (weakReference == null) {
            return null;
        }
        Context context = (Context) weakReference.get();
        if (context != null) {
            return context;
        }
        map.remove(str);
        return null;
    }

    private static String getApplicationContextHashKey(Context context) {
        return String.format("%d-%d-%s", Integer.valueOf(context.getApplicationContext().hashCode()), Integer.valueOf(getDeviceId(context)), Build.VERSION.SDK_INT >= 30 ? Api30Impl.getAttributionTag(context) : null);
    }

    public static Application getApplication(Context context) {
        for (Context applicationContext = context.getApplicationContext(); applicationContext instanceof ContextWrapper; applicationContext = ((ContextWrapper) applicationContext).getBaseContext()) {
            if (applicationContext instanceof Application) {
                return (Application) applicationContext;
            }
        }
        return null;
    }

    public static int getDeviceId(Context context) {
        return Build.VERSION.SDK_INT >= 34 ? Api34Impl.getDeviceId(context) : getDefaultDeviceId();
    }

    private static class Api30Impl {
        static Context createAttributionContext(Context context, String str) {
            return context.createAttributionContext(str);
        }

        static String getAttributionTag(Context context) {
            return context.getAttributionTag();
        }
    }

    private static class Api34Impl {
        static Context createDeviceContext(Context context, int i) {
            return context.createDeviceContext(i);
        }

        static int getDeviceId(Context context) {
            return context.getDeviceId();
        }
    }
}
