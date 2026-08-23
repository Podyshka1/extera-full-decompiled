package com.yandex.runtime.sensors.internal;

import android.hardware.SensorEvent;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class RotationVectorSubscription implements SensorDataConsumer {
    private NativeObject nativeObject;
    private SensorSubscription sensorSubscription;

    private static native void rotationVectorChanged(NativeObject nativeObject, float f, float f2, float f3, int i, long j);

    private static native void rotationVectorChangedScalar(NativeObject nativeObject, float f, float f2, float f3, float f4, int i, long j);

    private static native void rotationVectorUnavailable(NativeObject nativeObject);

    public RotationVectorSubscription(NativeObject nativeObject, int i) {
        this.nativeObject = nativeObject;
        this.sensorSubscription = new SensorSubscription(this, 11, i);
    }

    @Override // com.yandex.runtime.sensors.internal.SensorDataConsumer
    public void consume(SensorEvent sensorEvent) {
        long jEventAgeMilliseconds = TimeHelpers.eventAgeMilliseconds(sensorEvent);
        float[] fArr = sensorEvent.values;
        int length = fArr.length;
        NativeObject nativeObject = this.nativeObject;
        if (length == 3) {
            rotationVectorChanged(nativeObject, fArr[0], fArr[1], fArr[2], sensorEvent.accuracy, jEventAgeMilliseconds);
        } else {
            rotationVectorChangedScalar(nativeObject, fArr[0], fArr[1], fArr[2], fArr[3], sensorEvent.accuracy, jEventAgeMilliseconds);
        }
    }

    @Override // com.yandex.runtime.sensors.internal.SensorDataConsumer
    public void sensorUnavailable() {
        rotationVectorUnavailable(this.nativeObject);
    }

    public void stop() {
        this.sensorSubscription.stop();
    }

    public static boolean isRotationVectorAvailable() {
        return SensorSubscription.isSensorAvailable(11);
    }
}
