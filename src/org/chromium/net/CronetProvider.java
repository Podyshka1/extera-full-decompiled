package org.chromium.net;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.chromium.net.CronetEngine;
import org.chromium.net.impl.CronetLogger;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetProvider {
    private static final String TAG = "CronetProvider";
    protected final Context mContext;

    public abstract CronetEngine.Builder createBuilder();

    public abstract String getName();

    public abstract String getVersion();

    public abstract boolean isEnabled();

    public CronetProvider(Context context) {
        if (context == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Context must not be null");
            throw null;
        }
        this.mContext = context;
    }

    public String toString() {
        return "[class=" + getClass().getName() + ", name=" + getName() + ", version=" + getVersion() + ", enabled=" + isEnabled() + "]";
    }

    public static final class ProviderInfo {
        public CronetLogger.CronetSource logSource;
        public CronetProvider provider;

        public int hashCode() {
            return this.provider.hashCode();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ProviderInfo) && this.provider.equals(((ProviderInfo) obj).provider);
        }
    }

    public static List<ProviderInfo> getAllProviderInfos(Context context) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        addCronetProviderFromResourceFile(context, CronetLogger.CronetSource.CRONET_SOURCE_UNSPECIFIED, linkedHashSet);
        CronetLogger.CronetSource cronetSource = CronetLogger.CronetSource.CRONET_SOURCE_PLAY_SERVICES;
        addCronetProviderImplByClassName(context, "com.google.android.gms.net.PlayServicesCronetProvider", cronetSource, linkedHashSet, false);
        addCronetProviderImplByClassName(context, "com.google.android.gms.net.GmsCoreCronetProvider", cronetSource, linkedHashSet, false);
        addCronetProviderImplByClassName(context, "org.chromium.net.impl.NativeCronetProvider", CronetLogger.CronetSource.CRONET_SOURCE_STATICALLY_LINKED, linkedHashSet, false);
        addCronetProviderImplByClassName(context, "org.chromium.net.impl.JavaCronetProvider", CronetLogger.CronetSource.CRONET_SOURCE_FALLBACK, linkedHashSet, false);
        return Collections.unmodifiableList(new ArrayList(linkedHashSet));
    }

    private static boolean addCronetProviderImplByClassName(Context context, String str, CronetLogger.CronetSource cronetSource, Set<ProviderInfo> set, boolean z) {
        try {
            Constructor constructor = context.getClassLoader().loadClass(str).asSubclass(CronetProvider.class).getConstructor(Context.class);
            ProviderInfo providerInfo = new ProviderInfo();
            providerInfo.provider = (CronetProvider) constructor.newInstance(context);
            providerInfo.logSource = cronetSource;
            set.add(providerInfo);
            return true;
        } catch (ClassNotFoundException e) {
            logReflectiveOperationException(str, z, e);
            return false;
        } catch (IllegalAccessException e2) {
            logReflectiveOperationException(str, z, e2);
            return false;
        } catch (InstantiationException e3) {
            logReflectiveOperationException(str, z, e3);
            return false;
        } catch (NoSuchMethodException e4) {
            logReflectiveOperationException(str, z, e4);
            return false;
        } catch (InvocationTargetException e5) {
            logReflectiveOperationException(str, z, e5);
            return false;
        }
    }

    private static void logReflectiveOperationException(String str, boolean z, Exception exc) {
        if (z) {
            Log.e(TAG, "Unable to load provider class: " + str, exc);
            return;
        }
        String str2 = TAG;
        if (Log.isLoggable(str2, 3)) {
            Log.d(str2, "Tried to load " + str + " provider class but it wasn't included in the app classpath");
        }
    }

    private static boolean addCronetProviderFromResourceFile(Context context, CronetLogger.CronetSource cronetSource, Set<ProviderInfo> set) {
        int identifier = context.getResources().getIdentifier("CronetProviderClassName", "string", context.getPackageName());
        boolean z = false;
        if (identifier == 0) {
            return false;
        }
        String string = context.getString(identifier);
        if (string != null && !string.equals("com.google.android.gms.net.PlayServicesCronetProvider") && !string.equals("com.google.android.gms.net.GmsCoreCronetProvider") && !string.equals("org.chromium.net.impl.JavaCronetProvider") && !string.equals("org.chromium.net.impl.NativeCronetProvider")) {
            z = true;
            if (!addCronetProviderImplByClassName(context, string, cronetSource, set, true)) {
                Log.e(TAG, "Unable to instantiate Cronet implementation class " + string + " that is listed as in the app string resource file under CronetProviderClassName key");
            }
        }
        return z;
    }
}
