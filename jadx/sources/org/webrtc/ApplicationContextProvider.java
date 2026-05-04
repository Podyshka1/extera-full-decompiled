package org.webrtc;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public class ApplicationContextProvider {
    @CalledByNative
    public static Context getApplicationContext() {
        return ContextUtils.getApplicationContext();
    }
}
