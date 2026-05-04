package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CameraExtensionSession$ExtensionCaptureCallback;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticApiModelOutline0;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicLong;
import p022j$.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public class AndroidCameraExtensionSession implements CameraExtensionSessionWrapper {
    private final Executor callbackExecutor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraExtensionSession cameraExtensionSession;
    private final CameraDeviceWrapper device;
    private final Map extensionSessionMap;
    private final AtomicLong frameNumbers;

    /* JADX INFO: renamed from: id */
    private final int f13id;

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean abortCaptures() {
        return false;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Surface getInputSurface() {
        return null;
    }

    public AndroidCameraExtensionSession(CameraDeviceWrapper device, CameraExtensionSession cameraExtensionSession, CameraErrorListener cameraErrorListener, Executor callbackExecutor) {
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(cameraExtensionSession, "cameraExtensionSession");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(callbackExecutor, "callbackExecutor");
        this.device = device;
        this.cameraExtensionSession = cameraExtensionSession;
        this.cameraErrorListener = cameraErrorListener;
        this.callbackExecutor = callbackExecutor;
        this.f13id = CameraInterop.CameraCaptureSessionId.m1610constructorimpl(CameraInterop.captureSessionIds.incrementAndGet());
        this.frameNumbers = AtomicFU.atomic(0L);
        this.extensionSessionMap = new HashMap();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public CameraDeviceWrapper getDevice() {
        return this.device;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /* JADX INFO: renamed from: getId-159jkk4 */
    public int mo1795getId159jkk4() {
        return this.f13id;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer capture(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) throws Exception {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return Integer.valueOf(Build.VERSION.SDK_INT >= 33 ? this.cameraExtensionSession.capture(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, (Camera2CaptureCallback) listener)) : this.cameraExtensionSession.capture(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS(this, (Camera2CaptureCallback) listener, new LinkedHashMap())));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    return null;
                }
                android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                return null;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
            }
            cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingRequest(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) throws Exception {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return Integer.valueOf(Build.VERSION.SDK_INT >= 33 ? this.cameraExtensionSession.setRepeatingRequest(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback(this, (Camera2CaptureCallback) listener)) : this.cameraExtensionSession.setRepeatingRequest(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS(this, (Camera2CaptureCallback) listener, new LinkedHashMap())));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    return null;
                }
                android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                return null;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
            }
            cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean stopRepeating() throws Exception {
        Unit unit;
        String strMo1797getCameraIdDz_R5H8 = getDevice().mo1797getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            this.cameraExtensionSession.stopRepeating();
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
        return unit != null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer captureBurst(List requests, CameraCaptureSession.CaptureCallback listener) throws Exception {
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Iterator it = requests.iterator();
        while (it.hasNext()) {
            capture((CaptureRequest) it.next(), listener);
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingBurst(List requests, CameraCaptureSession.CaptureCallback listener) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (requests.size() != 1) {
            throw new IllegalStateException("CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest");
        }
        return setRepeatingRequest((CaptureRequest) CollectionsKt.single(requests), listener);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean finalizeOutputConfigurations(List outputConfigs) {
        Intrinsics.checkNotNullParameter(outputConfigs, "outputConfigs");
        if (!Log.INSTANCE.getWARN_LOGGABLE()) {
            return false;
        }
        android.util.Log.w("CXCP", "CameraExtensionSession does not support finalizeOutputConfigurations()");
        return false;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m25m()))) {
            return this.cameraExtensionSession;
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws CameraAccessException {
        this.cameraExtensionSession.close();
    }

    public final class Camera2CaptureSessionCallbackToExtensionCaptureCallback extends CameraExtensionSession$ExtensionCaptureCallback {
        private final Camera2CaptureCallback captureCallback;
        private final ConcurrentLinkedQueue frameQueue;
        final /* synthetic */ AndroidCameraExtensionSession this$0;

        public void onCaptureProcessStarted(CameraExtensionSession session, CaptureRequest request) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
        }

        public Camera2CaptureSessionCallbackToExtensionCaptureCallback(AndroidCameraExtensionSession androidCameraExtensionSession, Camera2CaptureCallback captureCallback) {
            Intrinsics.checkNotNullParameter(captureCallback, "captureCallback");
            this.this$0 = androidCameraExtensionSession;
            this.captureCallback = captureCallback;
            this.frameQueue = new ConcurrentLinkedQueue();
        }

        public void onCaptureStarted(CameraExtensionSession session, CaptureRequest request, long j) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
            this.captureCallback.onCaptureStarted(request, incrementAndGetNextFrameNumber(session), j);
        }

        public void onCaptureProcessProgressed(CameraExtensionSession session, CaptureRequest request, int i) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
            this.captureCallback.onCaptureProcessProgressed(request, i);
        }

        public void onCaptureFailed(CameraExtensionSession session, CaptureRequest request) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
            this.captureCallback.mo1823onCaptureFailedRuT0dZU(request, FrameNumber.m1643constructorimpl(dequeueFrameNumber(session)));
        }

        public void onCaptureSequenceCompleted(CameraExtensionSession session, int i) {
            Intrinsics.checkNotNullParameter(session, "session");
            Long l = (Long) this.this$0.extensionSessionMap.get(session);
            Camera2CaptureCallback camera2CaptureCallback = this.captureCallback;
            Intrinsics.checkNotNull(l);
            camera2CaptureCallback.onCaptureSequenceCompleted(i, l.longValue());
        }

        public void onCaptureSequenceAborted(CameraExtensionSession session, int i) {
            Intrinsics.checkNotNullParameter(session, "session");
            this.captureCallback.onCaptureSequenceAborted(i);
        }

        public void onCaptureResultAvailable(CameraExtensionSession session, CaptureRequest request, TotalCaptureResult result) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(result, "result");
            this.captureCallback.mo1822onCaptureCompletedrmrZIYk(request, result, FrameNumber.m1643constructorimpl(dequeueFrameNumber(session)));
        }

        private final long incrementAndGetNextFrameNumber(CameraExtensionSession cameraExtensionSession) {
            long jIncrementAndGet = this.this$0.frameNumbers.incrementAndGet();
            this.this$0.extensionSessionMap.put(cameraExtensionSession, Long.valueOf(jIncrementAndGet));
            this.frameQueue.add(Long.valueOf(jIncrementAndGet));
            return jIncrementAndGet;
        }

        private final long dequeueFrameNumber(CameraExtensionSession cameraExtensionSession) {
            if (this.frameQueue.isEmpty()) {
                incrementAndGetNextFrameNumber(cameraExtensionSession);
            }
            Object objRemove = this.frameQueue.remove();
            Intrinsics.checkNotNullExpressionValue(objRemove, "remove(...)");
            return ((Number) objRemove).longValue();
        }
    }

    public final class Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS extends CameraExtensionSession$ExtensionCaptureCallback {
        private final Camera2CaptureCallback captureCallback;
        private final Map captureRequestMap;
        final /* synthetic */ AndroidCameraExtensionSession this$0;

        public void onCaptureProcessStarted(CameraExtensionSession session, CaptureRequest request) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
        }

        public Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS(AndroidCameraExtensionSession androidCameraExtensionSession, Camera2CaptureCallback captureCallback, Map captureRequestMap) {
            Intrinsics.checkNotNullParameter(captureCallback, "captureCallback");
            Intrinsics.checkNotNullParameter(captureRequestMap, "captureRequestMap");
            this.this$0 = androidCameraExtensionSession;
            this.captureCallback = captureCallback;
            this.captureRequestMap = captureRequestMap;
        }

        public void onCaptureStarted(CameraExtensionSession session, CaptureRequest request, long j) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
            long jIncrementAndGet = this.this$0.frameNumbers.incrementAndGet();
            this.this$0.extensionSessionMap.put(session, Long.valueOf(jIncrementAndGet));
            Map map = this.captureRequestMap;
            Object arrayList = map.get(request);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(request, arrayList);
            }
            ((List) arrayList).add(Long.valueOf(jIncrementAndGet));
            this.captureCallback.onCaptureStarted(request, jIncrementAndGet, j);
        }

        public void onCaptureFailed(CameraExtensionSession session, CaptureRequest request) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
            Object obj = this.captureRequestMap.get(request);
            Intrinsics.checkNotNull(obj);
            if (((List) obj).size() != 1) {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("onCaptureFailed is not triggered for repeating requests. Request frame numbers: ");
                    Object obj2 = this.captureRequestMap.get(request);
                    Intrinsics.checkNotNull(obj2);
                    sb.append(Collection.EL.stream((List) obj2));
                    android.util.Log.i("CXCP", sb.toString());
                    return;
                }
                return;
            }
            Object obj3 = this.captureRequestMap.get(request);
            Intrinsics.checkNotNull(obj3);
            this.captureCallback.mo1823onCaptureFailedRuT0dZU(request, FrameNumber.m1643constructorimpl(((Number) ((List) obj3).get(0)).longValue()));
        }

        public void onCaptureProcessProgressed(CameraExtensionSession session, CaptureRequest request, int i) {
            Intrinsics.checkNotNullParameter(session, "session");
            Intrinsics.checkNotNullParameter(request, "request");
            this.captureCallback.onCaptureProcessProgressed(request, i);
        }

        public void onCaptureSequenceCompleted(CameraExtensionSession session, int i) {
            Intrinsics.checkNotNullParameter(session, "session");
            Long l = (Long) this.this$0.extensionSessionMap.get(session);
            Camera2CaptureCallback camera2CaptureCallback = this.captureCallback;
            Intrinsics.checkNotNull(l);
            camera2CaptureCallback.onCaptureSequenceCompleted(i, l.longValue());
        }

        public void onCaptureSequenceAborted(CameraExtensionSession session, int i) {
            Intrinsics.checkNotNullParameter(session, "session");
            this.captureCallback.onCaptureSequenceAborted(i);
        }
    }
}
