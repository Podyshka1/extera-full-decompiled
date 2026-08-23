package com.yandex.runtime.sensors.internal.wifi;

import android.net.wifi.WifiManager;
import com.yandex.runtime.Runtime;

/* JADX INFO: loaded from: classes5.dex */
public class WifiScanner {
    public static boolean activeScan() {
        return ((WifiManager) Runtime.getApplicationContext().getSystemService("wifi")).startScan();
    }
}
