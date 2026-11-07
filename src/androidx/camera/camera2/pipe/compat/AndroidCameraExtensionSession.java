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
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicLong;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0011\u0018\u00002\u00020\u0001:\u0002@AB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J'\u0010\u001a\u001a\u0004\u0018\u00010\u00102\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u00182\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\u001c\u001a\u0004\u0018\u00010\u00102\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u00182\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u001d\u0010\u001f\u001a\u00020\u00142\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0018H\u0016¢\u0006\u0004\b\u001f\u0010 J)\u0010%\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\"*\u00020!2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010*\u001a\u0004\b+\u0010,R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010-R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010.R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010/R\u001a\u00101\u001a\u0002008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0014\u00106\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R \u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000209088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010?\u001a\u0004\u0018\u00010<8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006B"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;", "Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "device", "Landroid/hardware/camera2/CameraExtensionSession;", "cameraExtensionSession", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "cameraErrorListener", "Ljava/util/concurrent/Executor;", "callbackExecutor", "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Ljava/util/concurrent/Executor;)V", "Landroid/hardware/camera2/CaptureRequest;", PluginsConstants.REQUEST, "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", "listener", _UrlKt.FRAGMENT_ENCODE_SET, "capture", "(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;", "setRepeatingRequest", _UrlKt.FRAGMENT_ENCODE_SET, "stopRepeating", "()Z", "abortCaptures", _UrlKt.FRAGMENT_ENCODE_SET, "requests", "captureBurst", "(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;", "setRepeatingBurst", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "outputConfigs", "finalizeOutputConfigurations", "(Ljava/util/List;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "close", "()V", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "getDevice", "()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "Landroid/hardware/camera2/CameraExtensionSession;", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "Ljava/util/concurrent/Executor;", "Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;", "id", "I", "getId-159jkk4", "()I", "Lkotlinx/atomicfu/AtomicLong;", "frameNumbers", "Lkotlinx/atomicfu/AtomicLong;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "extensionSessionMap", "Ljava/util/Map;", "Landroid/view/Surface;", "getInputSurface", "()Landroid/view/Surface;", "inputSurface", "Camera2CaptureSessionCallbackToExtensionCaptureCallback", "Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExtensionSessionWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionSessionWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession\n+ 2 Exceptions.kt\nandroidx/camera/camera2/pipe/compat/ExceptionsKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,389:1\n53#2,6:390\n59#2,24:398\n83#2,3:424\n53#2,6:427\n59#2,24:435\n83#2,3:461\n53#2,6:464\n59#2,24:472\n83#2,3:498\n71#3,2:396\n50#3,2:422\n71#3,2:433\n50#3,2:459\n71#3,2:470\n50#3,2:496\n71#3,2:503\n1869#4,2:501\n*S KotlinDebug\n*F\n+ 1 ExtensionSessionWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession\n*L\n159#1:390,6\n159#1:398,24\n159#1:424,3\n184#1:427,6\n184#1:435,24\n184#1:461,3\n206#1:464,6\n206#1:472,24\n206#1:498,3\n159#1:396,2\n159#1:422,2\n184#1:433,2\n184#1:459,2\n206#1:470,2\n206#1:496,2\n240#1:503,2\n222#1:501,2\n*E\n"})
public class AndroidCameraExtensionSession implements CameraExtensionSessionWrapper {
    private final Executor callbackExecutor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraExtensionSession cameraExtensionSession;
    private final CameraDeviceWrapper device;
    private final int id = CameraInterop.CameraCaptureSessionId.m1359constructorimpl(CameraInterop.captureSessionIds.incrementAndGet());
    private final AtomicLong frameNumbers = AtomicFU.atomic(0L);
    private final Map<CameraExtensionSession, Long> extensionSessionMap = new HashMap();

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean abortCaptures() {
        return false;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Surface getInputSurface() {
        return null;
    }

    public AndroidCameraExtensionSession(CameraDeviceWrapper cameraDeviceWrapper, CameraExtensionSession cameraExtensionSession, CameraErrorListener cameraErrorListener, Executor executor) {
        this.device = cameraDeviceWrapper;
        this.cameraExtensionSession = cameraExtensionSession;
        this.cameraErrorListener = cameraErrorListener;
        this.callbackExecutor = executor;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public CameraDeviceWrapper getDevice() {
        return this.device;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /* JADX INFO: renamed from: getId-159jkk4, reason: from getter */
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer capture(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) throws Exception {
        String strMo1536getCameraIdDz_R5H8 = getDevice().mo1536getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return Integer.valueOf(Build.VERSION.SDK_INT >= 33 ? this.cameraExtensionSession.capture(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback((Camera2CaptureCallback) listener)) : this.cameraExtensionSession.capture(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS((Camera2CaptureCallback) listener, new LinkedHashMap())));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(strMo1536getCameraIdDz_R5H8, CameraError.INSTANCE.m1308fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(strMo1536getCameraIdDz_R5H8, CameraError.INSTANCE.m1319getERROR_GRAPH_CONFIGv7Vf74A(), false);
                return null;
            }
            if (!(e instanceof IllegalStateException)) {
                throw e;
            }
            if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                return null;
            }
            android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingRequest(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) throws Exception {
        String strMo1536getCameraIdDz_R5H8 = getDevice().mo1536getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return Integer.valueOf(Build.VERSION.SDK_INT >= 33 ? this.cameraExtensionSession.setRepeatingRequest(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallback((Camera2CaptureCallback) listener)) : this.cameraExtensionSession.setRepeatingRequest(request, this.callbackExecutor, new Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS((Camera2CaptureCallback) listener, new LinkedHashMap())));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(strMo1536getCameraIdDz_R5H8, CameraError.INSTANCE.m1308fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(strMo1536getCameraIdDz_R5H8, CameraError.INSTANCE.m1319getERROR_GRAPH_CONFIGv7Vf74A(), false);
                return null;
            }
            if (!(e instanceof IllegalStateException)) {
                throw e;
            }
            if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                return null;
            }
            android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean stopRepeating() throws Exception {
        Unit unit;
        String strMo1536getCameraIdDz_R5H8 = getDevice().mo1536getCameraIdDz_R5H8();
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            this.cameraExtensionSession.stopRepeating();
            unit = Unit.INSTANCE;
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(strMo1536getCameraIdDz_R5H8, CameraError.INSTANCE.m1308fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(strMo1536getCameraIdDz_R5H8, CameraError.INSTANCE.m1319getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
    public Integer captureBurst(List<CaptureRequest> requests, CameraCaptureSession.CaptureCallback listener) throws Exception {
        Iterator<T> it = requests.iterator();
        while (it.hasNext()) {
            capture((CaptureRequest) it.next(), listener);
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Integer setRepeatingBurst(List<CaptureRequest> requests, CameraCaptureSession.CaptureCallback listener) {
        if (requests.size() != 1) {
            Segment$$ExternalSyntheticBUOutline1.m973m("CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest");
            return null;
        }
        return setRepeatingRequest((CaptureRequest) CollectionsKt.single((List) requests), listener);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public boolean finalizeOutputConfigurations(List<? extends OutputConfigurationWrapper> outputConfigs) {
        if (!Log.INSTANCE.getWARN_LOGGABLE()) {
            return false;
        }
        android.util.Log.w("CXCP", "CameraExtensionSession does not support finalizeOutputConfigurations()");
        return false;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m27m()))) {
            return (T) this.cameraExtensionSession;
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws CameraAccessException {
        this.cameraExtensionSession.close();
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J \u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;", "Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;", "captureCallback", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;", "<init>", "(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;)V", "frameQueue", "Ljava/util/concurrent/ConcurrentLinkedQueue;", _UrlKt.FRAGMENT_ENCODE_SET, "onCaptureStarted", _UrlKt.FRAGMENT_ENCODE_SET, "session", "Landroid/hardware/camera2/CameraExtensionSession;", PluginsConstants.REQUEST, "Landroid/hardware/camera2/CaptureRequest;", "timestamp", "onCaptureProcessStarted", "onCaptureProcessProgressed", "progress", _UrlKt.FRAGMENT_ENCODE_SET, "onCaptureFailed", "onCaptureSequenceCompleted", "sequenceId", "onCaptureSequenceAborted", "onCaptureResultAvailable", "result", "Landroid/hardware/camera2/TotalCaptureResult;", "incrementAndGetNextFrameNumber", "dequeueFrameNumber", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Camera2CaptureSessionCallbackToExtensionCaptureCallback extends CameraExtensionSession$ExtensionCaptureCallback {
        private final Camera2CaptureCallback captureCallback;
        private final ConcurrentLinkedQueue<Long> frameQueue = new ConcurrentLinkedQueue<>();

        public void onCaptureProcessStarted(CameraExtensionSession session, CaptureRequest request) {
        }

        public Camera2CaptureSessionCallbackToExtensionCaptureCallback(Camera2CaptureCallback camera2CaptureCallback) {
            this.captureCallback = camera2CaptureCallback;
        }

        public void onCaptureStarted(CameraExtensionSession session, CaptureRequest request, long timestamp) {
            this.captureCallback.onCaptureStarted(request, incrementAndGetNextFrameNumber(session), timestamp);
        }

        public void onCaptureProcessProgressed(CameraExtensionSession session, CaptureRequest request, int progress) {
            this.captureCallback.onCaptureProcessProgressed(request, progress);
        }

        public void onCaptureFailed(CameraExtensionSession session, CaptureRequest request) {
            this.captureCallback.mo1562onCaptureFailedRuT0dZU(request, FrameNumber.m1392constructorimpl(dequeueFrameNumber(session)));
        }

        public void onCaptureSequenceCompleted(CameraExtensionSession session, int sequenceId) {
            this.captureCallback.onCaptureSequenceCompleted(sequenceId, ((Long) AndroidCameraExtensionSession.this.extensionSessionMap.get(session)).longValue());
        }

        public void onCaptureSequenceAborted(CameraExtensionSession session, int sequenceId) {
            this.captureCallback.onCaptureSequenceAborted(sequenceId);
        }

        public void onCaptureResultAvailable(CameraExtensionSession session, CaptureRequest request, TotalCaptureResult result) {
            this.captureCallback.mo1561onCaptureCompletedrmrZIYk(request, result, FrameNumber.m1392constructorimpl(dequeueFrameNumber(session)));
        }

        private final long incrementAndGetNextFrameNumber(CameraExtensionSession session) {
            long jIncrementAndGet = AndroidCameraExtensionSession.this.frameNumbers.incrementAndGet();
            AndroidCameraExtensionSession.this.extensionSessionMap.put(session, Long.valueOf(jIncrementAndGet));
            this.frameQueue.add(Long.valueOf(jIncrementAndGet));
            return jIncrementAndGet;
        }

        private final long dequeueFrameNumber(CameraExtensionSession session) {
            if (this.frameQueue.isEmpty()) {
                incrementAndGetNextFrameNumber(session);
            }
            return this.frameQueue.remove().longValue();
        }
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005¢\u0006\u0004\b\t\u0010\nJ \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\bH\u0016J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J \u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016J\u0018\u0010\u0018\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;", "Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;", "captureCallback", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;", "captureRequestMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;Ljava/util/Map;)V", "onCaptureStarted", _UrlKt.FRAGMENT_ENCODE_SET, "session", "Landroid/hardware/camera2/CameraExtensionSession;", PluginsConstants.REQUEST, "timestamp", "onCaptureProcessStarted", "onCaptureFailed", "onCaptureProcessProgressed", "progress", _UrlKt.FRAGMENT_ENCODE_SET, "onCaptureSequenceCompleted", "sequenceId", "onCaptureSequenceAborted", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExtensionSessionWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionSessionWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,389:1\n384#2,7:390\n59#3,2:397\n*S KotlinDebug\n*F\n+ 1 ExtensionSessionWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS\n*L\n349#1:390,7\n363#1:397,2\n*E\n"})
    public final class Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS extends CameraExtensionSession$ExtensionCaptureCallback {
        private final Camera2CaptureCallback captureCallback;
        private final Map<CaptureRequest, List<Long>> captureRequestMap;

        public void onCaptureProcessStarted(CameraExtensionSession session, CaptureRequest request) {
        }

        public Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS(Camera2CaptureCallback camera2CaptureCallback, Map<CaptureRequest, List<Long>> map) {
            this.captureCallback = camera2CaptureCallback;
            this.captureRequestMap = map;
        }

        public void onCaptureStarted(CameraExtensionSession session, CaptureRequest request, long timestamp) {
            long jIncrementAndGet = AndroidCameraExtensionSession.this.frameNumbers.incrementAndGet();
            AndroidCameraExtensionSession.this.extensionSessionMap.put(session, Long.valueOf(jIncrementAndGet));
            Map<CaptureRequest, List<Long>> map = this.captureRequestMap;
            List<Long> arrayList = map.get(request);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                map.put(request, arrayList);
            }
            arrayList.add(Long.valueOf(jIncrementAndGet));
            this.captureCallback.onCaptureStarted(request, jIncrementAndGet, timestamp);
        }

        public void onCaptureFailed(CameraExtensionSession session, CaptureRequest request) {
            if (this.captureRequestMap.get(request).size() != 1) {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "onCaptureFailed is not triggered for repeating requests. Request frame numbers: " + ((List) this.captureRequestMap.get(request)).stream());
                    return;
                }
                return;
            }
            this.captureCallback.mo1562onCaptureFailedRuT0dZU(request, FrameNumber.m1392constructorimpl(this.captureRequestMap.get(request).get(0).longValue()));
        }

        public void onCaptureProcessProgressed(CameraExtensionSession session, CaptureRequest request, int progress) {
            this.captureCallback.onCaptureProcessProgressed(request, progress);
        }

        public void onCaptureSequenceCompleted(CameraExtensionSession session, int sequenceId) {
            this.captureCallback.onCaptureSequenceCompleted(sequenceId, ((Long) AndroidCameraExtensionSession.this.extensionSessionMap.get(session)).longValue());
        }

        public void onCaptureSequenceAborted(CameraExtensionSession session, int sequenceId) {
            this.captureCallback.onCaptureSequenceAborted(sequenceId);
        }
    }
}
