package com.yandex.runtime.sensors.internal;

import android.hardware.SensorEvent;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class GravitySubscription implements SensorDataConsumer {
    private NativeObject nativeObject;
    private SensorSubscription sensorSubscription;

    private static native void gravityChanged(NativeObject nativeObject, float f, float f2, float f3, int i, long j);

    private static native void gravityUnavailable(NativeObject nativeObject);

    public GravitySubscription(NativeObject nativeObject, int i) {
        this.nativeObject = nativeObject;
        this.sensorSubscription = new SensorSubscription(this, 9, i);
    }

    @Override // com.yandex.runtime.sensors.internal.SensorDataConsumer
    public void consume(SensorEvent sensorEvent) {
        long jEventAgeMilliseconds = TimeHelpers.eventAgeMilliseconds(sensorEvent);
        NativeObject nativeObject = this.nativeObject;
        float[] fArr = sensorEvent.values;
        gravityChanged(nativeObject, fArr[0], fArr[1], fArr[2], sensorEvent.accuracy, jEventAgeMilliseconds);
    }

    @Override // com.yandex.runtime.sensors.internal.SensorDataConsumer
    public void sensorUnavailable() {
        gravityUnavailable(this.nativeObject);
    }

    public void stop() {
        this.sensorSubscription.stop();
    }

    public static boolean isGravityAvailable() {
        return SensorSubscription.isSensorAvailable(9);
    }
}
