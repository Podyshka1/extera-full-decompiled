package org.chromium.net;

import android.net.TrafficStats;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ThreadStatsUid {
    private static final Method sClearThreadStatsUid;
    private static final Method sSetThreadStatsUid;

    static {
        try {
            sSetThreadStatsUid = TrafficStats.class.getMethod("setThreadStatsUid", Integer.TYPE);
            sClearThreadStatsUid = TrafficStats.class.getMethod("clearThreadStatsUid", null);
        } catch (NoSuchMethodException | SecurityException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Unable to get TrafficStats methods", e);
        }
    }

    public static void set(int i) {
        try {
            sSetThreadStatsUid.invoke(null, Integer.valueOf(i));
        } catch (IllegalAccessException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("TrafficStats.setThreadStatsUid failed", e);
        } catch (InvocationTargetException e2) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("TrafficStats.setThreadStatsUid failed", e2);
        }
    }

    public static void clear() {
        try {
            sClearThreadStatsUid.invoke(null, null);
        } catch (IllegalAccessException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("TrafficStats.clearThreadStatsUid failed", e);
        } catch (InvocationTargetException e2) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("TrafficStats.clearThreadStatsUid failed", e2);
        }
    }
}
