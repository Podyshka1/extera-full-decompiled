package com.yandex.runtime.sensors.internal.internal;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.sensors.internal.GnssMeasurementsEvent;
import com.yandex.runtime.sensors.internal.GnssMeasurementsEventsNativeListener;

/* JADX INFO: loaded from: classes5.dex */
public class GnssMeasurementsEventsNativeListenerBinding implements GnssMeasurementsEventsNativeListener {
    private final NativeObject nativeObject;

    @Override // com.yandex.runtime.sensors.internal.GnssMeasurementsEventsNativeListener
    public native void onGnssMeasurementsEvent(GnssMeasurementsEvent gnssMeasurementsEvent);

    public GnssMeasurementsEventsNativeListenerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
