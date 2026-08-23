package com.yandex.runtime.sensors.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.Runtime;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LocationSubscription implements LocationListener {
    private static final String LOG_TAG = "com.yandex.runtime.sensors.internal.LocationSubscription";
    private final BroadcastReceiver gpsStateReceiver;
    private final LocationManager manager;
    private final float movementThreshold;
    private final NativeLocationSubscriptionWrapper nativeSubscription;
    private final Provider provider;
    private final long reportInterval;

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    public enum Provider {
        GPS("gps"),
        NETWORK("network"),
        PASSIVE("passive");

        private String value;

        Provider(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    public LocationSubscription(Provider provider, long j, float f, NativeObject nativeObject) {
        this.provider = provider;
        this.reportInterval = j;
        this.movementThreshold = f;
        this.nativeSubscription = new NativeLocationSubscriptionWrapper(nativeObject);
        if (!isLocationListenerStatusChangedSupported()) {
            this.gpsStateReceiver = getGpsStateReceiver();
        } else {
            this.gpsStateReceiver = null;
        }
        LocationManager locationManager = (LocationManager) Runtime.getApplicationContext().getSystemService("location");
        this.manager = locationManager;
        if (locationManager == null) {
            GlShader$$ExternalSyntheticBUOutline1.m966m("Can't get LocationManager. Missed permission?");
            throw null;
        }
        start();
    }

    private BroadcastReceiver getGpsStateReceiver() {
        return new BroadcastReceiver() { // from class: com.yandex.runtime.sensors.internal.LocationSubscription.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (LocationSubscription.this.manager == null) {
                    return;
                }
                LocationSubscription.this.nativeSubscription.onStatusReceived(LocationSubscription.this.manager.isProviderEnabled("gps"));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startImpl() {
        LocationSubscription locationSubscription;
        try {
            locationSubscription = this;
            try {
                this.manager.requestLocationUpdates(this.provider.toString(), this.reportInterval, this.movementThreshold, locationSubscription);
            } catch (IllegalArgumentException e) {
                e = e;
                Log.e(LOG_TAG, "IllegalArgumentException of calling startProvider", e);
                locationSubscription.nativeSubscription.onStatusReceived(false);
            } catch (SecurityException e2) {
                e = e2;
                Log.e(LOG_TAG, "SecurityException of calling startProvider", e);
                locationSubscription.nativeSubscription.onStatusReceived(false);
            } catch (RuntimeException e3) {
                e = e3;
                Log.e(LOG_TAG, "RuntimeException of calling startProvider", e);
                locationSubscription.nativeSubscription.onStatusReceived(false);
            }
        } catch (IllegalArgumentException e4) {
            e = e4;
            locationSubscription = this;
        } catch (SecurityException e5) {
            e = e5;
            locationSubscription = this;
        } catch (RuntimeException e6) {
            e = e6;
            locationSubscription = this;
        }
    }

    public void start() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.LocationSubscription.2
            @Override // java.lang.Runnable
            public void run() {
                if (!LocationSubscription.isLocationListenerStatusChangedSupported()) {
                    Runtime.getApplicationContext().registerReceiver(LocationSubscription.this.gpsStateReceiver, new IntentFilter("android.location.PROVIDERS_CHANGED"));
                }
                LocationSubscription.this.startImpl();
            }
        });
    }

    public void stop() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.LocationSubscription.3
            @Override // java.lang.Runnable
            public void run() {
                if (!LocationSubscription.isLocationListenerStatusChangedSupported()) {
                    Runtime.getApplicationContext().unregisterReceiver(LocationSubscription.this.gpsStateReceiver);
                }
                LocationSubscription.this.manager.removeUpdates(LocationSubscription.this);
            }
        });
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        this.nativeSubscription.onLocationReceived(location);
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
        this.nativeSubscription.onStatusReceived(i == 2);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
        this.nativeSubscription.onStatusReceived(false);
    }

    public static boolean isLocationListenerStatusChangedSupported() {
        return Build.VERSION.SDK_INT < 29;
    }
}
