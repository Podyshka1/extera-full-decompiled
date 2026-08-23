package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.Animation;
import com.yandex.mapkit.map.BaseMapObjectCollection;
import com.yandex.mapkit.map.Callback;
import com.yandex.mapkit.map.MapObject;
import com.yandex.mapkit.map.MapObjectDragListener;
import com.yandex.mapkit.map.MapObjectTapListener;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class MapObjectBinding implements MapObject {
    private Object _userData;
    protected Subscription<MapObjectDragListener> mapObjectDragListenerSubscription = new Subscription<MapObjectDragListener>() { // from class: com.yandex.mapkit.map.internal.MapObjectBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(MapObjectDragListener mapObjectDragListener) {
            return MapObjectBinding.createMapObjectDragListener(mapObjectDragListener);
        }
    };
    protected Subscription<MapObjectTapListener> mapObjectTapListenerSubscription = new Subscription<MapObjectTapListener>() { // from class: com.yandex.mapkit.map.internal.MapObjectBinding.2
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(MapObjectTapListener mapObjectTapListener) {
            return MapObjectBinding.createMapObjectTapListener(mapObjectTapListener);
        }
    };
    private final NativeObject nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createMapObjectDragListener(MapObjectDragListener mapObjectDragListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createMapObjectTapListener(MapObjectTapListener mapObjectTapListener);

    @Override // com.yandex.mapkit.map.MapObject
    public native void addTapListener(MapObjectTapListener mapObjectTapListener);

    @Override // com.yandex.mapkit.map.MapObject
    public native BaseMapObjectCollection getParent();

    @Override // com.yandex.mapkit.map.MapObject
    public native float getZIndex();

    @Override // com.yandex.mapkit.map.MapObject
    public native boolean isDraggable();

    @Override // com.yandex.mapkit.map.MapObject
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.MapObject
    public native boolean isVisible();

    @Override // com.yandex.mapkit.map.MapObject
    public native void removeTapListener(MapObjectTapListener mapObjectTapListener);

    @Override // com.yandex.mapkit.map.MapObject
    public native void setDragListener(MapObjectDragListener mapObjectDragListener);

    @Override // com.yandex.mapkit.map.MapObject
    public native void setDraggable(boolean z);

    @Override // com.yandex.mapkit.map.MapObject
    public native void setVisible(boolean z);

    @Override // com.yandex.mapkit.map.MapObject
    public native void setVisible(boolean z, Animation animation, Callback callback);

    @Override // com.yandex.mapkit.map.MapObject
    public native void setZIndex(float f);

    public MapObjectBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }

    @Override // com.yandex.mapkit.map.MapObject
    public Object getUserData() {
        return this._userData;
    }

    @Override // com.yandex.mapkit.map.MapObject
    public void setUserData(Object obj) {
        this._userData = obj;
    }
}
