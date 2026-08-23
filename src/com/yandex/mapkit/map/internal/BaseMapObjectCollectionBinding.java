package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.map.BaseMapObjectCollection;
import com.yandex.mapkit.map.MapObject;
import com.yandex.mapkit.map.MapObjectCollectionListener;
import com.yandex.mapkit.map.MapObjectVisitor;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class BaseMapObjectCollectionBinding extends MapObjectBinding implements BaseMapObjectCollection {
    protected Subscription<MapObjectCollectionListener> mapObjectCollectionListenerSubscription;
    protected Subscription<MapObjectVisitor> mapObjectVisitorSubscription;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createMapObjectCollectionListener(MapObjectCollectionListener mapObjectCollectionListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createMapObjectVisitor(MapObjectVisitor mapObjectVisitor);

    @Override // com.yandex.mapkit.map.BaseMapObjectCollection
    public native void addListener(MapObjectCollectionListener mapObjectCollectionListener);

    @Override // com.yandex.mapkit.map.BaseMapObjectCollection
    public native void clear();

    @Override // com.yandex.mapkit.map.BaseMapObjectCollection
    public native void remove(MapObject mapObject);

    @Override // com.yandex.mapkit.map.BaseMapObjectCollection
    public native void removeListener(MapObjectCollectionListener mapObjectCollectionListener);

    @Override // com.yandex.mapkit.map.BaseMapObjectCollection
    public native void traverse(MapObjectVisitor mapObjectVisitor);

    public BaseMapObjectCollectionBinding(NativeObject nativeObject) {
        super(nativeObject);
        this.mapObjectCollectionListenerSubscription = new Subscription<MapObjectCollectionListener>() { // from class: com.yandex.mapkit.map.internal.BaseMapObjectCollectionBinding.1
            @Override // com.yandex.runtime.subscription.Subscription
            public NativeObject createNativeListener(MapObjectCollectionListener mapObjectCollectionListener) {
                return BaseMapObjectCollectionBinding.createMapObjectCollectionListener(mapObjectCollectionListener);
            }
        };
        this.mapObjectVisitorSubscription = new Subscription<MapObjectVisitor>() { // from class: com.yandex.mapkit.map.internal.BaseMapObjectCollectionBinding.2
            @Override // com.yandex.runtime.subscription.Subscription
            public NativeObject createNativeListener(MapObjectVisitor mapObjectVisitor) {
                return BaseMapObjectCollectionBinding.createMapObjectVisitor(mapObjectVisitor);
            }
        };
    }
}
