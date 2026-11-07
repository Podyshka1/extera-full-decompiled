package org.telegram.ui.Wallet;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.WindowManager;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.function.Predicate;
import org.telegram.ui.Wallet.WalletCardMotion;

/* JADX INFO: loaded from: classes8.dex */
final class WalletCardMotion implements SensorEventListener {
    private static WalletCardMotion instance;
    private float basePitch;
    private float baseRoll;
    private boolean calibrated;
    private boolean listening;
    private final SensorManager manager;
    private final Sensor sensor;
    private final WindowManager windows;

    /* JADX INFO: renamed from: x */
    float f1257x;

    /* JADX INFO: renamed from: y */
    float f1258y;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final WeakHashMap<View, Long> viewers = new WeakHashMap<>();
    private final float[] matrix = new float[9];
    private final float[] remapped = new float[9];
    private final float[] orientation = new float[3];
    private int rotation = -1;
    private final Runnable cleanup = new RunnableC64851();

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public static WalletCardMotion get(Context context) {
        if (instance == null) {
            instance = new WalletCardMotion(context.getApplicationContext());
        }
        return instance;
    }

    private WalletCardMotion(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.manager = sensorManager;
        this.windows = (WindowManager) context.getSystemService("window");
        Sensor defaultSensor = sensorManager == null ? null : sensorManager.getDefaultSensor(15);
        if (defaultSensor == null && sensorManager != null) {
            defaultSensor = sensorManager.getDefaultSensor(11);
        }
        this.sensor = defaultSensor;
    }

    public void drawn(View view) {
        if (this.sensor != null && view.isAttachedToWindow() && view.isShown() && view.getWindowVisibility() == 0) {
            this.viewers.put(view, Long.valueOf(SystemClock.uptimeMillis()));
            if (this.listening) {
                return;
            }
            this.calibrated = false;
            boolean zRegisterListener = this.manager.registerListener(this, this.sensor, 1, this.handler);
            this.listening = zRegisterListener;
            if (zRegisterListener) {
                this.handler.postDelayed(this.cleanup, 250L);
            }
        }
    }

    public void detach(View view) {
        this.viewers.remove(view);
        if (this.viewers.isEmpty()) {
            stop();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletCardMotion$1 */
    public class RunnableC64851 implements Runnable {
        public RunnableC64851() {
        }

        @Override // java.lang.Runnable
        public void run() {
            final long jUptimeMillis = SystemClock.uptimeMillis();
            WalletCardMotion.this.viewers.entrySet().removeIf(new Predicate() { // from class: org.telegram.ui.Wallet.WalletCardMotion$1$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return WalletCardMotion.RunnableC64851.m23365$r8$lambda$2KGdS2_hpSfPbgZm5F1vTblFTI(jUptimeMillis, (Map.Entry) obj);
                }
            });
            boolean zIsEmpty = WalletCardMotion.this.viewers.isEmpty();
            WalletCardMotion walletCardMotion = WalletCardMotion.this;
            if (zIsEmpty) {
                walletCardMotion.stop();
            } else {
                walletCardMotion.handler.postDelayed(this, 250L);
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$2-KGdS2_hpSfPbgZm5F1vTblFTI, reason: not valid java name */
        public static /* synthetic */ boolean m23365$r8$lambda$2KGdS2_hpSfPbgZm5F1vTblFTI(long j, Map.Entry entry) {
            return (((View) entry.getKey()).isAttachedToWindow() && ((View) entry.getKey()).isShown() && ((View) entry.getKey()).getWindowVisibility() == 0 && j - ((Long) entry.getValue()).longValue() <= 300) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stop() {
        if (this.listening) {
            this.manager.unregisterListener(this);
        }
        this.calibrated = false;
        this.listening = false;
        this.handler.removeCallbacks(this.cleanup);
        this.f1258y = 0.0f;
        this.f1257x = 0.0f;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        int i;
        SensorManager.getRotationMatrixFromVector(this.matrix, sensorEvent.values);
        int rotation = this.windows.getDefaultDisplay().getRotation();
        if (this.rotation != rotation) {
            this.calibrated = false;
            this.rotation = rotation;
        }
        int i2 = this.rotation;
        int i3 = 129;
        if (i2 == 1) {
            i = 129;
            i3 = 2;
        } else {
            i = 130;
            if (i2 != 2) {
                if (i2 == 3) {
                    i3 = 130;
                    i = 1;
                } else {
                    i = 2;
                    i3 = 1;
                }
            }
        }
        SensorManager.remapCoordinateSystem(this.matrix, i3, i, this.remapped);
        SensorManager.getOrientation(this.remapped, this.orientation);
        if (Float.isNaN(this.orientation[1]) || Float.isNaN(this.orientation[2])) {
            return;
        }
        if (!this.calibrated) {
            float[] fArr = this.orientation;
            this.basePitch = fArr[1];
            this.baseRoll = fArr[2];
            this.calibrated = true;
        }
        float fClamp = clamp(((float) Math.IEEEremainder(this.orientation[2] - this.baseRoll, 6.283185307179586d)) / 0.45f);
        float fClamp2 = clamp(((float) Math.IEEEremainder(this.orientation[1] - this.basePitch, 6.283185307179586d)) / 0.45f);
        float f = this.f1257x;
        this.f1257x = f + ((fClamp - f) * 0.12f);
        float f2 = this.f1258y;
        this.f1258y = f2 + ((fClamp2 - f2) * 0.12f);
        Iterator<View> it = this.viewers.keySet().iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
    }

    private static float clamp(float f) {
        return Math.max(-1.0f, Math.min(1.0f, f));
    }
}
