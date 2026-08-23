package com.yandex.mapkit.transport.time.internal;

import com.yandex.mapkit.transport.time.AdjustedClock;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class AdjustedClockBinding implements AdjustedClock {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.time.AdjustedClock
    public native boolean isValid();

    @Override // com.yandex.mapkit.transport.time.AdjustedClock
    public native long now();

    @Override // com.yandex.mapkit.transport.time.AdjustedClock
    public native void pause();

    @Override // com.yandex.mapkit.transport.time.AdjustedClock
    public native void resume();

    public AdjustedClockBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
