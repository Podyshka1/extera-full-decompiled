package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Timestamps;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraDeviceWrapperKt {
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void closeWithTrace(CameraDevice cameraDevice) throws Throwable {
        char c;
        if (cameraDevice == null) {
            return;
        }
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i("CXCP", "Closing Camera " + cameraDevice.getId());
        }
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#CameraDevice-" + cameraDevice.getId() + "#close";
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            try {
                cameraDevice.close();
            } catch (NullPointerException e) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    c = 0;
                    try {
                        android.util.Log.w("CXCP", "NPE encountered during CameraDevice.close()", e);
                    } catch (Throwable th) {
                        th = th;
                        Trace.endSection();
                        long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(str);
                            sb.append(" - ");
                            Timestamps timestamps = Timestamps.INSTANCE;
                            Object[] objArr = new Object[1];
                            objArr[c] = Double.valueOf(jM1880constructorimpl / 1000000.0d);
                            String str2 = String.format(null, "%.3f ms", Arrays.copyOf(objArr, 1));
                            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                            sb.append(str2);
                            android.util.Log.d("CXCP", sb.toString());
                        }
                        throw th;
                    }
                }
                Unit unit = Unit.INSTANCE;
                Trace.endSection();
                long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                }
            }
            c = 0;
            Unit unit2 = Unit.INSTANCE;
            Trace.endSection();
            long jM1880constructorimpl22 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" - ");
            Timestamps timestamps2 = Timestamps.INSTANCE;
            Object[] objArr2 = new Object[1];
            objArr2[c] = Double.valueOf(jM1880constructorimpl22 / 1000000.0d);
            String str3 = String.format(null, "%.3f ms", Arrays.copyOf(objArr2, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            sb2.append(str3);
            android.util.Log.d("CXCP", sb2.toString());
        } catch (Throwable th2) {
            th = th2;
            c = 0;
        }
    }
}
