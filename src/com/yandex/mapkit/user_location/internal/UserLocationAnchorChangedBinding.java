package com.yandex.mapkit.user_location.internal;

import com.yandex.mapkit.layers.internal.ObjectEventBinding;
import com.yandex.mapkit.user_location.UserLocationAnchorChanged;
import com.yandex.mapkit.user_location.UserLocationAnchorType;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class UserLocationAnchorChangedBinding extends ObjectEventBinding implements UserLocationAnchorChanged {
    @Override // com.yandex.mapkit.user_location.UserLocationAnchorChanged
    public native UserLocationAnchorType getAnchorType();

    public UserLocationAnchorChangedBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
