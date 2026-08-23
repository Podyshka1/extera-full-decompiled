package com.yandex.runtime.sensors.internal;

import android.hardware.GeomagneticField;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.Runtime;

/* JADX INFO: loaded from: classes5.dex */
public class CompassHeadingSubscription implements SensorEventListener {
    private static final String LOG_TAG = "com.yandex.runtime.sensors.internal.CompassHeadingSubscription";
    private static final boolean compassAvailable = checkCompassAvailable();
    private Location lastKnownLocation;
    private NativeObject nativeObject;
    private final long locationThrottleTime = 1000000000;
    private float[] rMatrix = new float[9];
    private float[] gravityData = new float[3];
    private float[] magneticData = new float[3];
    private SensorManager manager = getSensorManager();

    private static native void headingChanged(NativeObject nativeObject, float f, float f2, int i, long j);

    private static native void headingUnavailable(NativeObject nativeObject);

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public CompassHeadingSubscription(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.CompassHeadingSubscription.1
            @Override // java.lang.Runnable
            public void run() {
                CompassHeadingSubscription.this.start();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void start() {
        Sensor defaultSensor = this.manager.getDefaultSensor(11);
        if (defaultSensor != null) {
            this.manager.registerListener(this, defaultSensor, 2);
            return;
        }
        Sensor defaultSensor2 = this.manager.getDefaultSensor(1);
        Sensor defaultSensor3 = this.manager.getDefaultSensor(2);
        if (defaultSensor2 != null && defaultSensor3 != null) {
            this.manager.registerListener(this, defaultSensor2, 3);
            this.manager.registerListener(this, defaultSensor3, 3);
        } else {
            headingUnavailable(this.nativeObject);
        }
    }

    public void stop() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.CompassHeadingSubscription.2
            @Override // java.lang.Runnable
            public void run() {
                CompassHeadingSubscription.this.manager.unregisterListener(this);
            }
        });
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        if (type == 1) {
            float[] fArr = sensorEvent.values;
            float[] fArr2 = this.gravityData;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            processEventFromMagnetometerAndAccelerometer(sensorEvent);
            return;
        }
        if (type != 2) {
            if (type != 11) {
                return;
            }
            processEventFromRotationVector(sensorEvent);
        } else {
            float[] fArr3 = sensorEvent.values;
            float[] fArr4 = this.magneticData;
            System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
            processEventFromMagnetometerAndAccelerometer(sensorEvent);
        }
    }

    public static boolean isCompassAvailable() {
        return compassAvailable;
    }

    private void processEventFromMagnetometerAndAccelerometer(SensorEvent sensorEvent) {
        if (SensorManager.getRotationMatrix(this.rMatrix, null, this.gravityData, this.magneticData)) {
            sendHeading(sensorEvent.accuracy, TimeHelpers.eventAgeMilliseconds(sensorEvent));
        }
    }

    private void processEventFromRotationVector(SensorEvent sensorEvent) {
        float[] fArr = new float[4];
        float[] fArr2 = sensorEvent.values;
        System.arraycopy(fArr2, 0, fArr, 0, fArr2.length <= 4 ? fArr2.length : 4);
        SensorManager.getRotationMatrixFromVector(this.rMatrix, fArr);
        sendHeading(sensorEvent.accuracy, TimeHelpers.eventAgeMilliseconds(sensorEvent));
    }

    private void sendHeading(int i, long j) {
        SensorManager.getOrientation(this.rMatrix, new float[3]);
        float fNormalizeAngle = normalizeAngle((float) Math.toDegrees(r0[0]));
        headingChanged(this.nativeObject, fNormalizeAngle, normalizeAngle(getDeclination() + fNormalizeAngle), i, j);
    }

    private float normalizeAngle(float f) {
        if (Float.isNaN(f) || Float.isInfinite(f)) {
            return 0.0f;
        }
        return (f + 360.0f) % 360.0f;
    }

    private float getDeclination() {
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        Location location = this.lastKnownLocation;
        if (location == null || jElapsedRealtimeNanos - location.getElapsedRealtimeNanos() > 1000000000) {
            this.lastKnownLocation = getLastKnownLocation();
        }
        if (this.lastKnownLocation == null) {
            return 0.0f;
        }
        return new GeomagneticField((float) this.lastKnownLocation.getLatitude(), (float) this.lastKnownLocation.getLongitude(), this.lastKnownLocation.hasAltitude() ? (float) this.lastKnownLocation.getAltitude() : 0.0f, this.lastKnownLocation.getTime()).getDeclination();
    }

    private static boolean checkCompassAvailable() {
        SensorManager sensorManager = getSensorManager();
        return (sensorManager.getDefaultSensor(11) == null && (sensorManager.getDefaultSensor(1) == null || sensorManager.getDefaultSensor(2) == null)) ? false : true;
    }

    private static SensorManager getSensorManager() {
        SensorManager sensorManager = (SensorManager) Runtime.getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            return sensorManager;
        }
        throw new RuntimeException("Can't get SensorManager.");
    }

    private static Location getLastKnownLocation() {
        LocationManager locationManager = (LocationManager) Runtime.getApplicationContext().getSystemService("location");
        if (locationManager == null) {
            throw new RuntimeException("Can't get LocationManager. Missed permission?");
        }
        try {
            return locationManager.getLastKnownLocation("gps");
        } catch (SecurityException e) {
            Log.e(LOG_TAG, "failed to get last known location: " + e.toString());
            return null;
        }
    }
}
