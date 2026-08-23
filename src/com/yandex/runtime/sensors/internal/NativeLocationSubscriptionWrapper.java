package com.yandex.runtime.sensors.internal;

import android.location.Location;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class NativeLocationSubscriptionWrapper {
    private final NativeObject nativeSubscription;

    private static native void onLocationReceived(NativeObject nativeObject, double d, double d2, boolean z, double d3, boolean z2, double d4, boolean z3, double d5, boolean z4, double d6, long j);

    private static native void onStatusReceived(NativeObject nativeObject, boolean z);

    public NativeLocationSubscriptionWrapper(NativeObject nativeObject) {
        this.nativeSubscription = nativeObject;
    }

    public void onLocationReceived(Location location) {
        onLocationReceived(this.nativeSubscription, location.getLatitude(), location.getLongitude(), location.hasAccuracy(), location.getAccuracy(), location.hasAltitude(), location.getAltitude(), location.hasSpeed(), location.getSpeed(), location.hasBearing(), location.getBearing(), TimeHelpers.locationAgeMilliseconds(location));
    }

    public void onStatusReceived(boolean z) {
        onStatusReceived(this.nativeSubscription, z);
    }
}
