package com.yandex.runtime.sensors.internal;

import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.yandex.runtime.Runtime;

/* JADX INFO: loaded from: classes5.dex */
public class LastKnownLocation {
    private static final String TAG = "com.yandex.runtime.sensors.internal.LastKnownLocation";

    public static void getLastKnownLocation(NativeLocationSubscriptionWrapper nativeLocationSubscriptionWrapper) {
        Location lastKnownLocation;
        LocationManager locationManager = (LocationManager) Runtime.getApplicationContext().getSystemService("location");
        if (locationManager == null) {
            throw new RuntimeException("Can't get LocationManager. Missed permission?");
        }
        try {
            lastKnownLocation = locationManager.getLastKnownLocation("gps");
        } catch (SecurityException e) {
            Log.e(TAG, "failed to get last known location: " + e.toString());
        }
        if (lastKnownLocation != null) {
            nativeLocationSubscriptionWrapper.onLocationReceived(lastKnownLocation);
            return;
        }
        Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
        if (lastKnownLocation2 != null) {
            nativeLocationSubscriptionWrapper.onLocationReceived(lastKnownLocation2);
            return;
        }
        nativeLocationSubscriptionWrapper.onStatusReceived(false);
    }
}
