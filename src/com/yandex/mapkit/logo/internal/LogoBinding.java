package com.yandex.mapkit.logo.internal;

import com.yandex.mapkit.logo.Alignment;
import com.yandex.mapkit.logo.Logo;
import com.yandex.mapkit.logo.Padding;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class LogoBinding implements Logo {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.logo.Logo
    public native boolean isValid();

    @Override // com.yandex.mapkit.logo.Logo
    public native void setAlignment(Alignment alignment);

    @Override // com.yandex.mapkit.logo.Logo
    public native void setPadding(Padding padding);

    public LogoBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
