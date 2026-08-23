package com.yandex.mapkit.user_location.internal;

import android.graphics.PointF;
import com.yandex.mapkit.location.LocationViewSource;
import com.yandex.mapkit.map.CameraPosition;
import com.yandex.mapkit.user_location.UserLocationLayer;
import com.yandex.mapkit.user_location.UserLocationObjectListener;
import com.yandex.mapkit.user_location.UserLocationTapListener;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class UserLocationLayerBinding implements UserLocationLayer {
    private final NativeObject nativeObject;
    protected Subscription<UserLocationObjectListener> userLocationObjectListenerSubscription = new Subscription<UserLocationObjectListener>() { // from class: com.yandex.mapkit.user_location.internal.UserLocationLayerBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(UserLocationObjectListener userLocationObjectListener) {
            return UserLocationLayerBinding.createUserLocationObjectListener(userLocationObjectListener);
        }
    };
    protected Subscription<UserLocationTapListener> userLocationTapListenerSubscription = new Subscription<UserLocationTapListener>() { // from class: com.yandex.mapkit.user_location.internal.UserLocationLayerBinding.2
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(UserLocationTapListener userLocationTapListener) {
            return UserLocationLayerBinding.createUserLocationTapListener(userLocationTapListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createUserLocationObjectListener(UserLocationObjectListener userLocationObjectListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createUserLocationTapListener(UserLocationTapListener userLocationTapListener);

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native CameraPosition cameraPosition();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native boolean isAnchorEnabled();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native boolean isAutoZoomEnabled();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native boolean isHeadingModeActive();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native boolean isVisible();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void resetAnchor();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setAnchor(PointF pointF, PointF pointF2);

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setAutoZoomEnabled(boolean z);

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setDefaultSource();

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setHeadingModeActive(boolean z);

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setObjectListener(UserLocationObjectListener userLocationObjectListener);

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setSource(LocationViewSource locationViewSource);

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setTapListener(UserLocationTapListener userLocationTapListener);

    @Override // com.yandex.mapkit.user_location.UserLocationLayer
    public native void setVisible(boolean z);

    public UserLocationLayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
