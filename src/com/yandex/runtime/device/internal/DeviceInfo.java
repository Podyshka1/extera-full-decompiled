package com.yandex.runtime.device.internal;

import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.yandex.runtime.Runtime;

/* JADX INFO: loaded from: classes.dex */
public class DeviceInfo {
    public static float pixelsPerPoint() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) Runtime.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.density;
    }

    public static String platformVersion() {
        return Build.VERSION.RELEASE;
    }
}
