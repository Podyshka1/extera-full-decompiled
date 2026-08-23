package com.yandex.runtime.sensors.internal;

import android.hardware.SensorEvent;
import android.location.Location;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public class TimeHelpers {
    private static long NANOS_IN_MS = 1000000;

    public static long eventAgeMilliseconds(SensorEvent sensorEvent) {
        return (SystemClock.elapsedRealtimeNanos() - sensorEvent.timestamp) / NANOS_IN_MS;
    }

    public static long locationAgeMilliseconds(Location location) {
        if (location.getElapsedRealtimeNanos() <= 0) {
            return 0L;
        }
        return (SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos()) / NANOS_IN_MS;
    }
}
