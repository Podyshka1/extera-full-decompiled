package com.yandex.mapkit.location.internal;

import com.yandex.mapkit.location.LocationListener;
import com.yandex.mapkit.location.LocationManager;
import com.yandex.mapkit.location.SubscriptionSettings;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class LocationManagerBinding implements LocationManager {
    protected Subscription<LocationListener> locationListenerSubscription = new Subscription<LocationListener>() { // from class: com.yandex.mapkit.location.internal.LocationManagerBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(LocationListener locationListener) {
            return LocationManagerBinding.createLocationListener(locationListener);
        }
    };
    private final NativeObject nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createLocationListener(LocationListener locationListener);

    @Override // com.yandex.mapkit.location.LocationManager
    public native void requestSingleUpdate(LocationListener locationListener);

    @Override // com.yandex.mapkit.location.LocationManager
    public native void resume();

    @Override // com.yandex.mapkit.location.LocationManager
    public native void subscribeForLocationUpdates(SubscriptionSettings subscriptionSettings, LocationListener locationListener);

    @Override // com.yandex.mapkit.location.LocationManager
    public native void suspend();

    @Override // com.yandex.mapkit.location.LocationManager
    public native void unsubscribe(LocationListener locationListener);

    public LocationManagerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
