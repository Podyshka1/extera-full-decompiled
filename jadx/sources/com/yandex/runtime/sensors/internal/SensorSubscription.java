package com.yandex.runtime.sensors.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import com.yandex.runtime.Runtime;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes5.dex */
public class SensorSubscription implements SensorEventListener {
    private static final int nanoSecsInMilli = 1000000;
    private SensorDataConsumer dataConsumer;
    private SensorManager manager;
    private long prevPublishedEventTime = 0;
    private int sensorDelay;
    private int sensorType;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public SensorSubscription(SensorDataConsumer sensorDataConsumer, int i, int i2) {
        this.sensorDelay = i2;
        this.sensorType = i;
        this.dataConsumer = sensorDataConsumer;
        try {
            this.manager = getSensorManager();
        } catch (RuntimeException unused) {
            stop();
            this.dataConsumer.sensorUnavailable();
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.SensorSubscription.1
            @Override // java.lang.Runnable
            public void run() {
                SensorSubscription.this.start();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void start() {
        Sensor defaultSensor = this.manager.getDefaultSensor(this.sensorType);
        if (defaultSensor != null) {
            this.manager.registerListener(this, defaultSensor, this.sensorDelay * MediaDataController.MAX_STYLE_RUNS_COUNT);
        } else {
            stop();
            this.dataConsumer.sensorUnavailable();
        }
    }

    public void stop() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.SensorSubscription.2
            @Override // java.lang.Runnable
            public void run() {
                SensorSubscription.this.manager.unregisterListener(SensorSubscription.this);
            }
        });
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        long j = sensorEvent.timestamp;
        if ((j - this.prevPublishedEventTime) / 1000000 >= this.sensorDelay) {
            this.prevPublishedEventTime = j;
            this.dataConsumer.consume(sensorEvent);
        }
    }

    public static boolean isSensorAvailable(int i) {
        return getSensorManager().getDefaultSensor(i) != null;
    }

    private static SensorManager getSensorManager() {
        SensorManager sensorManager = (SensorManager) Runtime.getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            return sensorManager;
        }
        throw new RuntimeException("Can't get SensorManager.");
    }
}
