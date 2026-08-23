package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.map.Cluster;
import com.yandex.mapkit.map.ClusterTapListener;
import com.yandex.mapkit.map.PlacemarkMapObject;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ClusterBinding implements Cluster {
    protected Subscription<ClusterTapListener> clusterTapListenerSubscription = new Subscription<ClusterTapListener>() { // from class: com.yandex.mapkit.map.internal.ClusterBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(ClusterTapListener clusterTapListener) {
            return ClusterBinding.createClusterTapListener(clusterTapListener);
        }
    };
    private final NativeObject nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createClusterTapListener(ClusterTapListener clusterTapListener);

    @Override // com.yandex.mapkit.map.Cluster
    public native void addClusterTapListener(ClusterTapListener clusterTapListener);

    @Override // com.yandex.mapkit.map.Cluster
    public native PlacemarkMapObject getAppearance();

    @Override // com.yandex.mapkit.map.Cluster
    public native List<PlacemarkMapObject> getPlacemarks();

    @Override // com.yandex.mapkit.map.Cluster
    public native int getSize();

    @Override // com.yandex.mapkit.map.Cluster
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.Cluster
    public native void removeClusterTapListener(ClusterTapListener clusterTapListener);

    public ClusterBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
