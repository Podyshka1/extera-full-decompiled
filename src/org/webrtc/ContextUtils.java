package org.webrtc;

import android.content.Context;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
public class ContextUtils {
    private static final String TAG = "ContextUtils";
    private static Context applicationContext;

    public static void initialize(Context context) {
        if (context == null) {
            f$$ExternalSyntheticBUOutline1.m212m("Application context cannot be null for ContextUtils.initialize.");
        } else {
            applicationContext = context;
        }
    }

    @Deprecated
    public static Context getApplicationContext() {
        return applicationContext;
    }
}
