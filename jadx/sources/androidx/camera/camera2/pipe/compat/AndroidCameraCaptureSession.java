package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes3.dex */
public class AndroidCameraCaptureSession implements CameraCaptureSessionWrapper {
    private final Handler callbackHandler;
    private final CameraCaptureSession cameraCaptureSession;
    private final CameraErrorListener cameraErrorListener;
    private final CameraDeviceWrapper device;

    /* JADX INFO: renamed from: id */
    private final int f12id;

    public AndroidCameraCaptureSession(CameraDeviceWrapper device, CameraCaptureSession cameraCaptureSession, CameraErrorListener cameraErrorListener, Handler callbackHandler) {
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(cameraCaptureSession, "cameraCaptureSession");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(callbackHandler, "callbackHandler");
        this.device = device;
        this.cameraCaptureSession = cameraCaptureSession;
        this.cameraErrorListener = cameraErrorListener;
        this.callbackHandler = callbackHandler;
        this.f12id = CameraInterop.CameraCaptureSessionId.m1610constructorimpl(CameraInterop.captureSessionIds.incrementAndGet());
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public CameraDeviceWrapper getDevice() {
        return this.device;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean abortCaptures() throws Throwable {
        double d;
        Unit unit;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#abortCaptures" + SignatureVisitor.SUPER + getDevice().mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            d = 1000000.0d;
            try {
                String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    this.cameraCaptureSession.abortCaptures();
                    unit = Unit.INSTANCE;
                } catch (Exception e) {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                    } else {
                        if (!(e instanceof IllegalStateException)) {
                            throw e;
                        }
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                    }
                    unit = null;
                }
                Trace.endSection();
                long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                    sb.append(str2);
                    android.util.Log.d("CXCP", sb.toString());
                }
                return unit != null;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / d)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                    sb2.append(str3);
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean stopRepeating() throws Throwable {
        double d;
        Unit unit;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#stopRepeating" + SignatureVisitor.SUPER + getDevice().mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            d = 1000000.0d;
            try {
                String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    this.cameraCaptureSession.stopRepeating();
                    unit = Unit.INSTANCE;
                } catch (Exception e) {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                    } else {
                        if (!(e instanceof IllegalStateException)) {
                            throw e;
                        }
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                        }
                    }
                    unit = null;
                }
                Trace.endSection();
                long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                    sb.append(str2);
                    android.util.Log.d("CXCP", sb.toString());
                }
                return unit != null;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / d)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                    sb2.append(str3);
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /* JADX INFO: renamed from: getId-159jkk4, reason: not valid java name */
    public int mo1795getId159jkk4() {
        return this.f12id;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Surface getInputSurface() {
        return this.cameraCaptureSession.getInputSurface();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean finalizeOutputConfigurations(List outputConfigs) throws Throwable {
        double d;
        Unit unit;
        Intrinsics.checkNotNullParameter(outputConfigs, "outputConfigs");
        if (Build.VERSION.SDK_INT < 26) {
            throw new IllegalStateException("Attempting to call finalizeOutputConfigurations before O is not supported and may lead to to unexpected behavior if an application is expects this call to succeed.");
        }
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#finalizeOutputConfigurations" + SignatureVisitor.SUPER + getDevice().mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            d = 1000000.0d;
        } catch (Throwable th) {
            th = th;
            d = 1000000.0d;
        }
        try {
            String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                CameraCaptureSession cameraCaptureSession = this.cameraCaptureSession;
                List list = outputConfigs;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1.m49m(((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0.m48m()))));
                }
                Api26Compat.finalizeOutputConfigurations(cameraCaptureSession, arrayList);
                unit = Unit.INSTANCE;
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                } else {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    }
                }
                unit = null;
            }
            Trace.endSection();
            long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" - ");
                Timestamps timestamps = Timestamps.INSTANCE;
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb.append(str2);
                android.util.Log.d("CXCP", sb.toString());
            }
            return unit != null;
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                sb2.append(str3);
                android.util.Log.d("CXCP", sb2.toString());
            }
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCaptureSession.class))) {
            return this.cameraCaptureSession;
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.cameraCaptureSession.close();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer capture(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) {
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#capture" + SignatureVisitor.SUPER + getDevice().mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                numValueOf = Integer.valueOf(this.cameraCaptureSession.capture(request, listener, this.callbackHandler));
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                } else {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    }
                }
                numValueOf = null;
            }
            Trace.endSection();
            long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" - ");
                Timestamps timestamps = Timestamps.INSTANCE;
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb.append(str2);
                android.util.Log.d("CXCP", sb.toString());
            }
            return numValueOf;
        } catch (Throwable th) {
            Trace.endSection();
            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                sb2.append(str3);
                android.util.Log.d("CXCP", sb2.toString());
            }
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer captureBurst(List requests, CameraCaptureSession.CaptureCallback listener) {
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#captureBurst" + SignatureVisitor.SUPER + getDevice().mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                numValueOf = Integer.valueOf(this.cameraCaptureSession.captureBurst(requests, listener, this.callbackHandler));
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                } else {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    }
                }
                numValueOf = null;
            }
            Trace.endSection();
            long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" - ");
                Timestamps timestamps = Timestamps.INSTANCE;
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb.append(str2);
                android.util.Log.d("CXCP", sb.toString());
            }
            return numValueOf;
        } catch (Throwable th) {
            Trace.endSection();
            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                sb2.append(str3);
                android.util.Log.d("CXCP", sb2.toString());
            }
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingBurst(List requests, CameraCaptureSession.CaptureCallback listener) {
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#setRepeatingBurst" + SignatureVisitor.SUPER + getDevice().mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                numValueOf = Integer.valueOf(this.cameraCaptureSession.setRepeatingBurst(requests, listener, this.callbackHandler));
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                } else {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    }
                }
                numValueOf = null;
            }
            Trace.endSection();
            long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" - ");
                Timestamps timestamps = Timestamps.INSTANCE;
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb.append(str2);
                android.util.Log.d("CXCP", sb.toString());
            }
            return numValueOf;
        } catch (Throwable th) {
            Trace.endSection();
            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                sb2.append(str3);
                android.util.Log.d("CXCP", sb2.toString());
            }
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingRequest(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) {
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#setRepeatingRequest" + SignatureVisitor.SUPER + getDevice().mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                numValueOf = Integer.valueOf(this.cameraCaptureSession.setRepeatingRequest(request, listener, this.callbackHandler));
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                } else {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    }
                }
                numValueOf = null;
            }
            Trace.endSection();
            long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" - ");
                Timestamps timestamps = Timestamps.INSTANCE;
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb.append(str2);
                android.util.Log.d("CXCP", sb.toString());
            }
            return numValueOf;
        } catch (Throwable th) {
            Trace.endSection();
            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                sb2.append(str3);
                android.util.Log.d("CXCP", sb2.toString());
            }
            throw th;
        }
    }
}
