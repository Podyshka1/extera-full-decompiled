package org.telegram.p029ui.Components;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public class WallpaperParallaxEffect implements SensorEventListener {
    private Sensor accelerometer;
    private int bufferOffset;
    private Callback callback;
    private boolean enabled;
    private SensorManager sensorManager;

    /* JADX INFO: renamed from: wm */
    private WindowManager f2108wm;
    private float[] rollBuffer = new float[3];
    private float[] pitchBuffer = new float[3];

    public interface Callback {
        void onOffsetsChanged(int i, int i2, float f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public WallpaperParallaxEffect(Context context) {
        this.f2108wm = (WindowManager) context.getSystemService("window");
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.accelerometer = sensorManager.getDefaultSensor(1);
    }

    public void setEnabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
            Sensor sensor = this.accelerometer;
            if (sensor == null) {
                return;
            }
            if (z) {
                this.sensorManager.registerListener(this, sensor, 1);
            } else {
                this.sensorManager.unregisterListener(this);
            }
        }
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public float getScale(int i, int i2) {
        float f = i;
        float fM1124dp = AndroidUtilities.m1124dp(16.0f) * 2;
        float f2 = (f + fM1124dp) / f;
        float f3 = i2;
        return Math.max(f2, (fM1124dp + f3) / f3);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // android.hardware.SensorEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr;
        float fAtan2;
        Callback callback;
        float f;
        int rotation = this.f2108wm.getDefaultDisplay().getRotation();
        float[] fArr2 = sensorEvent.values;
        float f2 = fArr2[0] / 9.80665f;
        float f3 = fArr2[1] / 9.80665f;
        float f4 = fArr2[2] / 9.80665f;
        float f5 = f4 * f4;
        float fAtan22 = (float) ((Math.atan2(f2, Math.sqrt((f3 * f3) + f5)) / 3.141592653589793d) * 2.0d);
        float fAtan23 = (float) ((Math.atan2(f3, Math.sqrt((f2 * f2) + f5)) / 3.141592653589793d) * 2.0d);
        if (rotation != 1) {
            if (rotation == 2) {
                float f6 = -fAtan23;
                fAtan23 = -fAtan22;
                fAtan22 = f6;
            } else if (rotation != 3) {
                fAtan22 = fAtan23;
                fAtan23 = fAtan22;
            } else {
                fAtan22 = -fAtan22;
            }
        }
        float[] fArr3 = this.rollBuffer;
        int i = this.bufferOffset;
        fArr3[i] = fAtan22;
        this.pitchBuffer[i] = fAtan23;
        this.bufferOffset = (i + 1) % fArr3.length;
        float f7 = 0.0f;
        float f8 = 0.0f;
        int i2 = 0;
        while (true) {
            fArr = this.rollBuffer;
            if (i2 >= fArr.length) {
                break;
            }
            f7 += fArr[i2];
            f8 += this.pitchBuffer[i2];
            i2++;
        }
        float length = f7 / fArr.length;
        float length2 = f8 / fArr.length;
        if (length <= 1.0f) {
            f = length < -1.0f ? -2.0f : 2.0f;
            int iRound = Math.round(AndroidUtilities.dpf2(16.0f) * length2);
            int iRound2 = Math.round(AndroidUtilities.dpf2(16.0f) * length);
            float fMax = Math.max(-1.0f, Math.min(1.0f, (-length2) / 0.45f));
            float fMax2 = Math.max(-1.0f, Math.min(1.0f, (-length) / 0.45f));
            float fSqrt = (float) Math.sqrt((fMax * fMax) + (fMax2 * fMax2));
            float f9 = fMax / fSqrt;
            float f10 = fMax2 / fSqrt;
            fAtan2 = (float) (Math.atan2((f9 * (-1.0f)) - (f10 * 0.0f), (f9 * 0.0f) + (f10 * (-1.0f))) / 0.017453292519943295d);
            if (fAtan2 < 0.0f) {
                fAtan2 += 360.0f;
            }
            callback = this.callback;
            if (callback == null) {
                callback.onOffsetsChanged(iRound, iRound2, fAtan2);
                return;
            }
            return;
        }
        length = f - length;
        int iRound3 = Math.round(AndroidUtilities.dpf2(16.0f) * length2);
        int iRound22 = Math.round(AndroidUtilities.dpf2(16.0f) * length);
        float fMax3 = Math.max(-1.0f, Math.min(1.0f, (-length2) / 0.45f));
        float fMax22 = Math.max(-1.0f, Math.min(1.0f, (-length) / 0.45f));
        float fSqrt2 = (float) Math.sqrt((fMax3 * fMax3) + (fMax22 * fMax22));
        float f92 = fMax3 / fSqrt2;
        float f102 = fMax22 / fSqrt2;
        fAtan2 = (float) (Math.atan2((f92 * (-1.0f)) - (f102 * 0.0f), (f92 * 0.0f) + (f102 * (-1.0f))) / 0.017453292519943295d);
        if (fAtan2 < 0.0f) {
        }
        callback = this.callback;
        if (callback == null) {
        }
    }
}
