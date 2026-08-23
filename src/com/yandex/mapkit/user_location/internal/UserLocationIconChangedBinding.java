package com.yandex.mapkit.user_location.internal;

import com.yandex.mapkit.layers.internal.ObjectEventBinding;
import com.yandex.mapkit.user_location.UserLocationIconChanged;
import com.yandex.mapkit.user_location.UserLocationIconType;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class UserLocationIconChangedBinding extends ObjectEventBinding implements UserLocationIconChanged {
    @Override // com.yandex.mapkit.user_location.UserLocationIconChanged
    public native UserLocationIconType getIconType();

    public UserLocationIconChangedBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
