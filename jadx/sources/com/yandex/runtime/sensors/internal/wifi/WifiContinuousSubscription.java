package com.yandex.runtime.sensors.internal.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.Runtime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class WifiContinuousSubscription extends BroadcastReceiver {
    private NativeObject nativeObject;
    private final String TAG = getClass().getCanonicalName();
    private boolean isRegistered = false;
    private WifiManager wifiManager = (WifiManager) Runtime.getApplicationContext().getSystemService("wifi");

    private static native void continuousScanResultsAvailable(NativeObject nativeObject, List<WifiPointInfo> list);

    public WifiContinuousSubscription(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
        start();
    }

    public void stop() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.wifi.WifiContinuousSubscription.1
            @Override // java.lang.Runnable
            public void run() {
                if (WifiContinuousSubscription.this.isRegistered) {
                    try {
                        try {
                            Runtime.getApplicationContext().unregisterReceiver(WifiContinuousSubscription.this);
                        } catch (Exception e) {
                            Log.e(WifiContinuousSubscription.this.TAG, "Unregister Receiver: " + e.toString());
                        }
                    } finally {
                        WifiContinuousSubscription.this.isRegistered = false;
                    }
                }
            }
        });
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getBooleanExtra("resultsUpdated", false)) {
            scanSuccess();
        }
    }

    private void start() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.wifi.WifiContinuousSubscription.2
            @Override // java.lang.Runnable
            public void run() {
                Runtime.getApplicationContext().registerReceiver(WifiContinuousSubscription.this, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
                WifiContinuousSubscription.this.isRegistered = true;
            }
        });
    }

    private void scanSuccess() {
        try {
            List<ScanResult> scanResults = this.wifiManager.getScanResults();
            if (scanResults != null) {
                ArrayList arrayList = new ArrayList(scanResults.size());
                Iterator<ScanResult> it = scanResults.iterator();
                while (it.hasNext()) {
                    arrayList.add(WifiUtils.convert(it.next()));
                }
                continuousScanResultsAvailable(this.nativeObject, arrayList);
            }
        } catch (SecurityException e) {
            Log.e(this.TAG, "onReceive: SecurityException: " + e.toString());
        }
    }
}
