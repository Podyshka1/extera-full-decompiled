package com.yandex.runtime.sensors.internal.wifi;

import android.net.wifi.ScanResult;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public class WifiUtils {
    public static WifiPointInfo convert(ScanResult scanResult) {
        return new WifiPointInfo(scanResult.BSSID, scanResult.SSID, scanResult.level, eventMicrosToTimestampMilliseconds(scanResult.timestamp));
    }

    private static long eventMicrosToTimestampMilliseconds(long j) {
        return (System.currentTimeMillis() - SystemClock.elapsedRealtime()) + (j / 1000);
    }
}
