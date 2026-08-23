package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Timestamps;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0000¨\u0006\u0003"}, d2 = {"closeWithTrace", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CameraDevice;", "camera-camera2-pipe"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraDeviceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraDeviceWrapper.kt\nandroidx/camera/camera2/pipe/compat/CameraDeviceWrapperKt\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 4 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n+ 5 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n*L\n1#1,714:1\n59#2,2:715\n75#2,2:725\n50#2:735\n51#2:738\n58#3,3:717\n71#3,4:720\n61#3:724\n63#3:727\n78#3,4:728\n64#3:732\n65#3:734\n29#4:733\n74#5,2:736\n*S KotlinDebug\n*F\n+ 1 CameraDeviceWrapper.kt\nandroidx/camera/camera2/pipe/compat/CameraDeviceWrapperKt\n*L\n110#1:715,2\n117#1:725,2\n111#1:735\n111#1:738\n111#1:717,3\n111#1:720,4\n111#1:724\n111#1:727\n111#1:728,4\n111#1:732\n111#1:734\n111#1:733\n111#1:736,2\n*E\n"})
public abstract class CameraDeviceWrapperKt {
    public static final void closeWithTrace(CameraDevice cameraDevice) {
        if (cameraDevice != null) {
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "Closing Camera " + cameraDevice.getId());
            }
            Debug debug = Debug.INSTANCE;
            String str = "CXCP#CameraDevice-" + cameraDevice.getId() + "#close";
            long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
            try {
                Trace.beginSection(str);
                try {
                    cameraDevice.close();
                } catch (NullPointerException e) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "NPE encountered during CameraDevice.close()", e);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } finally {
                Trace.endSection();
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
            }
        }
    }
}
