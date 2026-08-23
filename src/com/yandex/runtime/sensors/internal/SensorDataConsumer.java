package com.yandex.runtime.sensors.internal;

import android.hardware.SensorEvent;

/* JADX INFO: loaded from: classes5.dex */
public interface SensorDataConsumer {
    void consume(SensorEvent sensorEvent);

    void sensorUnavailable();
}
