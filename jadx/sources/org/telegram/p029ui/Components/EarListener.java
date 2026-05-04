package org.telegram.p029ui.Components;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import android.os.PowerManager;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p029ui.PhotoViewer;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes7.dex */
public class EarListener implements SensorEventListener {
    private Sensor accelerometerSensor;
    private boolean accelerometerVertical;
    private boolean attached;
    private final AudioManager audioManager;
    private final Context context;
    private int countLess;
    private VideoPlayer currentPlayer;
    private Sensor gravitySensor;
    private long lastAccelerometerDetected;
    private Sensor linearSensor;
    private final PowerManager powerManager;
    private float previousAccValue;
    private boolean proximityHasDifferentValues;
    private Sensor proximitySensor;
    private boolean proximityTouched;
    private PowerManager.WakeLock proximityWakeLock;
    private boolean raised;
    private int raisedToBack;
    private int raisedToTop;
    private int raisedToTopSign;
    private final SensorManager sensorManager;
    private long timeSinceRaise;
    private long lastTimestamp = 0;
    private float lastProximityValue = -100.0f;
    private float[] gravity = new float[3];
    private float[] gravityFast = new float[3];
    private float[] linearAcceleration = new float[3];

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public EarListener(Context context) {
        this.context = context;
        SensorManager sensorManager = (SensorManager) ApplicationLoader.applicationContext.getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.proximitySensor = sensorManager.getDefaultSensor(8);
        this.linearSensor = sensorManager.getDefaultSensor(10);
        Sensor defaultSensor = sensorManager.getDefaultSensor(9);
        this.gravitySensor = defaultSensor;
        if (this.linearSensor == null || defaultSensor == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("gravity or linear sensor not found");
            }
            this.accelerometerSensor = sensorManager.getDefaultSensor(1);
            this.linearSensor = null;
            this.gravitySensor = null;
        }
        PowerManager powerManager = (PowerManager) ApplicationLoader.applicationContext.getSystemService("power");
        this.powerManager = powerManager;
        this.proximityWakeLock = powerManager.newWakeLock(32, "telegram:proximity_lock2");
        this.audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
    }

    public void attach() {
        if (this.attached) {
            return;
        }
        Sensor sensor = this.gravitySensor;
        if (sensor != null) {
            this.sensorManager.registerListener(this, sensor, 30000);
        }
        Sensor sensor2 = this.linearSensor;
        if (sensor2 != null) {
            this.sensorManager.registerListener(this, sensor2, 30000);
        }
        Sensor sensor3 = this.accelerometerSensor;
        if (sensor3 != null) {
            this.sensorManager.registerListener(this, sensor3, 30000);
        }
        this.sensorManager.registerListener(this, this.proximitySensor, 3);
        if (this.proximityWakeLock != null && !disableWakeLockWhenNotUsed()) {
            this.proximityWakeLock.acquire();
        }
        this.attached = true;
    }

    public void detach() {
        if (this.attached) {
            Sensor sensor = this.gravitySensor;
            if (sensor != null) {
                this.sensorManager.unregisterListener(this, sensor);
            }
            Sensor sensor2 = this.linearSensor;
            if (sensor2 != null) {
                this.sensorManager.unregisterListener(this, sensor2);
            }
            Sensor sensor3 = this.accelerometerSensor;
            if (sensor3 != null) {
                this.sensorManager.unregisterListener(this, sensor3);
            }
            this.sensorManager.unregisterListener(this, this.proximitySensor);
            PowerManager.WakeLock wakeLock = this.proximityWakeLock;
            if (wakeLock != null && wakeLock.isHeld()) {
                this.proximityWakeLock.release();
            }
            this.attached = false;
        }
    }

    public void attachPlayer(VideoPlayer videoPlayer) {
        this.currentPlayer = videoPlayer;
        updateRaised();
    }

    protected void updateRaised() {
        VideoPlayer videoPlayer = this.currentPlayer;
        if (videoPlayer == null) {
            return;
        }
        videoPlayer.setStreamType(this.raised ? 0 : 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        long j;
        int i;
        int i2;
        int i3;
        int i4;
        if (this.attached && VoIPService.getSharedInstance() == null) {
            if (sensorEvent.sensor.getType() == 8) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("proximity changed to " + sensorEvent.values[0] + " max value = " + sensorEvent.sensor.getMaximumRange());
                }
                float f = this.lastProximityValue;
                float f2 = sensorEvent.values[0];
                if (f != f2) {
                    this.proximityHasDifferentValues = true;
                }
                this.lastProximityValue = f2;
                if (this.proximityHasDifferentValues) {
                    this.proximityTouched = isNearToSensor(f2);
                }
                j = 0;
                i = 1;
                i2 = 2;
            } else {
                Sensor sensor = sensorEvent.sensor;
                if (sensor == this.accelerometerSensor) {
                    double d = this.lastTimestamp == 0 ? 0.9800000190734863d : 1.0d / (((sensorEvent.timestamp - r2) / 1.0E9d) + 1.0d);
                    this.lastTimestamp = sensorEvent.timestamp;
                    float[] fArr = this.gravity;
                    double d2 = ((double) fArr[0]) * d;
                    double d3 = 1.0d - d;
                    float[] fArr2 = sensorEvent.values;
                    j = 0;
                    float f3 = (float) (d2 + (((double) fArr2[0]) * d3));
                    fArr[0] = f3;
                    i = 1;
                    i2 = 2;
                    float f4 = (float) ((((double) fArr[1]) * d) + (((double) fArr2[1]) * d3));
                    fArr[1] = f4;
                    float f5 = (float) ((d * ((double) fArr[2])) + (d3 * ((double) fArr2[2])));
                    fArr[2] = f5;
                    float[] fArr3 = this.gravityFast;
                    fArr3[0] = (f3 * 0.8f) + (fArr2[0] * 0.19999999f);
                    fArr3[1] = (f4 * 0.8f) + (fArr2[1] * 0.19999999f);
                    fArr3[2] = (f5 * 0.8f) + (fArr2[2] * 0.19999999f);
                    float[] fArr4 = this.linearAcceleration;
                    fArr4[0] = fArr2[0] - fArr[0];
                    fArr4[1] = fArr2[1] - fArr[1];
                    fArr4[2] = fArr2[2] - fArr[2];
                } else {
                    j = 0;
                    i = 1;
                    i2 = 2;
                    if (sensor == this.linearSensor) {
                        float[] fArr5 = this.linearAcceleration;
                        float[] fArr6 = sensorEvent.values;
                        fArr5[0] = fArr6[0];
                        fArr5[1] = fArr6[1];
                        fArr5[2] = fArr6[2];
                    } else if (sensor == this.gravitySensor) {
                        float[] fArr7 = this.gravityFast;
                        float[] fArr8 = this.gravity;
                        float[] fArr9 = sensorEvent.values;
                        float f6 = fArr9[0];
                        fArr8[0] = f6;
                        fArr7[0] = f6;
                        float f7 = fArr9[1];
                        fArr8[1] = f7;
                        fArr7[1] = f7;
                        float f8 = fArr9[2];
                        fArr8[2] = f8;
                        fArr7[2] = f8;
                    }
                }
            }
            Sensor sensor2 = sensorEvent.sensor;
            if (sensor2 == this.linearSensor || sensor2 == this.gravitySensor || sensor2 == this.accelerometerSensor) {
                float[] fArr10 = this.gravity;
                float f9 = fArr10[0];
                float[] fArr11 = this.linearAcceleration;
                float f10 = (f9 * fArr11[0]) + (fArr10[i] * fArr11[i]) + (fArr10[i2] * fArr11[i2]);
                int i5 = this.raisedToBack;
                if (i5 != 6 && ((f10 > 0.0f && this.previousAccValue > 0.0f) || (f10 < 0.0f && this.previousAccValue < 0.0f))) {
                    if (f10 > 0.0f) {
                        i3 = f10 > 15.0f ? i : 0;
                        i4 = i;
                    } else {
                        i3 = f10 < -15.0f ? i : 0;
                        i4 = i2;
                    }
                    int i6 = this.raisedToTopSign;
                    if (i6 != 0 && i6 != i4) {
                        int i7 = this.raisedToTop;
                        if (i7 != 6 || i3 == 0) {
                            if (i3 == 0) {
                                this.countLess++;
                            }
                            if (this.countLess == 10 || i7 != 6 || i5 != 0) {
                                this.raisedToTop = 0;
                                this.raisedToTopSign = 0;
                                this.raisedToBack = 0;
                                this.countLess = 0;
                            }
                        } else if (i5 < 6) {
                            int i8 = i5 + 1;
                            this.raisedToBack = i8;
                            if (i8 == 6) {
                                this.raisedToTop = 0;
                                this.raisedToTopSign = 0;
                                this.countLess = 0;
                                this.timeSinceRaise = System.currentTimeMillis();
                                if (BuildVars.LOGS_ENABLED && BuildVars.DEBUG_PRIVATE_VERSION) {
                                    FileLog.m1133d("motion detected");
                                }
                            }
                        }
                    } else if (i3 != 0 && i5 == 0 && (i6 == 0 || i6 == i4)) {
                        int i9 = this.raisedToTop;
                        if (i9 < 6 && !this.proximityTouched) {
                            this.raisedToTopSign = i4;
                            int i10 = i9 + 1;
                            this.raisedToTop = i10;
                            if (i10 == 6) {
                                this.countLess = 0;
                            }
                        }
                    } else {
                        if (i3 == 0) {
                            this.countLess++;
                        }
                        if (i6 != i4 || this.countLess == 10 || this.raisedToTop != 6 || i5 != 0) {
                            this.raisedToBack = 0;
                            this.raisedToTop = 0;
                            this.raisedToTopSign = 0;
                            this.countLess = 0;
                        }
                    }
                }
                this.previousAccValue = f10;
                float[] fArr12 = this.gravityFast;
                this.accelerometerVertical = (fArr12[i] <= 2.5f || Math.abs(fArr12[i2]) >= 4.0f || Math.abs(this.gravityFast[0]) <= 1.5f) ? 0 : i;
            }
            if (this.raisedToBack == 6 || this.accelerometerVertical) {
                this.lastAccelerometerDetected = System.currentTimeMillis();
            }
            int i11 = ((this.raisedToBack != 6 && !this.accelerometerVertical && System.currentTimeMillis() - this.lastAccelerometerDetected >= 60) || forbidRaiseToListen() || VoIPService.isAnyKindOfCallActive() || PhotoViewer.getInstance().isVisible()) ? 0 : i;
            if (this.proximityWakeLock != null && disableWakeLockWhenNotUsed()) {
                boolean zIsHeld = this.proximityWakeLock.isHeld();
                if (zIsHeld && i11 == 0) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("wake lock releasing");
                    }
                    this.proximityWakeLock.release();
                } else if (!zIsHeld && i11 != 0) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m1133d("wake lock acquiring");
                    }
                    this.proximityWakeLock.acquire();
                }
            }
            boolean z = this.proximityTouched;
            if (z && i11 != 0) {
                if (!this.raised) {
                    this.raised = i;
                    updateRaised();
                }
                this.raisedToBack = 0;
                this.raisedToTop = 0;
                this.raisedToTopSign = 0;
                this.countLess = 0;
            } else if (z && ((this.accelerometerSensor == null || this.linearSensor == null) && this.gravitySensor == null && !VoIPService.isAnyKindOfCallActive())) {
                if (!this.raised) {
                    this.raised = true;
                    updateRaised();
                }
            } else if (!this.proximityTouched && this.raised) {
                this.raised = false;
                updateRaised();
            }
            if (this.timeSinceRaise == j || this.raisedToBack != 6 || Math.abs(System.currentTimeMillis() - this.timeSinceRaise) <= 1000) {
                return;
            }
            this.raisedToBack = 0;
            this.raisedToTop = 0;
            this.raisedToTopSign = 0;
            this.countLess = 0;
            this.timeSinceRaise = j;
        }
    }

    private boolean isNearToSensor(float f) {
        return f < 5.0f && f != this.proximitySensor.getMaximumRange();
    }

    private boolean disableWakeLockWhenNotUsed() {
        return !Build.MANUFACTURER.equalsIgnoreCase("samsung");
    }

    protected boolean forbidRaiseToListen() {
        try {
            for (AudioDeviceInfo audioDeviceInfo : this.audioManager.getDevices(2)) {
                int type = audioDeviceInfo.getType();
                if ((type == 8 || type == 7 || type == 26 || type == 27 || type == 4 || type == 3) && audioDeviceInfo.isSink()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return false;
        }
    }
}
