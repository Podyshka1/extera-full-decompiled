package com.yandex.runtime.sensors.internal;

import android.hardware.SensorEvent;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class BarometerSubscription implements SensorDataConsumer {
    private NativeObject nativeObject;
    private SensorSubscription sensorSubscription;

    private static native void barometerUnavailable(NativeObject nativeObject);

    private static native void pressureChanged(NativeObject nativeObject, float f, int i, long j);

    public BarometerSubscription(NativeObject nativeObject, int i) {
        this.nativeObject = nativeObject;
        this.sensorSubscription = new SensorSubscription(this, 6, i);
    }

    @Override // com.yandex.runtime.sensors.internal.SensorDataConsumer
    public void consume(SensorEvent sensorEvent) {
        pressureChanged(this.nativeObject, sensorEvent.values[0], sensorEvent.accuracy, TimeHelpers.eventAgeMilliseconds(sensorEvent));
    }

    @Override // com.yandex.runtime.sensors.internal.SensorDataConsumer
    public void sensorUnavailable() {
        barometerUnavailable(this.nativeObject);
    }

    public void stop() {
        this.sensorSubscription.stop();
    }

    public static boolean isBarometerAvailable() {
        return SensorSubscription.isSensorAvailable(6);
    }
}
