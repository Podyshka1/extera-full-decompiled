package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.ConflictResolutionMode;
import com.yandex.mapkit.map.RootMapObjectCollection;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class RootMapObjectCollectionBinding extends MapObjectCollectionBinding implements RootMapObjectCollection {
    @Override // com.yandex.mapkit.map.RootMapObjectCollection
    public native ConflictResolutionMode getConflictResolutionMode();

    @Override // com.yandex.mapkit.map.RootMapObjectCollection
    public native void setConflictResolutionMode(ConflictResolutionMode conflictResolutionMode);

    public RootMapObjectCollectionBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
